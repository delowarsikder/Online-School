<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <!-- <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <title>Home Page</title>

    <script language="javascript" type="text/javascript">
        function clearText(field) {
            if (field.defaultValue == field.value) field.value = '';
            else if (field.value == '') field.value = field.defaultValue;
        }
    </script>

    <link rel="icon" type="image/jpg" href="Home/picture/learn.png" />

    <link id="Link1" rel="stylesheet" type="text/css" runat="server" media="screen" href="css/Login.css" />

    <link id="Link2" rel="stylesheet" type="text/css" runat="server" media="screen" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" />

    <link id="Link3" rel="stylesheet" type="text/css" runat="server" media="screen" href="~/Home/mycss/main.css" />
    <link id="Link4" rel="stylesheet" type="text/css" runat="server" media="screen" href="~/Home/fontawesome-free-5.7.2-web/css/all.css" />

    <link id="Link5" rel="stylesheet" type="text/css" runat="server" media="screen" href="~/Home/css/nivo-slider.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="Home/js/jquery.nivo.slider.js"
        type="text/javascript"></script>

    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider({
                effect: 'random',
                slices: 10,
                animSpeed: 500,
                pauseTime: 1500,
                startSlide: 0, //Set starting Slide (0 index)
                directionNav: false,
                directionNavHide: false, //Only show on hover
                controlNav: false, //1,2,3...
                controlNavThumbs: false, //Use thumbnails for Control Nav
                pauseOnHover: true, //Stop animation while hovering
                manualAdvance: false, //Force manual transitions
                captionOpacity: 0.8, //Universal caption opacity
                beforeChange: function () { },
                afterChange: function () { },
                slideshowEnd: function () { } //Triggers after all slides have been shown
            });
        });
    </script>

    <!-- <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="main.js"></script> -->

</head>


<body style="background: url('Home/picture/background.png') repeat fixed 0 0; position: relative;">
    <form id="form1" runat="server">
        <header>
            <div class="header-nav template clear">
                <div class="logo clear">
                    <a href="#">
                        <img src="Home/picture/learn.png" title="mTech" alt="logo" /></a>
                    <h2>My Online School</h2>
                    <p>This is my personal academic project</p>
                </div>

                <div style="float: right; margin-right: 10px;">
                    <%--time--%>

                    <div class="clock">
                        <div id="clockbox"></div>
                    </div>

                    <script src="time.js" type="text/javascript"></script>

                    <%--set time in display--%>
                </div>
                <div class="social clear">

                    <a href="https://www.facebook.com/delowar.sikder.108"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.linkedin.com/in/delowar-sikder-200240176/"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>

                </div>

            </div>

            <!-- javacsript for navigation bar -->
            <script>
                // When the user scrolls down 20px from the top of the document, slide down the navbar
                // When the user scrolls to the top of the page, slide up the navbar (50px out of the top view)
                window.onscroll = function () { scrollFunction() };

                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("navigation").style.top = "0";
                    } else {
                        document.getElementById("navigation").style.top = "0px";
                    }
                }
            </script>

            <%--slider section--%>

            <div class="sliderSection template clear">
                <div id="slider">
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image1.jpg"
                            alt="nature 1" title="student" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image2.jpg"
                            alt="nature 2" title="study" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image3.jpg"
                            alt="nature 3" title="Book" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image4.jpg"
                            alt="nature 4" title="group study" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image5.jpg"
                            alt="nature 4" title="group study" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image6.jpg"
                            alt="nature 4" title="group study" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image7.jpg"
                            alt="nature 4" title="group study" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image8.jpg"
                            alt="nature 4" title="group study" /></a>
                    <a href="#">
                        <img src="Home/picture/images/slideshow/image9.jpg"
                            alt="nature 4" title="group study" /></a>

                </div>
            </div>

            <!-- line bar-->
            <div class="navigation template">
                <ul>
                    <li><a href="#"><i class="fas fa-home">Home</i></a>
                        <ul>
                            <li><a href="https://classroom.10minuteschool.com/1/" target="_blank">Class1</a></li>
                            <li><a href="https://classroom.10minuteschool.com/2/">Class2</a></li>
                            <li><a href="https://classroom.10minuteschool.com/3/">Class3</a></li>
                            <li><a href="#">Class4</a></li>
                            <li><a href="#">Class5</a></li>

                        </ul>

                    </li>
                    <li><a href="About.aspx">About US</a>


                    </li>
                    <li><a href="Contact.aspx"><i class="fa-li fa fa-spinner fa-spin"></i>Contact</a>

                    </li>
                    <li><a href="Users.aspx"><i class="fas fa-user"></i>Profile</a>


                    </li>
                    <li>
                        <%--<asp:Button ID="Button1" runat="server" Text="Logout" />--%>
                        <a href="Home.aspx"><i class="fas fa-power-off"></i>Logout</a>
                    </li>
                </ul>
            </div>

        </header>


        <!-- main content and side bar -->

        <main>
            <div class="content contemplate clear">

                <!-- main content side bar Right-->
                <div class="mainContent clear">
                    <div class="mainTopic clear">
                        <h2>Programming</h2>
                        <a href="#">
                            <img src="Home/picture/contentimage/programming.jpg"
                                alt="programming" title="programming" />
                        </a>
                        <p>
                            What Is Programming?

