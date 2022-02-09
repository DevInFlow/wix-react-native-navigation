package react.native.navigation.interfaces;

import haxe.extern.EitherType;
import react.native.component.props.ImageSource;

typedef Color = Null<EitherType<String, ThemeColor>>;
typedef FontFamily = String;

@:enum abstract FontStyle(String) to String {
	var normal = 'normal';
	var italic = 'italic';
}

@:enum abstract FontWeightIOS(String) to String {
	var normal = 'normal';
	var ultralight = 'ultralight';
	var thin = 'thin';
	var light = 'light';
	var regular = 'regular';
	var medium = 'medium';
	var semibold = 'semibold';
	var demibold = 'demibold';
	var extrabold = 'extrabold';
	var ultrabold = 'ultrabold';
	var bold = 'bold';
	var heavy = 'heavy';
	var black = 'black';
}

@:enum abstract FontWeight(String) to String {
	var normal = 'normal';
	var bold = 'bold';
	var w100 = '100';
	var w200 = '200';
	var w300 = '300';
	var w400 = '400';
	var w500 = '500';
	var w600 = '600';
	var w700 = '700';
	var w800 = '800';
	var w900 = '900';
}

@:enum abstract LayoutOrientation(String) to String {
	var portrait = "portrait";
	var landscape = "landscape";
}

typedef AndroidDensityNumber = Float;

@:enum abstract SystemItemIcon(String) to String {
	var done = 'done';
	var cancel = 'cancel';
	var edit = 'edit';
	var save = 'save';
	var add = 'add';
	var flexibleSpace = 'flexibleSpace';
	var fixedSpace = 'fixedSpace';
	var compose = 'compose';
	var reply = 'reply';
	var action = 'action';
	var organize = 'organize';
	var bookmarks = 'bookmarks';
	var search = 'search';
	var refresh = 'refresh';
	var stop = 'stop';
	var camera = 'camera';
	var trash = 'trash';
	var play = 'play';
	var pause = 'pause';
	var rewind = 'rewind';
	var fastForward = 'fastForward';
	var undo = 'undo';
	var redo = 'redo';
}

@:enum abstract InterpolationType(String) to String {
	var accelerate = "accelerate";
	var decelerate = "decelerate";
	var decelerateAccelerate = "decelerateAccelerate";
	var accelerateDecelerate = "accelerateDecelerate";
	var fastOutSlowIn = "fastOutSlowIn";
	var linear = "linear";
	var overshoot = "overshoot";
	var spring = "spring";
}

typedef Interpolation = {
	type:InterpolationType,
	?factor:Float,
	?tension:Float,
	?mass:Float,
	?damping:Float,
	?stiffness:Float,
	?allowsOverdamping:Bool,
	?initialVelocity:Float
}

typedef ThemeColor = {
	?light:EitherType<String, Dynamic>,
	?dark:EitherType<String, Dynamic>,
}

@:enum abstract SplitViewDispalyMode(String) to String {
	var auto = "auto";
	var visible = "visible";
	var hidden = "hidden";
	var overlay = "overlay";
}

@:enum abstract PrimaryEdge(String) to String {
	var leading = 'leading';
	var trailing = 'trailing';
}

@:enum abstract PrimaryBackgroundStyle(String) to String {
	var none = 'none';
	var sidebar = 'sidebar';
}

typedef OptionsSplitView = {
	/**
	 * Master view display mode
	 * @default 'auto'
	 */
	?displayMode:SplitViewDispalyMode,
	/**
	 * Master view side. Leading is left. Trailing is right.
	 * @default 'leading'
	 */
	?primaryEdge:PrimaryEdge,
	/**
	 * Set the minimum width of master view
	 */
	?minWidth:Float,
	/**
	 * Set the maximum width of master view
	 */
	?maxWidth:Float,
	/**
	 * Set background style of sidebar. Currently works for Mac Catalyst apps only.
	 * @default 'none'
	 */
	?primaryBackgroundStyle:PrimaryBackgroundStyle
}

@:enum abstract Style(String) from String to String {
	var light = 'light';
	var dark = 'dark';
}

typedef OptionsStatusBar = {
	/**
	 * Set the status bar visibility
	 * @default true
	 */
	?visible:Bool,
	/**
	 * Set the text color of the status bar
	 * @default 'light'
	 */
	?style:Style,
	/**
	 * Set the background color of the status bar
	 * #### (Android specific)
	 */
	?backgroundColor:Color,
	/**
	 * Draw screen behind the status bar
	 * #### (Android specific)
	 */
	?drawBehind:Bool,
	/**
	 * Allows the StatusBar to be translucent (blurred)
	 * #### (Android specific)
	 */
	?translucent:Bool,
	/**
	 * Animate StatusBar style changes.
	 * #### (iOS specific)
	 */
	?animated:Bool,
	/**
	 * Automatically hide the StatusBar when the TopBar hides.
	 * #### (iOS specific)
	 */
	?hideWithTopBar:Bool,
	/**
	 * Blur content beneath the StatusBar.
	 * #### (iOS specific)
	 */
	?blur:Bool
}

