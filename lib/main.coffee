addStatusBarTile = require "./addStatusBarTile"
incrementAll = require "./incrementAll"
onChange = require "./onChange"

module.exports = AtomStopwatch =
	activate: ->
		setInterval incrementAll, 1000

		atom.workspace.observeTextEditors ( editor ) ->
			editor.onDidChange onChange editor

	consumeStatusBar: addStatusBarTile
