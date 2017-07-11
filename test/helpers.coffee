detectAnimation = import 'detect-animation-end-helper'

exports.supportsAnimation = ()-> !!detectAnimation()

exports.transitionEnd = ()-> detectAnimation('transition')

exports.restartSandbox = ()->
	window.sandbox.remove() if window.sandbox
	window.sandbox = DOM.div id:'sandbox', style:
		border: '1px solid'
		padding: 20
		boxSizing: 'border-box'
	
	window.sandbox.appendTo(document.body)