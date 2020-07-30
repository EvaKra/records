require './schema'

#Seed users
User.create(name: "Test One")
User.create(name: "Test Two")
User.create(name: "Test Three")

#Seed records
Record.create(user_id: 1, device: "Windows 10", action: "start", date_actioned: 100)
Record.create(user_id: 2, device: "OSX 15.4", action: "start", date_actioned: 200)
Record.create(user_id: 1, device: "iPhone 8s", action: "start", date_actioned: 250)
Record.create(user_id: 1, device: "Windows 10", action: "stop", date_actioned: 370)
Record.create(user_id: 1, device: "iPhone 8s", action: "stop", date_actioned: 410)
Record.create(user_id: 2, device: "OSX 15.4", action: "stop", date_actioned: 490)
Record.create(user_id: 3, device: "Android 9.1", action: "start", date_actioned: 700)

Record.create(user_id: 1, device: "Windows 11", action: "start", date_actioned: 800)
Record.create(user_id: 1, device: "Windows 11", action: "stop", date_actioned: 900)
Record.create(user_id: 3, device: "Android 9.2", action: "start", date_actioned: 800)
Record.create(user_id: 3, device: "Android 9.2", action: "stop", date_actioned: 890)
