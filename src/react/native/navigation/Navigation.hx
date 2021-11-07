package react.native.navigation;

import react.native.navigation.interfaces.Options;
import react.native.navigation.events.EventsRegistry;
import js.lib.Promise;
import react.native.navigation.interfaces.Layout;
import react.native.navigation.adapters.constants.NavigationConstants;
import react.native.navigation.interfaces.Processors.OptionsProcessor;
import react.native.navigation.interfaces.ProcessorSubscription;
import haxe.extern.EitherType;
import react.native.navigation.interfaces.CommandName;

@:jsRequire("react-native-navigation", "Navigation")
extern class Navigation {
	static public var Element:react.ReactType;
	#if ios
	static public var TouchablePreview:react.ReactType;
	#end
	// top level
	static public function registerComponent(id:String, cb:Void->Dynamic):Void;
	
	static public function addOptionProcessor<T,S>(optionPath:String,processor:OptionsProcessor<T,S>):ProcessorSubscription;
	/**
	 * Method to be invoked when a layout is processed and is about to be created. This can be used to change layout options or even inject props to components.
	 */
	static public function addLayoutProcessor(processor:Layout->CommandName->Layout):ProcessorSubscription;

	static public function setLazyComponentRegistrator(lazyRegistratorFn:EitherType<String, Int>->Void):Void;

	/**
	 * Utility helper function like registerComponent,
	 * wraps the provided component with a react-redux Provider with the passed redux store
	 * @deprecated
	 */
	@:deprecated
	static public function registerComponentWithRedux(componentId:String, callback:Void->Dynamic, provider:Dynamic, store:Dynamic):Void;

	/**
	 * Reset the app to a new layout
	 */
	static public function setRoot(v:LayoutRoot):Promise<Dynamic>;

	/**
	 * Set default options to all screens. Useful for declaring a consistent style across the app.
	 */
	static public function setDefaultOptions(options:Options):Void;

	/**
	 * Change a component's navigation options
	 */
	static public function mergeOptions(componentId:String, options:Options):Void;

	/**
	 * Update a mounted component's props
	 */
	static public function updateProps(componentId:String, props:Dynamic, ?callback:Void->Void):Void;

	/**
	 * Show a screen as a modal.
	 */
	static public function showModal(lyout:Layout):Promise<String>;

	/**
	 * Dismiss a modal by componentId. The dismissed modal can be anywhere in the stack.
	 */
	static public function dismissModal(componentId:String, ?mergeOptions:Options):Promise<String>;

	/**
	 * Dismiss all Modals
	 */
	static public function dismissAllModals(?mergeOptions:Options):Promise<String>;

	/**
	 * Push a new layout into this screen's navigation stack.
	 */
	static public function push(componentId:String, l:Layout):Promise<String>;

	/**
	 * Pop a component from the stack, regardless of it's position.
	 */
	static public function pop(componentId:String, ?mergeOptions:Options):Promise<String>;

	/**
	 * Pop the stack to a given component
	 */
	static public function popTo(componentId:String, ?mergeOptions:Options):Promise<String>;

	/**
	 * Pop the component's stack to root.
	 */
	static public function popToRoot(componentId:String, ?mergeOptions:Options):Promise<String>;

	/**
	 * Sets new root component to stack.
	 */
	static public function setStackRoot(componentId:String, layout:haxe.extern.EitherType<Layout, Array<Layout>>):Promise<Dynamic>;

	/**
	 * Show overlay on top of the entire app
	 */
	static public function showOverlay<P>(layout:Layout):Promise<String>;

	/**
	 * dismiss overlay by componentId
	 */
	static public function dismissOverlay(componentId:String):Promise<String>;

	/**
	 * dismiss all overlays
	 */
	static public function dismissAllOverlays(componentId:String):Promise<String>;

	/**
	 * Resolves arguments passed on launch
	 */
	static public function getLaunchArgs():Promise<Dynamic>;

	/**
	 * Obtain the events registry instance
	 */
	static public function events():EventsRegistry;

	/**
	 * Constants coming from native
	 */
	static public function constants():Promise<NavigationConstants>;

	/**
	 * Constants coming from native (synchronized call)
	 */
	static public function constantsSync():NavigationConstants;
}