@:enum abstract Direction(String) to String {
	var rtl = 'rtl';
	var ltr = 'ltr';
	var locale = 'locale';
}

typedef OptionsLayout = {
	?fitSystemWindows:Bool,
	/**
	 * Set the screen background color
	 */
	?backgroundColor:Color,
	/**
	 * Set background color only for components, helps reduce overdraw if background color is set in default options.
	 * #### (Android specific)
	 */
	?componentBackgroundColor:Color,
	/**
	 * Set the allowed orientations
	 */
	?orientation:Array<LayoutOrientation>,
	/**
	 * Layout top margin
	 * #### (Android specific)
	 */
	?topMargin:Float,

	/**
	 * Set language direction.
	 * only works with DefaultOptions
	 */
	?direction:Direction,
	/**
	 * Controls the application's preferred home indicator auto-hiding.
	 * #### (iOS specific)
	 */
	?autoHideHomeIndicator:Bool,
}

@:enum abstract OptionsModalPresentationStyle(String) to String {
	var formSheet = 'formSheet';
	var pageSheet = 'pageSheet';
	var overFullScreen = 'overFullScreen';
	var overCurrentContext = 'overCurrentContext';
	var currentContext = 'currentContext';
	var popover = 'popover';
	var fullScreen = 'fullScreen';
	var none = 'none';
}

@:enum abstract OptionsModalTransitionStyle(String) to String {
	var coverVertical = 'coverVertical';
	var crossDissolve = 'crossDissolve';
	var flipHorizontal = 'flipHorizontal';
	var partialCurl = 'partialCurl';
}

typedef OptionsTopBarLargeTitle = {
	/**
	 * Enable large titles
	 */
	?visible:Bool,
	/**
	 * Set the font size of large title's text
	 */
	?fontSize:Int,
	/**
	 * Set the color of large title's text
	 */
	?color:Color,
	/**
	 * Set the font family of the large title text
	 */
	?fontFamily:FontFamily,
	/**
	 * Set the font style of the large title text
	 */
	?fontStyle:FontStyle,
	/**
	 * Specifies font weight. The values 'normal' and 'bold' are supported
	 * for most fonts. Not all fonts have a variant for each of the numeric
	 * values, in that case the closest one is chosen.
	 */
	?fontWeight:FontWeight,
}

@:enum abstract Alignment(String) to String {
	var center = 'center';
	var fill = 'fill';
}

typedef OptionsTopBarTitle = {
	/**
	 * Text to display in the title area
	 */
	?text:String,
	/**
	 * Font size
	 */
	?fontSize:Int,
	/**
	 * Text color
	 */
	?color:Color,
	/**
	 * Set the font family for the title
	 */
	?fontFamily:FontFamily,
	/**
	 * Set the font style for the title
	 */
	?fontStyle:FontStyle,
	/**
	 * Specifies font weight. The values 'normal' and 'bold' are supported
	 * for most fonts. Not all fonts have a variant for each of the numeric
	 * values, in that case the closest one is chosen.
	 */
	?fontWeight:FontWeight,
	/**
	 * Custom component as the title view
	 */
	?component:{
		/**
		 * Component reference id, Auto generated if empty
		 */
		?id:String,

		/**
		 * Name of your component
		 */
		name:String,

		/**
		 * Set component alignment
		 */
		?alignment:Alignment,
		/**
		 * Properties to pass down to the component
		 */
		?passProps:Dynamic,
	},
	/**
	 * Top Bar title height in densitiy pixels
	 * #### (Android specific)
	 */
	?height:Int,
	/**
	 * Title alignment
	 * #### (Android specific)
	 */
	?alignment:Alignment
}

typedef OptionsTopBarSubtitle = {
	/**
	 * Set subtitle text
	 */
	?text:String,
	/**
	 * Set subtitle font size
	 */
	?fontSize:Int,
	/**
	 * Set subtitle color
	 */
	?color:Color,
	/**
	 * Set the font family for the subtitle
	 */
	?fontFamily:FontFamily,
	/**
	 * Set the font style for a text
	 */
	?fontStyle:FontStyle,
	/**
	 * Specifies font weight. The values 'normal' and 'bold' are supported
	 * for most fonts. Not all fonts have a variant for each of the numeric
	 * values, in that case the closest one is chosen.
	 */
	?fontWeight:FontWeight,
	/**
	 * Set subtitle alignment
	 */
	?alignment:Alignment
}

@:enum abstract TopBarBackButtonDisplayMode(String) to String {
	var _default = 'default';
	var generic = 'generic';
	var minimal = 'minimal';
}

