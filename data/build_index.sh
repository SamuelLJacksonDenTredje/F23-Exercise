#!/bin/bash

read -r -d '' HTML1 <<'EOF'
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Initial Page for Our Small Web</title>
  <meta name="author" content="Web Data Science course - Matteo Lissandrini & Daniele Dell'Aglio">
  <meta name="description" content="This is a self-contained portion of the Web just for educational purposes">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="css/style.css" rel="stylesheet">
</head>

<body>
  <header>
    <h1>The DV4 Wide Web</h1>
  </header>
  <article>
    <h2>Our small Web</h2>
    <p><strong>Hello, world!</strong> This is a self-contained portion of the Web just for educational purposes.</p>
    <h3>Pages listed under this domain</h3>
    <ul>
EOF


read -r -d '' HTML2 <<'EOF'

    </ul>
  </article>

  <footer>
    <p>Create for the course on <a href="https://moduler.aau.dk/course/2021-2022/DSNDVB403?lang=en-GB">Web Data Science</a> 
       at <a href="https://www.cs.aau.dk/">Aalborg University</a>
    </p>
    <p>Copyright 2022</p>
  </footer>
</body>

</html>
EOF



echo  "$HTML1" > web/index.html

for fname in `ls -1 web/*.html | grep -v 'index.html' | sed 's/web//'`
do
echo "      <li><a href="${fname}">${fname}</a></li>" >> web/index.html
done


echo  "$HTML2" >> web/index.html





