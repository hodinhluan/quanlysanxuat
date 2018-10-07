rails g scaffold group name:string
rails g migration CreateJoinTableUserGroup user group

rails g scaffold mistake title:string group:references

rails g scaffold daily_report date:datetime title:string note:text group:references user:references

rails g migration CreateJoinTableDailyReportMistake daily_report mistake
rails db:migrate
