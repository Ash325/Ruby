BEGIN {   
  puts "Welcome to Ruby"   
}   
  
END {   
  puts "Have a Good Day"   
}   
puts "Provide input, n should be odd no. and greater than 4"
n=gets.chomp.to_i 
puts
puts 
for i in 1..n do
for j in 1-n/4..n+n/4 do 
if (i<=n/2.0 && j==1)
print("*")
elsif(j==n/2+1 || i==n/2+1 && j<n && j>0)
print("*")
elsif(j>=n/2+1 && i==1 && j<=n)
print("*")
elsif(i>=n/2+1 && j==n)
print("*")
elsif(j<=n/2 && i==n && j>0)
print("*")
#Second Phase

elsif(j<=n/4+1 && i==1 && j<1)
print("*")
elsif(j==n && i<=n/4+1)
print("*")
elsif(i>=3*n/4+1 && j==1)
print("*")
elsif(j>=n && i==n)
print("*")
#Third Phase

elsif(i==n/4+1 && j==n/4+1 || i==n/4+1 && j==3*n/4+1 || i==3*n/4+1 && j==3*n/4+1 || j==n/4+1 && i==3*n/4+1 )
print("*")

else
print(" ")
end
end
puts
end

