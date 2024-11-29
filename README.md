# Lunar Expedition: A Text-Based Lunar Survival Adventure

## 📖 Overview

Lunar Expedition is an immersive text-based adventure game that places players in the role of a lone astronaut stranded on a mysterious lunar base. Developed using Rust and Lua, the game offers a unique blend of systems programming performance and dynamic scripting flexibility.

## ✨ Features

### Core Gameplay Mechanics
- 🌙 Explore a mysterious lunar base through text commands
- 🕹️ Interactive room and item descriptions
- 🧩 Dynamic game world defined through Lua scripts
- 🚀 Survival-based narrative with exploration elements

### Technical Highlights
- 🦀 Rust-powered game engine
- 📜 Lua-based game logic and world definition
- 🧰 Modular script-based game design
- 🎮 Flexible command processing system

## 📂 Project Structure
lunar-expedition/
│
├── src/           
│   ├── main.rs    # Game entry point-------------|---Combined into one file main.rs
│   ├── game.rs    # Game logic implementation----|
│   └── state.rs   # Game state management--------|
│
├── scripts/       
│   ├── rooms.lua          # Room definitions and navigation----|
│   ├── items.lua          # Item properties and interactions---|---Combined into one file
│   └── interactions.lua   # Complex game event handling--------|
│
└── Cargo.toml     # Project dependencies and configuration
## 🚀 Getting Started

### Prerequisites
- Rust programming language (latest stable version)
- Lua 5.4
- Cargo package manager

### Installation

1. Clone the repository
```bash
git clone https://github.com/Thewsthews/Lunar-Expedition.git
cd Lunar-Expedition
```
2. Build the project

```bash
cargo build
```
3. Run the game

```bash
cargo run
```
🎲 Gameplay

Commands
go [direction]: Move between rooms
examine [item]: Investigate items in the current room
quit: Exit the game

Example Interactions
```Copy> go corridor
You move to the corridor.

> examine spacesuit
A worn but functional spacesuit. Looks like it might still protect you from the lunar environment.
```
🛠️ Technology Stack

Core Language: Rust
Scripting: Lua 5.4
Dependencies:

mlua: Rust-Lua integration
tokio: Asynchronous runtime
serde: Serialization
tracing: Logging

🧭 Development Philosophy
Lunar Expedition demonstrates a unique approach to game development by leveraging:

Rust's performance and safety
Lua's flexibility and ease of scripting
Modular, extensible game design

🗺️ Future Roadmap

Expanded room and item interactions
Procedural event generation
Enhanced survival mechanics
Multiplayer support

🤝 Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

Fork the repository
Create your feature branch (git checkout -b feature/AmazingFeature)
Commit your changes (git commit -m 'Add some AmazingFeature')
Push to the branch (git push origin feature/AmazingFeature)
Open a Pull Request

📞 Contact
Mathews Etiegni - [etiegni@gmail.com]
Project Link: https://github.com/Thewsthews/Lunar-Expedition
🙏 Acknowledgments

Rust Programming Language
Lua Scripting Language
Open-source community

Happy lunar exploring! 🌙🚀
