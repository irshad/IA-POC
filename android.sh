# build files
echo "$(tput setaf 3)√√ $(tput setaf 2)Build Started 🚀"
npm run build
echo "$(tput setaf 3)√√ $(tput setaf 2)Build Completed ✨"

# sync android project
echo "$(tput setaf 3)√√ $(tput setaf 2)Android Sync Started 🚀"
npx cap sync android
echo "$(tput setaf 3)√√ $(tput setaf 2)Android Sync Completed ✨"

#open android studio
echo "$(tput setaf 3)√√ $(tput setaf 2)Opening Android Studio 📂"
npx cap open android