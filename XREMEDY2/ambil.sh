
#!convert konten dari link ranking ke plain text menggunakan w3m
content=$(w3m -dump "http://os162.vlsm.org/2016/11/ranking-os162.html")

#!ambil hanya list ranking dengan pattern 'RK-'
extract=$(grep "RK-" <<< "$content")

#!remove symbol '[' agar sesuai requirement
rem=${extract//[}

#!remove symbol ']' dan tampilkan ke layar
echo "${rem//]}"

