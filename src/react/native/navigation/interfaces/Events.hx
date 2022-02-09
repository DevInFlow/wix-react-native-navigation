package react.native.navigation.interfaces;

typedef CommandCompletedEvent = {
	commandName:String,
	commandId:String,
	completionTime:Float
}

typedef BottomTabSelectedEvent = {
	selectedTabIndex:Int,
	unselectedTabIndex:Float
}

typedef BottomTabLongPressedEvent = {
	selectedTabIndex:Float
}

typedef BottomTabPressedEvent = {
	tabIndex:Float
}
