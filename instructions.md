# Group 2 Instructions

Do not share any information with the other groups.  

Feel free to add dependencies if necessary.

Your task is to do the following:

* Request to be added to the NoVaElixir github repository
* Clone the git repository

    git clone git@github.com:novaelixir/March2015.git

* Create a branch for your work

    git checkout -b group-2

* Grab JSON from the following file: /tmp/a.json

The JSON will contain one entry. That entry will contain four entries. For each
of the four entries is a list with an even number of entries.
Your job is to replace each list with list of pairs that match the first and last
items, the 2nd and 2nd to last items, the 3rd and 3 to last items, etc.

    {
      "entry": {
        "abc": [
          "lorem",
          "ipsum",
          "dolor",
          "sic",
          "amit",
          "sit"
        ],
        "def": [
          ... more entries here ...
        ],
        "ghi": [
          ... more entries here ...
        ],
        "jkl": [
          ... more entries here ...
        ]
      }
    }

So the output for "abc" should look like:

    "abc": [
      ["lorem", "sit"],
      ["ipsum", "amit"],
      ["dolor", "sic"]
    ]

* Write the modified json to a file named /tmp/b.json
* Commit your changes
* Add tests if you have time
* git push origin group-2
