CREATE TABLE BANK_CUSTOMERS ( --고객 테이블 
	id varchar2(30) PRIMARY key, --아이디
	pwd varchar2(50) NOT null, --비밀번호
	name varchar2(30) NOT null, --이름
	phone varchar2(50), --전화번호
	register_num varchar2(50) unique --주민번호 유니크로 중복가입 차단
);

CREATE TABLE BANK_MANAGER ( --관리자 테이블  
	managerId varchar2(30) PRIMARY KEY, --아이디 
	managerPwd varchar2(50) NOT null--비밀번호
);

CREATE TABLE bank_account (
    account_number varchar2(30) PRIMARY KEY,
    account_pwd varchar2(10) NOT NULL,
    account_holder VARCHAR2(30) NOT NULL,
    account_nicname VARCHAR2(30),
    account_id VARCHAR2(30),
    balance NUMBER DEFAULT 10000,
    account_date DATE DEFAULT SYSDATE,
    FOREIGN KEY(account_id) REFERENCES bank_customers(id)
);

CREATE TABLE BANK_P_PRODUCT ( --상품 테이블
	product_code number PRIMARY key, --상품 코드 (예금은 1로 시작, 적금은 2로 시작 대략 4자리정도로 생각중)
	product_name varchar2(50) NOT null, --상품명 
	product_category varchar2(50) NOT null --상품 분류 
	join_subject varchar2(50) NOT null -- 가입대상(ex. 제한없음 단, 무기명으로는 가입하실 수 없습니다.)
	product_feature varchar2(50) NOT null -- 상품특징(ex. 매 3개월마다 CD수익률에 따라 금리가 변경 적용되어 금리상승기에 유리한 정기예금)
	interest_rate  -- 금리(ex. 연 2.8% ~ 3.4%)
	Subscription_amount int -- 가입금액(ex. 1백만원 이상)
	Contract_period int NOT null -- 계약기간(ex. 1~36개월)
	-- 신규가입 가능여부(지금 당장 가입 가능한 것과 불가능한 것 구분)
);

CREATE TABLE bank_history( --거래내역 테이블
	NO number(5) PRIMARY KEY, --기본키를 위해만든 컬럼
	acc_no varchar2(30) NOT NULL, --계좌번호
	his_category varchar2(50) NOT NULL, --거래 분류 (입출금 구분)
	his_amount NUMBER NOT NULL, --거래 금액
	his_date DATE DEFAULT sysdate, --거래일시
	his_name varchar2(50), --거래자명
	FOREIGN key(acc_no) REFERENCES bank_account(account_number)
);

CREATE SEQUENCE seq_bank_history_no nocache;

--관리자 계정은 데이터베이스에 바로 저장 (따로 가입하는 기능은 안만들거임)
INSERT INTO BANK_MANAGER
 VALUES('admin01', 'admin1234');
