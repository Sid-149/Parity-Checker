clear
m=input("Enter Message Code:");
p=0;
for i=1:1:length(m)
    p=bitxor(p,m(i));
end
disp("Parity Bit:");
disp(p);
tx_code=[m  p]
disp("Transmitted Code:");
disp(tx_code);
err_code=input("Enter Error Code:");
rx_code=bitxor(tx_code,err_code);
disp("Received Code:");
disp(rx_code);
pc=0;
for i=1:1:length(rx_code)
    pc=bitxor(pc,rx_code(i));
end
disp("Parity Checker Bit:");
disp(pc);

if(pc==1)
    disp("Error Exists")
else
    disp("Error Does Not Exists")
    end
