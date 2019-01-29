<html>
    <head>
        <style>
            .vertical-menu 
            {
                width: 120%;
                height: 100%;
                background-color: #eee;
                /* Set a width if you like */
            }

            .vertical-menu a 
            {
              /*background-color: #eee; Grey background color */
              color: black; /* Black text color */
              display: block; /* Make the Topics appear below each other */
              padding: 12px; /* Add some padding */
              text-decoration: none; /* Remove underline from Topics */
            }

            .vertical-menu a:hover 
            {
              background-color: #ccc; /* Dark grey background on mouse-over */
            }

            .vertical-menu a.active 
            {
              background-color: black; /*Add black color to active Topic*/
              color: white;
            }
            
            .fullWidth
            {
                width:100% !important;
                background-color: lightslategray;
            }
            
            .noPadding
            {
                padding-left: 0 !important;
                padding-right: 0 !important;
                padding-top: 0;
            }
           
            .noMargin
            {
                margin-left: 0 !important;
                margin-right: 0 !important;
                margin-top: 0 !important;
                margin-bottom: 0 !important;
            }
            
          .notLogo
            {
                height: 300px;
                width: 300px;
            }
            
            #student,#teacher
            {
                display: none;
            }
            
        </style>
        
        <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>Create account</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="../Student/css/base.css">
    <link rel="stylesheet" href="../Student/css/vendor.css">
    <link rel="stylesheet" href="../Student/css/main.css">

    <!-- script
    ================================================== -->
    <script src="js/modernizr.js"></script>

    <!-- favicons
    ================================================== -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
        
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script>
        function showStudent() {
          var x = document.getElementById("toHide");
          if (x.style.display === "none") {
            x.style.display = "block";
          } else {
            x.style.display = "none";
          }

            var y = document.getElementById("student");
            if (y.style.display === "block")
                y.style.display = "none";
            else
                y.style.display = "block";
        }

        function showTeacher() {
          var x = document.getElementById("toHide");
          if (x.style.display === "none") {
            x.style.display = "block";
          } else {
            x.style.display = "none";
          }

            var y = document.getElementById("teacher");
            if (y.style.display === "block")
                y.style.display = "none";
            else
                y.style.display = "block";
        }    
            
        function showAlert()
            {
                confirm("Account created!");
            }
        </script>
        
        
    </head>
    
    <body>
        <header class="s-header">
        <a class="header__toggle-menu" href="#0" title="Menu"><span>Menu</span></a>
        <nav class="header__nav-wrap">

            <h2 class="header__nav-heading h6">Navigate to</h2>

            <ul class="header__nav">
                <li><img src="logo.png"></li>
                <li class="current"><a href="../index.HTML" title="">Home</a></li>
                <li class="has-children">
                    <a href="#0" title="">Menu</a>
                    <ul class="sub-menu">
                        <li><a href="#">Profile</a></li>
                        <li><a href="../Forum/index.html">Forum</a></li>
                        <li><a href="../index.html">Logout</a></li>
                    </ul>
                </li>
            </ul> <!-- end header__nav -->

            <a href="#0" title="Close Menu" class="header__overlay-close close-mobile-menu">Close</a>

        </nav> <!-- end header__nav-wrap -->

    </header> <!-- s-header -->
        <br><br><br><br>
        <div class="container fullWidth noPadding">
            <div class="row fullWidth">
                <div class="col-lg-2">
                    
                    <div class="vertical-menu">
                    <a href="index.html">Home</a>
                    <a href="createAcc.html" class="active">Create account</a>
                    <a href="#">Disable account</a>
                    <a href="#">Manage class, division & batches</a>
                    <a href="#">Manage subjects, topics & assignments</a>
                    <a href="#">Create remarks</a>
                    </div>
                </div>
                
                <div class="col-lg-1">
                </div>
                <div class="col-lg-9" id="toHide">
                    <h3>Select role for new account:</h3>                    
                    <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Role
                    <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#" onclick="showStudent()">Student</a></li>
                        <li><a href="#" onclick="showTeacher()">Teacher</a></li>
                    </ul>
                    </div>
                </div>
                
                <!-- Aligning table and button -->
                <div class="col-lg-1">
                </div>
                
                <div class="col-lg-9">
                    <div id="student">
                        
                    <form method="post" class="form-validate">
                        
                        <input type="text" name="mid" placeholder="Member ID" required>
                        <br><br>
                        
                        <input type="text" name="uname" placeholder="Username" required>
                        <br><br>
                        
                        <input type="password" name="password" placeholder="Password" required>
                        <br><br>
                        
                        <input type="text" name="rollNo" placeholder="Roll No." required>
                        <br><br>
                        
                        <input type="text" name="name" placeholder="Student Name" required>
                        <br><br>
                        
                        <input type="text" name="birthDate" placeholder="Birth Date" required>
                        <br><br>
                        
                        <input type="number" name="phoneNo" placeholder="Contact Number" required>
                        <br><br>
                        
                        <input type="text" name="batchID" placeholder="Batch ID" required>
                        <br><br>
                        
                        <input type="text" name="classID" placeholder="Class ID" required>
                        <br><br>
                        <button class="btn" onclick="showAlert()">Create</button>
                    </form>
                    &nbsp;&nbsp;&nbsp;
                    <button class="btn" onclick="show()">Back</button>
                    </div>
    
                    
        <!--Teacher-->
                    <div id="teacher">
                        
                    <form method="post" class="form-validate">
                        
                        <input type="text" name="midTeacher" placeholder="Member ID" required>
                        <br><br>
                        
                        <input type="text" name="unameTeacher" placeholder="Username" required>
                        <br><br>
                        
                        <input type="password" name="passwordTeacher" placeholder="Password" required>
                        <br><br>
                        
                        <input type="text" name="rollNo" placeholder="Roll No." required>
                        <br><br>
                        
                        <input type="text" name="name" placeholder="Teacher Name" required>
                        <br><br>
                        
                        <input type="password" name="birthDateTeacher" placeholder="Birth Date" required>
                        <br><br>
                        
                        <input type="password" name="phoneNoTeacher" placeholder="Contact Number" required>
                        <br><br>
                        
                        <input type="password" name="classID" placeholder="Class ID" required>
                        <br><br>
                        
                        
                        <button class="btn">Create</button>
                    </form>
                    &nbsp;&nbsp;&nbsp;
                    <button class="btn" onclick="show()">Back</button>
                    </div>
                
                </div>
                    
            </div>
        </div>
    </body>
</html>
