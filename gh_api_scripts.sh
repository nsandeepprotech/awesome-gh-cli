#usage:-
#echo ${PAT} | gh auth login --with-token

#parameter repo=test
#creates private repo
gh api --silent https://api.github.com"/user/repos \
          -f "private=true" -f "name=$repo" \
          -f "description=$repo"

#parameter owner=nsandeepprotech 
#get billing by user for actions
gh api https://api.github.com/users/$owner/settings/billing/actions

#get billing by user for packages
gh api https://api.github.com/users/$owner/settings/billing/packages

#get billing by user for shared-storage
gh api https://api.github.com/users/$owner/settings/billing/shared-storage
