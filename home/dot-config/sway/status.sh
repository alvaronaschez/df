power=$(upower -e | awk '/BAT/ {bat = $0} END {print bat}' | xargs upower -i \
  | awk '/percentage:/ {p=$2}; /state:/ {s=$2}; END{print p" "s}')
date=$(date +'%Y-%m-%d %T')
wifi=$(nmcli connection | awk '$3 ~ /wifi/{print $4}' | xargs -I {} iw dev {} link \
  | awk '/signal/{print ($2 < -50 ? 100 : ($2 < -100 ? 0: ($2+100)*2))"%"}')
sound=$(pamixer --get-volume-human)
echo "sound: $sound \
      wifi: $wifi \
      battery: $power \
      date: $date"

