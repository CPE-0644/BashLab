#!bin/bash

`mkdir $1/Music`
`mkdir $1/Movie`

for file in `find $1 -name *.mp3`;
do 
    `mv $file $1/Music` 
done

for file in `find $1 -name *.mp4`;
do 
    `mv $file $1/Movie` 
done

music_no=`find $1/Music -name *.mp3 | wc -l`
movie_no=`find $1/Movie -name *.mp4 | wc -l`
no=`find $1 | wc -l`

echo "Music $music_no"
echo "Movie $movie_no"
echo "Total $no"