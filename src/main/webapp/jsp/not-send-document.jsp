<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>入力内容の確認</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<h2>お問い合わせありがとうございます。ご記入いただいた内容をご確認ください。</h2>
	<div class="confirm">
		<table>
			<tr>
				<th>お名前</th>
				<td>${param.user }</td>
			</tr>
			<tr>
				<th>会社名</th>
				<td>${param.company }</td>
			</tr>
			<tr>
				<th>メールアドレス</th>
				<td>${param.mail }</td>
			</tr>
			<tr class="textarea">
				<th>お問い合わせ内容</th>
				<td>${param.content }</td>
			</tr>
			<tr>
				<th>登録されたメールマガジン</th>
				<td>
					<c:forEach var="p" items="${magazines }">
						・${p}
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>資料請求の申し込み</th>
				<td>${param.document }</td>
			</tr>
		</table>

	</div>
</body>
</html>