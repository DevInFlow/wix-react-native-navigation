package react.native.navigation.interfaces;

@:enum abstract CommandName(String) to String {
	var SetRoot = 'setRoot';
	var SetDefaultOptions = 'setDefaultOptions';
	var MergeOptions = 'mergeOptions';
	var UpdateProps = 'updateProps';
	var ShowModal = 'showModal';
	var DismissModal = 'dismissModal';
	var DismissAllModals = 'dismissAllModals';
	var Push = 'push';
	var Pop = 'pop';
	var PopTo = 'popTo';
	var PopToRoot = 'popToRoot';
	var SetStackRoot = 'setStackRoot';
	var ShowOverlay = 'showOverlay';
	var DismissOverlay = 'dismissOverlay';
	var DismissAllOverlays = 'dismissAllOverlays';
	var GetLaunchArgs = 'getLaunchArgs';
}
