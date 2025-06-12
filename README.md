# AdapterPattern
The repo implement Adapter Structural design pattern using the Swift programming language.

## Adapter
Enables communication between two incompatible interfaces without changing their existing code.
Integrates incompatible interfaces with existing systems.

## Purpose
* Integrate components after they have been designed
* Useful when working with code that can not be changed

## Variants
### The Object Adapter
* Adopts/subclasses Target
* Wraps and Adaptee instance
* Delegates the calls to the Adaptee
* Returns the result to the client
** No client code changes required

### The Class Adapter
* Relies on multiple inheritances
* Subclasses both Target adn Adaptee
** Swift does not allow multiple inheritance

### Adapter via Swift Type Extension

## Benefits
* Reduces refactoring efforts

## Pitfalls
* Increased code complexity
* Adapting inappropriate components
