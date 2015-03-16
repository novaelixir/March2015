# Group 3 Instructions

Do not share any information with the other groups.  

Feel free to add dependencies if necessary.

Your task is to do the following:

* Request to be added to the NoVaElixir github repository
* Clone the git repository

    git clone git@github.com:novaelixir/March2015.git

* Create a branch for your work

    git checkout -b group-3

* Grab JSON from the following file: /tmp/b.json

You should render this JSON as HTML.

The JSON will have the following structure:

    {
       "entry": {
         "abc": [
           ["lorem", "sit"],
           ["ipsum", "amit"],
           ["dolor", "sic"]
         ],
         "def": [
           ["lorem", "sit"],
           ["ipsum", "amit"],
           ["dolor", "sic"]
         ],
         "ghi": [
           ["lorem", "sit"],
           ["ipsum", "amit"],
           ["dolor", "sic"]
         ],
         "jkl": [
           ["lorem", "sit"],
           ["ipsum", "amit"],
           ["dolor", "sic"]
         ]
       }
    }

The names will *NOT* be "entry", "abc", etc.  You also cannot assume that the
number of lists inside if "abc" will be four, but each sub-list should contain
exactly 2 entries.

* Commit your changes
* Add tests if you have time
* git push origin group-3
