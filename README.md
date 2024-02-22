# 포트폴리오
<br>

<h2>자기 소개</h2>
안녕하세요. 지원자 정원돈입니다. IT 기초부터 JAVA, Python, C, C++, 자료구조, Linux 기본 과정과 AWS기반 클라우드 활용 전자정부 프레임워크 통합 개발자 양성과정(객체지향 프로그래밍 / 데이터베이스 구현 / 화면구현 / 프레임워크
응용 웹 개발 / 프로젝트 테스트 및 배포 / 클라우드 시스템)을 수료하며 2년여간 프로그래밍 개발을 계속해서 해왔습니다. 기본기에 충실하고자 하며 객체 지향적인 프로그래밍을 선호합니다. 
저의 전공인 영어학을 활용해 프로그래밍 관련 용어의 직접적인 의미를 보다 빠르게 습득할 수 있습니다.
새로운 지식을 받아들이려는 마음이 크며, 아우러 사람들과 소통하고자 하는 의지가 강합니다. 다양한 경험을 통해 한걸음 더 넓게 나아가고 싶습니다. 저의 역량이 결과물과 사람들에게 긍정적인 메시지를 전달할 수 있으면 좋겠습니다. 감사합니다.
<br><br>

<h2>기술 스택</h2>

![기술서 양식 (2)](https://github.com/wondon1330/PORTFOLIO/assets/134644570/03131b96-9e13-440b-bc5f-ef5aec383d40)

<h2>핵심 역량</h2>
- Java, Spring Framework 기반 업무용 그룹웨어 WEB 시스템 개발(팀 프로젝트) 경험 보유<br>
- 데이터베이스 설계 및 구현(기본 SQL 작성 가능)<br>
- Ajax Fetch API, CDNJS 활용 가능<br>
- 객체지향 프로그래밍으로 프레임워크 응용 웹개발 가능<br>
<br>

<h2>팀 프로젝트</h2>
<p>Java 기반 업무용 그룹웨어 Web 시스템 개발(팀 프로젝트)</p>
설명 : Groupware 업무용 시스템 웹 제작<br>
제작 기간 : 1개월<br>
참여인원 : 5명<br>
<br><br>

<h2>개발 환경</h2>

![image](https://github.com/wondon1330/PORTFOLIO/assets/134644570/d20e93e4-60ac-4637-912e-063122706e63)
<br><br>

<h2>담당 파트</h2>
<b>- 회원 CRUD</b><br>
　DB 데이터 암호화 저장 (Salt + Key Streching)<br>
<br>

<b>- 로그인</b><br>
　Naver SMTP 임시 비밀번호 이메일 발송<br>
<br>

<b>- 주소록</b><br>
　Ajax fetch API 활용<br>
<br>

<b>- 결재승인신청 로그</b><br>
　CDNJS 활용<br>
<br>

<b>- 프로필 관리</b><br>
　파일 업로드, 삭제<br>
<br>

<h2>DB 사원 테이블</h2>
<br>
<br>

![image](https://github.com/wondon1330/groupware/assets/134644570/33fdd0a0-dac3-4be2-8aaa-033de15f0eeb)
<br>

회원 정보를 담을 employees 테이블 구성입니다
<br>
<br>

<hr>
<h2>회원 CRUD</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/36290150-c371-4e66-a00c-77e5ca419673)
![image](https://github.com/wondon1330/groupware/assets/134644570/1083940d-91e6-4f42-b1f6-ef62df876a1b)

회원 CRUD 페이지 일부 입니다
<hr>

<h2>SALT</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/446c1070-193f-46f8-9864-306edab73344)

입력한 회원 정보 값을 DB에 저장시킵니다. 이 때, 계정마다 고유의 랜덤한 값의 Salt를 부여받게 됩니다. 
<br><br>

<h2>HASH 반환 구조</h2>

사용자 데이터 저장 및 로그인 기능에 대해서 알아보겠습니다. 패스워드 hashing을 중점으로 구현해보았습니다. 제가 사용한 암호화 방식은 SHA-512입니다. 호환성 측면에서는 SHA-256을 선택하는 편이 좋겠습니다만, 더 나은 보안을 원하기에 SHA-512를 사용해보았습니다.
<br><br>

<h3>단방향</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/2ad854c7-aa6c-4168-b09b-84c1ebb14e0c)
<br>
입력한 패스워드 원문에 임의의 문자값인 솔트 값을 이어 덧붙여서 해시처리를 하게됩니다. 이렇게 하게 되면 똑같은 패스워드를 입력하더라도 DB에는 값이 서로 다르게 저장되게 됩니다.
<br>
<br>
<br>

<h3>Rainbow Table</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/e775ad34-ec8a-4d44-a274-b98847812168)
<br>

