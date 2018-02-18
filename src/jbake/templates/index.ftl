<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
		<h1>Be better. Be pro.</h1>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  			<p>${post.body}</p>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Архив постов (если он будет) можно посмотреть <a href="${content.rootpath}${config.archive_file}">вот тут</a>.</p>

<#include "footer.ftl">
