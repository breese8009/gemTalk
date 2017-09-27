# README


<h1>What is it?</h1>
<p>" will_paginate library; a collection of extensions for the database layer that enable paginated queries, and view helpers for popular frameworks that render pagination links. "- will_paginate <a href="https://github.com/mislav/will_paginate/wiki">Github</a></p>

<p>This gem pretty much allows you to limit the amount of data shown on a page. If you want to you can orgaize the data to show only a certain amount of data per page and with numbered links at the bottom of the page that allow you to easily cycle through the data.</p>


<h1>Install</h1>
<ol>
	<li>add this to your gem file</li>
		<code>
		gem 'will_paginate', '~> 3.1.1'
		</code>
	<li>Run bundle install</li>
	<li>And THATS IT! Your good to go!</li>
</ol>


<h1>Example Use</h1>
<p>In your controller, on the index method add .paginate(). This will allow you to give the limit amount of data you want per page.</p>
<code>
	def index
		@profiles = Profile.all.paginate(:page => params[:page], :per_page => 10)
		
	end 
</code>

<p>In your html file where you are rendering this data, add the following code. This will give you the pagination links. I wrapped this in a div and gave it a class so that I could style and position it any which way I want.</p>

<code>
	<div class="test">
<%= will_paginate @profiles %>
	</div>
</code>

<h1>Helpful Links</h1>
<ul>
	<li><a href="https://github.com/mislav/will_paginate/wiki/Installation">Installation</a></li>
	<li><a href="https://github.com/mislav/will_paginate/wiki">Github repo</a></li>
	<li><a href="http://mislav.github.io/will_paginate/">Pagination links styling</a></li>
	<li><a href="https://richonrails.com/articles/getting-started-with-will-paginate">Deeper help</a></li>
</ul>








