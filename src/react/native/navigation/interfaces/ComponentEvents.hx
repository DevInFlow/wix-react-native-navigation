package react.native.navigation.interfaces;

@:enum abstract ComponentType(String) {
	var Component = 'Component';
	var TopBarTitle = 'TopBarTitle';
	var TopBarBackground = 'TopBarBackground';
	var TopBarButton = 'TopBarButton';
}

typedef ComponentEvent = {
	componentId:String
}

typedef ComponentWillAppearEvent = {
	> ComponentEvent,
	componentName:String,
	?passProps:Dynamic,
	componentType:ComponentType
}

typedef ComponentDidAppearEvent = {
	> ComponentEvent,
	componentName:String,
	?passProps:Dynamic,
	componentType:ComponentType,
}

typedef ComponentDidDisappearEvent = {
	> ComponentEvent,
	componentName:String,
	componentType:ComponentType,
}

typedef NavigationButtonPressedEvent = {
	> ComponentEvent,
	buttonId:String,
}

typedef ModalDismissedEvent = {
	> ComponentEvent,
	componentName:String,
	modalsDismissed:Float,
}

typedef ModalAttemptedToDismissEvent = {
	> ComponentEvent,
	componentId:String,
}

typedef SearchBarUpdatedEvent = {
	> ComponentEvent,
	text:String,
	isFocused:Bool,
}

typedef SearchBarCancelPressedEvent = {
	> ComponentEvent,
	?componentName:String,
}

typedef PreviewCompletedEvent = {
	> ComponentEvent,
	?componentName:String,
	?previewComponentId:String,
}

typedef ScreenPoppedEvent = {
	> ComponentEvent,
	componentId:String,
}