typedef OptionsTopBarBackButton = {
	/**
	 * Overrides the text that's read by the screen reader when the user interacts with the back button
	 * #### (Android specific)
	 */
	?accessibilityLabel:String,
	/**
	 * Button id for reference press event
	 */
	?id:String,
	/**
	 * Image to show as the back button
	 */
	?icon:ImageResource,
	/**
	 * SF Symbol to show as the back button
	 * #### (iOS 13+ specific)
	 */
	?sfSymbol:String,
	/**
	 * Weither the back button is visible or not
	 * @default true
	 */
	?visible:Bool,
	/**
	 * Set the back button title
	 * #### (iOS specific)
	 */
	?title:String,
	/**
	 * Show title or just the icon
	 * #### (iOS specific)
	 */
	?showTitle:Bool,
	/**
	 * Back button icon and text color
	 */
	?color:Color,
	/**
	 * Set subtitle font size
	 */
	?fontSize:Int,
	/**
	 * Set the font family for the back button
	 * #### (iOS specific)
	 */
	?fontFamily:FontFamily,
	/**
	 * Set the font style for a text
	 */
	?fontStyle:FontStyle,
	/**
	 * Specifies font weight. The values 'normal' and 'bold' are supported
	 * for most fonts. Not all fonts have a variant for each of the numeric
	 * values, in that case the closest one is chosen.
	 */
	?fontWeight:FontWeight,
	/**
	 * Set testID for reference in E2E tests
	 */
	?testID:String,
	/**
	 * Enables iOS 14 back button menu display
	 * #### (iOS specific)
	 * @default true
	 */
	?enableMenu:Bool,
	/**
	 * Allows the NavBar to be translucent (blurred)
	 * #### (iOS specific)
	 */
	?displayMode:TopBarBackButtonDisplayMode,

	/**
	 * Controls whether the default back button should pop the Stack or not
	 * @default true
	 */
	?popStackOnPress:Bool
}

typedef HardwareBackButtonOptions = {
	/**
	 * Controls whether the hardware back button should dismiss modal or not
	 * #### (Android specific)
	 * @default true
	 */
	?dismissModalOnPress:Bool,
	/**
	 * Controls whether the hardware back button should pop the Stack or not
	 * #### (Android specific)
	 * @default true
	 */
	?popStackOnPress:Bool
}

typedef OptionsTopBarScrollEdgeAppearanceBackground = {
	/**
	 * Background color of the top bar
	 */
	?color:Color,
	/**
	 * Allows the NavBar to be translucent (blurred)
	 * #### (iOS specific)
	 */
	?translucent:Bool
}

typedef OptionsTopBarScrollEdgeAppearance = {
	?background:OptionsTopBarScrollEdgeAppearanceBackground,
	active:Bool,
	/**
	 * Disable the border on bottom of the navbar
	 * #### (iOS specific)
	 * @default false
	 */
	?noBorder:Bool,
	/**
	 * Change the navbar border color
	 */
	?borderColor:Color
}

typedef OptionsTopBarBackground = {
	/**
	 * Background color of the top bar
	 */
	?color:Color,
	/**
	 * Clip the top bar background to bounds if set to true.
	 * #### (iOS specific)
	 */
	?clipToBounds:Bool,
	/**
	 * Set a custom component for the Top Bar background
	 */
	?component:{
		?name:String,
		/**
		 * Properties to pass down to the component
		 */
		?passProps:Dynamic
	},
	/**
	 * Allows the NavBar to be translucent (blurred)
	 * #### (iOS specific)
	 */
	?translucent:Bool,
	/**
	 * Enable background blur
	 * #### (iOS specific)
	 */
	?blur:Bool
}

@:enum abstract TopBarButtonShowAsAction(String) to String {
	var ifRoom = 'ifRoom';
	var withText = 'withText';
	var always = 'always';
	var never = 'never';
}

typedef OptionsTopBarButton = {
	/**
	 * (Android only) Sets a textual button to be ALL CAPS. default value is true
	 */
	?allCaps:Bool,

	/**
	 * Button id for reference press event
	 */
	id:String,

	/**
	 * Set the button icon
	 */
	?icon:ImageResource,
	/**
	 * Set the SF symbol as icon (will be used primarily)
	 * #### (iOS 13+ specific)
	 */
	?sfSymbol:String,
	/**
	 * Set the button icon insets
	 */
	?iconInsets:IconInsets,
	/**
	 * Set the button as a custom component
	 */
	?component:{
		/**
		 * Component reference id, Auto generated if empty
		 */
		?id:String,

		/**
		 * Name of your component
		 */
		name:String,

		/**
		 * Properties to pass down to the component
		 */
		?passProps:Dynamic,
		/**
		 * (Android only) component width
		 */
		?width:Int,
		/**
		 * (Android only) component height
		 */
		?height:Int
	},
	/**
	 * (iOS only) Set the button as an iOS system icon
	 */
	?systemItem:SystemItemIcon,
	/**
	 * Set the button text
	 */
	?text:String,
	/**
	 * Overrides the text that's read by the screen reader when the user interacts with the element
	 */
	?accessibilityLabel:String,
	/**
	 * Set the font family for the button's text
	 */
	?fontFamily:FontFamily,
	/**
	 * Set the font style for the button's text
	 */
	?fontStyle:FontStyle,
	/**
	 * Specifies font weight. The values 'normal' and 'bold' are supported
	 * for most fonts. Not all fonts have a variant for each of the numeric
	 * values, in that case the closest one is chosen.
	 */
	?fontWeight:FontWeight,
	/**
	 * Set the font size in dp
	 */
	?fontSize:Int,
	/**
	 * Set the button enabled or disabled
	 * @default true
	 */
	?enabled:Bool,
	/**
	 * Disable icon tinting
	 */
	?disableIconTint:Bool,
	/**
	 * Set text color
	 */
	?color:Color,
	/**
	 * Set text color in disabled state
	 */
	?disabledColor:Color,
	/**
	 * Set icon background style
	 */
	?iconBackground:IconBackgroundOptions,
	/**
	 * Set testID for reference in E2E tests
	 */
	?testID:String,
	/**
	 * (Android only) Set showAsAction value
	 * @see {@link https://developer.android.com/guide/topics/resources/menu-resource|Android developer guide: Menu resource}
	 */
	?showAsAction:TopBarButtonShowAsAction
}

