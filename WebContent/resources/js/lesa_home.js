$(document).ready(function(){        
                
        $(".page").on("mousewheel DOMMouseScroll",    //휠 기능
                        //크롬, 익스플로러 // 파이어폭스           
            function(e){

                e.preventDefault(); //기본속성 무시 => 충돌x 
                
                var E = e.originalEvent;
                var delta=0;  // 휠 값
                
                if(E.detail){
                    delta = E.detail * -40;                    
                }else{
                    delta = E.wheelDelta;                    
                }
                
                var moveTop = 0;
                if(delta<0){   // 휠 내리면

                    moveTop=$(this).next().offset().top;                    

                }else{
                    moveTop=$(this).prev().offset().top;
                    
                }
                
                $("html, body").stop().animate({
                    scrollTop:moveTop+"px"
                },100);
                

            });
	});