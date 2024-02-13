<!DOCTYPE html>
<html>
<head>
    <title>
        BuyAndSell
    </title>
</head>
<body>
<h1>BUYANDSELL</h1><hr>
<#if user.email??>
    <h3>
        Имя пользователя: <i>${user.name}</i>
    </h3>
    <form action="/logout" method="post">
        <input type = "hidden" name = "_csrf" value = ${_csrf.token}>
        <input type="submit" value = "Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>

    </#if>
<#else>
    <a href = "/login">Войти</a>
</#if>


<h4>Товары со всей России</h4>
<form action="/" method="get">
    Поиск по названию объвления: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.ID}"> Подробнее...</a></p>
    </div>
    <#else>
        <h3>Товаров нет</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Создать новый товар</h3>
    <form action = "/product/create" method = "post" enctype="multipart/form-data">
        <label>
            Название объявления:
            <input type="text" name="title"/>
        </label> <br><br>
        <label>
            Описание объявления:
            <input type="text" name="description"/>
        </label> <br><br>
        <label>
            Цена:
            <input type="number" name="price"/>
        </label> <br><br>
        <label>
            Город:
            <input type="text" name="city"/>
        </label> <br><br>
        <label>
            Первая фотография:
            <input type="file" name="file1"/>
        </label> <br><br>
        <label>
            Фторая фотография:
            <input type="file" name="file2"/>
        </label> <br><br>
        <label>
            Третья фотография:
            <input type="file" name="file3"/>
        </label> <br><br>
        <input type="hidden" name="_csrf" value = ${_csrf.token}>
        <input type="submit" value = "Добавить товар"/>
    </form>
</#if>

</body>
</html>