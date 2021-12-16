delete(instrfindall)
s = serial('COM7');
s.readAsyncMode = 'continuous';
s.InputBufferSize = 10000;
s.BaudRate = 921600;
get(s);
fopen(s);
fid = fopen('results_log.txt', 'wt');
for i=1:100000
    y = fscanf(s, '%s');
    fprintf(fid, '%s\n', y);
end
fclose(fid);
fclose(s);