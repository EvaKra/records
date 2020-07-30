# Records

## Background
a) Write a javascript function that takes in records (an array of all the database records),
an action, and a start_time and end_time time window and returns all user ids that
performed that action within that time window.

E.g. getUsers(records, “start”, 700, 900) will return the result [3]

b) Write a javascript function that takes in a user_id and an array of all the database
records, and reports a user’s total “unique” playback time in seconds.

E.g. getPlaybackTime(1, records) will return 310


## Usage

``` Javascript
# Clone this repository
$ git clone https://github.com/EvaKra/records

# Go into the repository
$ cd records

# Run
node record_queries.js
OR
ruby queries.rb 
```
