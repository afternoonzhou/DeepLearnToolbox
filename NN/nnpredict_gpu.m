function labels = nnpredict_gpu(nn, x)
    nn.testing = 1;
    nn = nnff_gpu(nn, x, zeros(size(x,1), nn.size(end)));
    nn.testing = 0;
    
    [~, i] = max(nn.a{end},[],2);
    labels = i;
end
