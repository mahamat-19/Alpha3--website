<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div class="wrapper">
		

<div class="navbar">
  <a href="#">Home</a>
  <a href="forum.asp">Forum</a>
  <a href="video.html">Video album</a> 
  <a href="table.asp">Contact</a>
  <a href="people.html">people</a>
  <a href="map.html">Map</a>
  <a href="photos.html">Photos</a>
</div>

<style type="text/css">
	

	.header {
	padding: 20px;
	text-align: center;
	background: green;
	color: white;
}
.header h2 {
	font-size: 40px;
}

.wrapper{
	margin-top: 0px;
}
/* Style the top navigation bar */
.navbar {
  overflow: hidden; /* Hide overflow */
  background-color: #333; 
  margin-top: 0px;
}

/* Style the navigation bar links */
.navbar a {
  float: left; /* Make sure that the links stay side-by-side */
  display: block; /* Change the display to block, for responsive reasons (see below) */
  color: white; /* White text color */
  text-align: center; /* Center the text */
  padding: 14px 20px; /* Add some padding */
  text-decoration: none; /* Remove underline */
}

/* Right-aligned link */
.navbar a.right {
  float: right; /* Float a link to the right */
}

/* Change color on hover/mouse-over */
.navbar a:hover {
  background-color: #ddd; /* Grey background color */
  color: black; /* Black text color */
}

/* Ensure proper sizing */
* {
  box-sizing: border-box;
}

/* Column container */
.row {
  display: flex;
  flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  flex: 30%; /* Set the width of the sidebar */
  background-color: #f1f1f1; /* Grey background color */
  padding: 20px; /* Some padding */
}
</style>
</body>
</html>