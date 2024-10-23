# Ants Vs. SomeBees

An object-oriented tower defense game inspired by PopCap Games' Plants Vs. Zombies. As the ant queen, you must defend your colony from invading bees by strategically placing different types of ants that can collect food and attack the enemies.

## Game Description

In Ants Vs. SomeBees, you control an ant colony defending against waves of bee invaders. The game proceeds in turns where:
1. New bees may enter the colony
2. Players can place new ants using collected food
3. All insects (ants, then bees) take their actions

### Win/Lose Conditions
- **Ants Win**: All bees are vanquished
- **Ants Lose**: 
  - A bee reaches the end of the tunnel
  - The QueenAnt is destroyed (if present)

## Game Components

### Core Structures
- **The Colony**: The main game area consisting of connected Places
- **Places**: Individual locations that can hold one ant and multiple bees
- **The Hive**: Starting location for bees
- **Tunnels**: Connected Places through which bees travel

### Characters

#### Ants
- **HarvesterAnt**: Collects food for the colony
- **ThrowerAnt**: Attacks bees by throwing leaves
- **QueenAnt**: Special ant that must be protected
- *(More ant types available in-game)*

#### Bees
- **Regular Bees**: Standard orange enemies
- **Wasps**: Yellow bees that deal double damage
- **Boss Bee**: Powerful green bee with high health

## Technical Implementation

### Core Classes
```python
class GameState:    # Manages colony state and game progress
class Place:        # Represents a location in the colony
class Hive:         # Bees' starting position
class AntHomeBase:  # Ants' home to defend
class Insect:       # Base class for all insects
class Ant:         # Base class for all ant types
class Bee:         # Handles bee behavior and movement
```

### Key Features
- Object-oriented programming architecture
- Turn-based gameplay system
- Complex interaction handling between insects
- Food resource management
- Multiple ant types with unique abilities

## Project Structure
The game is built using object-oriented programming principles, focusing on:
- Class inheritance
- Polymorphism
- Encapsulation
- State management

## Credits
This project is part of UC Berkeley's CS 61A course, based on material from Chapter 2.5 of Composing Programs.
