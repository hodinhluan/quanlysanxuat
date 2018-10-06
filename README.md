# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Model

## To May
- Diểu dây kéo không đều                        
- Sót đường chỉ gá đợ lót túi            
- đường diểu hai kim bõ mũi      
- Diểu dây kéo vặn kẹp to nhỏ                     
- Vắt sườn lệch cúp bõ mũi                                
- tra dây kéo lệch cúp   
- Chỉ còn nhiều trên sản phẩm         
- Dính dầu máy trên vải

## To Kiem Ui:
- ủi còn sót chi tiết
- ủi không thẳng

## To Cat
- Cắt không đúng định mức
- Rập sai mẫu
- Cắt hụt vải

## To Hoan Thanh Dong Goi
- Dán nhãn đóng gói bị fail
- Kiểm hàng chưa đáp ứng được chất lượng

=> Models: 
- group: group_id, name:string
- daily_report: daily_report_id, date:datetime, name:string, note:text, error_id (many), group: references
- user: user_id, user_name:string, password:string, role_id: [group_id]
- error: error_id, error_title:string, error_detail:text

# Report/Statistic:
- Hang kiem
- Liet ke hang loi, loi gi
- Tong hang loi
- Thong ke: Tong sp loi, tong sp dat, tong loi lap lai
