<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title>Category Banner</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta http-equiv="X-UA-Compatible" value="IE=edge" />
      [{if isset($meta_refresh_sec,$meta_refresh_url) }]
         <meta http-equiv=Refresh content="[{$meta_refresh_sec}];URL=[{$meta_refresh_url|replace:"&amp;":"&"}]" />
      [{/if}]

      <link rel="stylesheet" href="[{$oViewConf->getResourceUrl()}]main.css" />
      <link rel="stylesheet" href="[{$oViewConf->getResourceUrl()}]colors.css" />
      <link rel="stylesheet" type="text/css" href="[{$oViewConf->getResourceUrl()}]yui/build/assets/skins/sam/container.css" />
   </head>
   <body>
      <div class="[{$box|default:'box'}]" style="[{if !$box && !$bottom_buttons}]height: 98%;[{/if}]">
         <p>test</p>
			<pre>

			[{$content|default:""}]

			</pre>
      </div>
      [{include file="bottomitem.tpl"}]
