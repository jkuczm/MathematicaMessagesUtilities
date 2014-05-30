(* ::Package:: *)

BeginPackage["MessagesUtilities`"]


(* ::Section:: *)
(*Usage messages*)


CollectMessages::usage =
"\
CollectMessages[expr] \
returns a list where first element is result of evaluation of expr and second \
element is list of generated messages with all passed arguments."


(* ::Section:: *)
(*Implementation*)


(*
	Unprotect all symbols in this context
	(all public symbols provided by this package)
*)
Unprotect["`*"]


Begin["`Private`"]


(* ::Subsection:: *)
(*CollectMessages*)


SetAttributes[CollectMessages, HoldFirst]


CollectMessages[expr_] :=
	Module[
		{
			messages = {},
			collectMessage,
			result
		}
		,
		collectMessage = AppendTo[messages, #]&;
		
		Internal`AddHandler["Message", collectMessage];
		
		result = expr;
		
		Internal`RemoveHandler["Message", collectMessage];
		
		{result, messages}
	]



End[]


(* ::Subsection:: *)
(*Public symbols protection*)


(*
	Protect all symbols in this context
	(all public symbols provided by this package)
*)
Protect["`*"]


EndPackage[]

