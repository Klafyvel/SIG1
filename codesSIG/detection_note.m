% function note = detection_note(f)
% Renvoie la note MIDI correspondant à la fréquence passée en paramètre.

function note = detection_note(f)
    note = floor(log2(f / 440) * 12 + 69);
end