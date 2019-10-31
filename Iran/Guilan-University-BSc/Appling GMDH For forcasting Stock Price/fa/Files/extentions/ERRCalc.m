function p = ERRCalc(x1, Y1, vars)
    
    X1 = CreateRegressorsMatrix(x1);
    c = Y1*pinv(X1);
    
    Y1hat = c*X1;
    e1 = Y1- Y1hat;
    MSE1 = mean(e1.^2);
    RMSE = sqrt(MSE1)
    MAD=mad(abs(e1))%%
    

end

function X = CreateRegressorsMatrix(x)

    X = [ones(1,size(x,2))
         x(1,:)
         x(2,:)
         x(1,:).^2
         x(2,:).^2
         x(1,:).*x(2,:)];

end