import UIKit

var greeting = "Hello, playground"

//What is Encapulation - Encapsulation is a way to restrict the direct access to some components of an object, so users cannot access state values for all of the variables of a particular object. Encapsulation can be used to hide both data members and data functions or methods associated with an instantiated class or object.

//What is Abstraction - Hiding unnecessary details. w.r.t following example. We are showing/giving users to access widrawMoney, depositMoney & getBankBalance. And need to hide unnecessary details/method from user , so I made following 3 methods as private submitPapers , approavalFromManager & submitInDB


class SBIBankAccount {
    
   // var bankBalance = 0.0 // it should not be public/open
  //  fileprivate var bankBalance = 0.0 // with fileprivate still its accessible - it should be private
    private var bankBalance = 0.0
    
    internal var testVariable = "test" // or filepriavte var testVariable = "test"
    
    func getBankBalance() -> Double {
        return bankBalance
    }
    
    func widrawMoney(amount: Double) -> Double{
        if amount <= 0 {
            debugPrint("Account Balance is 0.")
        }
        else if amount > bankBalance {
            debugPrint("Account balance is not sufficient to widraw money.")
        }
        else {
            bankBalance = bankBalance - amount
        }
        return bankBalance
    }
    
    func depositMoney(amount: Double) -> Double{
        bankBalance = bankBalance + amount
        return bankBalance
    }
    
    //following method added for tesing/ignore - to check internal and fileprivate access modifier
    private func somePrivateMethodForCalculation() {
        testVariable = "testUpdate2"
    }
    
    //other some bank method to check Abtraction concept
    func openBankAccount() {
        submitPapers()
        approavalFromManager()
        submitInDB()
    }
    
    private func submitPapers() {
        //do some stuff
        print("Papers/Documents Sumitted in the Bank")
    }
    private func approavalFromManager() {
        //do some stuff
        print("Papers/Documents sent to the Managers for the Approval")
    }
    private func submitInDB() {
        //do some stuff
        print("Submit/Add users details in the Database")
    }
}

// Open/public access is the highest (least restrictive) access level
// private access is the lowest (most restrictive) access level.

//open/public access modifier - Open access and public access enable entities to be used within any source file from their defining module, and also in a source file from another module that imports the defining module. You typically use open or public access when specifying the public interface to a framework.

//private - use of an entity to the enclosing declaration (within scope you can access) //Use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration.

// fileprivate - restricts the use of an entity to its own defining source file. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file.

let mallikarjunAccount = SBIBankAccount()
print("Balance is: \(mallikarjunAccount.getBankBalance())")
//mallikarjunAccount.bankBalance = -100.0 //this should not allowed. Because user can set any amount like -100, 1000000 ..etc, so bankBalance this variable should be private, it should not be accessible to outside of the class. (code with -  var bankBalance = 0.0 )
//mallikarjunAccount.bankBalance = 100 //bankBalance' is inaccessible due to 'private' protection level ,  with fileprivate and open/public its accessible so make it private

//Here for Bank User only can get account balance info, widraw money or deposit money. He cant set the bank balance.

print(mallikarjunAccount.depositMoney(amount: 42000.0))
print("Money is Deposited")
print("Balance : \(mallikarjunAccount.getBankBalance())")
print(mallikarjunAccount.widrawMoney(amount: 3203.0))
print("Balance : \(mallikarjunAccount.getBankBalance())")

mallikarjunAccount.testVariable = "qq4324" //with internal and fileprivate accessible

//for Abstraction
//mallikarjunAccount.approavalFromManager() // //this should not be allowed, so make it private, it will solve problem
//mallikarjunAccount.submitInDB() //this should not be allowed

mallikarjunAccount.openBankAccount() //show neccessary this, hide unnecessary things from the user
