<!DOCTYPE html>
<html>
<head>
    <title>Home-Dashboard</title>
        <style>
            body
            {
                margin: 0;
                padding: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            .container
            {
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                height: 100vh;
                animation: animate 40s ease-in-out infinite;
                background-size: 100% 100%;
            }
            
            @keyframes animate
            {
                0%{
                    background-image: url(first.jpg);
                }
                25%{
                    background-image: url(home2.jpg);
                }
                50%{
                    background-image: url(home3.jpg);
                }
                75%{
                    background-image: url(home4.jpg);
                }
                100%{
                    background-image: url(home1.jpg);
                }
            }


            *
            {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }
            .menu-bar
            {
                background: rgb(30, 0, 100);
                text-align: center;
            }
            .menu-bar ul
            {
                display: inline-flex;
                list-style: none;
                color: #fff;
            }
            .menu-bar ul li
            {
                width: 120px;
                margin: 15px;
                padding: 15px;
            }
            .menu-bar ul li a
            {
                text-decoration: none;
                color: rgb(255, 255, 255);
            } 
            .active, .menu-bar ul li:hover
            {
                background: #097ae4;
                border-radius: 3px;
            }
            .menu-bar .fa
            {
                margin-right: 8px;  
            }
            .sub-menu-1
            {
                display: none;
            }
            .menu-bar ul li:hover .sub-menu-1
            {
                display: block;
                position: absolute;
                background: rgb(30, 0, 100);
                margin-top: 15px;
                margin-left: 15px;
            }
            .menu-bar ul li:hover .sub-menu-1 ul
            {
                display: block;
                margin: 10px;
            }
            .menu-bar ul li:hover .sub-menu-1 ul li
            {
                width: 150px;
                padding: 10px;
                border-bottom: 1px dotted #fff;
                background: transparent;
                border-radius: 0;
                text-align: left;
            }
            .menu-bar ul li:hover .sub-menu-1 ul li:last-child
            {
                border-bottom: none;
            }
            .menu-bar ul li:hover .sub-menu-1 ul li a:hover
            {
                color: #b2ff00;
            }
            .fa-angle-right
            {
                float: right;
            }
            .sub-menu-2
            {
                display: none;
            }
            .hover-me:hover .sub-menu-2
            {
                position: absolute;
                display: block;
                margin-top: -40px;
                margin-left: 140px;
                background:  rgb(30, 0, 100);
            }
        </style>
    <!-- <link rel="stylesheet" href="home.css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
    <body>
        <div class="container">
            <div class="menu-bar">
                <ul>
                    <!-- <h3>You are Successfully login</h3> -->
                    <li class="active"><a href="/Project1/home.jsp"><i class="fa fa-home"></i>Home</a></li>
                    <li><a href="/Project1/Balance"><i class="fa fa-inr"></i>Check Balance</a></li>
                    <li><a href="/Project1/changepassword.jsp"><i class="fa fa-key"></i>Change Password</a></li>
                    <li><a href="/Project1/loan.jsp"><i class="fa fa-university"></i>Apply Loan</a></li>
                    <li><a href="/Project1/transfer.jsp"><i class="fa fa-exchange"></i>Transfer Amount</a></li>
                    <li><a href="/Project1/GetStatement"><i class="fa fa-bars"></i>Get Statement</a></li>
                    <li><a href="#"><i class="fa fa-phone"></i>Contact</a>
                        <div class="sub-menu-1">
                            <ul>
                                <li><a href="/Project1/helpandsupport.jsp">Help and Support</a></li>
                                <li><a href="/Project1/enquiry.jsp">Enquiry</a></li>
                                <li class="hover-me"><a href="#">International</a><i class="fa fa-angle-right"></i>
                                    <div class ="sub-menu-2">
                                        <ul>
                                            <li><a href="#">NRI Services</a></li>
                                            <li><a href="#">Schemes</a></li>
                                            <li><a href="#">Other Products</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#"><i class="fa fa-user"></i>About Us</a>
                        <div class="sub-menu-1">
                            <ul>
                                <li><a href="/Project1/missionandvision.jsp">Mission & Vision</a></li>
                                <li><a href="#">Values</a></li>
                                <li><a href="#">Team</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="/Project1/Logout"><i class="fa fa-sign-out"></i>Logout</a></li>
                </ul>
            </div>
         </div>
    </body>
</html>