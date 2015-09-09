#!/usr/bin/perl
# fortune.cgi - get a random quote
#
# <!-- comment -->
#
# get a quote - change your path appropriately
$quote = `/sw/bin/fortune 40% AccessControl 20% familia.fortunes 15% linux 15% songs-poems 5% vida.fortunes 5% ascii-art`;
#
# print it in a page
#
print <<EOF;
<html>
  <head>
    <title> Fortune Cookie </title>
  </head>
  <body bgcolor=black>
      <p>
      <font size="5" face="Georgia, Arial color="green">
        And your quote is:
        ${quote}
      </font>
      </p>
  </body>
</html>
EOF
