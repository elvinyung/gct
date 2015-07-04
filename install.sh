program_name="gct.sh"
install_dir="/usr/bin"
install_path="$install_dir/${program_name&&.sh}"

cp "$program_name" "$install_path"
chmod aguo+x "$install_path"
