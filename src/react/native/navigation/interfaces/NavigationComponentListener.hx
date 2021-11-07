package react.native.navigation.interfaces;

import react.native.navigation.interfaces.ComponentEvents.ScreenPoppedEvent;
import react.native.navigation.interfaces.ComponentEvents.PreviewCompletedEvent;
import react.native.navigation.interfaces.ComponentEvents.SearchBarCancelPressedEvent;
import react.native.navigation.interfaces.ComponentEvents.SearchBarUpdatedEvent;
import react.native.navigation.interfaces.ComponentEvents.ModalAttemptedToDismissEvent;
import react.native.navigation.interfaces.ComponentEvents.ModalDismissedEvent;
import react.native.navigation.interfaces.ComponentEvents.NavigationButtonPressedEvent;
import react.native.navigation.interfaces.ComponentEvents.ComponentDidDisappearEvent;
import react.native.navigation.interfaces.ComponentEvents.ComponentDidAppearEvent;
import react.native.navigation.interfaces.ComponentEvents.ComponentWillAppearEvent;

typedef NavigationComponentListener = {
	?componentWillAppear:ComponentWillAppearEvent,
	?componentDidAppear:ComponentDidAppearEvent,
	?componentDidDisappear:ComponentDidDisappearEvent,
	?navigationButtonPressed:NavigationButtonPressedEvent,
	?modalDismissed:ModalDismissedEvent,
	?modalAttemptedToDismiss:ModalAttemptedToDismissEvent,
	?searchBarUpdated:SearchBarUpdatedEvent,
	?searchBarCancelPressed:SearchBarCancelPressedEvent,
	?previewCompleted:PreviewCompletedEvent,
	?screenPopped:ScreenPoppedEvent,
}
