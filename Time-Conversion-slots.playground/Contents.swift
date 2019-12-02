import Foundation

print("Hello World")

let startTime = 7.0
let endTime = 20.0

/*for time in startTime...endTime {
	
    print(time)
} */ //1, 3, 5, 7 ,9

let interval = 0.25
for i in stride(from: 2.0, to: 20.0, by: interval) {
	//print(i)
   // print(String(format: "a float number: %.2f", i))
    var tim1 = String(format: "%.2f", i)
    //var tim2 = String(format: "a float number: %.2f", i)

    if tim1.hasSuffix(".25") {
       tim1 = tim1.replacingOccurrences(of: ".25", with: ".15")
    }
    if tim1.hasSuffix(".50") {
        tim1 = tim1.replacingOccurrences(of: ".50", with: ".30")
    }
    if tim1.hasSuffix(".75") {
        tim1 = tim1.replacingOccurrences(of: ".75", with: ".45")
    }
   
   // print(tim1)

    var timeInDouble:Double = Double(tim1) as! Double
    //print(timeInDouble)
    if timeInDouble > 12.45 {
     timeInDouble =  timeInDouble - 12.0
    }else{

    }

   // print(Double(round(1000*timeInDouble)/1000))

    var finalTimeSlot = String(Double(round(1000*timeInDouble)/1000))
    
    if finalTimeSlot.hasSuffix("5"){

    }else{

       finalTimeSlot = "\(finalTimeSlot)0"
    }
    

    print(finalTimeSlot)
   // let replaced = str.replacingOccurrences(of: "4.0", with: "5.0")

   

}


