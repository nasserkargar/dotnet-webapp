# استفاده از ایمیج سبک رانتایم دات‌نت ۹
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS runtime
WORKDIR /app

# کپی کردن پوشه publish که آرتیفکت پایپلاین است
COPY publish/ .

# پورت پیش‌فرض ASP.NET Core
EXPOSE 8080

# دستور اجرای برنامه (نام فایل dll مطابق با نام پروژه است)
ENTRYPOINT ["dotnet", "SampleWebApp.dll"]
