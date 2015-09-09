#!/usr/bin/perl
# fortune.cgi - get a random quote
#
# <!-- comment -->
#
# get a quote - change your path appropriately
$quote = `/sw/bin/fortune 35% AccessConrol 25% familia.fortunes 15% linux 15% songs-poems 5% vida.fortunes 5% ascii-art`;
#
# print it in a page
#
print <<EOF;
<html>
  <head>
    <basefont face=Arial>
    <title> Fortune Cookie </title>
  </head>
  <body bgcolor=black>
      <font color=green></font>
      <font size=5></font>
        And your quote is:
    <p></p>
    <p></p>
    <pre>
    ${quote}
    </pre>
  </body>
</html>
EOF
