// Ship superclass
class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

// CruiseShip subclass
class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = 0 // Initially no passengers
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
        }
    }
    
    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount)")
    }
}


// CargoShip subclass
class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = 0 // Initially no cargo
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
        }
    }
    
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount)")
    }
}

// PirateShip subclass
class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int, currentPassengerCount: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = 0 // Initially no treasure
        self.numberOfCannons = numberOfCannons
        self.currentPassengerCount = currentPassengerCount // Initial number of passengers
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
        }
    }
    
    func printTreasureCount() {
        print("Current treasure count: \(currentTreasureCount)")
    }
    
    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount)")
    }
}

// Creating an instance of PirateShip and demonstrating its properties and methods
let pirateShip = PirateShip(name: "Black Pearl", year: 1715, countryOfOrigin: "England", maxTreasureCapacity: 1000, numberOfCannons: 50, currentPassengerCount: 10)

// Adding treasure
pirateShip.addTreasure()
pirateShip.addTreasure()
pirateShip.printTreasureCount()

// Demonstrating superclass properties and methods
print("Ship name: \(pirateShip.name)")
print("Year built: \(pirateShip.year)")
print("Country of origin: \(pirateShip.countryOfOrigin)")

// Printing current passenger count
pirateShip.printPassengerCount()

