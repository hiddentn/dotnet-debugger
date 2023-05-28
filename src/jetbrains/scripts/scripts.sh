# helper scripts to work with dot trace 
RUN echo "#!/bin/sh" >> /usr/local/bin/dottrace_sampling.sh && \
    echo "/usr/local/bin/dottrace/dottrace attach \$1 --save-to=/temp/dottrace/dottrace_snapshot_\$(date +%F_%H-%M-%S).dtp"  >> /usr/local/bin/dottrace_sampling.sh && \
    echo "#!/bin/sh" >> /usr/local/bin/dottrace_timeline.sh && \
    echo "/usr/local/bin/dottrace/dottrace attach \$1 --save-to=/temp/dottrace/dottrace_snapshot_\$(date +%F_%H-%M-%S).dtt"  >> /usr/local/bin/dottrace_timeline.sh && \
    chmod +x /usr/local/bin/dottrace_sampling.sh && \
    chmod +x /usr/local/bin/dottrace_timeline.sh

# helper scripts to work with dot memory 
RUN echo "#!/bin/sh" >> /usr/local/bin/dotmemory_interactive.sh && \
    echo "/usr/local/bin/dotmemory/dotmemory attach \$1 -o --save-to-file=/temp/dotmemory/dotmemory_interactive_snapshot_\$(date +%F_%H-%M-%S).dmw"  >> /usr/local/bin/dotmemory_interactive.sh && \
    echo "#!/bin/sh" >> /usr/local/bin/dotmemory_snapshot.sh && \
    echo "/usr/local/bin/dotmemory/dotmemory get-snapshot \$1 -o --save-to-file=/temp/dotmemory/dotmemory_snapshot_\$(date +%F_%H-%M-%S).dmw"  >> /usr/local/bin/dotmemory_snapshot.sh && \
    chmod +x /usr/local/bin/dotmemory_interactive.sh && \
    chmod +x /usr/local/bin/dotmemory_snapshot.sh

# helper scripts to work with jetbrqnch ssh agent
ARG JB_DEFAULT_SSH_PORT=7777
ARG JB_DEFAULT_SSH_USER=instadeep
ARG JB_DEFAULT_SSH_PASSWORD=password@2022
