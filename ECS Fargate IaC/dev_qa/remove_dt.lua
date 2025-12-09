function clean_log(tag, timestamp, record)
    local log = record["message"]


    print("[DEBUG] Original log: " .. tostring(log))

    if log and type(log) == "string" then

        local cleaned_log = log:gsub("%[!dt.-%] ?", "")


        print("[DEBUG] Cleaned log: " .. tostring(cleaned_log))


        record["message"] = cleaned_log
    else
        print("[DEBUG] Log field is missing, nil, or not a string")
    end

    return 1, timestamp, record
end
