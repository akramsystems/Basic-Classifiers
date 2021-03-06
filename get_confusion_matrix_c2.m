function [ l_confusion_matrix, k_confusion_matrix, m_confusion_matrix ] = ...
    get_confusion_matrix_c2( ...
        l_classified_as_l, l_classified_as_k, l_classified_as_m,...
        k_classified_as_k, k_classified_as_l, k_classified_as_m,...
        m_classified_as_m, m_classified_as_l, m_classified_as_k)

l_confusion_matrix = ...
    [l_classified_as_l, l_classified_as_k, l_classified_as_m; 
     k_classified_as_l, k_classified_as_k, k_classified_as_m;
     m_classified_as_l, m_classified_as_k, m_classified_as_m];
                  
k_confusion_matrix = ...
    [k_classified_as_k, k_classified_as_l, k_classified_as_m; 
     l_classified_as_k, l_classified_as_l, l_classified_as_m;
     m_classified_as_k, m_classified_as_l, m_classified_as_m];
                  
m_confusion_matrix = ...
    [m_classified_as_m, m_classified_as_l, m_classified_as_k; 
     l_classified_as_m, l_classified_as_l, l_classified_as_k;
     k_classified_as_m, k_classified_as_l, k_classified_as_k];

end