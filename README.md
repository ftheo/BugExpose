A potential Bug in Apple Swift language

UPDATE: It seems that for the issue to show up you need to make the function "init" folowed by a capital letter

It seems that if a function name starts with init (eg. initFoo, initConnect) swift compiler processes it differently than a regular function.
This causes in the example code here the deinitializer to be called. Not sure exactly what is hapenning. Maybe the function is transalted to a constructor of a new object and the old one is being replaced and thus deinit is being called

See there difference by simply changing the function name and the seclector of an NSNotfication

The problem could be related by this Swift feature
https://developer.apple.com/library/ios/documentation/Swift/Conceptual/BuildingCocoaApps/InteractingWithObjective-CAPIs.html

This issue does not seem to be a problem in Objective-C.
 