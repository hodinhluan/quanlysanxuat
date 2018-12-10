# README

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
- daily_report: daily_report_id, date:datetime, title:string, note:text, group: references, user: references
- user: user_id, name:string, devise_default(email, password)
- mistake: mistake_id, mistake_title:string, group: references

### Relationship
- group: 
    * has_and_belongs_to_many :users
    * has_many :daily_reports
- daily_report: 
    * has_and_belongs_to_many :mistakes 
    * belongs_to :groups
    * belongs_to :users
    * accepts_nested_attributes_for :mistakes
- user:
    * has_and_belongs_to_many :groups
    * has_many :daily_reports
    * accepts_nested_attributes_for :groups
- error:
    * has_and_belongs_to_many :daily_reports
    * 

# Report/Statistic:
- Hang kiem
- Liet ke hang loi, loi gi
- Tong hang loi
- Thong ke: Tong sp loi, tong sp dat, tong loi lap lai

## Commands:
- rails g scaffold group name:string
- rails g migration CreateJoinTableUserGroup user group
- rails g scaffold mistake mistake_title:string group:references
- rails g scaffold daily_report title:string note:text group:references user:references
- rails g migration CreateJoinTableDailyReportMistake daily_report mistake
- rails db:migrate

- rails db:drop
- rails db:rollback
- rails d scaffold DailyReport

## rails db

- rails db:create          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create the database from DATABASE_URL or config/database.yml for the current Rails.env (use db:create:all to create all dbs in the config)
- rails db:drop            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Drops the database using DATABASE_URL or the current Rails.env (use db:drop:all to drop all databases)
- rails db:fixtures:load   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Load fixtures into the current environment's database
- rails db:migrate         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Migrate the database (options: VERSION=x, VERBOSE=false)
- rails db:migrate:status  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Display status of migrations
- rails db:rollback        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Rolls the schema back to the previous version (specify steps w/ STEP=n)
- rails db:schema:dump     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create a db/schema.rb file that can be portably used against any DB supported by AR
- rails db:schema:load     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Load a schema.rb file into the database
- rails db:seed            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Load the seed data from db/seeds.rb
- rails db:setup           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the db first)
- rails db:structure:dump  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Dump the database structure to db/structure.sql
- rails db:version         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Retrieves the current schema version number
