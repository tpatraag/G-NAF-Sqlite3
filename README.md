# G-NAF November 2018 Data

For a light reading and basic understanding: [G-NAF findings](https://aglenergy.atlassian.net/wiki/spaces/CMS/pages/513737573/G-NAF+findings)

To create a local Sqlite database

- extract the _data/woh.zip_ inside the same folder
- open a command prompt and go to DB directory
- run `DB\> sqlite3.exe GNAF-sqlite3.db` This will create/open the db file named **_GNAF-sqlite3.db_**
- run `sqlite> .read ../src/scripts/load_data.sqlite`
- run `sqlite> vacuum;`
- now open the **_GNAF-sqlite3.db_** from any sqlite IDE (like [SQLiteStudio](https://sqlitestudio.pl/index.rvt)) for expert's play

> If you wish to add more data files in to the DB, apart from the provided one, there is a **warning**. Sqlite3 import commands can quickly import a text or CSV files containing data. However, it cannot ignore the Header line automatically. You need to put the PSV file in _data/woh_ folder after deleting the Header row. Then add the import command at the end of **load_data.sqlite**. Don't forget to use VACUUM periodically if you wish to change the data structures frequently.
