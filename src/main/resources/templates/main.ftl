<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as lout>
<@c.page>
    <@lout.logout />
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите текст">
        <input type="text" name="tag" placeholder="Тэг">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Добавить</button>
    </form>
</div>

<form method="get" action="/main">
    <input type="text" name="filter" value="${filter}">
    <button type="submit">Найти</button>
</form>

<div>
    <h1>Список сообщений</h1>
</div>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
<#else>
No messages
</#list>
</@c.page>