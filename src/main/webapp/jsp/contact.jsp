<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせフォーム</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<h1>お問い合わせフォーム</h1>
<div class="inquiry-form">
<form action="control" method="post">
<p class="property">◆お名前<a class="required">(必須)</a></p>
<input  class="input" type="text" name="user" required>
<p class="property">◆会社名(任意)</p>
<input class="input" type="text" name="company">
<p class="property">◆メールアドレス<a class="required">(必須)</a></p>
<input class="input" type="email" name="mail" required>
<p class="property">◆お問い合わせ内容を以下に入力してください<a class="required">(必須)</a></p>
<p><textarea class="input" name="content" cols="30" rows="5" required></textarea></p>
<p class="property">◆メールマガジンの希望</p>

<input type="checkbox" name="magazine" value="総合案内" checked>総合案内
<input type="checkbox" name="magazine" value="セミナー案内">セミナー案内
<input type="checkbox" name="magazine" value="求人採用情報">求人採用情報

<p class="property">◆資料請求希望を希望されますか？</p>
        <input type="radio" name="document" value="希望する" checked>Yes
        <input type="radio" name="document" value="希望しない">No<br>

<input type="submit" value="送信">
</form>
</div>
</body>
</html>