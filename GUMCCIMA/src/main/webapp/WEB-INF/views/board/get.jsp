<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>



<html lang="en" xmlns:th="http://www.thymeleaf.org">

<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 100px;
}
</style>

<style>
.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>


<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
	align-content: center;
	text-align: center;
}

.uploadResult ul li img {
	width: 100px;
}

.uploadResult ul li span {
	color: white;
}

.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
	background: rgba(255, 255, 255, 0.5);
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.bigPicture img {
	width: 600px;
}
</style>



<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>GUMCCIMA</title>
<meta content="" name="description">
<meta content="" name="keywords">


<link href="../resources/assets/img/apple-touch-icon2.png" rel="icon">
<link href="../resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link href="../resources/assets/css/style.css" rel="stylesheet">


</head>

<body>


	<!-- ======= 헤더 쪽  ======= -->
	<header id="header" class="d-flex align-items-center ">
		<div
			class="container-fluid d-flex align-items-center justify-content-lg-between">


			<a href="/board/index"> <img
				src="../resources/assets/img/logo/logo2.png" alt="로고" height="70px"
				width="400px">
			</a>






			<div class="header-social-links d-flex align-items-center">

				<sec:authorize access="isAuthenticated()">
					<a href='/board/customLogout' class="btn-get-started scrollto">
						로그아웃 </a>
				</sec:authorize>
				<a href='#' class="btn-get-started scrollto">마이페이지 </a>
			</div>

		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title"></div>




				<div class="container">

					<div class="section-title">
						<h1>전체 게시판</h1>
						<p>매너있는 게시판 활동 부탁드립니다~~!</p>
					</div>
				</div>


				<div class="row mt-5">

					<div class="col-lg-4">
						<div class="info">



							<div class="address">
								<i class="bi bi-person-circle"></i>
								<h3>사용 이름:</h3>
								<h3>
									<sec:authentication property="principal.username" />
									님
								</h3>
							</div>


						</div>

					</div>

					<div class="col-lg-8 mt-5 mt-lg-0">

						<div class="panel panel-default">

							<!-- /.panel-heading -->
							<div class="panel-body">




								<div class="form-group">
									<div class="section-title">
										<h2>게시글 제목</h2>
										<input class="form-control" name='title'
											value='<c:out value="${board.title }"/>' readonly="readonly">
									</div>

								</div>


								<div class="form-group">
									<div class="section-title">
										<h2>게시글 내용</h2>
										<textarea class="form-control" rows="3" name='content'
											readonly="readonly"><c:out
												value="${board.content}" /></textarea>
									</div>

								</div>



								<sec:authentication property="principal" var="pinfo" />
								<sec:authorize access="isAuthenticated()">
									<c:if test="${pinfo.username eq board.writer}">
										<a class="btn btn-outline-primary" href="/board/modify"
											role="button">게시물 수정</a>
									</c:if>
								</sec:authorize>

								<a class="btn btn-outline-primary" href="/board/register"
											role="button">목록으로</a>

				

								<form id='operForm' action="/boad/modify" method="get">
									<input type='hidden' id='bno' name='bno'
										value='<c:out value="${board.bno}"/>'> <input
										type='hidden' name='pageNum'
										value='<c:out value="${cri.pageNum}"/>'> <input
										type='hidden' name='amount'
										value='<c:out value="${cri.amount}"/>'> <input
										type='hidden' name='keyword'
										value='<c:out value="${cri.keyword}"/>'> <input
										type='hidden' name='type' value='<c:out value="${cri.type}"/>'>

								</form>
								


								<div class='bigPictureWrapper'>
									<div class='bigPicture'></div>
								</div>

								<div class="row">
									<div class="col-lg-12">
										<div class="panel panel-default">

											<div class="panel-heading">Files</div>
											<!-- /.panel-heading -->
											<div class="panel-body">

												<div class='uploadResult'>
													<ul>
													</ul>
												</div>
											</div>
											<!--  end panel-body -->
										</div>
										<!--  end panel-body -->
									</div>
									<!-- end panel -->
								</div>
								<!-- /.row -->



							</div>
							<!--  end panel-body -->

						</div>
						<!--  end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!-- /.row -->



			</div>



		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top">

			<div class="container">

				<div class="row  justify-content-center">
					<div class="col-lg-6">
						<h3>GUMCCIMA</h3>
						<p>굼찌마 사이트에 방문해주셔서 감사합니다.</p>
					</div>
				</div>


			</div>
		</div>

		<div class="container footer-bottom clearfix">

			<div class="credits">

				Designed by <strong> 정보시스템구축 C Team </strong>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script
		src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/assets/js/main.js"></script>

	<script>

