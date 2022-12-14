<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Private</title>   
<style>
   #emailFront{
      outline:none;
   }
   #nickSector{
      outline:none;
   }
   #pass1{
      outline:none;
   }
   #pass2{
      outline:none;
   }
   #box1{
    text-align: center;
    margin: auto;
    margin-top: 20px;
    width: 420px;
    height: 930px;
    border: solid 4px #900020;
    border-radius: 21px;
    background: white;
   }
   .imgContainer{
        margin-top : 25px;
        display : inline-block;
        width : 120px;
        height : 120px;
        border-radius : 16px;
        z-index : 0;
        
        box-shadow: 0px 3px 3px 0px grey;
        overflow : hidden;
   }
   #drz{
    position : relative;
    left : -5px;
   }
   #emailFront{
    margin-left: 10px;
    text-align: left;
    width: 150px;
    height: 30px;
    border: solid 2px #900020;
    border-radius: 10px;
    padding-left: 10px;
    outline: none;
   }
   #emailBack2{
    text-align: left;
    width: 160px;
    height: 37px;
    border: solid 2px #900020;
    border-radius: 10px;
    padding-left: 10px;
    outline: none;
    
   }
   #emailBack1{
    text-align: left;
    width: 160px;
    height: 32px;
    border: solid 2px #900020;
    border-radius: 10px;
    padding-left: 10px;
    outline: none;
    
   }
   #authority{
    width: 185px;
    height: 30px;
    border-radius: 10%;
    font-size: 14px;
    font-weight: bold;
    border-radius: 10%;
    background: white;
   }
    #pass1{
    text-align: left;
    width: 225px;
    height: 30px;
    border: solid 2px #900020;
    border-radius: 10px;
    padding-left: 10px;
    outline: none;
   }
   #pass2{
    text-align: left;
    width: 225px;
    height: 30px;
    border: solid 2px #900020;
    border-radius: 10px;
    padding-left: 10px;
    outline: none;
   } 
  
   #sign{
    width: 185px;
    height: 30px;
    border-radius: 10%;
    font-size: 14px;
    font-weight: bold;
    border-radius: 10%;
    background: white;
   }

   #sign:hover{
    background: #900020;
    color:white;
    }
    .authority{
    width: 185px;
    height: 30px;
    border-radius: 10%;
    font-size: 14px;
    font-weight: bold;
    border-radius: 10%;
    background: white;
   }
    .authority:hover{
    background: #900020;
    color:white;
    }
    .line{
    margin: 8px 0px 0px 85px;
    width: 253px;
    border: solid 2px #900020;
    border-radius: 20px;
    position: absolute;
    }
   #nickSector{
    text-align: left;
    width: 225px;
    height: 30px;
    border: solid 2px #900020;
    border-radius: 10px;
    padding-left: 10px;
    outline: none;
   }

