def inte
    while n = Integer(gets.chomp) rescue""
      if n.is_a? Integer
        return n
        break
      else
        print "Think of a number :"
      end 
    end 
end
    
def yvalue
    print" Enter 1 to exit,\n Enter 2 to see history,\n Enter any other inetger to continue : "
    n=inte()
    return n
end

def hvalue
    print" Enter 1 to exit,\n Enter any other inetger to continue : "
    n=inte()
    return n
end

BEGIN {   
    puts
    puts "Welcome to the Simple Calculator "   
    puts
    puts
  }   
    
  END {   
    puts "Thank you for using the Calculator"   
    puts
    puts
    puts
  }   

def input
    while true
        op=gets.chomp
        if op == "+"|| op =="-"|| op =="*" || op =="%"
            return op
            break
        else
            print "Please crosscheck and enter correct operation : "
        end
    end
end



y=0
a=0
digi_v=0
digi_array=[0]   
real_array=[]
opr_array=[]
res_array=[]

while y!=1 
    print "Please tell the no. of integer to perfrom the calcultaion : "
    num_digit = inte()
    if num_digit<2
    puts "There should be a min. of 2 no. to perform operation"
    puts 
    puts
    	next
    end
 
    print "Enter the 1 no. : "
    n1=inte()
    res_array[a]=n1
    real_array[digi_v]=n1
    
    for i in 1..num_digit-1 do 
    	print "Enter the operation,  1) + ,  2) - , 3) *,  4) %  : "
    	op=input()
    	print ("Enter the #{i+1} no. : ")
    	n2=inte()
    case 
    when op=="+", op== "1"
        r1=n1+n2
        puts "The Addition of the #{n1} and #{n2} = #{r1}"
    when op=="2",op=="-"
        r1=n1-n2
        puts "The Subtarction of the #{n1} and #{n2} = #{r1}"
    when op=="3",op=="*"
        r1=n1*n2
        puts "The Multiplication of the #{n1} and #{n2} = #{r1}"
    when op=="4",op=="%"
        r1=n1/n2
        puts "The Division of the #{n1} and #{n2} = #{r1}"
    else
        puts "Wrong INPUT"
        next
    end
    puts
    n1=r1
    real_array[digi_v+i]=n2
    opr_array[digi_v+i-1]=op
    
   end
   res_array[a]=n1
   digi_array[a]=num_digit
   
   
   print real_array[digi_v]
   for i in digi_v..digi_v + num_digit do
   	print opr_array[i]
   	print real_array[i+1]
   end
   print " = #{n1} "
   puts
   a=a+1
   digi_v=num_digit+digi_v
   puts 
   puts
    y = yvalue()
    # puts y
    # y=inte()
    

    if y==2
    z=0
    
    puts
    puts
    puts "Past Calculations ...................."
    puts
        for i in 0..a-1
            x=digi_array[i]
            x=x+z
     #       puts(" I'm Z #{z}")
            print "#{real_array[z]}"
            for j in z..x-2
     #       	puts("I'm J #{j}")
            	print opr_array[j]
            	print real_array[j+1]
            end
            print(" =  #{res_array[i]}")
            z=x     	
            puts
            puts
        end
        y=hvalue()
        # y=inte()
    end
   puts
   puts
end
