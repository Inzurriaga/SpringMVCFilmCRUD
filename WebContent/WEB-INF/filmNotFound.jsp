<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="./css/mainStyle.css" />
	</head>
	<body>
		<header>
			<h1>Film Database Controller</h1>
			<a href="/MVCFilmSite" class="btn btn-outline-primary">Home</a>
		</header>
		<section class="container">
			<p>film not found<p>
			<p>Redirecting back to home in</p>
			<p class="numberCountDown"></p>
		</section>
		<footer>
			<p>by Neal and Gabriel</p>
		</footer>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<script>
			let countText = document.querySelector(".numberCountDown");
			let count = 3;
			countText.innerText = count;
			let coutinterval = setInterval(function(){
				countText.innerText = --count;
				if(count == 0) {
					clearInterval(coutinterval);
					window.location.assign("/MVCFilmSite");
				}
			}, 1000);
		</script>
	</body>
</html>