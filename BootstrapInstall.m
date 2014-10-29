(* ::Package:: *)

Get["https://raw.githubusercontent.com/jkuczm/MathematicaBootstrapInstaller/v0.1.1/BootstrapInstaller.m"]


BootstrapInstall[
	"MessagesUtilities",
	"https://github.com/jkuczm/MathematicaMessagesUtilities/releases/download/v0.1.0/MessagesUtilities.zip",
	"AdditionalFailureMessage" ->
		Sequence[
			"You can ",
			Hyperlink[
				"install MessagesUtilities package manually",
				"https://github.com/jkuczm/MathematicaMessagesUtilities#manual-installation"
			],
			"."
		]
]
