This is a project to build a program that will emulate all the docking stations, bikes, and infrastructure required to make a publicly available bike share system.

The program is built using TDD with Ruby and Rspec.

More details to follow...

## User Stories

As a person<br>
So that I can use a bike<br>
I'd like a docking station to release a bike<br>

As a person<br>
So that I can use a good bike<br>
I'd like to see if a bike is working<br>

As a member of the public<br>
So I can return bikes I've hired<br>
I want to dock my bike at the docking station<br>

## Domain Model

| Objects        | Messages      |
| -------------- | ------------- |
| Person         |               |
| --------       | -----------   |
| Bike           | working?      |
| ------         | ------------- |
| DockingStation | release_bike  |

Bike <-- working? --> true/false <br>
DockingStation <-- release_bike --> a Bike
