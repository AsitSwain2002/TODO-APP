<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/todo.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <title>Home</title>
</head>

<body>
    <header>
        <nav>
            <h2 class="header">Todo App</h2>
        </nav>
    </header>
    <main>
        <div class="mainContainer">
            <div class="box1">
                <form action="#">
                    <input type="text" name="content" class="inputBox" placeholder="Enter data">
                    <input type="submit" value="Add" class="submitBtn">
                </form>
            </div>
            <div class="box2">
                <ul>
                    <div class="dataStr">
                        <li><i class="ri-circle-line  abc"></i></li>
                        <div class="content ">Lorem ipsum dolor sit amet consectetur adipisicing.</div>
                        <a href="#"><i class="ri-close-large-line"></i></a>
                    </div>
                </ul>
            </div>
        </div>
    </main>
    <script src="js/script.js"></script>
</body>

</html>