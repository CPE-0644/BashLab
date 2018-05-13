#!bin/bash

music_no=`find . $1 -name *.mp3 | wc -l`
movie_no=`find . $1 -name *.mp4 | wc -l`
no=`find $1 | wc -l`
misc_no=$(($no-$(($music_no+$movie_no))))
html_tag="
<html>

<head> </head>

<body>
    <center>
        <table border='1px'>
            <tr bgcolor='##ffffff '>
                <td >File Type </td>
                <td > Quantity </td>
            </tr>
            <tr>
                <td align='center'> Music </td>
                <td align='center'> ${music_no} </td>
            </tr>
            <tr>
                <td align='center'> Movie </td>
                <td align='center'> ${movie_no} </td>
            </tr>
            <tr>
                <td align='center'> Misc </td>
                <td align='center'> ${misc_no} </td>
            </tr>
            <tr>
                <td align='center'> Total </td>
                <td align='center'> ${no} </td>
            </tr>
        </table>
    </center>
</body>

</html>"

echo $html_tag >> 590610644$1.html