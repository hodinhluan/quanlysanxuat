# Create default admin account
admin = User.create!(
    name: "admin",
    email: "admin@admin.com",
    password: "123456"
)

# Create default groups
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

# Create default errors
Error.create!([
    {
        error_title: "Lỗi cắt: Cắt không đúng định mức",
        group_id: Group.first.id
    }, {
        error_title: "Lỗi cắt: Rập sai mẫu",
        group_id: Group.first.id
    }
])

# Create default daiyly report
d = DailyReport.create!({
    title: "Daily Report 1",
    note: "Nothing to note",
    group_id: Group.first.id,
    user_id: User.first.id
})
# Add errors for above daily report
d.mistakes << [Error.first, Error.second]

# Granted all groups for admin
admin.groups << [Group.all]
