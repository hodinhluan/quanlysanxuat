# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    name: "admin",
    email: "admin@admin.com",
    password: "123456"
)

Group.create!([
    {
        name: "Tổ cắt"
    }, {
        name: "Tổ ủi"
    }, {
        name: "Tổ may"
    },
    {
        name: "Tổ hoàn thành đóng gói"
    }
])

Error.create!([
    {
        error_title: "Lỗi cắt: Cắt không đúng định mức",
        group_id: Group.first.id
    }, {
        error_title: "Lỗi cắt: Rập sai mẫu",
        group_id: Group.first.id
    }
])

d = DailyReport.create!({
    title: "Daily Report 1",
    note: "Nothing to note",
    group_id: Group.first.id,
    user_id: User.first.id
})

d.mistakes << [Error.first, Error.second]

