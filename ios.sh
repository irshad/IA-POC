# build files
echo "Build Started"
npm run build
echo "Build Completed"

# sync android project
echo "IOS Sync Started"
npx cap sync ios
echo "IOS Sync Completed"

#open xcode
echo "Opening xcode"
npx cap open ios