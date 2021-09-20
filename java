if [ -x /usr/libexec/java_home ]; then
  JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_301`
  if [ -d "$JAVA_HOME" ]; then
    export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_301`
  fi
fi
