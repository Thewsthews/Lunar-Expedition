local rooms={
    airlock = {
        description = "You are in the lunar base airlock. Dim the emergency lights flicker." .. "A sealed door leads to the main corridor.",
        items= {"spacesuit", "emergency_beacon"},
        exits= {"corridor"}

    },
    corridor = {
        description="A long, sterile corridor stretches before you" .. "Scientific equipment lies scattered on the floor.",
        items = {"data_tablet", "brok_label_radio"},
        exits = {"airlock", "research_lab", "living_quarters"}
    }, research_lab={
        description="The research lab looks like it was abandoned in a hurry. ".. "Strange experimental equipment covers the workbenches.",
        items = {"alien_artifact", "research_notes"},
        exits = {"corridor"}
    }
}

--Global game state

current_room = "airlock"

function describe_room()
    local room = rooms[current_room]
    return room.description
end

function process_command(command, game_state)
    local parts = {}
    for word in command:gmatch("%w+")do
        table.insert(parts, word)
    end

    local action = parts[1]
    local target = parts[2]

    if action == "go" then
        return handle_movement(target)
    elseif action = "examine" then
        return handle_examination(target)
        elseif action == "quit" then
            return "quit"
            else 
                return "I don't understand that command please:)"
    end
end

function handle_movement(direction)
    local cuurent_room_data = rooms[current_room]

    --Check if direction is a valid exit
    for _, exit in ipairs(current_room_data.exits) do
        if exit == direction then
            current_room = direction
            return "You move to the" .. direction .. "."
        end
    end

    return "you cannot go that way."
end

function handle_examination(target)
    local current_room_data = rooms[current_room]

    --Check room items
    for_, item in ipairs(current_room_data.items) do
        if item == target then
        return describe_item(target)
    end
end

function describe_item(item)
    local item_descriptions={
        spacesuit = "A worn but functional space suit. Looks like it might still protect you from the lunar environment.",
        emergency_beacon = "A small electronic device that could signal for help.",
        data_tablet = "A tablet with fragmented data about a mysterious research project",
        broken_radio = "A communication radio, damaged but possibly repairable.",
        alien_artifact = "A strange, pulsing object that seems to defy normal laws of physics.",
        research_notes = "Cryptic notes describing an unknown experiment."
    }

    return item_descriptions[item] or "You can't find any details about that item."
end
