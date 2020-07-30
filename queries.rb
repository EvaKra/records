require './seed'

def get_user(records, action, start_time, end_time)
    results = []
    records.each do |record|
        if record.action == action
            if record.date_actioned >= start_time && record.date_actioned <= end_time
                results << record.user_id
            end
        end
    end
    return results
end

p get_user(Record.all,"start", 700, 900)


def getPlaybackTime(user_id, records)
    sum = 0
    records_user = records.where(user_id: user_id)
    p records_user
    previous_record_device = ""
    previous_record_date_actioned = ""
        records_user.each do |record|
            if record.action == "start" && previous_record_device == ""
                previous_record_device = record.device
                previous_record_date_actioned = record.date_actioned             
            elsif record.action == "stop" && record.device == previous_record_device
                playtime = record.date_actioned - previous_record_date_actioned
                sum += playtime
                previous_record_device = ""
                previous_record_date_actioned = record.date_actioned
            elsif
                record.action == "stop" && previous_record_device == ""
                difference = record.date_actioned - previous_record_date_actioned
                sum += difference
            end
        end
    return sum
end

p getPlaybackTime(3, Record.all)
