const records = [    
    {
        user_id: 1,
        device: "Windows 10",
        action: "start",
        date_actioned:100
    },
    {
        user_id: 2,
        device: "OSX 15.4",
        action: "start",
        date_actioned: 200
    },
    {
        user_id: 1,
        device: "OSX 15.4",
        action: "start",
        date_actioned: 250
    },
    {
        user_id: 1,
        device: "Windows 10",
        action: "stop",
        date_actioned: 370
    },
    {
        user_id: 1,
        device: "iPhone 8s",
        action: "stop",
        date_actioned: 410
    },
    {
        user_id: 2,
        device: "OSX 15.4",
        action: "stop",
        date_actioned: 490
    },
    {
        user_id: 3,
        device: "Android 9.1",
        action: "start",
        date_actioned: 800
    },
    {
        user_id: 3,
        device: "Android 9.1",
        action: "stop",
        date_actioned: 850
    },
    {
        user_id: 3,
        device: "Android 9.3",
        action: "start",
        date_actioned: 875
    }
]


/* No 3: Function that returns user who performed action within time window given */

function getUser (records, action, start_time, end_time) {
    let results = [];    
    records.forEach((record) => {
        if (record.action == action) {
            if (record.date_actioned >= start_time && record.date_actioned <= end_time) {
                results.push(record.user_id);
            }
        }       
    });
    let unique = [...new Set(results)]
    return unique;
}

console.log(getUser(records,"start", 700, 900));


/* No 4:Function that returns user who performed action within given time window*/

function getPlaybackTime(user_id, records) {  
    let recordsOfUserId = records.filter(record => record.user_id == user_id);
    let sum = 0; 
    let previousRecordDevice = "";
    let previousRecordDateActioned = "";
    recordsOfUserId.forEach((record) => {
        if (record.action == "start" && previousRecordDevice == "") {
            previousRecordDevice = record.device
            previousRecordDateActioned = record.date_actioned
        } else if
            (record.action == "stop" && record.device == previousRecordDevice){
                let playtime = record.date_actioned - previousRecordDateActioned
                sum += playtime
                previousRecordDevice = ""
                previousRecordDateActioned = record.date_actioned
        } else if 
            (record.action == "stop" && previousRecordDevice == "") {
                let difference = record.date_actioned - previousRecordDateActioned
                sum += difference;
            }        
    })
    return sum
}

console.log(getPlaybackTime(2, records));