평문을 그대로 DB에 저장되어 보여지는 것을 방지하고자 해싱을 통해 암호화를 하였으나 동일한 패스워드 입력한 사용자끼리는 동일한 해시 값을 가지기 때문에 보안 수준이 제 기준에는 부합하지 않는다고 생각하였습니다.
<br><br>


<h2>Hash Salting(Password + Salt)</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/f1a5645c-982d-4a9f-b883-3b89ba639040)

솔트라는 단방향 함수의 추가 입력으로 사용되는 랜덤 데이터를 추가해서 끝내 제가 원하던 결과를 얻을 수 있었습니다. 
<br>
<br>

<h2>Salted Hash + Key Stretching</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/63453808-aa23-46ff-b8da-9a8628c34d70)
<br><br>

로직은 이렇습니다.
사용자가 입력한 값을 해싱하여 digest된 값을 반환합니다. 그 과정에서 동일한 메시지는 동일한 값을 반환하는 것을 확인해볼 수 있었습니다. 여기서 입력값에 임의의 랜덤한 문자열의 솔트를 이어 붙인 문자열을 해싱하여 digest된 결과를 확인해보면 이전과는 다른 결과 값이 나오게 됩니다. 그리고 복호화를 어렵게 만들기 위해서 해싱을 여러번 처리할 수 있게 반복문을 사용하였습니다.

<h2>HASH 값 반환 코드</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/2e7b8960-cf8d-4ac2-a4cd-43c93ccbb168)

해싱된 비밀번호 문자열을 BigInteger로 받습니다.( ← 얘네는 10진법) 10진법짜리 숫자를 String.format과 "%0128x" 통해 16진법으로 바꿔줍니다.
<br>

<h2>SALT 난수 생성</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/8adb0943-e8f7-49dc-a1d9-c9be1c2027a2)
<br>
<br>
<hr>

<h2>주소록 조회(비동기)</h2>

<h3>전체</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/18dfb086-a9ad-4304-a4c0-ae2ab1839613)
<br><br>
![image](https://github.com/wondon1330/groupware/assets/134644570/29c23986-b9c0-4b6c-98f7-3811c15f8bb9)
<br>
<br>

<h3>부서별</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/ccdbfda8-5b56-4795-a88b-1b5b50faae30)
<br>
![image](https://github.com/wondon1330/groupware/assets/134644570/dc7cd97e-0ef2-44e0-a093-b2b5d7e33293)
<br>
<br>
<hr>

<h2>결재승인</h2>


<h3>결재 승인 신청서 작성 완료한 내용 -> 자동으로 양식에 맞춰 PDF로 변환 후 다운로드(CDN)</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/52e6e3e6-e671-4fd6-b154-30cf1e46ddb2)
<br><br>
![image](https://github.com/wondon1330/groupware/assets/134644570/c1dc854e-effb-482e-8ac2-45fa06371bad)
<br>
<br>
![image](https://github.com/wondon1330/groupware/assets/134644570/ee92cc2e-99e7-4bf7-9df8-fec5b80f0a46)
<br>
<br>

<h3>제한적 조회 및 직접 다운로드</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/f8f7fa17-971a-493b-adf6-749cae522ce2)
![image](https://github.com/wondon1330/groupware/assets/134644570/130b5df7-9a26-4b8b-8b53-fd7c81804609)
<br>
<hr>

<h2>프로필 관리</h2>

<h3>회원 정보 수정</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/0d81f607-ce5d-4100-9989-562a90d79e0f)

<h3>프로필 사진 추가, 변경</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/ec7ec740-06db-4327-91bf-5a0bf3ecaf61)
<br>

<h3>복구 이메일 추가 후 비밀번호 분실 시 재설정 가능</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/fdcdada4-880b-4861-a51d-54de9334088f)

<h3>아이디와 입력한 복구 이메일이 일치할 경우에만 임시 비밀번호 발송</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/1bb556e8-bf70-445d-8071-9921715617dd)

<h3>임시 비밀번호 난수 생성</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/72dad555-cfe8-4a93-a07f-a98a016a5a07)
<br>
<br>

<h3>이메일 발송<br>src/main/resources/mailAccount.txt(아이디/비밀번호)</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/36fbac3d-a3c1-446c-b405-3a7135c294dc)
![image](https://github.com/wondon1330/groupware/assets/134644570/72169690-12a7-4a36-8fcf-1afe3a372e15)


<h3>발송된 임시 비밀번호로 로그인 가능</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/2929d94a-2d67-4d7f-bbbd-e3d0d82ab61c)
<hr>





