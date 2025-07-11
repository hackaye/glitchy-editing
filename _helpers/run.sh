# We're making some guesses about the package scripts lolol

if [ ! -f package.json ]; then

printf "\n🤔 No package.json found – try the Open button instead!\n\n"    

else 

OOPS="\n🤬 hmm maybe check what's in your package.json scripts and try "npm run script-name"?\n\n"

npm install || printf "${OOPS}"
npm run start || printf "${OOPS}"

fi
