#curl https://api.github.com/users/sauloal/repos | grep -v -e "https://api" -e "https://avatars" > github.json
curl https://api.github.com/users/sauloal/repos | grep -e "{" -e "}" -e "\[" -e "\]" -e "full_name" -e "html_url" -e "\"description\"" | grep -v -e "https://api" -e "https://avatars" > github.json