typedef OptionsSearchBar = {
	?visible:Bool,
	?focus:Bool,
	?hideOnScroll:Bool,
	?hideTopBarOnFocus:Bool,
	?obscuresBackgroundDuringPresentation:Bool,
	?backgroundColor:Color,
	?tintColor:Color,
	?placeholder:String,
	?cancelText:String
}

@:enum abstract TopBarBarStyle(String) to String {
	var _default = 'default';
	var black = 'black';
}

typedef OptionsTopBar = {
	/**
	 * Show or hide the top bar
	 */
	?visible:Bool,
	/**
	 * Controls whether TopBar visibility changes should be animated
	 */
	?animate:Bool,
	/**
	 * Top bar will hide and show based on users scroll direction
	 */
	?hideOnScroll:Bool,

	/**
	 * Change button colors in the top bar
	 */
	?leftButtonColor:Color,
	?rightButtonColor:Color,
	?leftButtonDisabledColor:Color,
	?rightButtonDisabledColor:Color,
	/**
	 * Draw behind the navbar
	 */
	?drawBehind:Bool,
	/**
	 * Can be used to reference the top bar in E2E tests
	 */
	?testID:String,
	/**
	 * Title configuration
	 */
	?title:OptionsTopBarTitle,
	/**
	 * Subtitle configuration
	 */
	?subtitle:OptionsTopBarSubtitle,
	/**
	 * Back button configuration
	 */
	?backButton:OptionsTopBarBackButton,
	/**
	 * List of buttons to the left
	 */
	?leftButtons:Array<OptionsTopBarButton>,
	/**
	 * List of buttons to the right
	 */
	?rightButtons:Array<OptionsTopBarButton>,
	/**
	 * Background configuration
	 */
	?background:OptionsTopBarBackground,
	/**
	 *
	 */
	?scrollEdgeAppearance:OptionsTopBarScrollEdgeAppearance,
	/**
	 * Control the NavBar blur style
	 * #### (iOS specific)
	 * @requires translucent: true
	 * @default 'default'
	 */
	?barStyle:TopBarBarStyle,
	/**
	 * Disable the border on bottom of the navbar
	 * #### (iOS specific)
	 * @default false
	 */
	?noBorder:Bool,
	/**
	 * Show a UISearchBar in the Top Bar
	 * #### (iOS 11+ specific)
	 */
	?searchBar:OptionsSearchBar,
	/**
	 * Hides the UISearchBar when scrolling
	 * #### (iOS 11+ specific)
	 */
	?searchBarHiddenWhenScrolling:Bool,
	/**
	 * The placeholder value in the UISearchBar
	 * #### (iOS 11+ specific)
	 */
	?searchBarPlaceholder:String,
	/**
	 * The background color of the UISearchBar's TextField
	 * #### (iOS 13+ specific)
	 */
	?searchBarBackgroundColor:String,
	/**
	 * The tint color of the UISearchBar
	 * #### (iOS 11+ specific)
	 */
	?searchBarTintColor:String,
	/**
	 * Controls Hiding NavBar on focus UISearchBar
	 * #### (iOS 11+ specific)
	 */
	?hideNavBarOnFocusSearchBar:Bool,
	/**
	 * Control the Large Title configuration
	 * #### (iOS 11+ specific)
	 */
	?largeTitle:OptionsTopBarLargeTitle,
	/**
	 * Set the height of the navbar in dp
	 * #### (Android specific)
	 */
	?height:AndroidDensityNumber,
	/**
	 * Change the navbar border color
	 */
	?borderColor:Color,
	/**
	 * Set the border height of the navbar in dp
	 * #### (Android specific)
	 */
	?borderHeight:AndroidDensityNumber,
	/**
	 * Set the elevation of the navbar in dp
	 * #### (Android specific)
	 */
	?elevation:AndroidDensityNumber,
	/**
	 * Layout top margin
	 * #### (Android specific)
	 */
	?topMargin:Int,
	/**
	 * Toggles animation on left buttons bar upon changes
	 */
	?animateLeftButtons:Bool,
	/**
	 * Toggles animation on right buttons bar upon changes
	 */
	?animateRightButtons:Bool,
}

