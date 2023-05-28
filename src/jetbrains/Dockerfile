ARG BASE="mcr.microsoft.com/dotnet/sdk"
ARG DOTNET_VERSION="6.0"
ARG IMAGE_VARIANT="alpine"

FROM $BASE:$DOTNET_VERSION-$IMAGE_VARIANT as base
RUN dotnet tool install --global dotnet-monitor
ENV PATH="${PATH}:/root/.dotnet/tools"

FROM base as jetbrains

ARG JB_ARCH="linux-musl-x64"
ARG JB_CLIENT_VERSION="2023.1.2"
ARG JB_CDN_PATH="https://download-cdn.jetbrains.com/resharper"
ARG JB_VERSION="${JB_ARCH}.${JB_CLIENT_VERSION}"

# install the jetbrains debbuger utils (for rider)
ARG JB_DEBUGGER_URL="${JB_CDN_PATH}/dotUltimate.${JB_CLIENT_VERSION}/JetBrains.Rider.RemoteDebuggerUploads.${JB_VERSION}.zip"
ARG JB_DEBUGGER_PATH="~/.local/share/JetBrains/RiderRemoteDebugger/${JB_CLIENT_VERSION}"

RUN curl -sSL $JB_DEBUGGER_URL -o debugger.zip && \
    mkdir -p $JB_DEBUGGER_PATH && \
    unzip -o debugger.zip -d $JB_DEBUGGER_PATH && \
    rm debugger.zip

# install the JetBrains.dotTrace cli tools for memory profiling
ARG JB_DOTTRACE_URL="${JB_CDN_PATH}/dotUltimate.${JB_CLIENT_VERSION}/JetBrains.dotTrace.CommandLineTools.${JB_VERSION}.tar.gz"
ARG JB_DOTTRACE_PATH="/usr/local/bin/dottrace"

RUN curl -sSL $JB_DOTTRACE_URL -o dottrace.tar.gz && \
    mkdir -p $JB_DOTTRACE_PATH && \
    tar -zxf dottrace.tar.gz -C $JB_DOTTRACE_PATH && \
    chmod +x $JB_DOTTRACE_PATH/dottrace && \
    rm dottrace.tar.gz

ENV PATH="$PATH:$JB_DOTTRACE_PATH"

# install the JetBrains.dotMemory  cli tools for memory profiling
ARG JB_DOTMEMORY_URL="${JB_CDN_PATH}/dotUltimate.${JB_CLIENT_VERSION}/JetBrains.dotMemory.Console.${JB_VERSION}.tar.gz"
ARG JB_DOTMEMORY_PATH="/usr/local/bin/dotmemory"

RUN curl -sSL $JB_DOTMEMORY_URL -o dotmemory.tar.gz && \
    mkdir -p $JB_DOTMEMORY_PATH && \
    tar -zxf dotmemory.tar.gz -C $JB_DOTMEMORY_PATH && \
    chmod +x $JB_DOTMEMORY_PATH/dotmemory && \
    rm dotmemory.tar.gz

ENV PATH="$PATH:$JB_DOTMEMORY_PATH"

# install the jetbrains ssh client (for rider)

ARG JB_SSH_ARCH="linux-x64"
ARG JB_SSH_CLIENT_VERSION="20230319.24.0"
ARG JB_SSH_URL="https://download.jetbrains.com/rider/ssh-remote-debugging/${JB_SSH_ARCH}/jetbrains_debugger_agent_${JB_SSH_CLIENT_VERSION}"
ARG JB_SSH_PATH="/usr/local/bin/jbssh"

RUN curl -sSL $JB_SSH_URL -o $JB_SSH_PATH && \
    chmod +x $JB_SSH_PATH

# TODO create and entry point ???








