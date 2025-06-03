while true; do
  gz topic -t /model/Depot/joint/fan1_joint/cmd_vel -m gz.msgs.Double -p 'data: 0'
  sleep 0.1
done