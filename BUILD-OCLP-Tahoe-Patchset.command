# Build OCLP DEV
# By chris1111 

#
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
printf '\e[8;35;80t'


nameh=`users`
function echob() {
  echo "`tput bold`$1`tput sgr0`"
}

function head
{
clear
echo "       ***************************************************************"                      
echo "       *******************`tput setaf 7``tput sgr0``tput bold``tput setaf 26` Build OCLP Tahoe-Patchset`tput sgr0` `tput setaf 7``tput sgr0`*****************"
echo "       ***************************************************************"
}

function menu
{
          echo "                                Welcome `tput bold`$nameh`tput sgr0` "  
echo " "                                                            
echo "              `tput setaf 7``tput sgr0``tput bold``tput setaf 26`Prerequisite:`tput sgr0` `tput setaf 7``tput sgr0` Python-3.11, Command Line Tools (CLT) for Xcode 
     (from '\033[1mxcode-select --install\033[0m' or Developer Apple Command Line Tools
                If you have '\033[1mXcode installed\033[0m' that's also good.
                If you don't have python-3.11, don't worry, python-3.11.5 
                will be installed by the command script."                                                   
echo " "
echo "                        Type `tput setaf 7``tput sgr0``tput bold``tput setaf 2`A`tput sgr0` `tput setaf 7``tput sgr0`➣  to Build OCLP Tahoe-Patchset"
echo "                        Type `tput setaf 7``tput sgr0``tput bold``tput setaf 2`B`tput sgr0` `tput setaf 7``tput sgr0`➣  to Check Update OCLP Tahoe-Patchset"
echo "                        Type `tput setaf 7``tput sgr0``tput bold``tput setaf 2`C`tput sgr0` `tput setaf 7``tput sgr0`➣  to Update OCLP Tahoe-Patchset"
echo "                        Type `tput setaf 7``tput sgr0``tput bold``tput setaf 2`D`tput sgr0` `tput setaf 7``tput sgr0`➣  to Build OCLP Tahoe-Patchset installer "
echo "                        Type `tput setaf 7``tput sgr0``tput bold``tput setaf 1`X`tput sgr0` `tput setaf 7``tput sgr0`➣  to quit command "                            
echo " "                                 

echo "       ***************************************************************"  
echo "                  `tput setaf 7``tput sgr0``tput bold``tput setaf 26` Thanks to OpenCore Legacy Patcher Team`tput sgr0` `tput setaf 7``tput sgr0`"
echo "       ***************************************************************"  
read -n 1 option

}
function BUILD
{
head
echo " "
echo "———————————————————————————————————————————————————————————————————————————————"
Sleep 1
echo "[Build OCLP Tahoe-Patchset]"
if [ -f "/usr/local/bin/python3" ]; then
  echo "Python 3 exist."
else
  echo "Python 3 not exist! 
Download then install. Wait... "
curl -f -o /Private/tmp/python-3.11.5-macos11.pkg https://www.python.org/ftp/python/3.11.5/python-3.11.5-macos11.pkg
echo " "
# run the pkg
osascript -e 'do shell script "installer -allowUntrusted -verboseR -pkg /Private/tmp/python-3.11.5-macos11.pkg -target /" with administrator privileges'

echo "pip3 upgrade pip "
Sleep 2
pip3 install --upgrade pip

echo " "
cd "/Applications/Python 3.11/"
# Install Certificates
./"Install Certificates.command"
# remove the pkg
rm -rf /Private/tmp/python-3.11.5-macos11.pkg
fi
# Starting OCLP project
rm -rf ~/Developer/OpenCore-Legacy-Tahoe_Patchset
# Create Dev’s Folder
mkdir -p ~/Developer
# Move into a directory to store the project
cd ~/Developer
# Clone main branch
git clone --branch tahoe-patchset https://github.com/chris1111/OpenCore-Legacy-Tahoe_Patchset.git
# Move into Project directory
cd ~/Developer/OpenCore-Legacy-Tahoe_Patchset
# Install Python dependacies used by the project
Sleep 2
pip3 install -r requirements.txt
echo "
Now you can Build installer `tput setaf 7``tput sgr0``tput bold``tput setaf 2`(Option D)`tput sgr0` `tput setaf 7``tput sgr0`"

echo "
Quit Build OCLP."

osascript -e 'tell app "terminal" to display dialog "Quit Build OCLP Tahoe-Patchset
Use (Option D) for building installer" with icon file "System:Library:CoreServices:loginwindow.app:Contents:Resources:ShutDown.tiff" buttons {"Logout"} default button 1 with title "Build OCLP" giving up after 10'

echo "
Use (Option D) for building installer"
echo "———————————————————————————————————————————————————————————————————————————————"
echo " "


}
function CHECK
{
head
echo " "
echo "———————————————————————————————————————————————————————————————————————————————"
# Check Update OCLP Tahoe-Patchset
Sleep 1
echo "[Check Update OCLP Tahoe-Patchset]"
Sleep 1
cd ~/Developer/OpenCore-Legacy-Tahoe_Patchset/
if [[ -d .git ]]; then
  git fetch --all
  git pull origin tahoe-patchset
echo "
If you see remote update files, now you can Update `tput setaf 7``tput sgr0``tput bold``tput setaf 2`(Option C)`tput sgr0` `tput setaf 7``tput sgr0`"
else
  echo "Error: This directory is not a Git. Unable to update!"
fi
echo "  "
echo "———————————————————————————————————————————————————————————————————————————————"
echo " "

}
function UPDATE
{
head
echo " "
echo "———————————————————————————————————————————————————————————————————————————————"
# Update OCLP Tahoe-Patchset
Sleep 1
echo "[Update OCLP Tahoe-Patchset]"
Sleep 1
cd ~/Developer/OpenCore-Legacy-Tahoe_Patchset/
# Remove pyc
find . -name '*.pyc' -type f -delete
if [[ -d .git ]]; then
  git fetch --all
  git pull origin tahoe-patchset
echo "
Update OCLP Tahoe-Patchset Done"
git status

else
  echo "Error: This directory is not a Git. Unable to update!"
fi

cd ~/Developer/OpenCore-Legacy-Tahoe_Patchset/
# Remove Binaries
rm -rf ./payloads.dmg
rm -rf ./Universal-Binaries.dmg
rm -rf ./DortaniaInternalResources.dmg
rm -rf ./build
rm -rf ./dist
# Create the pyinstaller based Application
python3 Build-Project.command
# Open build folder
open ./dist/
echo "  "
echo "`tput setaf 7``tput sgr0``tput bold``tput setaf 26`Update Complete Building Tahoe-Patchset --> OpenCore-Patcher.app Done!`tput sgr0` `tput setaf 7``tput sgr0`"
echo "———————————————————————————————————————————————————————————————————————————————"
echo " "

}
function APP
{
head
echo " "
echo "———————————————————————————————————————————————————————————————————————————————"
# OCLP Build App
echo "[OCLP Building Installer]"
cd ~/Developer/OpenCore-Legacy-Tahoe_Patchset/
# Install PyInstaller
Sleep 2
pip3 install pyinstaller
# Create the pyinstaller based Application
Sleep 2
python3 Build-Project.command
# Open build folder
open ./dist/
echo "  "
echo "`tput setaf 7``tput sgr0``tput bold``tput setaf 26`Building --> All OpenCore-Patcher Tahoe-Patchset Done!`tput sgr0` `tput setaf 7``tput sgr0`"
echo "———————————————————————————————————————————————————————————————————————————————"
echo " "

}
function Quit
{
clear
echo " " 
echo "
Quit Build OCLP."

osascript -e 'tell app "terminal" to display dialog "Quit Build OCLP Tahoe-Patchset" with icon file "System:Library:CoreServices:loginwindow.app:Contents:Resources:ShutDown.tiff" buttons {"Logout"} default button 1 with title "Build OCLP Tahoe-Patchset"'
echo " " 
echob "`tput setaf 7``tput sgr0``tput bold``tput setaf 2`Good By`tput sgr0` `tput setaf 7``tput sgr0``tput setaf 7``tput sgr0``tput bold``tput setaf 26`$nameh`tput sgr0` `tput setaf 7``tput sgr0`"
echo " " 
exit 0
}
while [ 1 ]
do
head
menu
case $option in

a|A)
echo
BUILD ;;
b|B)
echo
CHECK ;;
c|C)
echo
UPDATE ;;
d|D)
echo
APP ;;
x|X)
echo
Quit ;;


*)
echo ""
esac
echo
echob "`tput setaf 7``tput sgr0``tput bold``tput setaf 2`You must type any key to return.`tput sgr0` `tput setaf 7``tput sgr0`"
echo
read -n 1 line
clear
done

exit
