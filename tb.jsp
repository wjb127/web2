<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.io.*"%>
<%

	String fcon="";
%>
<!DOCTYPE html>
<html lang="kor">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>개인용 학습 툴 모음</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
    

#oldtext{
        
    margin: 5px;
    padding: 5px;
    width: 500px;
    height: 400px;
}
    

#result{
        
    margin: 5px;
    padding: 5px;
    width: 500px;
    height: 400px;
    border: solid;

}
    
.blank{
        
    

    top:1235px;
    margin: 15px;
    padding: 5px;
    float: right;

    
}
    

h3{
    margin: 50px;
    padding: 5px;

}
    
.input{

    
    border: solid;
    margin-top: 100px;
    margin-bottom: 50px;
	max-width: 540px;
}

.output{

    
    border: solid;
    margin-top: 100px;
    margin-left:auto;
    margin-bottom: 50px;
    max-width: 540px;
}

.down{


	top:1235px;
    margin: 15px;
    padding: 5px;
    float: right;

}

#cnt{

	margin: 15px;
    padding: 5px;
    float: left;
	
}

#print{
    

    margin: 15px;
    padding: 5px;
    float: left;
    
}

</style>    
    </head>
    <body id="page-top">
    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">개인용 학습 툴 모음</a>
                
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    	메뉴
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">빈칸 생성기</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">단어 암기장</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <!-- <img class="masthead-avatar mb-5" src="assets/img/avataaars.svg" alt="..." /> -->
                <img class="masthead-avatar mb-5" src="assets/img/images.png" alt="..." />
                
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">Study Tools</h1>
                <h3>for personal use</h3>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">Text Blanker - Word Memory Kit - Sign Up Format</p>
            </div>
        </header>
        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Text Blanker</h2>
                <!-- Icon Divider-->
                
                <div class="row">
                
                
                <div class="input"> 
					<h3>빈칸 삽입할 텍스트 입력</h3>		
			        <textarea id="oldtext" name="oldtext" class="old text"></textarea>
			        <!-- 폼 제출버튼 -->
			        <input type="button" name="blank" class="blank" value="빈칸 삽입" onclick="blank()">
				</div>
			    <div class="output" >
			    	<form name="Form" method="post" action="download.jsp">
			        <h3>빈칸 삽입된 텍스트 결과</h3>
			        <textarea class="text result" id="result"></textarea>
			        <div id="cnt">단어 개수 : </div>
			    	<div class="print result" id="print"></div> 
			    	<input type="button" id="down" name="down" class="down" value="다운로드" onclick="down()">
			    	
			    	<script type="text/javascript">
		
								// id가 downA인 요소 클릭시 함수 작동 
						    	document.getElementById("down").addEventListener("click", function(event) {
						    		
						    		// a 태그의 기본 동작을 막기
							        event.preventDefault();
							     	// 이벤트의 전파를 막기
							        event.stopPropagation();
							        // file content을 utf-8로 인코딩해서 fName에 저장
							        var fcon = encodeURIComponent("<%=fcon%>");
							        // 인코딩된 파일이름을 쿼리문자열에 포함시켜 다운로드 페이지로 이동
							        window.location.href ="download.jsp?fcon="+fcon;
						        
						    	});
						
							</script>
			    	</form>
			    </div>
			    
			    
			    
			    </div>
			    
			    
			            
			    <script type="text/javascript"> 
				
					function blank()  {

			            var text = document.getElementById('oldtext').value;
			            var line_bsk = text.split("\n")
			            
			            
			            var bsk = []
			            
			            var i;
			            for(i=0;i<line_bsk.length;i++) {
			             
			                var bsk_element = line_bsk[i].split(" ")            
			                var k;
			                for(k=0;k<bsk_element.length;k++) {
			                    bsk.push(bsk_element[k]);
			                }
			                
			                bsk.push("\n")
			            }
			            
			            var bsklen = bsk.length;
			            var bskran = [];
			            for(i=0;i<bsklen;i++) {
			                
			                if (bsk[i] != '\n' && bsk[i] != '')
			                    num = Math.floor(Math.random()*4)
			                else
			                    num = -1   
			                bskran.push(num)
			                
			            }  
			
			        for(i=0;i<bsklen;i++) {
			            
			            if (bsk[i]!='\n' && bsk[i]!='' && bskran[i]==0)
			            {
			                var j;
			                var tmp = "";
			                for(j=0;j<bsk[i].length;j++) {
			                    
			                    tmp = tmp + "_";
			                }       
			                
			                bsk[i] = tmp;
			            }

			        }
			
			            const str = bsk.join(" ");
			            
			            // 가끔 \n 마지막에 끝나거나 \n 이후 띄어쓰기를 하는 경우 단어 개수를 이상하게 세는 경우가 많음	            
			            // 입력이 긴 경우 아웃풋도 길어짐. 그에 맞춰 아웃풋 범위도 넓어지도록 만들어야함.
			            // 텍스트 파일 다운로드 버튼 만들기 : 즉석에서 다운받아볼 수 있도록 해야함.
			
			            document.getElementById("print").innerText = bsklen + "개";// - line_bsk.length;
			            document.getElementById("result").innerText = str;
			              
						}
					
					
					function down(){
						
						
						
					}
			    </script>
            </div>
        </section>
        <!-- About Section-->
        <section class="page-section bg-primary text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">Word Memory Kit</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ms-auto"><p class="lead">미구현</p></div>
                    <div class="col-lg-4 me-auto"><p class="lead">구현 계획 : </p></div>
                </div>
                <!-- About Section Button-->
                <!-- <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://startbootstrap.com/theme/freelancer/">
                        <i class="fas fa-download me-2"></i>
                        Free Download!
                    </a>
                </div> -->
            </div>
        </section>
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">회원 가입</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Full name</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                <label for="email">Email address</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
                                <label for="phone">Phone number</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                            <!-- Message input-->
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">Message</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            <!-- Submit Button-->
                            <button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">가입 신청</button>
                            
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer text-center">
            <div class="container">
                <div class="row">
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">추가 링크</h4>
                        <a class="lead mb-0" href="https://blog.naver.com/wjb127">
                            	개인 블로그
                        </a>
                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Around the Web</h4>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-dribbble"></i></a>
                    </div>
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4">2021-08-18</h4>
                        <p class="lead mb-0">
                            	개인적 사용을 위해 제작
                            
                            
                        </p>
                    </div>
                    
                </div>
            </div>
        </footer>
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright &copy; Your Website 2021</small></div>
        </div>
        <!-- <!-- Portfolio Modals-->
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
