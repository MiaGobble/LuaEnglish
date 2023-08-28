local emergency = {}

function emergency:panic(message : string)
    error(`PANIC: {message} @ traceback: {debug.traceback()}`)
end

function emergency:stress(message : string)
    task.defer(function()
        error(`STRESS: {message} @ traceback: {debug.traceback()}`)
    end)
end

return emergency