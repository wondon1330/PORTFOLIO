# 포트폴리오
<br>

<h2>자기 소개</h2>
안녕하세요. 지원자 정원돈입니다. IT 기초부터 Java, Python, C, C++, 자료구조, Linux 기본 과정과 AWS기반 클라우드 활용 전자정부 프레임워크 통합 개발자 양성과정(객체지향 프로그래밍 / 데이터베이스 구현 / 화면구현 / 프레임워크
응용 웹 개발 / 프로젝트 테스트 및 배포 / 클라우드 시스템)을 수료하며 2년여간 프로그래밍 개발에 몰두해왔습니다. 기본기에 충실하며 객체 지향적인 프로그래밍을 선호합니다. 
저의 전공인 영어영문학을 활용하여 프로그래밍 관련 용어의 직접적인 의미를 빠르게 습득할 수 있습니다.
새로운 지식을 받아들이려는 의지가 강하고, 아우러 사람들과 소통하고자 하는 마음이 큽니다. 다양한 경험을 통해 한걸음 더 넓게 나아가고 싶으며, 저의 역량이 프로젝트와 사람들에게 보다 긍정적으로 다가갈 수 있으면 좋겠습니다. 감사합니다.
<br><br>

<h2>기술 스택</h2>

![기술서 양식 (2)](https://github.com/wondon1330/PORTFOLIO/assets/134644570/03131b96-9e13-440b-bc5f-ef5aec383d40)

<h2>핵심 역량</h2>
- Java, Spring Framework 기반 업무용 그룹웨어 시스템 Web 제작(팀 프로젝트) 경험 보유<br>
- 데이터베이스 설계 및 구현 (기본 SQL 작성 가능)<br>
- Ajax Fetch API, CDNJS 활용 가능<br>
- 객체지향 프로그래밍으로 프레임워크 응용 웹개발 가능<br>
<br>

<h2>팀 프로젝트</h2>

>Java 기반 업무용 그룹웨어 Web 시스템 개발</p>
설명 : Groupware 업무용 시스템 웹 제작<br>
제작 기간 : 1개월<br>
참여인원 : 5명<br>

<br><br>

<h2>개발 환경</h2>

![image](https://github.com/wondon1330/PORTFOLIO/assets/134644570/d20e93e4-60ac-4637-912e-063122706e63)
<br><br>

<h2>담당 파트</h2>
<b>- 회원 CRUD</b><br>
　DB 데이터 암호화 저장 (Hash + Salt + Key Streching)<br>
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
　파일 업로드, 삭제 (서버단)<br>
<br>

<h2>DB 사원 테이블</h2>

>![image](https://github.com/wondon1330/groupware/assets/134644570/33fdd0a0-dac3-4be2-8aaa-033de15f0eeb)
<br>

<b>회원 정보</b>를 담을 <b>employees 테이블</b> 구성입니다.
<br>
<br>

<hr>
<h2>회원 CRUD</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/36290150-c371-4e66-a00c-77e5ca419673)
![image](https://github.com/wondon1330/groupware/assets/134644570/1083940d-91e6-4f42-b1f6-ef62df876a1b)

<b>회원 CRUD</b> 페이지 일부 입니다.
특정 권한이 있는 관리자가 <b>사용자 추가/삭제, 정보 조회/수정</b>이 가능합니다.
추후 사용자가 해당 계정으로 로그인 시 세부 사항을 기재하여 저장할 수 있습니다.
<hr>

<h2>SALT</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/446c1070-193f-46f8-9864-306edab73344)

<b>입력한 회원 정보 값</b>을 <b>DB</b>에 저장시킵니다. 이 때, <b>계정마다</b> 고유의 랜덤한 값의 <b>Salt</b>를 부여받게 됩니다. 
<br><br>

<h2>HASH 반환 구조</h2>

<b>사용자 데이터 저장</b> 및 <b>로그인 기능</b>에 대해서 알아보겠습니다. 패스워드 <b>Hashing</b>을 중점으로 구현해보았습니다. 제가 사용한 <b>암호화 방식</b>은 <b>SHA-512</b>입니다. 호환성 측면에서는 SHA-256을 선택하는 편이 좋겠습니다만, <b>더 나은 보안</b>을 원하기에 SHA-512를 사용해보았습니다.
<br><br>

<h3>단방향</h3>

>![image](https://github.com/wondon1330/groupware/assets/134644570/2ad854c7-aa6c-4168-b09b-84c1ebb14e0c)
<br>
<b>평문</b>을 그대로 DB에 저장되어 보여지는 것을 방지하고자 <b>해싱</b>을 통해 <b>암호화</b>를 하였으나,
<br>
<br>


<h3>Rainbow Table</h3>

>![image](https://github.com/wondon1330/groupware/assets/134644570/e775ad34-ec8a-4d44-a274-b98847812168)
<br>
<b>동일한 패스워드</b>를 입력한 사용자끼리는 <b>동일한 해시 값</b>을 가지기 때문에 보안 수준이 제 기준에는 부합하지 않는다고 판단하였습니다.
<br><br>


<h2>Hash Salting(Password + Salt)</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/f1a5645c-982d-4a9f-b883-3b89ba639040)

사용자 계정 단위의 고유 <b>솔트</b>(단방향 함수의 추가 입력으로 사용되는 랜덤 데이터)를 추가함으로 끝내 제가 원하던 결과를 얻을 수 있었습니다.
입력한 패스워드 원문에 임의의 문자값인 솔트 값을 이어 덧붙여서 해시처리를 하게됩니다. 이렇게 하게 되면 <b>같은 패스워드를 입력</b>하더라도 DB에는 값이 <b>서로 다르게 저장 및 조회</b>되게 됩니다.
<br>
<br>

<h2>Salted Hash + Key Stretching</h2>

![image](https://github.com/wondon1330/groupware/assets/134644570/63453808-aa23-46ff-b8da-9a8628c34d70)

로직은 이렇습니다.
사용자가 입력한 값을 해싱하여 digest된 값을 반환합니다. 그 과정에서 동일한 메시지는 동일한 값을 반환하는 것을 확인해볼 수 있었습니다. 여기서 입력값에 임의의 랜덤한 문자열의 솔트를 이어 붙인 문자열을 해싱하여 digest된 결과를 확인해보면 이전과는 다른 결과 값이 나오게 됩니다. 그리고 복호화를 조금 더 어렵게 만들기 위해서 해싱을 여러번 처리<b>(Key Streching)</b>할 수 있게 반복문을 사용하였습니다.
<br><br>

<h2>HASH 값 반환 코드</h2>

>![image](https://github.com/wondon1330/groupware/assets/134644570/2e7b8960-cf8d-4ac2-a4cd-43c93ccbb168)

해싱된 비밀번호 문자열을 BigInteger(10진법)로 받습니다. 10진법짜리 숫자을 String.format과 "%0128x" 통해 16진법으로 바꿔줍니다.

<br>

<h2>SALT 난수 생성</h2>

>![image](https://github.com/wondon1330/groupware/assets/134644570/8adb0943-e8f7-49dc-a1d9-c9be1c2027a2)

임의의 대문자 + 숫자 + 특수문자의 배열을 지정해주고, 빈 문자열 salt를 선언해줍니다. 문자열을 동적으로 생성하기 위한 StringBuilder 객체 sb를 생성합니다. 길이는 8로 설정했습니다. 아까 지정했던 문자 구성 saltCharacters의 길이(saltCharacters.length())를 범위로 사용하여서 saltCharacters.charAt(...)랜덤한 인덱스를 선택하고 이것에 해당하는 문자를 가져옵니다. 가져온 문자는 sb 객체에 append 메서드를 사용하여 문자열에 추가됩니다. 결과적으로 for 루프를 통해서 8자의 랜덤한 문자열이 sb에 추가되고, sb.toString()으로 문자열로 변환할 수 있습니다. 이것을 salt값으로 set해준 다음, 해싱을 10000회 반복 처리 해주게 됩니다. 그 해싱된 값을 유저 패스워드 컬럼인 employee_userpw에 set시켜줍니다.

특별히 SecureRandom을 사용한 이유는, 일반적인 Random 클래스는 시스템 시간을 시드로 사용하거나 시드를 생성합니다. 그러므로 공격자가 시드의 생성된 시간을 알면 쉽게 재현해낼 수 있지만 SecureRandom 은 OS의 무작위 데이터(엔트로피 : 거시적 상태에 대응하는 미시적 상태의 수의 로그)를 가져와서 시드로 사용하기 때문입니다.
<br>
<br>
<hr>

<h2>주소록 조회(비동기)</h2>

주소록 페이지는 전체 사원 목록 조회가 가능하고 부서별로 화면에 출력이 가능하게 했습니다. 이벤트 리스너를 추가하여 부서 선택에 따른 주소록 조회 또한 가능합니다.

<h3>전체</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/18dfb086-a9ad-4304-a4c0-ae2ab1839613)
<br><br>

<h3>부서별</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/ccdbfda8-5b56-4795-a88b-1b5b50faae30)
<br>
<br>

>![image](https://github.com/wondon1330/groupware/assets/134644570/29c23986-b9c0-4b6c-98f7-3811c15f8bb9)
>![image](https://github.com/wondon1330/groupware/assets/134644570/dc7cd97e-0ef2-44e0-a093-b2b5d7e33293)
<br>

    function filterByDepartment(department) {
      // 주소록의 각 사원을 나타내는 요소들을 모두 선택합니다.
      const contactDetails = document.querySelectorAll('.contactlist_detail');
  
      // 각 사원 요소를 순회하면서 부서를 비교하여 필터링합니다.
      contactDetails.forEach(detail => {
        // 각 사원 요소에 저장된 부서 정보를 가져옵니다.
        const detailDepartment = detail.getAttribute('data-department');
        
        // 선택한 부서와 현재 사원의 부서를 비교하여 표시 여부를 결정합니다.
        if (department === '' || department === detailDepartment) {
          // 선택한 부서가 없거나 선택한 부서와 사원의 부서가 일치하는 경우, 해당 사원을 표시합니다.
          detail.style.display = '';
        } else {
          // 선택한 부서가 있고, 선택한 부서와 사원의 부서가 일치하지 않는 경우, 해당 사원을 숨깁니다.
          detail.style.display = 'none';
        }
      });
    }
<br>
<hr>

<h2>결재승인</h2>

<h3>결재 승인 신청서 작성 완료한 내용 -> 자동으로 양식에 맞춰 PDF로 변환 후 다운로드(CDN)</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/52e6e3e6-e671-4fd6-b154-30cf1e46ddb2)

>![image](https://github.com/wondon1330/groupware/assets/134644570/c1dc854e-effb-482e-8ac2-45fa06371bad)

기능 API를 사용하여 HTML을 PNG 이미지로 변환 시킨 것을 기반으로 .PDF를 생성해줍니다. CSS 스타일링이 가능합니다.
<br>
<br>

>![image](https://github.com/wondon1330/groupware/assets/134644570/ee92cc2e-99e7-4bf7-9df8-fec5b80f0a46)

어떠한 양식이든 원하는 폼으로 PDF 파일로의 변환이 가능합니다.
<br>
<br>

<h3>제한적 조회 및 직접 다운로드</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/f8f7fa17-971a-493b-adf6-749cae522ce2)
![image](https://github.com/wondon1330/groupware/assets/134644570/130b5df7-9a26-4b8b-8b53-fd7c81804609)

결재승인목록 기록을 조회하는 화면입니다. 신청서 작성 시에 첨부했던 파일 그대로를 다운 받을 수 있습니다.
<br>
<hr>

<h2>프로필 관리</h2>

<h3>회원 정보 수정</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/0d81f607-ce5d-4100-9989-562a90d79e0f)

<h3>프로필 사진 추가, 변경</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/ec7ec740-06db-4327-91bf-5a0bf3ecaf61)

프로필 사진 추가시, Modal 창을 띄워서  비동기 방식으로 처리할 수 있도록 만들었습니다.
프로필 사진을 추가하면 전에 있던 사진은 Server에서도 삭제시킵니다.
사진을 추가해서 업로드가 되면 파일 이름은 랜덤 UUID로 지정이 되어 업로드가 됩니다.
<br>

<h3>복구 이메일 추가 후 비밀번호 분실 시 재설정 가능</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/fdcdada4-880b-4861-a51d-54de9334088f)

사용자가 복구 이메일을 입력 후 저장합니다.
<br>

<h3>아이디와 입력한 복구 이메일이 일치할 경우에만 임시 비밀번호 발송</h3>

>![image](https://github.com/wondon1330/groupware/assets/134644570/1bb556e8-bf70-445d-8071-9921715617dd)

회원이 비밀번호 분실시 임시 비밀번호를 추가해놓았던 복구 이메일로 발송 받게 됩니다. 이 과정에서 기존의 솔트값은 또 다른 무작위의 값으로 변경되며, 이 임시비밀번호도 해시, 솔트, 키 스트레칭 처리되어 DB에 Update됩니다.

<h3>임시 비밀번호 난수 생성</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/72dad555-cfe8-4a93-a07f-a98a016a5a07)

무작위 임시 비밀번호를 만드는 코드입니다. 이 또한 무작위 솔트 값을 만들 때와 비슷하게 작동합니다.
<br>
<br>

<h3>이메일 발송<br>src/main/resources/mailAccount.txt(아이디/비밀번호)</h3>

>![image](https://github.com/wondon1330/groupware/assets/134644570/36fbac3d-a3c1-446c-b405-3a7135c294dc)
>![image](https://github.com/wondon1330/groupware/assets/134644570/72169690-12a7-4a36-8fcf-1afe3a372e15)
<br>

<h3>발송된 임시 비밀번호로 로그인</h3>

![image](https://github.com/wondon1330/groupware/assets/134644570/2929d94a-2d67-4d7f-bbbd-e3d0d82ab61c)
<hr>

.
.
.
# Contact
><center>
>    <a href="https://github.com/wondon1330/"><img src="https://github.com/wondon1330/PORTFOLIO/assets/134644570/d7d31e9e-312b-4edf-8fec-6172b8f8c00b.png" width="40" height="40" display="block"/></a>
></center>
><center><a href="https://velog.io/@wondon1330"><img src="https://github.com/wondon1330/PORTFOLIO/assets/134644570/cefe9086-075b-4119-a43c-39ac9c80c816.png" width="20" height="20"/></a></center>
>
[Github](https://github.com/wondon1330)<br>
><center><a href="https://velog.io/@wondon1330"><img src="https://github.com/wondon1330/PORTFOLIO/assets/134644570/cefe9086-075b-4119-a43c-39ac9c80c816.png" width="20" height="20"/></a></center>　https://velog.io/@wondon1330<br>
<center><a href="https://twitter.com/wondon1330"><img src="https://github.com/wondon1330/PORTFOLIO/assets/134644570/fd365c88-34ec-4172-8960-cf64751f195d.png" width="20" height="20"/></a></center>　https://twitter.com/wondon1330<br>

<center>
    <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=GTvVlcSDbtsPSJgfWZkWFvKVRgGSlrfDNQjfNQBMkVHrBSCjWHJVbxkRnjsgvpdqxfnprSVfHWqrN"><img src="https://github.com/wondon1330/PORTFOLIO/assets/134644570/557f1672-5382-4232-aa55-4f4f3cc3cb34.png" width="20" height="20"/></a>
[gmail.com/wondon1330](https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=GTvVlcSDbtsPSJgfWZkWFvKVRgGSlrfDNQjfNQBMkVHrBSCjWHJVbxkRnjsgvpdqxfnprSVfHWqrN)
</center>

<br>
