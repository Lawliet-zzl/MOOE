function alpha = InitAlpha(na)

alpha = zeros(1, na);

for i = 1:na
    alpha(i) = (na + 1) / (na*(na + 1 - i)*(na + 2 - i));
end

end

