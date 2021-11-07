package react.native.navigation.interfaces;

import react.native.navigation.interfaces.CommandName;

typedef LayoutProcessor =Layout->CommandName->Layout;
typedef OptionsProcessor<T,S:Dynamic> =Dynamic->?S->T;