$(document).ready(function () {
  
  var bnoValue = '<c:out value="${board.bno}"/>';
  var replyUL = $(".chat");
  
    showList(1);
    
    function showList(page){
    	
    	console.log("show list " + page);
        
        replyService.getList({bno:bnoValue,page: page|| 1 }, function(replyCnt, list) {
          
        console.log("replyCnt: "+ replyCnt );
        console.log("list: " + list);
        console.log(list);
        
        if(page == -1){
          pageNum = Math.ceil(replyCnt/10.0);
          showList(pageNum);
          return;
        }
          
         var str="";
         
         if(list == null || list.length == 0){
           return;
         }
         
         for (var i = 0, len = list.length || 0; i < len; i++) {
           str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
           str +="  <div><div class='header'><strong class='primary-font'>["
        	   +list[i].rno+"] "+list[i].replyer+"</strong>"; 
           str +="    <small class='pull-right text-muted'>"
               +replyService.displayTime(list[i].replyDate)+"</small></div>";
           str +="    <p>"+list[i].reply+"</p></div></li>";
         }
         
         replyUL.html(str);
         
         showReplyPage(replyCnt);

     
       });//end function
         
     }//end showList
    
    var pageNum = 1;
    var replyPageFooter = $(".panel-footer");
    
    function showReplyPage(replyCnt){
      
      var endNum = Math.ceil(pageNum / 10.0) * 10;  
      var startNum = endNum - 9; 
      
      var prev = startNum != 1;
      var next = false;
      
      if(endNum * 10 >= replyCnt){
        endNum = Math.ceil(replyCnt/10.0);
      }
      
      if(endNum * 10 < replyCnt){
        next = true;
      }
      
      var str = "<ul class='pagination pull-right'>";
      
      if(prev){
        str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
      }
      
       
      
      for(var i = startNum ; i <= endNum; i++){
        
        var active = pageNum == i? "active":"";
        
        str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
      }
      
      if(next){
        str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
      }
      
      str += "</ul></div>";
      
      console.log(str);
      
      replyPageFooter.html(str);
    }
     
    replyPageFooter.on("click","li a", function(e){
        e.preventDefault();
        console.log("page click");
        
        var targetPageNum = $(this).attr("href");
        
        console.log("targetPageNum: " + targetPageNum);
        
        pageNum = targetPageNum;
        
        showList(pageNum);
      });     
   
    var modal = $(".modal");
    var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
        modal.find("input").val("");
        modal.find("input[name='replyer']").val(replyer);
        modalInputReplyDate.closest("div").hide();
        modal.find("button[id !='modalCloseBtn']").hide();
        
        modalRegisterBtn.show();
        
        $(".modal").modal("show");
        
      });

    
    $(document).ajaxSend(function(e, xhr, options) { 
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
      }); 

    

    modalRegisterBtn.on("click",function(e){
      
      var reply = {
            reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bno:bnoValue
          };
      replyService.add(reply, function(result){
        
        alert(result);
        
        modal.find("input").val("");
        modal.modal("hide");
        
        //showList(1);
        showList(-1);
        
      });
      
    });


  //댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
      var rno = $(this).data("rno");
      
      replyService.get(rno, function(reply){
      
        modalInputReply.val(reply.reply);
        modalInputReplyer.val(reply.replyer);
        modalInputReplyDate.val(replyService.displayTime( reply.replyDate))
        .attr("readonly","readonly");
        modal.data("rno", reply.rno);
        
        modal.find("button[id !='modalCloseBtn']").hide();
        modalModBtn.show();
        modalRemoveBtn.show();
        
        $(".modal").modal("show");
            
      });
    });
  
    
