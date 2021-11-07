package react.native.navigation.events;

import react.native.navigation.interfaces.ComponentEvents.ScreenPoppedEvent;
import react.native.navigation.interfaces.NavigationComponentListener;
import react.native.navigation.interfaces.ComponentEvents.PreviewCompletedEvent;
import react.native.navigation.interfaces.ComponentEvents.SearchBarCancelPressedEvent;
import react.native.navigation.interfaces.ComponentEvents.SearchBarUpdatedEvent;
import react.native.navigation.interfaces.ComponentEvents.ModalAttemptedToDismissEvent;
import react.native.navigation.interfaces.ComponentEvents.ModalDismissedEvent;
import react.native.navigation.interfaces.ComponentEvents.NavigationButtonPressedEvent;
import react.native.navigation.interfaces.Events.BottomTabLongPressedEvent;
import react.native.navigation.interfaces.Events.BottomTabPressedEvent;
import react.native.navigation.interfaces.Events.BottomTabSelectedEvent;
import react.native.navigation.interfaces.Events.CommandCompletedEvent;
import react.native.navigation.interfaces.ComponentEvents.ComponentDidDisappearEvent;
import react.native.navigation.interfaces.ComponentEvents.ComponentDidAppearEvent;
import react.native.navigation.interfaces.ComponentEvents.ComponentWillAppearEvent;
import react.native.navigation.interfaces.EmitterSubscription;

extern class EventsRegistry {
	public function registerAppLaunchedListener(callback:Void->Void):EmitterSubscription;
	public function registerComponentWillAppearListener(callback:ComponentWillAppearEvent->Void):EmitterSubscription;
	public function registerComponentDidAppearListener(callback:ComponentDidAppearEvent->Void):EmitterSubscription;
	public function registerComponentDidDisappearListener(callback:ComponentDidDisappearEvent->Void):EmitterSubscription;
	public function registerCommandCompletedListener(callback:CommandCompletedEvent->Void):EmitterSubscription;
	public function registerBottomTabSelectedListener(callback:BottomTabSelectedEvent->Void):EmitterSubscription;
	public function registerBottomTabPressedListener(callback:BottomTabPressedEvent->Void):EmitterSubscription;
	public function registerBottomTabLongPressedListener(callback:BottomTabLongPressedEvent->Void):EmitterSubscription;
	public function registerNavigationButtonPressedListener(callback:NavigationButtonPressedEvent->Void):EmitterSubscription;
	public function registerModalDismissedListener(callback:ModalDismissedEvent->Void):EmitterSubscription;
	public function registerModalAttemptedToDismissListener(callback:ModalAttemptedToDismissEvent->Void):EmitterSubscription;
	public function registerSearchBarUpdatedListener(callback:SearchBarUpdatedEvent->Void):EmitterSubscription;
	public function registerSearchBarCancelPressedListener(callback:SearchBarCancelPressedEvent->Void):EmitterSubscription;
	public function registerPreviewCompletedListener(callback:PreviewCompletedEvent->Void):EmitterSubscription;
	public function registerCommandListener(callback:(String->Dynamic->Void)):EmitterSubscription;
	public function bindComponent(component:ReactComponent<Dynamic>, ?componentId:String):EmitterSubscription;
	public function registerComponentListener(listener:NavigationComponentListener, componentId:String):EmitterSubscription;
	public function registerScreenPoppedListener(callback:ScreenPoppedEvent):EmitterSubscription;
}