typedef SharedElementTransition = {
	fromId:String,
	toId:String,
	?duration:Float,
	?interpolation:Interpolation
}

typedef ElementTransition = {
	id:String,
	?alpha:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?translationX:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?translationY:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?scaleX:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?scaleY:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?rotationX:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?rotationY:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?x:EitherType<AppearingElementAnimation, DisappearingElementAnimation>,
	?y:EitherType<AppearingElementAnimation, DisappearingElementAnimation>
}

typedef AppearingElementAnimation = {
	> ElementAnimation,
	from:Float
}

typedef DisappearingElementAnimation = {
	> ElementAnimation,
	to:Float
}

typedef ElementAnimation = {
	duration:Float,
	?startDelay:Float,
	?interpolation:Interpolation
}

@:enum abstract AlignHorizontally(String) to String {
	var left = "left";
	var right = "right";
}

@:enum abstract FabSize(String) to String {
	var mini = "mini";
	var regular = "regular";
}

typedef OptionsFab = {
	id:String,
	?backgroundColor:Color,
	?clickColor:Color,
	?rippleColor:Color,
	?visible:Bool,
	?icon:ImageResource,
	?iconColor:Color,
	?alignHorizontally:AlignHorizontally,
	?hideOnScroll:Bool,
	?size:FabSize
}

@:enum abstract BottomTabsAttachMode(String) to String {
	var together = 'together';
	var afterInitialTab = 'afterInitialTab';
	var onSwitchToTab = 'onSwitchToTab';
}

@:enum abstract BottomTabsBarStyle(String) to String {
	var _default = 'default';
	var black = 'black';
}

@:enum abstract BottomTabsTitleDisplayMode(String) to String {
	var alwaysShow = 'alwaysShow';
	var showWhenActive = 'showWhenActive';
	var alwaysHide = 'alwaysHide';
	var showWhenActiveForce = 'showWhenActiveForce';
}

typedef OptionsBottomTabs = {
	/**
	 * Show or hide the bottom tabs
	 */
	?visible:Bool,
	/**
	 * Enable animations when toggling visibility
	 */
	?animate:Bool,
	/**
	 * Controls whether tab selection is animated or not
	 * #### (android specific)
	 * @default true
	 */
	?animateTabSelection:Bool,
	/**
	 * Use large icons when possible, even when three tabs without titles are displayed
	 * #### (android specific)
	 * @default false
	 */
	?preferLargeIcons:Bool,
	/**
	 * Switch to another screen within the bottom tabs via index (starting from 0)
	 */
	?currentTabIndex:Float,
	/**
	 * Switch to another screen within the bottom tabs via screen name
	 */
	?currentTabId:String,
	/**
	 * Set a testID to reference the bottom tabs
	 */
	?testID:String,
	/**
	 * Overrides the text that's read by the screen reader when the user interacts with the element
	 * #### (iOS specific)
	 */
	?accessibilityLabel:String,
	/**
	 * Draw screen component under the tab bar
	 */
	?drawBehind:Bool,
	/**
	 * Set a background color for the bottom tabs
	 */
	?backgroundColor:Color,
	/**
	 * Set when tabs are attached to hierarchy consequently when the
	 * RootView's constructor is called.
	 */
	?tabsAttachMode:BottomTabsAttachMode,
	/**
	 * Control the Bottom Tabs blur style
	 * #### (iOS specific)
	 * @requires translucent: true
	 * @default 'default'
	 */
	?barStyle:BottomTabsBarStyle,
	/**
	 * Allows the Bottom Tabs to be translucent (blurred)
	 * #### (iOS specific)
	 */
	?translucent:Bool,
	/**
	 * Hide the top line of the Tab Bar
	 * #### (iOS specific)
	 */
	?hideShadow:Bool,
	/**
	 * Control the text display mode below the tab icon
	 * #### (Android specific)
	 */
	?titleDisplayMode:BottomTabsTitleDisplayMode,
	/**
	 * Set the elevation of the Bottom Tabs in dp
	 * #### (Android specific)
	 */
	?elevation:AndroidDensityNumber,
	/**
	 * Hides the BottomTabs on scroll to increase the amount of content visible to the user.
	 * The options requires that the scrollable view will be the root view of the screen and that it specifies `nestedScrollEnabled: true`.
	 * #### (Android specific)
	 */
	?hideOnScroll:Bool,
	/**
	 * Control the top border color of the Bottom tabs bar
	 */
	?borderColor:Color,
	/**
	 * Control the top border width of the Bottom tabs bar
	 */
	?borderWidth:Float,
	/**
	 * Control the shadow of the Bottom tabs bar
	 */
	?shadow:ShadowOptions,
}

