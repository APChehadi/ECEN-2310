function rv = hchord( spec, dur, contribution )
  % produce a sampled signal for a chord of duration
  % 'dur' from a specification 'spec', which is a list
  % of notes

  % obtain number of notes in chord
  [N, width] = size(spec);
  % obtain number of harmonics in chord
  [K, number] = size(contribution);
  
  if width ~= 2
    error('malformed input')
  end
  if number ~= 4
    error('malformed input')
  end
  
  % sample times
  t = (0:8192*dur-1)/8192;
  % initialize signal and accumulate notes into it
  rv = zeros(1, length(t));
  for n = 1:N
    f = 440 * 2^(spec(n,1) + spec(n,2)/12);
    rv = rv + sin(2*pi*f*t);
  end
  
  rv = rv * contribution(1);
  for k = 2:K
    rv = rv + (k*rv*contribution(k));
  end
  
  % scale the signal to within (-1,1)
  rv = rv/N * 0.999;   
end
