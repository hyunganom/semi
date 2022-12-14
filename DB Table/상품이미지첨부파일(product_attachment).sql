--상품 이미지 첨부파일 테이블
--상품 원본 번호(product_origin_no) : 번호, 외래키, 상품 테이블의 상품번호 참조
--첨부파일 번호(product_attachment_no) : 번호, 외래키, 첨부파일 테이블의 첨부파일 번호 참조
create table product_attachment(
product_origin_no number references product(product_no) on delete cascade,
product_attachment_no number references attachment(attachment_no) on delete cascade
 
 -- 뷰생성 권한
GRANT CREATE view to semi;

 --뷰생성
CREATE view product_attachment_view as SELECT * FROM product_attachment p INNER JOIN attachment a on a.attachment_no=p.product_attachment_no;
);