typedef ShadowOptions = {
	/**
	 * The opacity of the shadow
	 */
	?opacity:Float,
	/**
	 * The color of the shadow
	 */
	?color:Color,
	/**
	 * The blur radius used to create the shadow
	 */
	?radius:Float
}

typedef DotIndicatorOptions = {
	// default red
	?color:Color,
	// default 6
	?size:Float,
	// default false
	?visible:Bool
}

typedef ImageSystemSource = {
	?system:String,
	?fallback:EitherType<String, ImageSource>
}

typedef ImageResource = Dynamic;
// typedef ImageResource = EitherType<ImageSource, EitherType<String, ImageSystemSource>>;

typedef OptionsBottomTab = {
	?dotIndicator:DotIndicatorOptions,

	/**
	 * Set the text to display below the icon
	 */
	?text:String,
	/**
	 * Set the text in a badge that is overlayed over the component
	 */
	?badge:String,
	/**
	 * Set the background color of the badge that is overlayed over the component
	 */
	?badgeColor:String,
	/**
	 * Show the badge with the animation.
	 * #### (Android specific)
	 */
	?animateBadge:Bool,
	/**
	 * Set a testID to reference the tab in E2E tests
	 */
	?testID:String,
	/**
	 * Set the tab icon
	 */
	?icon:ImageResource,
	/**
	 * Set the icon tint
	 */
	?iconColor:Color,
	/**
	 * Set the icon width
	 * #### (Android specific)
	 */
	?iconWidth:Float,
	/**
	 * Set the icon height
	 * #### (Android specific)
	 */
	?iconHeight:Float,
	/**
	 * Set the text color
	 */
	?textColor:Color,
	/**
	 * Set the selected icon tint
	 */
	?selectedIconColor:Color,
	/**
	 * Set the selected text color
	 */
	?selectedTextColor:Color,
	/**
	 * Set the font family for the tab's text
	 */
	?fontFamily:FontFamily,
	/**
	 * Set the font style for the tab's text
	 */
	?fontStyle:FontStyle,
	/**
	 * Specifies font weight. The values 'normal' and 'bold' are supported
	 * for most fonts. Not all fonts have a variant for each of the numeric
	 * values, in that case the closest one is chosen.
	 */
	?fontWeight:FontWeight,
	/**
	 * Set the text font size
	 */
	?fontSize:Float,
	/**
	 * Set the insets of the icon
	 */
	?iconInsets:Dynamic,
	// Need to implement Insets
	/**
	 * Set selected icon image
	 * #### (iOS specific)
	 */
	?selectedIcon:ImageResource,
	/**
	 * Set true if you want to disable the icon tinting
	 * #### (iOS specific)
	 */
	?disableIconTint:Bool,
	/**
	 * Set true if you want to disable the text tinting
	 * #### (iOS specific)
	 */
	?disableSelectedIconTint:Bool,
	/**
	 * Set the font size for selected tabs
	 * #### (Android specific)
	 */
	?selectedFontSize:Float,
	/**
	 * If it's set to false, pressing a tab won't select the tab
	 * instead it will emit a bottomTabPressedEvent
	 */
	?selectTabOnPress:Bool,
	/**
	 * Pop to root of stack by tapping on already selected tab
	 * #### (Android specific)
	 */
	?popToRoot:Bool,
	/**
	 * Set the SF symbol as icon (will be used primarily)
	 * #### (iOS 13+ specific)
	 */
	?sfSymbol:String,
	/**
	 * Set the SF symbol as selected icon (will be used primarily)
	 * #### (iOS 13+ specific)
	 */
	?sfSelectedSymbol:String
}

typedef SideMenuSide = {
	/**
	 * Show or hide the side menu
	 */
	?visible:Bool,
	/**
	 * Enable or disable the side menu
	 */
	?enabled:Bool,
	/**
	 * Set the width of the side menu
	 */
	?width:Float,
	/**
	 * Set the height of the side menu
	 */
	?height:Float,
	/**
	 * Stretch sideMenu contents when opened past the width
	 * #### (iOS specific)
	 * @default true
	 */
	?shouldStretchDrawer:Bool
}

@:enum abstract SideMenuOpenGestureMode(String) to String {
	var entireScreen = "entireScreen";
	var bezel = "bezel";
}

typedef OptionsSideMenu = {
	/**
	 * Configure the left side menu
	 */
	?left:SideMenuSide,
	/**
	 * Configure the right side menu
	 */
	?right:SideMenuSide,
	/**
	 * Configure how a user is allowed to open a drawer using gestures
	 * #### (iOS specific)
	 * @default 'entireScreen'
	 */
	?openGestureMode:SideMenuOpenGestureMode
}

typedef OverlayOptions = {
	/**
	 * Capture touches outside of the Component View
	 */
	?interceptTouchOutside:Bool,
	/**
	 * Control whether this Overlay should handle Keyboard events.
	 * Set this to true if your Overlay contains a TextInput.
	 */
	?handleKeyboardEvents:Bool
}

