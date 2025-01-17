<%@page import="kr.or.ddit.user.login.vo.LoginVO"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="kr.or.ddit.content.vo.ContentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../../common/header.jsp" />

<%
	List<ContentVO> actionList = (List<ContentVO>) request.getAttribute("actionList");
	List<ContentVO> comedyList = (List<ContentVO>) request.getAttribute("comedyList");
	List<ContentVO> horrorList = (List<ContentVO>) request.getAttribute("horrorList");
	List<ContentVO> romanceList = (List<ContentVO>) request.getAttribute("romanceList");
	List<ContentVO> sfList = (List<ContentVO>) request.getAttribute("sfList");
	List<ContentVO> popularList = (List<ContentVO>) request.getAttribute("popularList");
	List<ContentVO> animationList = (List<ContentVO>) request.getAttribute("animationList");
	List<ContentVO> crimeList = (List<ContentVO>) request.getAttribute("crimeList");
	
	
	LoginVO user = null;
	if(session.getAttribute("loginChk") != null){
		user = (LoginVO) session.getAttribute("loginChk");
	}
%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/user/slider.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/user/main.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/user/mainModal.css">
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/content/contentInfo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/content/searchContent.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    

    <div id="visualFrame">
        <div class="contents">
            <img class="image-layer" src="../../resources/images/mainPoster.jfif" alt="mainPoster">
            <div class="vignette-layer"></div>
            <div class="info">
                <div class="logo-and-text">
                    <div class="title-wrapper mb-sm-4">
                        <img alt="SpiderMan" class="title-logo" src="../../resources/images/main.png" title="SpiderMan">
                    </div>
                    <div class="info-wrapper pb-sm-4">
                        <div class="synopsis"> Male celebs play make-believe as high schoolers, welcoming star transfer students every week and engaging in battles of witty humor and slapstick. </div>
                    </div>
                    <div class="button-layer">
                        <a data-uia="play-button" role="link" aria-label="Play" class="playLink" id="play">
                            <button class="btn btn-light btn-xlg d-flex align-items-center hasLabel hasIcon" type="button">
                                <img src="../../resources/images/play.svg" alt="play">
                                <span>Play</span>
                            </button>
                        </a>
                        <!-- <button class="color-secondary hasLabel hasIcon" data-uia="billboard-more-info" type="button">
                            <img src="../../resources/images/info.svg" alt="info">
                            <span>More Info</span>
                        </button> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="shadow"></div>
    </div>
       
   
	  
    <div class="netflix-slider" style="margin-top: -7vw;">
	    <h2 class="rowTitle">금주 인기 영화</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < popularList.size(); i++){
	    		ContentVO vo = popularList.get(i);
	    		
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="금주인기영화">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div>	        
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">액션</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < actionList.size(); i++){
	    		ContentVO vo = actionList.get(i);
	    		
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="액션">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div>	        
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">코메디</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < comedyList.size(); i++){
	    		ContentVO vo = comedyList.get(i);
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="코메디">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div> 
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">범죄</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < crimeList.size(); i++){
	    		ContentVO vo = crimeList.get(i);
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="범죄">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div> 
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
	  
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">공포</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < horrorList.size(); i++){
	    		ContentVO vo = horrorList.get(i);
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="공포">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div> 
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">로맨스</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < romanceList.size(); i++){
	    		ContentVO vo = romanceList.get(i);
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="로맨스">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div> 
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">SF</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < sfList.size(); i++){
	    		ContentVO vo = sfList.get(i);
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="SF">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div> 
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	  
	  
    <div class="netflix-slider">
	    <h2 class="rowTitle">애니메이션</h2>
	      <div class="swiper-container swiper">
	       <div class="swiper-wrapper">
	    <%
	    	for(int i = 0; i < animationList.size(); i++){
	    		ContentVO vo = animationList.get(i);
	    %>
		    	<div class="swiper-slide">
		        	<img src="<%=vo.getCont_poster()%>" alt="액션">
		        	<span class="item-load-icon button opacity-none"><i class="fa fa-play"
		        											onclick="contentInfo('<%=vo.getCont_title()%>',
		        														 '<%=vo.getCont_poster()%>',
		        														 '<%=vo.getCont_cast()%>',
		        														 '<%=user.getUsers_id()%>',
		        														 '<%=vo.getCont_director()%>',
		        														 '<%=vo.getEp_plot()%>',
		        														 '<%=vo.getVideo_file_save_path()%>',
		        														 '<%=vo.getPrice_rating_price()%>');"></i>
		        	</span>
		        </div> 
	    <%		
	    	}
	    %>
	      </div>                                 
	      <div class="swiper-button-next"></div>
	      <div class="swiper-button-prev"></div>
	    </div>
	  </div>
	    
	  <div id="modalArea">
	  </div>    
		  	  
     
	    
     
	   <script>
	   
	   $('#play').on('click',function(){
		   $.ajax({
			   url : 'mainPlay.do',
			   type : 'post',
			   success : function(code){
				   $('#modal').html(code);
				   $('#playModal').modal('show',{backdrop: false});
			   },
			   error : function(xhr){
				   alert(xhr.status);
			   },
			   dataType: 'html'
		   });
	   });
	   
   
	   $(document).on('click', "button[role='addCart']", function(){
			let title = $(this).data("title");
			let poster = $(this).data("poster");
			let videoSerno = $(this).data("video_serno");
			let epNum = $(this).data("ep_num");
			let price = $(this).data("price");
			
			$.ajax({
                type : "POST", 
                url : "../cart/userCartInsert.do", 
                data : {
                	"title": title,
                	"poster": poster,
                	"videoSerno": videoSerno,
                	"epNum": epNum,
                	"price": price
                }, 
                success : function(result) { 
                            if (result == -1) { alert('이미 장바구니에 담긴 컨텐츠 입니다.') } 
                            else { alert(result + '가 장바구니에 담겼습니다.'); getCartList(); } 
                        }, 
                error : function(request, status, error) { alert("code:" + request.status + "\n" + "error:" + error); }

            });

			
		});
        let mySwiper = new Swiper('.swiper-container', {
            // Optional parameters
		    slidesPerView: 6,
		    spaceBetween: 10,
		    slidesPerGroup: 2,
		    pagination: {
		       el: '.swiper-pagination',
		       clickable: true,
		    },
		    navigation: {
		       nextEl: '.swiper-button-next',
		       prevEl: '.swiper-button-prev',
		    },
            breakpoints: {
                // when window width is >= 640px
                640: {
                    slidesPerView: 5,
                    slidesPerGroup: 5,
                    freeMode: false
                }
            }
        });
    </script>
    
    <jsp:include page="../../common/footer.jsp" />
