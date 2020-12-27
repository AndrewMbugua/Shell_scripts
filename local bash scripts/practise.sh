#!/bin/bash

#thunderbird doesnt support automated email sending therefore you'll have to click that send button

output='testing'

thunderbird -compose "subject='test mail',to='<mail_name>@gmail.com',body=$output" &
sleep 2                  # Wait for the window to open
xdotool mousemove 55 105 # Find the exact position of the send button manually
sleep 0.25               # Might not be needed
xdotool click 1          # Click it ,xdotool simulates keyboard input
echo "Done!"