</style>
</head>
<body>
   <div id="box1">
      <a class = "imgContainer" href="privateHome.jsp?CONTENTPAGE=community.jsp&FIXSECTOR=community&FIXSECTORSUB=communityHome"><img alt="Private" id="drz" width="130" height="130" src="img/daram.png"></a>
      <br>
      <form id="form" action="InsertExpert.do" method="post">
         <h2>?????????</h2>
         <input id="emailFront" type="text" name="memberidfront">&nbsp;@&nbsp;
         <select id="emailBack2" name="memberidback">
            <option value="notproper" selected disabled>??????????????????</option>
            <option value="naver.com">naver.com</option>
            <option value="gmail.com">gmail.com</option>
            <option value="hanmail.net">hanmail.net</option>
            <option value="daum.net">daum.net</option>
            <option value="nate.com">nate.com</option>
            <option value="outlook.com">outlook.com</option>
            <option value="self">?????? ??????</option>
         </select>
         <input id="emailBack1" type="text" name="memberidbackself" placeholder="????????????" style="visibility:hidden;">
         <p id="p1" style="display:block"></p>
         <p id="p2" style="display:none"></p>
         <p id="p3" style="display:none"></p>    
         <input id="authority" type="button" value="????????? ????????????" disabled>
         <div id="authbox" style="display:none;">     
         	<p style="font-size:12px">???????????? ????????? ??????????????? ??????????????????.</p>
         	<input id="authkey" type="text" placeholder="???????????? 6?????? ??????" style="height:30px; width:137px; border:1px solid #808080; border-radius: 10%; font-size: 14px; font-weight: bold; background: white; vertical-align:middle;">
         	<input id="check" type="button" value="??????" style="height:34px; background-color:#A52A2A; border-radius: 10%; vertical-align:middle;">
         </div>
         <h2>????????????</h2>
         <input id="pass1" type="password">
         <h2>???????????? ??????</h2>
         <input id="pass2" type="password" name="password">
         <p id="p4" style="display:none"></p>
         <h2>?????????</h2>
         <div>
         	<input id="nickSector" type="text" name="nickname">
         	<p id="p5" style="display:none"></p>
         </div>
         <br>
         <input id="sign" type="button" value="????????? ??????????????????">
      </form>
    
     </div>
      <script type="text/javascript">
         let emailFront=document.getElementById("emailFront");
         let emailBack2=document.getElementById("emailBack2");
         let emailBack1=document.getElementById("emailBack1");
         let authority=document.getElementById("authority");
         let emailPossible=false;
         
         let p1=document.getElementById("p1");
         let p2=document.getElementById("p2");
         let p3=document.getElementById("p3");
         let p4=document.getElementById("p4");
         let p5=document.getElementById("p5");
        
         let box1=document.getElementById("box1");
         let authbox=document.getElementById("authbox");
         let authkey=document.getElementById("authkey");
         let check=document.getElementById("check");
         
         
         let emails='${reExpertEmails}';
         let result=emails.slice(1,emails.length-1);
         let resultArr=result.split(", ");
         
         let nicknames='${nicknames}';
         let nick=nicknames.slice(1,nicknames.length-1);
         let nickArr=nick.split(", "); 
         
         let reExpertNicknames='${reExpertNicknames}';
         let reNick=reExpertNicknames.slice(1,reExpertNicknames.length-1);
         let reNickArr=reNick.split(", ")
         
         let nickSector=document.getElementById("nickSector");
         let nickPossible=false;
         
         let pass1=document.getElementById("pass1");
         let pass2=document.getElementById("pass2");
         let passPossible=false;
         
         let sign=document.getElementById("sign");
         let form=document.getElementById("form")
         
         let value="notproper";
         
         let key=null;
         let request=new XMLHttpRequest();
         
         emailBack2.addEventListener("change", function(){
            
            value=emailBack2.options[emailBack2.selectedIndex].value;
            
            if(value=="self"){
               emailBack1.style.visibility="visible";
               emailBack2.style.display="none";
               emailFront.style.border="1px solid red";
               emailBack1.style.border="1px solid red";
               p1.style.display="block";
               p2.style.display="none";
               p1.innerHTML="???????????? ?????? ???????????????.";   
               authority.disabled=true;
            }
            else{
               if(emailFront.value==""){
                  p1.style.display="block";
                  p2.style.display="none";
                  p1.innerHTML="???????????? ?????? ???????????????.";
                  emailFront.style.border="1px solid red";
                  emailBack2.style.border="1px solid red";
                  authority.disabled=true;
               }
               else{
                  p1.innerHTML="";
                  p1.style.display="none";
                  p2.style.display="block";
                  if(emailFront.value.includes('@')==true){
                     p1.style.display="block";
                     p2.style.display="none";
                     p1.innerHTML="???????????? ?????? ???????????????.";
                     emailFront.style.border="1px solid red";
                     emailBack2.style.border="1px solid red";
                     authority.disabled=true;
                  }
                  else{
                  str=emailFront.value+"@"+value;
                  p3.innerHTML=str;
                  for(var i=0;i<resultArr.length;i++){
                     if(str==resultArr[i]){
                        p2.innerHTML="?????? ????????? ?????? ????????? ??????????????????. ????????? ????????? ????????? ?????????";
                        emailFront.style.border="1px solid red";
                        emailBack2.style.border="1px solid red";
                        authority.disabled=true;
                        break;
                     }
                     else{
                        p2.innerHTML="?????? ????????? ??????????????????.";
                        emailFront.style.border="1px solid green";
                        emailBack2.style.border="1px solid green";
                        authority.disabled=false;
                     }
                  }
                  
                  }
               }
               
               
            }
            
            
         
         })
         
         emailFront.addEventListener("keyup",function(){
            
            if(value=="notproper"){
               p1.style.display="block";
               p2.style.display="none";
               p1.innerHTML="???????????? ?????? ???????????????.";
               emailFront.style.border="1px solid red";
               emailBack2.style.border="1px solid red";
               authority.disabled=true;
               
            }
            else if((value=="self")&&(emailBack1.value=="")||(emailFront.value=="")){
               p1.style.display="block";
               p2.style.display="none";
               p1.innerHTML="???????????? ?????? ???????????????.";   
               emailFront.style.border="1px solid red";
               emailBack1.style.border="1px solid red";
               authority.disabled=true;               
            }
            else{
               if(emailFront.value.includes('@')==true){
                  p1.style.display="block";
                  p2.style.display="none";
                  p1.innerHTML="???????????? ?????? ???????????????.";
                  emailFront.style.border="1px solid red";
                  emailBack2.style.border="1px solid red";
                  authority.disabled=true;
               }
               else{
               p1.innerHTML="";
               p1.style.display="none";
               p2.style.display="block";
               if(value=="self"){
                  str=emailFront.value+"@"+emailBack1.value;
                  p3.innerHTML=str;
                  for(var i=0;i<resultArr.length;i++){
                     if(str==resultArr[i]){
                        p2.innerHTML="?????? ????????? ?????? ????????? ??????????????????. ????????? ????????? ????????? ?????????";
                        emailFront.style.border="1px solid red";
                        emailBack1.style.border="1px solid red";
                        authority.disabled=true;
                        break;
                     }
                     else{
                        p2.innerHTML="?????? ????????? ??????????????????.";
                        emailFront.style.border="1px solid green";
                        emailBack1.style.border="1px solid green";
                        authority.disabled=false;
                     }
                  }
               }
               else{
                  str=emailFront.value+"@"+value;
                  p3.innerHTML=str;
                  for(var i=0;i<resultArr.length;i++){
                     if(str==resultArr[i]){
                        p2.innerHTML="?????? ????????? ?????? ????????? ??????????????????. ????????? ????????? ????????? ?????????";
                        emailFront.style.border="1px solid red";
                        emailBack2.style.border="1px solid red";
                        authority.disabled=true;
                        break;
                     }
                     else{
                        p2.innerHTML="?????? ????????? ??????????????????.";
                        emailFront.style.border="1px solid green";
                        emailBack2.style.border="1px solid green";
                        authority.disabled=false;
                     }
                  }
                 
               }
               }
            }
            
            
         })
         
         emailBack1.addEventListener("keyup",function(){
        	
            if(emailFront.value==""||emailBack1.value==""){
               p1.style.display="block";
               p2.style.display="none";
               p1.innerHTML="???????????? ?????? ???????????????.";
               emailFront.style.border="1px solid red";
               emailBack1.style.border="1px solid red";
               authority.disabled=true;
            }
            else{
               if(emailFront.value.includes('@')==true){
                  p1.style.display="block";
                  p2.style.display="none";
                  p1.innerHTML="???????????? ?????? ???????????????.";
                  emailFront.style.border="1px solid red";
                  emailBack2.style.border="1px solid red";
                  authority.disabled=true;
               }
               else{
               p1.innerHTML="";
               p1.style.display="none";
               p2.style.display="block";
               str=emailFront.value+"@"+emailBack1.value;
               p3.innerHTML=str;
               for(var i=0;i<resultArr.length;i++){
                  if(str==resultArr[i]){
                     p2.innerHTML="?????? ????????? ?????? ????????? ??????????????????. ????????? ????????? ??????????????????";
                     emailFront.style.border="1px solid red";
                     emailBack1.style.border="1px solid red";
                     authority.disabled=true;
                     break;
                  }
                  else{
                     p2.innerHTML="?????? ????????? ??????????????????.";
                     emailFront.style.border="1px solid green";
                     emailBack1.style.border="1px solid green";
                     authority.disabled=false;
                  }
               }
               
               }
            }
         })
         
       $(function(){
    	   $('#authority').on('click',sendemail);
       });
       
       function sendemail(){
    	   	authbox.style.display="block";
        	box1.style.height="1100px";
        	let email=null;
        	if (value=="self"){
        		email=emailFront.value+"@"+emailBack1.value;
        	}
        	else if(value!="self"){
        		email=emailFront.value+"@"+value;
        	}
        	
        	request.open("POST","./SendingAuthkey?email="+encodeURIComponent(email),true);
        	request.onreadystatechange=storekey;
        	request.send(null);
        }
       
       	function storekey(){
   			if(request.readyState==4&&request.status==200){
   				var object=eval('('+request.responseText+')');
   				var result=object.result;
   				key=result[0][0].key;
   			}	
   		}
        check.addEventListener("click",function(){
     	   if(authkey.value==key){
     		   emailPossible=true;
     	   }
     	   else{
     		   emailPossible=false;
     	   }
        });
         
         pass2.addEventListener("keyup",function(){
            if(pass1.value==pass2.value){
               pass1.style.border="1px solid green";
               pass2.style.border="1px solid green";
               p4.style.display="block";
               p4.innerHTML="???????????????.";
               passPossible=true;
            }
            else{
               pass1.style.border="1px solid red";
               pass2.style.border="1px solid red";
               p4.style.display="block";
               p4.innerHTML="????????????????????????.";
               passPossible=false;
            }
         })
         
           nickSector.addEventListener("keyup",function(){
            let breakpoint="no";
            if(nickSector.value==""){
               nickSector.style.border="1px solid black";
               p5.style.display="none";
               p5.innerHTML="";
               nickPossible=false;
            }
            else{
            for(var i=0; i<nickArr.length; i++){
               if(nickSector.value==nickArr[i]){
                  nickSector.style.border="1px solid red";
                  p5.style.display="block";
                  p5.innerHTML="?????? ?????? ?????? ??????????????????.";
                  nickPossible=false;
                  break;
               }
               for(var j=0; j<reNickArr.length; j++){
            	   if(nickSector.value==reNickArr[j]){
            		   nickSector.style.border="1px solid red";
                       p5.style.display="block";
                       p5.innerHTML="?????? ?????? ?????? ??????????????????.";
                       nickPossible=false;
                       breakpoint="yes";
                       break;
            	   }
               }
               if(breakpoint=="yes"){
            	   break;
               }
               else if(breakpoint="no"){
            	   nickSector.style.border="1px solid green";
                   p5.style.display="block";
                   p5.innerHTML="?????? ????????? ??????????????????.";
                   nickPossible=true;

               }
             }   
            }
         })
         
         sign.addEventListener("click",function(){
            if((emailPossible==true)&&(passPossible==true)&&(nickPossible==true)){
               form.submit();
            }
            else{
               alert("?????? ???????????? ?????? ????????? ????????????. ??????????????? ???????????????!");
            }
         })         
        
       
         
         
      </script>
      
</body>
</html>