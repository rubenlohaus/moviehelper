# moviehelper
CLI for omdbapi.com

Bash script to search and display info from omdbapi.com.
Only use Python json.tool to display JSON on pretty format

Usage:

Search:
```
moviesearch.sh -s=<SEARCH_STRING> -t=<TOKEN>
```
Movie info:
```
moviesearch.sh -i=<MOVIE_ID> -r=<TRUE/FALSE> -t=<TOKEN>

r: Display Rotten Tomatoes info.
```
** Token value is mandatory https://omdbapi.com/apikey.aspx **


Future improvements:
- Add paramaters validation.
- Support wider functionalities from API.
