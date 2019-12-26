This is a project to build a program that will emulate all the docking stations, bikes, and infrastructure required to make a publicly available bike share system.

The program is built using TDD with Ruby and Rspec.

More details to follow...

## USER STORIES

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

## Domain Model

| Objects | Messages |
| Person | :------------ |
| Bike | working? |
| DockingStation | release_bike |

Bike <-- working? --> true/false <br>
DockingStation <-- release_bike --> a Bike
