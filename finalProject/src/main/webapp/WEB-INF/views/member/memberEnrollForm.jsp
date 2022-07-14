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

        .title { /*제목 영역*/
            margin-top: 7%;
        }

        h2 { /*제목*/
            height: 80px;
            text-align: center; 
        }

        .must_icon { /*별표 아이콘*/
            color: red;
        }

        .must_insert { /*필수입력사항*/
            text-align: right;
            margin-right: 25%;
            font-size: 12px;
        }

        .hr1 { /*가로선*/
            width: 50%;
            height: 3px;
            border: none;
            background-color: rgb(43, 43, 43);
        }

        .table {
            margin: auto;
        }

        /* select { select css
            font-size: 13px;
            width: 100px; 
            height: 40px;
            padding: .8em .5em; 
            border: 1px solid #999;
            font-family: inherit;  
            background: url('../images/arrow.jpg') no-repeat 95% 50%; 
            border-radius: 0px; 
            -webkit-appearance: none; 
            -moz-appearance: none;
            appearance: none;
            text-align: left;
        } */

        input[type=text] { /*input*/
            border: 0;
        }

        input::placeholder { /*input 글자*/
            font-size: 13px;
            color: rgba(0, 0, 0, 0.247);
        }

        .id_btn { /*중복확인 버튼*/
            background-color: rgba(0, 0, 0, 0);
            color: rgb(251, 176, 76);
            border: 2px solid rgb(251, 176, 76);
            border-radius: 5px;
            width: 110px;
            height: 30px;
            font-size: 13px;
            letter-spacing: 2px;
        }
        .id_btn:hover {
            color: rgb(248, 238, 225);
            background-color:rgb(251, 176, 76);;
        }

        .email_btn { /*인증번호 버튼*/
            background-color: rgba(0, 0, 0, 0);
            color: rgb(251, 176, 76);
            border: 2px solid rgb(251, 176, 76);
            border-radius: 5px;
            width: 110px;
            height: 30px;
            font-size: 13px;
            letter-spacing: 2px;
        }
        .email_btn:hover {
            color: rgb(248, 238, 225);
            background-color:rgb(251, 176, 76);;
        }
        
        .enroll {
            text-align: center;
        }

        .enroll_btn { /*회원가입 버튼*/
            background-color: rgba(0, 0, 0, 0);
            color: rgb(251, 176, 76);
            border: 2px solid rgb(251, 176, 76);
            border-radius: 15px;
            width: 150px;
            height: 50px;
            font-size: 20px;
            margin-top: 10px;
        }
        .enroll_btn:hover {
            color: rgb(248, 238, 225);
            background-color:rgb(251, 176, 76);
        }
        
        td {
            height: 35px;
        }

        .join_wrap { /*전체 div*/
            min-height: calc(100vh - 57px);
        }
        
        footer { /*푸터*/
            height: 57px;
        }
        </style>

    <title>회원가입</title>
