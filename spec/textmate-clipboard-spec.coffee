systemClipboard = require 'clipboard'
Activator = require '../lib/textmate-clipboard'
TextmateClipboard = require '../lib/textmate-clipboard-view'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "TextmateClipboard", ->
  [textmateClipboard, workspaceElement, editorElement, editor] = []

  beforeEach ->
    # Initialize without any history
    textmateClipboard = new TextmateClipboard []
    Activator.activate()
    workspaceElement = atom.views.getView(atom.workspace)
    jasmine.attachToDOM(workspaceElement)

    waitsForPromise ->
      atom.workspace.open().then (_editor) ->
        editor = _editor
        editorElement = atom.views.getView(editor)

  # TODO, figure out how to write tests in Atom, and fill these in.

  describe "basics", ->
    it "adds items to the history on copy", ->
    it "adds items to the history on cut", ->

  describe "pastePrevious", ->
    it "pastes the previous item when requested", ->
    it "doesn't remove it from the history", ->
    it "keeps pasting the last item once pasteCursor == historylength", ->

  describe "pasteNext", ->
    it "pastes the next item when requested", ->
    it "doesn't remove it from the history", ->
    it "keeps pasting the first item once pasteCursor == 0", ->

  describe "showHistory", ->
    it "shows the history items when requested", ->
      expect(workspaceElement.querySelector('.textmate-clipboard')).not.toExist()
      atom.commands.dispatch editorElement, 'textmate-clipboard:show'
      expect(workspaceElement.querySelector('.textmate-clipboard')).toExist()
    it "sorts the items in the history window in reverse order", ->
    it "doesn't change the history order when pasting from the window", ->
