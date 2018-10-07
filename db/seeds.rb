# Create default admin account
admin = User.create!(
    name: "admin",
    email: "admin@admin.com",
    password: "123456",
    password_confirmation: "123456"
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
# Lỗi cắt
Mistake.create!([
    {
        mistake_title: "Lỗi cắt: Cắt không đúng định mức",
        group_id: Group.first.id
    }, {
        mistake_title: "Lỗi cắt: Rập sai mẫu",
        group_id: Group.first.id
    }, {
        mistake_title: "Lỗi cắt: Cắt hụt vải",
        group_id: Group.first.id
    }, 
])
# Lỗi ủi
Mistake.create!([
    {
        mistake_title: "Lỗi ủi: Ủi còn sót chi tiết",
        group_id: Group.second.id
    }, {
        mistake_title: "Lỗi ủi: Ủi không thẳng",
        group_id: Group.second.id
    }
])
# Lỗi may
Mistake.create!([
    {
        mistake_title: "Lỗi may: Diểu dây kéo không đều",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Sót đường chỉ gá đợ lót túi",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Đường diểu hai kim bõ mũi",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Diểu dây kéo vặn kẹp to nhỏ",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Vắt sườn lệch cúp bõ mũi",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Tra dây kéo lệch cúp",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Chỉ còn nhiều trên sản phẩm",
        group_id: Group.third.id
    },
    {
        mistake_title: "Lỗi may: Dính dầu máy trên vải",
        group_id: Group.third.id
    }
])
#Lỗi hoàn thành đóng gói
Mistake.create!([
    {
        mistake_title: "Lỗi htdg: Dán nhãn đóng gói bị fail",
        group_id: Group.fourth.id
    }, {
        mistake_title: "Lỗi htdg: Kiểm hàng chưa đáp ứng được chất lượng",
        group_id: Group.fourth.id
    }
])

# Create default daily report
d = DailyReport.new(
    date: Time.now.to_datetime,
    title: "Daily Report 1",
    note: "Nothing to note",
    group_id: Group.first.id,
    user_id: User.first.id
)
d.mistakes << [Mistake.all]
d.save!
# Granted all groups for admin
admin.groups << [Group.all]