</head>
<body>
    <div id="menubar"></div>

    <div class="title"><h2>Welcome Moong</h2></div>
    <p class="must_insert"><span class="must_icon">*</span> 필수입력사항</p>
    <hr class="hr1">
    <p style="text-align: center; font-size: 23px; letter-spacing: 5px;">회원가입</p>
    <div class="join_wrap">

		<br><br><br>

		<form action="insert.me" method="post">
            <div>
	        <table class="table" style="width: 800px; padding-top: 0;">
	            <tbody>
	                <tr>
	                    <td><span class="must_icon">*</span> 아이디</td>
	                    <td><input type="text" name="userId" required placeholder="5자 이상의 영문과 숫자를 조합"></td>
	                    <td></td>
	                    <td><button class="id_btn">중복확인</button></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 비밀번호</td>
	                    <td><input type="password" name="userPwd" required placeholder="비밀번호 입력"></td>
	                    <td></td>
	                    <td></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 비밀번호확인</td>
	                    <td><input type="password" name="userPwd" required placeholder="한 번 더 입력해주세요"></td>
	                    <td></td>
	                    <td></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 이름</td>
	                    <td><input type="text" name="userName" required placeholder="이름을 입력하세요"></td>
	                    <td></td>
	                    <td></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 성별</td>
	                    <td>
	                        <input type="radio" id="Male" name="gender" value="M" required>남자
	                        <input type="radio" id="Female" name="gender" value="F" style="margin-left: 30px;">여자
	                    </td>
	                    <td></td>
	                    <td></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 이메일</td>
	                    <td><input type="text" name="email" required placeholder="이메일을 입력해주세요"></td>
	                    <td></td>
	                    <td><button class="email_btn">인증번호 받기</button></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 휴대폰</td>
	                    <td><input type="text" name="phone" required placeholder="숫자만 입력해주세요"></td>
	                    <td></td>
	                    <td></td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td><span class="must_icon">*</span> 생년월일</td>
	                    <td><input type="date" name="birth" required placeholder="ex) 20060101"></td>
	                    <td></td>
	                    <td></td>
	                </tr>
	            </tbody>
	        </table> 
            <div class="enroll">
                <button type="submit" class="enroll_btn">회원가입</button>
            </div>
        </div>
		</form>
        <!-- <table class="table" style="width: 500px;">
            <tbody>
                <tr>
                    <td><span class="must_icon">*</span> 최근 모의고사 성적</td>
                    <td>
                        <select>
                            <option value="" selected>언어</option>
                            <option value="1">1등급</option>
                            <option value="2">2등급</option>
                            <option value="3">3등급</option>
                            <option value="4">4등급</option>
                            <option value="5">5등급</option>
                            <option value="6">6등급</option>
                            <option value="7">7등급</option>
                            <option value="8">8등급</option>
                            <option value="9">9등급</option>
                        </select>
                    </td>
                    <td>
                        <select required>
                            <option value="" selected>수리</option>
                            <option value="1">1등급</option>
                            <option value="2">2등급</option>
                            <option value="3">3등급</option>
                            <option value="4">4등급</option>
                            <option value="5">5등급</option>
                            <option value="6">6등급</option>
                            <option value="7">7등급</option>
                            <option value="8">8등급</option>
                            <option value="9">9등급</option>
                        </select>
                    </td>
                    <td>
                        <select required>
                            <option value="" selected>외국어</option>
                            <option value="1">1등급</option>
                            <option value="2">2등급</option>
                            <option value="3">3등급</option>
                            <option value="4">4등급</option>
                            <option value="5">5등급</option>
                            <option value="6">6등급</option>
                            <option value="7">7등급</option>
                            <option value="8">8등급</option>
                            <option value="9">9등급</option>
                        </select>
                    </td>
                </tr> 
            </tbody>
        </table>
            
        <table class="table" style="width: 500px;">
            <tbody>
                <tr>
                    <td><span class="must_icon">*</span> 성적표 첨부</td>
                    <td style="width: 272px;"></td>
                    <td></td>
                    <td><button>파일첨부</button></td>
                </tr>
                <tr>
                    <td><span class="must_icon">*</span> 학생증 첨부</td>
                    <td></td>
                    <td></td>
                    <td><button>파일첨부</button></td>
                </tr>
            </tbody>
        </table>

        <table class="table" style="width: 500px;">
            <tbody>
                <tr>
                    <td><span class="must_icon">*</span> 과외 가능 요일</td>
                    <td><input type="checkbox" name="" value="">월</td>
                    <td><input type="checkbox" name="" value="">화</td>
                    <td><input type="checkbox" name="" value="">수</td>
                    <td><input type="checkbox" name="" value="">목</td>
                    <td><input type="checkbox" name="" value="">금</td>
                    <td><input type="checkbox" name="" value="">토</td>
                    <td><input type="checkbox" name="" value="">일</td>
                </tr>
            </tbody>
        </table> -->
        

        
    </div>
    
    <div id="footer"></div>
</body>
</html>