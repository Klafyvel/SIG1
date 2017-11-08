
function resultat = detection_pitch(fichier, duree_tranche, domaine_pitch_min, domaine_pitch_max, duree_note)
    [s, fe] = audioread(fichier);
    fe
    s = s(:,1);
    pas = duree_tranche * fe;
    debut_note_actuelle = 1;
    resultat = [0 0 0];
    mini = fe / domaine_pitch_max;
    maxi = fe / domaine_pitch_min;
    for i = 1:pas:length(s)
        tranche = s(i:min(pas+i, length(s)));
        epsilon = 1/10;
        [voise, k]  = detecte_voise(tranche, epsilon, ceil(mini), floor(maxi));
        if voise ==1
            duree_actuelle = (i-debut_note_actuelle)/fe;
            if duree_actuelle >= duree_note
                resultat = vertcat(resultat, [debut_note_actuelle/fe fe/k detection_note(fe/k)]);
                debut_note_actuelle = i;
            end
        else
            debut_note_actuelle = i + 1;
        end
    end
end