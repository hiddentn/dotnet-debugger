#!/bin/sh

[ -z "${DEFAULT_SSH_PORT}" ] && port='7777' || port=${DEFAULT_SSH_PORT}
[ -z "${DEFAULT_SSH_USER}" ] && user='sshuser' || user=${DEFAULT_SSH_USER}
[ -z "${DEFAULT_SSH_PASSWORD}" ] && password='sshpassword' || password=${DEFAULT_SSH_PASSWORD}

jbssh -port $port -login $user -password $password 