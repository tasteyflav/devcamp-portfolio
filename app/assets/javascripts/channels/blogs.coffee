jQuery(document).on 'turbolinks:load', ->
	comments = $('#comments')
	if comments.length > 0 
		App.global_chat = App.cable.subscriptions.create {
			channel: "BlogsChanel"
			blog_id: comments.data('blog-id')
		}