modalModBtn.on("click", function(e){
	
	var originalReplyer = modalInputReplyer.val();
	
  var reply = {
		      rno:modal.data("rno"), 
		      reply: modalInputReply.val(),
		      replyer: originalReplyer};
  
	if(!replyer){
		 alert("로그인후 수정이 가능합니다.");
		 modal.modal("hide");
		 return;
	}

	console.log("Original Replyer: " + originalReplyer);
	
	if(replyer  != originalReplyer){
	 
		 alert("자신이 작성한 댓글만 수정이 가능합니다.");
		 modal.modal("hide");
		 return;
	 
	}
	  
	replyService.update(reply, function(result){
	      
	  alert(result);
	  modal.modal("hide");
	  showList(pageNum);
	  
	});
  
});   	
   	
   	modalRemoveBtn.on("click", function (e){
   	  
   	  var rno = modal.data("rno");

   	  console.log("RNO: " + rno);
   	  console.log("REPLYER: " + replyer);
   	  
   	  if(!replyer){
   		  alert("로그인후 삭제가 가능합니다.");
   		  modal.modal("hide");
   		  return;
   	  }
   	  
   	  var originalReplyer = modalInputReplyer.val();
   	  
   	  console.log("Original Replyer: " + originalReplyer);
   	  
   	  if(replyer  != originalReplyer){
   		  
   		  alert("자신이 작성한 댓글만 삭제가 가능합니다.");
   		  modal.modal("hide");
   		  return;
   		  
   	  }
   	  
   	  
   	  replyService.remove(rno, originalReplyer, function(result){
   	        
   	      alert(result);
   	      modal.modal("hide");
   	      showList(pageNum);
   	      
   	  });
   	  
   	});
   	
    var replyer = null;
    
    <sec:authorize access="isAuthenticated()">
    	replyer = '<sec:authentication property="principal.username"/>';   
	</sec:authorize>
 
    var csrfHeaderName ="${_csrf.headerName}"; 
    var csrfTokenValue="${_csrf.token}";
 
});

</script>



	<script>

/* console.log("===============");
console.log("JS TEST");

var bnoValue = '<c:out value="${board.bno}"/>'; */

//for replyService add test
/* replyService.add(
    
    {reply:"JS Test", replyer:"tester", bno:bnoValue}
    ,
    function(result){ 
      alert("RESULT: " + result);
    }
); */


//reply List Test
/* replyService.getList({bno:bnoValue, page:1}, function(list){
    
	  for(var i = 0,  len = list.length||0; i < len; i++ ){
	    console.log(list[i]);
	  }
});
 */

 
/*  //17번 댓글 삭제 테스트 
 replyService.remove(17, function(count) {

   console.log(count);

   if (count === "success") {
     alert("REMOVED");
   }
 }, function(err) {
   alert('ERROR...');
 });
 */
 

//12번 댓글 수정 
/* replyService.update({
  rno : 12,
  bno : bnoValue,
  reply : "Modified Reply...."
}, function(result) {

  alert("수정 완료...");

});  
 */

</script>


	<script type="text/javascript">
$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  
  $("button[data-oper='modify']").on("click", function(e){
    
    operForm.attr("action","/board/modify").submit();
    
  });
  
    
  $("button[data-oper='list']").on("click", function(e){
    
    operForm.find("#bno").remove();
    operForm.attr("action","/board/list")
    operForm.submit();
    
  });  
});
</script>


	<script>


$(document).ready(function(){
  
  (function(){
  
    var bno = '<c:out value="${board.bno}"/>';
    
    /* $.getJSON("/board/getAttachList", {bno: bno}, function(arr){
    
      console.log(arr);
      
      
    }); *///end getjson
    $.getJSON("/board/getAttachList", {bno: bno}, function(arr){
        
       console.log(arr);
       
       var str = "";
       
       $(arr).each(function(i, attach){
       
         //image type
         if(attach.fileType){
           var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
           
           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
           str += "<img src='/display?fileName="+fileCallPath+"'>";
           str += "</div>";
           str +"</li>";
         }else{
             
           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
           str += "<span> "+ attach.fileName+"</span><br/>";
           str += "<img src='/resources/img/attach.png'></a>";
           str += "</div>";
           str +"</li>";
         }
       });
       
       $(".uploadResult ul").html(str);
       
       
     });//end getjson

    
  })();//end function
  
  $(".uploadResult").on("click","li", function(e){
      
    console.log("view image");
    
    var liObj = $(this);
    
    var path = encodeURIComponent(liObj.data("path")+"/" + liObj.data("uuid")+"_" + liObj.data("filename"));
    
    if(liObj.data("type")){
      showImage(path.replace(new RegExp(/\\/g),"/"));
    }else {
      //download 
      self.location ="/download?fileName="+path
    }
    
    
  });
  
  function showImage(fileCallPath){
	    
    alert(fileCallPath);
    
    $(".bigPictureWrapper").css("display","flex").show();
    
    $(".bigPicture")
    .html("<img src='/display?fileName="+fileCallPath+"' >")
    .animate({width:'100%', height: '100%'}, 1000);
    
  }

  $(".bigPictureWrapper").on("click", function(e){
    $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
    setTimeout(function(){
      $('.bigPictureWrapper').hide();
    }, 1000);
  });

  
});

</script>



</body>

