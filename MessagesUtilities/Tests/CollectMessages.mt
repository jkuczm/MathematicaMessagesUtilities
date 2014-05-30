(* Mathematica Test File *)

(* ::Section:: *)
(*SetUp*)


Begin["TestEnvironment`CollectMessages`"];


(* ::Section:: *)
(*Tests*)


Test[
	CollectMessages[2 + 2]
	,
	{4, {}}
	,
	TestID -> "No messages generated"
];

Test[
	CollectMessages[Sin[1, 2]]
	,
	{Sin[1, 2], {Hold[Message[Sin::argx, HoldForm[Sin], HoldForm[2]], True]}}
	,
	{Sin::argx}
	,
	TestID -> "One message generated"
];

Test[
	CollectMessages[Sin[1, 2] Extract[1, 1]]
	,
	{
		Sin[1, 2] Extract[1, 1]
		,
		{
			Hold[Message[Sin::argx, HoldForm[Sin], HoldForm[2]], True],
			Hold[Message[Extract::partd, HoldForm[{1}]], True]
		}
	}
	,
	{Sin::argx, Extract::partd}
	,
	TestID -> "Two messages generated"
];


(* ::Section:: *)
(*TearDown*)


(* Remove all symbols defined in current context. *)
Unprotect["`*"];
Quiet[Remove["`*"], {Remove::rmnsm}];


End[];