typedef ModalOptions = {
	/**
	 * Control whether this modal should be dismiss using swipe gesture when the modalPresentationStyle = 'pageSheet'
	 * #### (iOS specific)
	 */
	?swipeToDismiss:Bool
}

@:enum abstract PreviewActionStyle(String) to String {
	var _default = "default";
	var selected = 'selected';
	var destructive = 'destructive';
}

typedef OptionsPreviewAction = {
	/**
	 * Reference ID to get callbacks from
	 */
	id:String,

	/**
	 * Action text
	 */
	title:String,

	/**
	 * Action style
	 */
	?style:PreviewActionStyle,
	/**
	 * Subactions that will be shown when this action is pressed.
	 */
	?actions:Array<OptionsPreviewAction>
}

typedef OptionsPreview = {
	/**
	 * Pass a react node tag to mark a SourceRect for a specific
	 * peek and pop preview element.
	 */
	?reactTag:Float,
	/**
	 * You can set this property specify the width of the preview.
	 * If the width is greater than the device width, it will be zoomed in.
	 */
	?width:Float,
	/**
	 * Height of the preview
	 */
	?height:Float,
	/**
	 * You can control if the users gesture will result in pushing
	 * the preview screen into the stack.
	 */
	?commit:Bool,
	/**
	 * List of actions that will appear underneath the preview window.
	 * They can be nested for sub actions.
	 */
	?actions:Array<OptionsPreviewAction>
}

typedef OptionsAnimationPropertyConfig = {
	/**
	 * Animate from this value, ex. 0
	 */
	?from:Float,
	/**
	 * Animate to this value, ex. 1
	 */
	?to:Float,
	/**
	 * Animation duration
	 * @default 300
	 */
	?duration:Float,
	/**
	 * Animation delay
	 * @default 0
	 */
	?startDelay:Float,
	/**
	 * Animation interplation
	 */
	?interpolation:Interpolation
}

typedef ScreenAnimationOptions = {
	/**
	 * Animate the element over x value
	 */
	?x:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over y value
	 */
	?y:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over translateX
	 */
	?translationX:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over translateY
	 */
	?translationY:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over opacity
	 */
	?alpha:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over scaleX
	 */
	?scaleX:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over scaleY
	 */
	?scaleY:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over rotationX
	 */
	?rotationX:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over rotationY
	 */
	?rotationY:OptionsAnimationPropertyConfig,
	/**
	 * Animate the element over rotation
	 */
	?rotation:OptionsAnimationPropertyConfig,
	/**
	 * Wait for the root view to render before start animation
	 */
	?waitForRender:Bool,
	/**
	 * Enable or disable the animation
	 * @default true
	 */
	?enabled:Bool
}

typedef IconInsets = {
	/**
	 * Configure top inset
	 */
	?top:Int,
	/**
	 * Configure left inset
	 */
	?left:Int,
	/**
	 * Configure bottom inset
	 */
	?bottom:Int,
	/**
	 * Configure right inset
	 */
	?right:Int
}

typedef ViewAnimationOptions = {
	> ScreenAnimationOptions,
	?id:String
}

typedef EnterExitAnimationOptions = {
	/**
	 * Animate opening component
	 */
	?enter:ViewAnimationOptions,
	/**
	 * Animate closing component
	 */
	?exit:ViewAnimationOptions
}

typedef OldModalAnimationOptions = {
	> ViewAnimationOptions,
	/**
	 * Animations to be applied on elements which are shared between the appearing and disappearing screens
	 */
	?sharedElementTransitions:Array<SharedElementTransition>,
	/**
	 * Animations to be applied on views in the appearing or disappearing screens
	 */
	?elementTransitions:Array<ElementTransition>
}

typedef ModalAnimationOptions = {
	/**
	 * Animate opening modal
	 */
	?enter:ViewAnimationOptions,
	/**
	 * Animate closing modal
	 */
	?exit:ViewAnimationOptions,
	/**
	 * Animations to be applied on elements which are shared between the appearing and disappearing screens
	 */
	?sharedElementTransitions:Array<SharedElementTransition>,
	/**
	 * Animations to be applied on views in the appearing or disappearing screens
	 */
	?elementTransitions:Array<ElementTransition>
}

typedef StackAnimationOptions = {
	/**
	 * Wait for the View to render before start animation
	 */
	?waitForRender:Bool,
	/**
	 * Enable or disable the animation
	 * @default true
	 */
	?enabled:Bool,
	/**
	 * Configure animations for the top bar
	 */
	?topBar:EitherType<ViewAnimationOptions, {?enter:ViewAnimationOptions, ?exit:ViewAnimationOptions}>,
	/**
	 * Configure animations for the bottom tabs
	 */
	?bottomTabs:EitherType<ViewAnimationOptions, {?enter:ViewAnimationOptions, ?exit:ViewAnimationOptions}>,
	/**
	 * Configure animations for the content (Screen)
	 */
	?content:EitherType<ViewAnimationOptions, {?enter:ViewAnimationOptions, ?exit:ViewAnimationOptions}>,
	/**
	 * Animations to be applied on elements which are shared between the appearing and disappearing screens
	 */
	?sharedElementTransitions:Array<SharedElementTransition>,
	/**
	 * Animations to be applied on views in the appearing or disappearing screens
	 */
	?elementTransitions:Array<ElementTransition>
}

