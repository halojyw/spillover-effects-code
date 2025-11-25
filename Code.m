%import data SSE1
date_match = table2array(SSE1(:,9));
[m,n]=find(date_match ~= '#N/A');%get m,n

    
%% open price of stock
open1 = SSE1(:,11);
open = SSE1(:,3);
for i=2:790
    %gap = m(i,1) - m(i-1,1);
    open1(i-1,1) = open(m(i)-1,1);
end
open1(790,1) = open(3889,1);
open1 = table2array(open1);
open1(791:3889,:) = [];
%% close price of stock
% has been down in excel
close1 = table2array(SSE1(:,10));
close = table2array(SSE1(:,2));
for i=1:790
    %gap = m(i,1) - m(i-1,1);
    close1(i,1) = close(m(i),1);
end 

%%
date_stock = date_match(m,n);
  