# We're making some guesses about the package scripts lolol

OOPS="\n🥴 hmm maybe check your package.json...?\n\n"

npm run build || printf "${OOPS}"
npm run serve || printf "${OOPS}"