Programming is the process of taking an algorithm and encoding it into a notation, a programming language, so that it can be executed by a computer. Although many programming languages and many different types of computers exist, the important first step is the need to have the solution. Without an algorithm there can be no program.

Computer science is not the study of programming. Programming, however, is an important part of what a computer scientist does. Programming is often the way that we create a representation for our solutions. Therefore, this language representation and the process of creating it becomes a fundamental part of the discipline.

Algorithms describe the solution to a problem in terms of the data needed to represent the problem instance and the set of steps necessary to produce the intended result. Programming languages must provide a notational way to represent both the process and the data. To this end, languages provide control constructs and data types.

Control constructs allow algorithmic steps to be represented in a convenient yet unambiguous way. At a minimum, algorithms require constructs that perform sequential processing, selection for decision-making, and iteration for repetitive control. As long as the language provides these basic statements, it can be used for algorithm representation.

All data items in the computer are represented as strings of binary digits. In order to give these strings meaning, we need to have data types. Data types provide an interpretation for this binary data so that we can think about the data in terms that make sense with respect to the problem being solved. These low-level, built-in data types (sometimes called the primitive data types) provide the building blocks for algorithm development.

For example, most programming languages provide a data type for integers. Strings of binary digits in the computer’s memory can be interpreted as integers and given the typical meanings that we commonly associate with integers (e.g. 23, 654, and -19). In addition, a data type also provides a description of the operations that the data items can participate in. With integers, operations such as addition, subtraction, and multiplication are common. We have come to expect that numeric types of data can participate in these arithmetic operations.

The difficulty that often arises for us is the fact that problems and their solutions are very complex. These simple, language-provided constructs and data types, although certainly sufficient to represent complex solutions, are typically at a disadvantage as we work through the problem-solving process. We need ways to control this complexity and assist with the creation of solutions.
                        </p>

                        <div class="readmore clear">
                            <a href="item.html">Read More</a>
                        </div>

                    </div>
                    <div class="mainTopic clear">
                        <h2>Programming</h2>
                        <a href="#">
                            <img src="Home/picture/contentimage/programming.jpg"
                                alt="programming" title="programming" />
                        </a>
                        <p>
                            What Is Programming?

Programming is the process of taking an algorithm and encoding it into a notation, a programming language, so that it can be executed by a computer. Although many programming languages and many different types of computers exist, the important first step is the need to have the solution. Without an algorithm there can be no program.

Computer science is not the study of programming. Programming, however, is an important part of what a computer scientist does. Programming is often the way that we create a representation for our solutions. Therefore, this language representation and the process of creating it becomes a fundamental part of the discipline.

Algorithms describe the solution to a problem in terms of the data needed to represent the problem instance and the set of steps necessary to produce the intended result. Programming languages must provide a notational way to represent both the process and the data. To this end, languages provide control constructs and data types.

Control constructs allow algorithmic steps to be represented in a convenient yet unambiguous way. At a minimum, algorithms require constructs that perform sequential processing, selection for decision-making, and iteration for repetitive control. As long as the language provides these basic statements, it can be used for algorithm representation.

