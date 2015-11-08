module days

data days = sunday|monday|tuesday|wednesday|thursday|friday|saturday

nextDay: days -> days
nextDay sunday = monday
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay _ = sunday

nextWeekday: days -> days
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday _ = monday