<script>
	$(document)
			.ready(
					function(e) {

						var formObj = $("form[role='form']");

						$("button[type='submit']")
								.on(
										"click",
										function(e) {

											e.preventDefault();

											console.log("submit clicked");

											var str = "";

											$(".uploadResult ul li")
													.each(
															function(i, obj) {

																var jobj = $(obj);

																console
																		.dir(jobj);
																console
																		.log("-------------------------");
																console
																		.log(jobj
																				.data("filename"));

																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].fileName' value='"
																		+ jobj
																				.data("filename")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uuid' value='"
																		+ jobj
																				.data("uuid")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uploadPath' value='"
																		+ jobj
																				.data("path")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].fileType' value='"
																		+ jobj
																				.data("type")
																		+ "'>";

															});

											console.log(str);

											formObj.append(str).submit();

										});

						var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
						var maxSize = 5242880; //5MB

						function checkExtension(fileName, fileSize) {

							if (fileSize >= maxSize) {
								alert("파일 사이즈 초과");
								return false;
							}

							if (regex.test(fileName)) {
								alert("해당 종류의 파일은 업로드할 수 없습니다.");
								return false;
							}
							return true;
						}

						var csrfHeaderName = "${_csrf.headerName}";
						var csrfTokenValue = "${_csrf.token}";

						$("input[type='file']")
								.change(
										function(e) {
											var formData = new FormData();
											var inputFile = $("input[name='uploadFile']");
											var files = inputFile[0].files;
											for (var i = 0; i < files.length; i++) {
												if (!checkExtension(
														files[i].name,
														files[i].size)) {
													return false;
												}
												formData.append("uploadFile",
														files[i]);
											}

											$.ajax({
												url : '/uploadAjaxAction',
												processData : false,
												contentType : false,
												beforeSend : function(xhr) {
													xhr.setRequestHeader(
															csrfHeaderName,
															csrfTokenValue);
												},
												data : formData,
												type : 'POST',
												dataType : 'json',
												success : function(result) {
													console.log(result);
													showUploadResult(result); //업로드 결과 처리 함수 
												}
											}); //$.ajax
										});

						function showUploadResult(uploadResultArr) {

							if (!uploadResultArr || uploadResultArr.length == 0) {
								return;
							}

							var uploadUL = $(".uploadResult ul");

							var str = "";

							$(uploadResultArr)
									.each(
											function(i, obj) {

												/* //image type
												if(obj.image){
												  var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
												  str += "<li><div>";
												  str += "<span> "+ obj.fileName+"</span>";
												  str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
												  str += "<img src='/display?fileName="+fileCallPath+"'>";
												  str += "</div>";
												  str +"</li>";
												}else{
												  var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);            
												    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
												      
												  str += "<li><div>";
												  str += "<span> "+ obj.fileName+"</span>";
												  str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
												  str += "<img src='/resources/img/attach.png'></a>";
												  str += "</div>";
												  str +"</li>";
												} */
												//image type
												if (obj.image) {
													var fileCallPath = encodeURIComponent(obj.uploadPath
															+ "/s_"
															+ obj.uuid
															+ "_"
															+ obj.fileName);
													str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
													str += "<span> "
															+ obj.fileName
															+ "</span>";
													str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
													str += "<img src='/display?fileName="
															+ fileCallPath
															+ "'>";
													str += "</div>";
													str + "</li>";
												} else {
													var fileCallPath = encodeURIComponent(obj.uploadPath
															+ "/"
															+ obj.uuid
															+ "_"
															+ obj.fileName);
													var fileLink = fileCallPath
															.replace(
																	new RegExp(
																			/\\/g),
																	"/");

													str += "<li "
			str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
													str += "<span> "
															+ obj.fileName
															+ "</span>";
													str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
			str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
													str += "<img src='/resources/img/attach.png'></a>";
													str += "</div>";
													str + "</li>";
												}

											});

							uploadUL.append(str);
						}

						$(".uploadResult").on(
								"click",
								"button",
								function(e) {
									console.log("delete file");
									var targetFile = $(this).data("file");
									var type = $(this).data("type");
									var targetLi = $(this).closest("li");

									$.ajax({
										url : '/deleteFile',
										data : {
											fileName : targetFile,
											type : type
										},
										beforeSend : function(xhr) {
											xhr.setRequestHeader(
													csrfHeaderName,
													csrfTokenValue);
										},

										dataType : 'text',
										type : 'POST',
										success : function(result) {
											alert(result);

											targetLi.remove();
										}
									}); //$.ajax
								});

					});
</script>

</html>





