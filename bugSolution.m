function result = myFunction(input)
  try
    % Some code that might cause an error
    if input < 0
      error('Input must be non-negative');
    end
    % ... more code ...
  catch exception
    % Handle error gracefully and provide more information
    errorMessage = ['An error occurred in myFunction: ', exception.message];
    disp(errorMessage); 
    % Optional: Log the error, rethrow it, or take other actions
    rethrow(exception); % Consider if rethrowing is desirable
    result = NaN; % Return a default value or handle the situation appropriately
  end
end

% Example usage
input = -5;
result = myFunction(input); 