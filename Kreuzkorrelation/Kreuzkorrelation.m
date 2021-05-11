Jogging.Properties.VariableNames([1 2 3 4 5 6])= {'User' 'Activity' 'Time' 'X' 'Y' 'Z'};
Sitting.Properties.VariableNames([1 2 3 4 5 6])= {'User' 'Activity' 'Time' 'X' 'Y' 'Z'};

x =Jogging.X;
x2 = Sitting.X;

y =Jogging.Y;
y2 = Sitting.Y;

z =Jogging.Z;
z2 = Sitting.Z;


corx= xcorr(x,x2);
cory= xcorr(y,y2);
corz= xcorr(z,z2);

figure; 
subplot(3,3,1);
stem(x); ylabel('X-Amplitude');
subplot(3,3,2);
stem(x2);ylabel('X-Sitting-Amplitude');
subplot(3,3,3);
stem(corx);ylabel('X-Kreuz-Amplitude');

subplot(3,3,4);
stem(y); ylabel('Y-Amplitude');
subplot(3,3,5);
stem(y2);ylabel('Y-Sitting-Amplitude');
subplot(3,3,6);
stem(cory);ylabel('Y-Kreuz-Amplitude');

subplot(3,3,7);
stem(z); ylabel('Z-Amplitude');
subplot(3,3,8);
stem(z2);ylabel('Z-Sitting-Amplitude');
subplot(3,3,9);
stem(corx);ylabel('Z-Kreuz-Amplitude');

