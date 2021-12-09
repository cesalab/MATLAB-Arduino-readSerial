delete(instrfindall)
s = serial('COM17');
fopen(s);
fid = fopen('results3.txt', 'wt');
for i=1:101
    y = fscanf(s, '%s');
    fprintf(fid, '%s\n', y);
end
fclose(fid);
fclose(s);