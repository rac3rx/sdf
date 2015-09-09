#!/usr/bin/perl
# fortune.cgi - get a random quote
# get a quote - change your path appropriately
$quote = `/sw/bin/fortune 35% ascii-art 30% familia.fortunes 15% linux 15% songs-poems 5% vida.fortunes`;
#$quote = `/sw/bin/fortune`;
# print it in a page
print <<EOF;
<html>
  <head>
    <basefont face=Arial>
    <title> Fortune Cookie </title>
  </head>
  <body>
    <body bgcolor=black>
    #<body text=green>
    <font color=green></font>
    <font size="7"></font>
    <br>
    <p>
    And your quote is:
    <p>
#   <pre>
    $quote
#   </pre>
  </body>
</html>
EOF
