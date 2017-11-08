% function note = detection_note(f)
% Renvoie la note MIDI correspondant � la fr�quence pass�e en param�tre.

function note = detection_note(f)
    note = floor(log2(f / 440) * 12 + 69);
end