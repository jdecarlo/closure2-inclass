
class Animal {
    
    var name : String?
    var savedExecute : (()->Void)?
    
    func action(command : String, execute:()->Void) {
        
        self.savedExecute = execute
    }
    
    func performAction() {
        
        if let se = self.savedExecute {
            
            se()
        }
    }
}

var dog = Animal()

dog.name = "Fido"

print(dog.name!)

var i = 0

i = 1



var clo = {() -> Void in

    print("walking the dog")
    print(i)
}

i = 2
i = 6
dog.action("Walk", execute: clo )

i = 3
dog.performAction()