typedef AnimationOptions = {
	/**
	 * Configure the setStackRoot animation
	 */
	?setStackRoot:EitherType<ViewAnimationOptions, StackAnimationOptions>,
	/**
	 * Configure the setRoot animation
	 */
	?setRoot:EitherType<ViewAnimationOptions, EnterExitAnimationOptions>,
	/**
	 * Configure the animation of the pushed screen
	 * #### (Android specific)
	 */
	?push:StackAnimationOptions,
	/**
	 * Configure what animates when a screen is popped
	 */
	?pop:StackAnimationOptions,
	/**
	 * Configure what animates when modal is shown
	 */
	?showModal:EitherType<OldModalAnimationOptions, ModalAnimationOptions>,
	/**
	 * Configure what animates when modal is dismissed
	 */
	?dismissModal:EitherType<OldModalAnimationOptions, ModalAnimationOptions>
}

/**
 * Configure Android's NavigationBar
 */
typedef NavigationBarOptions = {
	?backgroundColor:Color,
	?visible:Bool
}

/**
 * Used for configuring and controlling the main window in iOS
 */
typedef WindowOptions = {
	/**
	 * Configure the background color of the application's main window.
	 */
	?backgroundColor:Color
}

typedef IconBackgroundOptions = {
	/**
	 * Set background color
	 */
	color:Color,

	/**
	 * Set background color on disabled state
	 */
	?disabledColor:Color,
	/**
	 * Set corner radius
	 */
	?cornerRadius:Float,
	/**
	 * Set width
	 */
	?width:Float,
	/**
	 * Set height
	 */
	?height:Float
}

typedef Options = {
	/**
	 * Configure the status bar
	 */
	?statusBar:OptionsStatusBar,
	/**
	 * Configure the layout
	 */
	?layout:OptionsLayout,
	/**
	 * Configure the presentation style of the modal
	 */
	?modalPresentationStyle:OptionsModalPresentationStyle,
	/**
	 * Configure the transition style of the modal
	 *
	 * #### (Android specific)
	 */
	?modalTransitionStyle:OptionsModalTransitionStyle,
	/**
	 * Configure the top bar
	 */
	?topBar:OptionsTopBar,
	?fab:OptionsFab,
	/**
	 * Configure the bottom tabs
	 */
	?bottomTabs:OptionsBottomTabs,
	/**
	 * Configure the bottom tab associated to the screen
	 */
	?bottomTab:OptionsBottomTab,
	/**
	 * Configure the side menu
	 */
	?sideMenu:OptionsSideMenu,
	/**
	 * Configure the splitView controller
	 */
	?splitView:OptionsSplitView,
	/**
	 * Configure the overlay
	 */
	?overlay:OverlayOptions,
	/**
	 * Configure the modal
	 */
	?modal:ModalOptions,

	/**
		   * Animation used for navigation commands that modify the layout
		   * hierarchy can be controlled in options.
		   *
		   * Animations can be modified per command and it's also possible
		   * to change the default animation for each command.
		   *
		   * Example:

		setRoot: {
		  y: {
		from: 1000,
		to: 0,
		duration: 500,
		interpolation: 'accelerate',
		  },
		  alpha: {
		from: 0,
		to: 1,
		duration: 400,
		startDelay: 100,
		interpolation: 'accelerate'
		  }
		}

	 */
	?animations:AnimationOptions,
	/**
	 * Configure Android's NavigationBar
	 */
	?navigationBar:NavigationBarOptions,
	/**
	 * Android Hardware Back button configuration
	 */
	?hardwareBackButton:HardwareBackButtonOptions,
	/**
	 * Preview configuration for Peek and Pop
	 * #### (iOS specific)
	 */
	?preview:OptionsPreview,
	/**
	 * Enable or disable swipe back to pop gesture
	 * #### (iOS specific)
	 * @default true
	 */
	?popGesture:Bool,
	/**
	 * Background image for the screen
	 * #### (iOS specific)
	 */
	?backgroundImage:ImageResource,
	/**
	 * Background image for the Navigation View
	 * #### (iOS specific)
	 */
	?rootBackgroundImage:ImageResource,
	/**
	 * Provides a way to configure the overall presentation of your application's main user interface
	 * #### (iOS specific)
	 */
	?window:WindowOptions,
	/**
	 * Enable or disable automatically blurring focused input, dismissing keyboard on unmount
	 * #### (Android specific)
	 * @default false
	 */
	?blurOnUnmount:Bool
}
