# We're making some guesses about the package scripts lolol

OOPS="\n🥴 hmm maybe check your package.json...?\n\n"

npm install || printf "${OOPS}"
npm run start || printf "${OOPS}"
npm run build || printf "${OOPS}"
npm run serve || printf "${OOPS}"