All data items in the computer are represented as strings of binary digits. In order to give these strings meaning, we need to have data types. Data types provide an interpretation for this binary data so that we can think about the data in terms that make sense with respect to the problem being solved. These low-level, built-in data types (sometimes called the primitive data types) provide the building blocks for algorithm development.

For example, most programming languages provide a data type for integers. Strings of binary digits in the computer’s memory can be interpreted as integers and given the typical meanings that we commonly associate with integers (e.g. 23, 654, and -19). In addition, a data type also provides a description of the operations that the data items can participate in. With integers, operations such as addition, subtraction, and multiplication are common. We have come to expect that numeric types of data can participate in these arithmetic operations.

The difficulty that often arises for us is the fact that problems and their solutions are very complex. These simple, language-provided constructs and data types, although certainly sufficient to represent complex solutions, are typically at a disadvantage as we work through the problem-solving process. We need ways to control this complexity and assist with the creation of solutions.
                        </p>

                        <div class="readmore clear">
                            <a href="item.html">Read More</a>
                        </div>

                    </div>
                </div>


                <div class="sidebarContent clear">

                    <div class="leastArticle clear">
                        <h2>Least Article</h2>
                        <ul>
                            <li><a href="#">Easy way to Learn HTML</a></li>
                            <li><a href="#">Easy way to Learn CSS</a></li>
                            <li><a href="#">Easy way to Learn javascript</a></li>
                            <li><a href="#">Easy way to Learn php</a></li>
                            <li><a href="#">Easy way to Learn HTML</a></li>
                            <li><a href="#">Easy way to Learn CSS</a></li>
                            <li><a href="#">Easy way to Learn javascript</a></li>
                            <li><a href="#">Easy way to Learn php</a></li>
                            <li><a href="#">Easy way to Learn HTML</a></li>
                            <li><a href="#">Easy way to Learn CSS</a></li>
                            <li><a href="#">Easy way to Learn javascript</a></li>
                            <li><a href="#">Easy way to Learn php</a></li>
                        </ul>

                    </div>

                    <!-- another sidebar -->

                    <div class="sidebarTitle clear">
                        <div class="popular clear">
                            <h2>Tag Post</h2>
                            <a href="#">
                                <h3>Click content for learn More...</h3>
                            </a>
                            <a href="#">
                                <img src="Home/picture/contentimage/pl.png"
                                    alt="Programming Language" title="Programming Language" />
                            </a>

                            <p>algebra Android app development C++ college english CSS DLD English vocabulary GIS git hosting HSC hsc english HTML IELTS Java javascript jQuery js mssql 2012 mysql Object Oriented Programming PHP programming seen passage ssc geometry vocabulary web development website wordpress আইফোন এপ্লিকেশন ডেভেলপমেন্ট কম্পিউটার কৌশল কম্পিউটার প্রোগ্রামিং কোর্স জাভা জিআইএস টেকনিকাল রাইটিং ডিজিটাল লজিক ডিজাইন ত্রিকোণমিতি পরিসংখ্যান পরিচিতি প্রোগ্রামিং বেসিক এডোবি ফটোশপ ভোকাবুলারি মাধ্যমিক জ্যামিতি মাধ্যমিক ত্রিকোণমিতি</p>
                        </div>

                        <div class="popular clear">
                            <h2>Tag Post</h2>
                            <a href="#">
                                <h3>Click content for learn More...</h3>
                            </a>
                            <a href="#">
                                <img src="Home/picture/contentimage/pl.png"
                                    alt="Programming Language" title="Programming Language" />
                            </a>

                            <p>algebra Android app development C++ college english CSS DLD English vocabulary GIS git hosting HSC hsc english HTML IELTS Java javascript jQuery js mssql 2012 mysql Object Oriented Programming PHP programming seen passage ssc geometry vocabulary web development website wordpress আইফোন এপ্লিকেশন ডেভেলপমেন্ট কম্পিউটার কৌশল কম্পিউটার প্রোগ্রামিং কোর্স জাভা জিআইএস টেকনিকাল রাইটিং ডিজিটাল লজিক ডিজাইন ত্রিকোণমিতি পরিসংখ্যান পরিচিতি প্রোগ্রামিং বেসিক এডোবি ফটোশপ ভোকাবুলারি মাধ্যমিক জ্যামিতি মাধ্যমিক ত্রিকোণমিতি</p>
                        </div>
                    </div>

                </div>

            </div>

        </main>

        <!-- <div style="clear:both";></div> for down footer -->
        <footer>
            <div class="footerSection template clear">
                <div class="footerList clear">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="#">Login/Register</a></li>
                    </ul>
                </div>
                <p>
                    &copy; all right reserve delowarsikder099@gmail
                </p>
            </div>
        </footer>

        <div class="fixedIcon clear">
            <a href="https://www.facebook.com/delowar.sikder.108">
                <img src="Home/picture/facebook.png"
                    title="click to follow link" alt="facebook" /></a>
            <a href="https://www.linkedin.com/in/delowar-sikder-200240176/">
                <img src="Home/picture/linkedin.png"
                    title="click to follow link" alt="linkedin" /></a>
            <a href="#">
                <img src="Home/picture/google+.png"
                    title="click to follow link" alt="google+" /></a>
            <a href="#">
                <img src="Home/picture/twitter.png"
                    title="click to follow link" alt="twitter" /></a>

        </div>

        <!-- add scrollTop -->
        <script type="text/javascript">
            var scrolltotop = { setting: { startline: 100, scrollto: 0, scrollduration: 1e3, fadeduration: [500, 100] }, controlHTML: '<img src="Home/picture/top.png" />', controlattrs: { offsetx: 5, offsety: 5 }, anchorkeyword: "#top", state: { isvisible: !1, shouldvisible: !1 }, scrollup: function () { this.cssfixedsupport || this.$control.css({ opacity: 0 }); var t = isNaN(this.setting.scrollto) ? this.setting.scrollto : parseInt(this.setting.scrollto); t = "string" == typeof t && 1 == jQuery("#" + t).length ? jQuery("#" + t).offset().top : 0, this.$body.animate({ scrollTop: t }, this.setting.scrollduration) }, keepfixed: function () { var t = jQuery(window), o = t.scrollLeft() + t.width() - this.$control.width() - this.controlattrs.offsetx, s = t.scrollTop() + t.height() - this.$control.height() - this.controlattrs.offsety; this.$control.css({ left: o + "px", top: s + "px" }) }, togglecontrol: function () { var t = jQuery(window).scrollTop(); this.cssfixedsupport || this.keepfixed(), this.state.shouldvisible = t >= this.setting.startline ? !0 : !1, this.state.shouldvisible && !this.state.isvisible ? (this.$control.stop().animate({ opacity: 1 }, this.setting.fadeduration[0]), this.state.isvisible = !0) : 0 == this.state.shouldvisible && this.state.isvisible && (this.$control.stop().animate({ opacity: 0 }, this.setting.fadeduration[1]), this.state.isvisible = !1) }, init: function () { jQuery(document).ready(function (t) { var o = scrolltotop, s = document.all; o.cssfixedsupport = !s || s && "CSS1Compat" == document.compatMode && window.XMLHttpRequest, o.$body = t(window.opera ? "CSS1Compat" == document.compatMode ? "html" : "body" : "html,body"), o.$control = t('<div id="topcontrol">' + o.controlHTML + "</div>").css({ position: o.cssfixedsupport ? "fixed" : "absolute", bottom: o.controlattrs.offsety, right: o.controlattrs.offsetx, opacity: 0, cursor: "pointer" }).attr({ title: "Scroll to Top" }).click(function () { return o.scrollup(), !1 }).appendTo("body"), document.all && !window.XMLHttpRequest && "" != o.$control.text() && o.$control.css({ width: o.$control.width() }), o.togglecontrol(), t('a[href="' + o.anchorkeyword + '"]').click(function () { return o.scrollup(), !1 }), t(window).bind("scroll resize", function (t) { o.togglecontrol() }) }) } }; scrolltotop.init();</script>
        -->

    </form>
</body>
</html>
