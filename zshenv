rspec() {
  if [ -S .zeus.sock ]; then
    zeus rspec --debug "$@"
  else
    command rspec --debug "$@"
  fi
}
