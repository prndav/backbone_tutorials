class App.Views.Header extends Backbone.View

	template: HandlebarsTemplates['app/templates/header']

	initialize: ->
		@listenTo App.currentUser, 'change:loggedIn', @render

	render: ->
		@$el.html(@template({current_user: App.currentUser.get('loggedIn')}))
		@
	