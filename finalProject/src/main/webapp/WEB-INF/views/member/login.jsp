<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        @font-face {
            font-family: '양진체';
            src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        * {
            font-family: '양진체';
        }

        .title {
            margin-top: 7%;
        }
        h2 { /*제목*/
            height: 80px;
            text-align: center; 
            /* background-color: red; */
        }

        .hr1 { /*가로선*/
            width: 500px;
            height: 3px;
            border: none;
            background-color: rgb(43, 43, 43);
        }

        .find_wrap { /*전체 div*/
            width: 1200px;
            margin: 0 auto;
            min-height: calc(100vh - 57px);
            text-align: center;
            /* background-color: red; */
        }
        .find_wrap > h4 { /*이름, 이메일*/
            text-align: left;
        }

        *::placeholder { /*placeholder*/
            font-size: 13px;
            color: rgba(0, 0, 0, 0.329);
        }

        .name { /*이름*/
            width: 500px;
            display: inline-block;
            text-align: left;
            /* background-color: blue; */
        }

        .name_box { /*이름 입력창*/
            height: 40px;
            border: 2px;
            border-radius: 15px;
            border-style: solid;
            border-color: rgb(251, 176, 76);
        }

        .email { /*이메일*/
            width: 500px;
            display: inline-block;
            text-align: left;
            margin-top: 50px;
            /* background-color: green; */
        }

        .email_box { /*이메일 입력창*/
            height: 40px;
            border: 2px;
            border-radius: 15px;
            border-style: solid;
            border-color: rgb(251, 176, 76);
        }

        .email_btn { /*인증번호 받기 버튼*/
            background-color: rgba(0, 0, 0, 0);
            color: rgb(251, 176, 76);
            border: 2px solid rgb(251, 176, 76);
            border-radius: 15px;
            width: 110px;
            height: 40px;
            font-size: 15px;
            letter-spacing: 1px;
            float: right;
        }
        .email_btn:hover {
            color: rgb(248, 238, 225);
            background-color:rgb(251, 176, 76);;
        }
        
        .number_box { /*인증번호 입력창*/
            height: 40px;
            border: 2px;
            border-radius: 15px;
            border-style: solid;
            border-color: rgb(251, 176, 76);
        }

        .find_id_btn { /*아이디 찾기 버튼*/
            background-color: rgba(0, 0, 0, 0);
            color: rgb(251, 176, 76);
            border: 2px solid rgb(251, 176, 76);
            border-radius: 15px;
            width: 150px;
            height: 50px;
            font-size: 20px;
            margin-top: 50px;
            position: relative;
        }
        .find_id_btn:hover {
            color: rgb(248, 238, 225);
            background-color:rgb(251, 176, 76);
        }
        
        #footer {
            height: 53px;
        }
        </style>

    <title>로그인</title>
</head>
<body>
    <div id="menubar"></div>

    <div class="title"><h2>로그인</h2></div>

    <hr class="hr1">
    <br><br>
    <div class="find_wrap">
	    <form action="loginMember.me" method="post">
	        <div class="id">
	            <h4>아이디</h4>
	            <input type="text" class="name_box" name="userId">
	        </div>
	        <br><br>
	        <div class="password">
	            <h4>비밀번호</h4>
	            <input type="password" class="email_box" name="userPwd"> 
	        </div>
	        <div style="text-align: center;">
	            <button type="submit" class="find_id_btn">로그인</button>
	        </div>
	    </form>
    </div>

    <div id="footer"></div>
</body>
</html>