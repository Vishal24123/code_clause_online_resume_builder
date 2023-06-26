<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="style/style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<!-- The generated resume is displayed here using CSS -->
    <main class="main-content">
        <section class="left-section">
            <div class="left-content">
                <div class="profile">
                    <h2 class="name"><%=request.getAttribute("name")%></h2>
                    <p class="career"><%=request.getAttribute("role")%></p>
                </div>
                <div class="contact-info">
                    <h3 class="main-title">Contact Info</h3>
                    <ul>
                        <li>
                            <i class="fa fa-phone"></i>
                            <%=request.getAttribute("phone")%>
                        </li>
                        <li>
                            <i class="fa fa-fax"></i>
                            <%=request.getAttribute("email")%>
                        </li>
                         <li>
                            <i class="fa fa-linkedin" ></i>
                            <%=request.getAttribute("linkedIn")%>
                        </li>
                        <li>
                            <i class="fa fa-map-marker"></i>
                           <%=request.getAttribute("location")%>
                        </li>
                    </ul>
                </div>
                <div class="skills-section">
                    <h3 class="main-title">Skills</h3>
                    <ul>
                    <%String[] str =(String[])request.getAttribute("skills");
	for(int i=0;i<str.length;i++){%>
                        <li>
                            <p class="skill-title"><%=str[i]%></p>
                        </li>
                     <%	}  %> 
                    </ul>
                </div>
                <div class="references-section">
                    <h3 class="main-title">Soft-Skills</h3>
                   <ul>
                    <%String[] str1 =(String[])request.getAttribute("softskills");
	for(int i=0;i<str1.length;i++){%>
                        <li>
                            <p class="skill-title"><%=str1[i]%></p>
                        </li>
                     <%	}  %> 
                    </ul>
                    </div>
        </section>
        <section class="right-section">
            <div class="right-main-content">
                <section class="about sect">
                    <h2 class="right-title">About Me</h2>
                    <p class="para">
                       <%=request.getAttribute("about")%>
                    </p>
                </section>

                <section class="experince sect">
                    <h2 class="right-title">Work Experience</h2>
                     <%String[] stir =(String[])request.getAttribute("we_i");
	for(int i=0;i<stir.length;i+=4){%>
                    <div class="timeline">
                        <div class="left-tl-content">
                            <h5 class="tl-title"><%=stir[i]%></h5>
                            <p class="para"><%=stir[i+1]%></p>
                        </div>
                        <div class="right-tl-content">
                            <div class="tl-content">
                                <h5 class="tl-title-2"><%=stir[i+2]%></h5>
                                <p class="para">
                                    <%=stir[i+3]%>
                                </p>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </section>
                <section class="education sect">
                    <h2 class="right-title">Education</h2>
                    <%String[] stir1 =(String[])request.getAttribute("education");
	for(int i=0;i<stir1.length;i+=4){%>
                    <div class="timeline">
                        <div class="left-tl-content">
                            <h5 class="tl-title"><%=stir1[i]%></h5>
                            <p class="para"><%=stir1[i+1]%></p>
                        </div>
                        <div class="right-tl-content">
                            <div class="tl-content">
                                <h5 class="tl-title-2"><%=stir1[i+2]%></h5>
                                <p class="para">
                                   <%=stir1[i+3]%>
                                </p>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </section>
                <section class="awards sect">
                    <h2 class="right-title">Certificates</h2>
                    <ul>
                    <%String[] str2 =(String[])request.getAttribute("certificates");
	for(int i=0;i<str2.length;i++){%>
                        <li>
                            <p class="para"><%=str2[i]%></p>
                        </li>
                     <%	}  %> 
                    </ul>
                    </div>
                </section>
          </section>
    </main>
</body>
</html>