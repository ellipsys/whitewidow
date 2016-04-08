#Whitewidow SQL Vulnerability Scanner

#How it works
Place search parameters inside of search_query.txt inside of lib folder

Once you have search parameters, whitewidow will use the parameters as a google search and return the first page;
(second page coming soon) of the google search.

From there whitewidow will pull the URLs from the first page of google and save them into a temporary log file under
/tmp/SQL_sites_to_check.txt.

Whitewidow will read this file and begin a vulnerability check on the webpages by adding an apostrophe to the end of
the URL.

If the URL produces a SQL syntax error the URL is saved into a temporary log file under /tmp/SQL_VULN.txt, if the URL
produces any type of error, 404, 401, 503, etc.. The URL will be saved into a log file under /log/non_exploitable.txt.

After the program has run it's search queries, the temporary SQL_VULN.txt is copied over to /log/SQL_VULN.LOG and is
truncated for further searches.

#Demo
whitewidow.rb

                                :
                                :
                     ,,         :         ,,
                     ::         :         ::
              ,,     ::         :         ::     ,,
              ::     ::         :         ::     ::
               '::.   '::.      :      .::'   .::'
                  '::.  '::.  _/~\_  .::'  .::'
                    '::.  :::/  X  \:::  .::'
                      ':::::(       ):::::'
                             \ ___ /
                       .:::::/`   `\:::::.
                     .::'   .:\o o/:.   '::.
                   .::'   .::  :":  ::.   '::.
                 .::'    ::'   ' '   '::    '::.
               ::      ::             ::      ::
               ^^      ::             ::      ^^
                       ::             ::
                       ^^             ^^

                           WHITEWIDOW
                  Sql Vulnerability Web Scanner




    Credits: Ekultek
    Version: '1.0.0'
    Name: Whitewidow


         [ LEGAL DISCLAIMER ]

         This program was written as a learning tool only,
         and should be treated as such. The purpose of this
         program is to teach what a SQL vulnerable website
         looks like, and how to prevent yourself from becoming
         vulnerable.

         Please ensure to inform all owners of vulnerable
         websites found while running this program. The owner
         of Whitewidow claims no responsibilities for any
         malicious actions taken with the information
         that is discovered through the use of this program.

         Thank you for reading through this disclaimer and
         remember to provide all information to the owner of the
         site. All information is stored inside of the log files.
         _________________________________________________________________

         [ TERMS OF SERVICE ]

         By continuing with the processes of this program you agree,
         that all info discovered will be reported immediatly to the
         owners of the webpages.

         Furthermore you agree that the owner and writer of this program,
         is not responsible for the actions taken upon the knowledge gained
         from use of this program.

         Please take the time to read through the Legal Disclaimer and the
         Terms of Service.

         If for any reason you do not agree with the disclaimer, or terms,
         please exit this program immediatly.


         Press enter to continue...


    [19:7:17 INFO]Searching for possible SQL vulnerable sites, using search query in
    url:spr.php?id=

    [19:7:18 SUCCESS]Site found: http://ffhacktics.com/spr.php?id=RAMUZA2

    [19:7:19 SUCCESS]Site found: http://www.krishnawithjava.com/tur/spr.php?t=9609

    [19:7:20 SUCCESS]Site found: http://support.clean-mx.com/clean-mx/viruses.php?vi
    rusname=SPR/PHP.ID&sort=id%20asc

    [19:7:21 SUCCESS]Site found: http://www.aquariumist.com.ua/spr.php?id=7

    [19:7:22 SUCCESS]Site found: http://www.lemis.com/grog/Humour/SPR.php

    [19:7:23 INFO]Possible vulnerable sites dumped into C:/Users/Justin/MyScripts/Ru
    bySQL/whitewidow/tmp/SQL_sites_to_check.txt

    [19:7:23 INFO]Checking if sites are vulnerable.

    [19:7:23 INFO]Parsing page for SQL syntax error: http://ffhacktics.com/spr.php?i
    d=RAMUZA2'

    [19:7:24 WARNING]URL: http://ffhacktics.com/spr.php?id=RAMUZA2' is not vulnerabl
    e, dumped to non_exploitable.txt

    [19:7:25 INFO]Parsing page for SQL syntax error: http://www.krishnawithjava.com/
    tur/spr.php?t=9609'

    [19:7:26 WARNING]URL: http://www.krishnawithjava.com/tur/spr.php?t=9609' is not
    vulnerable, dumped to non_exploitable.txt

    [19:7:27 INFO]Parsing page for SQL syntax error: http://support.clean-mx.com/cle
    an-mx/viruses.php?virusname=SPR/PHP.ID&sort=id%20asc'

#Help
Push, pull, fork, whatever you want to do, if you wanna help it would be great!

