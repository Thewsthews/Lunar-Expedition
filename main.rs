use mlua::{Lua,Table,Value};
use std::io::{self, Write};

mod game_state;
mod game_state::GameState;

fn main() -> Result<(), Box<dyn std::error::Error>>{
    //Start of the luna runtime
    let lua = Lua::new();

    //Loading of the game scripts
    lua.load_from_std_lib(mlue::StdLib::ALL)?;

    //Load room and item definition from Lua
    lua.load_from_filesystem("scripts/rooms.lua")?;
    lua.load_from_filesystem("scripts/items.lua")?;

    loop{
        //Display current room description
        display_room_description(&lua, &game_state)?;

        //Prompt for player action
        print!("\n>");
        io::stdout().flush()?;

        let mut input = String::new();
        io::stdin().read_line(&mut input)?;

        let command = input.trim().to_lowercase();

        //Processing of player command through lua
        let result = process_player_command(&lua, &mut game_state, &command)?;

        if result == "quit"{
            break;
        }
    }
    Ok(())
}

fn display_room_description(lua: &lua, game_state: &GameState) -> Result<(), mlua::Error>{
    let globals = lua.globals();
    let describe_room: mlua::Function = globals.get("describe_room")?;

    let description: String = describe_room.call(game_state.current_room)?;
    println!("{}", description);

    Ok(())
}

fn process_player_command(lua: &Lua, game_state: &mut GameState, command: &str) -> Result<String, mlua::Error> {
    let result: String = lua.globals().get::<_, mlua::Function>("process_command")?.call((command, game_state))?;
    Ok(result)
}
