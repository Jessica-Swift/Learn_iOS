import SwiftUI

private let formatter = DateFormatter()

let nowTime = Calendar.current.dateComponents([.hour, .minute], from: Date.now)

//let nowTime = Date.now
let endTime = Calendar.current.dateComponents([.hour, .minute], from: Date.now.addingTimeInterval(36000))

print(nowTime.hour!)
print(endTime)


