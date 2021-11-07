package react.native.navigation.interfaces;

import haxe.extern.EitherType;

typedef LayoutComponent = {
	/**
	 * Component reference id, Auto generated if empty
	 */
	?id:String,

	/**
	 * Name of your component
	 */
	name:haxe.extern.EitherType<String, Float>,

	/**
	 * Styling options
	 */
	?options:Options,
	/**
	 * Properties to pass down to the component
	 */
	?passProps:Dynamic
}

typedef LayoutStackChildren = {
	/**
	 * Set component
	 */
	?component:LayoutComponent,
	/**
	 * Set the external component
	 */
	?externalComponent:ExternalComponent
}

typedef LayoutStack = {
	/**
	 * Set ID of the stack so you can use Navigation.mergeOptions to
	 * update options
	 */
	?id:String,
	/**
	 * Set children screens
	 */
	?children:Array<LayoutStackChildren>,
	/**
	 * Set options
	 */
	?options:Options,
}

typedef LayoutTabsChildren = {
	/**
	 * Set stack
	 */
	?stack:LayoutStack,
	/**
	 * Set component
	 */
	?component:LayoutComponent,
	/**
	 * Set the external component
	 */
	?externalComponent:ExternalComponent,
	/**
	 * Set the side menu
	 */
	?sideMenu:LayoutSideMenu,
}

typedef LayoutBottomTabs = {
	/**
	 * Set ID of the stack so you can use Navigation.mergeOptions to
	 * update options
	 */
	?id:String,
	/**
	 * Set the children screens
	 */
	?children:Array<LayoutTabsChildren>,
	/**
	 * Set the bottom tabs options
	 */
	?options:Options
}

typedef LayoutSideMenu = {
	/**
	 * Set ID of the stack so you can use Navigation.mergeOptions to
	 * update options
	 */
	?id:String,
	/**
	 * Set the left side bar
	 */
	?left:Layout,
	/**
	 * Set the center view
	 */
	?center:Layout,
	/**
	 * Set the right side bar
	 */
	?right:Layout,
	/**
	 * Set the bottom tabs options
	 */
	?options:Options,
}

typedef LayoutSplitView = {
	/**
	 * Set ID of the stack so you can use Navigation.mergeOptions to
	 * update options
	 */
	?id:String,
	/**
	 * Set master layout (the smaller screen, sidebar)
	 */
	?master:Layout,
	/**
	 * Set detail layout (the larger screen, flexes)
	 */
	?detail:Layout,
	/**
	 * Configure split view
	 */
	?options:Options,
}

typedef LayoutTopTabs = {
	/**
	 * Set the layout's id so Navigation.mergeOptions can be used to update options
	 */
	?id:String,
	/**
	 * Set the children screens
	 */
	?children:Array<LayoutTabsChildren>,
	/**
	 * Configure top tabs
	 */
	?options:Options,
}

typedef LayoutRoot = {
	/**
	 * Set the root
	 */
	root:Layout,

	?modals:Dynamic,
	?overlays:Dynamic,
}

typedef ExternalComponent = {
	/**
	 * Set the screen's id so Navigation.mergeOptions can be used to update options
	 */
	?id:String,
	/**
	 * Name of your component
	 */
	?name:EitherType<String, Float>,
	/**
	 * Configure component options
	 */
	?options:Options,
	/**
	 * Properties to pass down to the component
	 */
	?passProps:Dynamic
}

typedef Layout = {
	/**
	 * Set the component
	 */
	?component:LayoutComponent,
	/**
	 * Set the stack
	 */
	?stack:LayoutStack,
	/**
	 * Set the bottom tabs
	 */
	?bottomTabs:LayoutBottomTabs,
	/**
	 * Set the side menu
	 */
	?sideMenu:LayoutSideMenu,
	/**
	 * Set the split view
	 */
	?splitView:LayoutSplitView,
	/**
	 * Set the top tabs
	 */
	?topTabs:LayoutTopTabs,
	/**
	 * Set the external component
	 */
	?externalComponent:ExternalComponent,
}
