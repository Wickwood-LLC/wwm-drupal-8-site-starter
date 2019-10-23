#!/bin/bash
# Wickwood Maketing Drupal 8 Site Starter Platform Builder Script

# Identify user name
currentuser=$(whoami)

# Define the Platform Name from input variable
platform_dir=$1

platform_base_dir="/data/disk/$currentuser/static"


# Remove plupload libraries examples directory for security
echo -n "Removing plupload examples directory... "
rm -r $platform_base_dir/$platform_dir/libraries/plupload/examples
echo "Done."

# Commented out as not being used in D8 yet.
# Setup fullcalendar Library
# echo -n "Setting up fullcalendar library... "
# mv $platform_base_dir/$platform_dir/sites/all/libraries/fullcalendar $platform_base_dir/$platform_dir/sites/all/libraries/fullcalendar-org
# mv $platform_base_dir/$platform_dir/sites/all/libraries/fullcalendar-org/fullcalendar $platform_base_dir/$platform_dir/sites/all/libraries/fullcalendar
# rm -r $platform_base_dir/$platform_dir/sites/all/libraries/fullcalendar-org
# echo "Done."

# Commented out as not being used in D8 yet.
# Change name of SimplePie Library
# echo -n "Change name of SimplePie library... "
# mv $platform_base_dir/$platform_dir/sites/all/libraries/simplepie/simplepie_*.*.*.mini.php $platform_base_dir/$platform_dir/sites/all/libraries/simplepie/simplepie.compiled.php
# # chown -R $currentuser:users $platform_base_dir/$platform_dir/sites/all/libraries/simplepie/simplepie.compiled.php
# echo "Done."

# Move js.php from module to platform root
echo -n "Move js.php from module to platform root... "
mv $platform_base_dir/$platform_dir/modules/js/js.php $platform_base_dir/$platform_dir
echo "Done."

echo -n "Delete 'sites/all/libraries/none' directory... "
rm -r $platform_base_dir/$platform_dir/libraries/none
echo "Done."

echo -n "Delete 'robots.txt' from root directory ..."
rm $platform_base_dir/$platform_dir/robots.txt
echo "Done."

# Get all files and directory names in profiles directory.
# shopt -s nullglob
# profile_files=($platform_base_dir/$platform_dir/profiles/*)
# shopt -u nullglob

# Choose only directories
# profiles=()
# for item in ${profile_files[*]}
# do
#   if [[ -d "$item" ]]
#   then
#     profiles+=($(basename $item))
#   fi
# done

# Ask user about the profiles to be removed
# echo "Which profiles should be removed from the platform?"
# for i in "${!profiles[@]}"; do
#   printf "\t%s. %s\n" "$i" "${profiles[$i]}"
# done
# echo -n "(Enter comma separated item numbers): "
# read selected_profiles_temp

# IFS=',' read -a selected_profiles <<< $selected_profiles_temp
# for i in ${selected_profiles[@]}; do
#   profile=${profiles[i]}
#   # This if condition is important. Otherwise parent profiles directory will get
#   # removed when an invalid option passed.
#   if [ -n "$profile" ];
#   then
#     echo -n "Removing profile $profile... "
#     rm -r $platform_base_dir/$platform_dir/profiles/$profile
#     echo "Done."
#   else
#     echo "$i was an invalid option."
#   fi
# done

# Remove selected, thus deleted, profiles from list.
# for i in ${selected_profiles[@]}; do
#   profile=${profiles[i]}
#   if [ -n "$profile" ];
#   then
#     profiles=("${profiles[@]/$profile}")
#   fi
# done

# Need to rename Standard and Minimal profiles if they remained.
# for profile in "${profiles[@]}"; do
#   if [[ $profile == 'standard' || $profile == 'minimal' ]];
#   then
#     # Read more at https://learn.omega8.cc/how-to-add-custom-platform-properly-140
#     echo -n "Renaming $profile... "
#     sed -i -E 's/name\s*=\s*([a-zA-Z]+)/name = Vanilla \1/g' "$platform_base_dir/$platform_dir/profiles/$profile/$profile.info"
#     echo "Done."
#   fi
# done

# Copy print module.
# echo -n "Copying print module to sites/all/modules directory... "
# cp -ar $platform_base_dir/$platform_dir/modules/o_contrib_seven/print $platform_base_dir/$platform_dir/sites/all/modules/
# echo "Done."
# echo -n "Downloading patch for print module..."
# wget --timestamping --directory-prefix=$platform_base_dir/$platform_dir/sites/all/modules/print/ https://gist.githubusercontent.com/junaidpv/b7597f608ca6f9fa0394b666e20e755e/raw/6b1a862b03be9f13d35c8ae7fd9091ca11997395/allow-altering-footer-url-in-print-pdf-pages.patch
# echo "Done."
# Apply the patch.
# echo -n "Applying patch to print module..."
# git apply --unsafe-paths -v --directory="$platform_base_dir/$platform_dir/sites/all/modules/print/" "$platform_base_dir/$platform_dir/sites/all/modules/print/allow-altering-footer-url-in-print-pdf-pages.patch"
# echo "Done."

cd $platform_base_dir/$platform_dir
# For ImageMagick module.
composer require fileeye/mimemap
# For url_embed module.
composer require embed/embed