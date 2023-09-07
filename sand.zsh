#!/bin/zsh

# Get terminal dimensions
w=$(tput cols)
h=$(tput lines)

# Initialize empty map
typeset -A m
for ((y=1; y<=h; y++)); do
    for ((x=1; x<=w; x++)); do
        m[$x,$y]=" "
    done
done

# Default sleep time
s=0.8
st=$s

# Default randomness value
rnd=10

# Process command line arguments
a=("$@")
p="█"
rb=false
xa=false
xr=false

# Process command line arguments
for ((i=1; i<=$#; i++)); do
    arg="${a[$i]}"
    case $arg in
        -s)
            p="*"
            ;;
        -i)
            p="${a[$((i+1))]}"
            i=$((i+1))
            ;;
        -t)
            st="${a[$((i+1))]}"
            i=$((i+1))
            ;;
        -b)
            rb=true
            ;;
        -a)
            xa=true
            ;;
        -r)
            xr=true
            rnd="${a[$((i+1))]}"
            i=$((i+1))
            ;;
    esac
done

# Save command line arguments
echo "${a[*]}" > args_file

# Function to render the map
render() {
    clear
    for ((y=1; y<=h; y++)); do
        for ((x=1; x<=w; x++)); do
            echo -n "${m[$x,$y]}"
        done
        echo
    done
}

# Main simulation loop
while true; do
    render

    # Check if the entire screen is filled with particles
    af=true
    for ((y=1; y<=h; y++)); do
        for ((x=1; x<=w; x++)); do
            # Check if the particle is not equal to the expected particle symbol
            [[ ${m[$x,$y]} != "$p" ]] && af=false && break 2
        done
    done
    
    # Handle scenarios when all particles are filled
    if $af && $xa; then
        echo "All particles filled. Exiting..."
        exit 0
    elif $af; then
        echo "Entire screen filled with particles! Restarting..."
        sleep 2
        exec $0 "${a[@]}"
    fi

    # Move particles down or to the sides
    for ((x=1; x<=w; x++)); do
        for ((y=h; y>=1; y--)); do
            if [[ ${m[$x,$y]} == "$p" ]]; then
                if [[ ${m[$x,$((y+1))]} == " " ]]; then
                    m[$x,$y]=" "
                    m[$x,$((y+1))]=$p
                else
                    if [[ ${m[$((x-1)),$((y+1))]} == " " ]]; then
                        m[$x,$y]=" "
                        m[$((x-1)),$((y+1))]=$p
                    elif [[ ${m[$((x+1)),$((y+1))]} == " " ]]; then
                        m[$x,$y]=" "
                        m[$((x+1)),$((y+1))]=$p
                    fi
                fi
            fi
        done
    done
    
    # Generate new particles at the top
    for ((x=1; x<=w; x++)); do
        (( RANDOM % rnd == 0 )) && m[$x,1]=$p
    done
    
    # Remove the bottom row if filled, as indicated by the -b flag
    if $rb; then
        bf=true
        for ((x=1; x<=w; x++)); do
            [[ ${m[$x,$h]} != "$p" ]] && bf=false && break
        done
        if $bf; then
            for ((x=1; x<=w; x++)); do
                m[$x,$h]=" "
            done
        fi
    fi
    
    sleep "$st"
done