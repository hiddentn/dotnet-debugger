# Debugging Dotnet Application on Remote Containers

This repository provides a collection of scripts and Docker containers that facilitate the debugging of Dotnet applications on remote containers. It includes pre-configured images that ship with the Visual Studio Debugger, JetBrains Rider Debugger, and various command-line utilities such as dotMemory and dotTrace. These tools allow for convenient memory and performance profiling, enabling offline debugging by capturing snapshots and dumps. Additionally, the repository includes the JetBrains SSH agent, which simplifies the process of remote debugging and attachment.

## Introduction

Debugging applications running in remote containers can be challenging, especially when dealing with complex Dotnet applications. This repository aims to streamline the debugging process by providing a set of Docker containers that come preconfigured with essential debugging tools and utilities. Whether you prefer the Visual Studio Debugger or JetBrains Rider Debugger, you can choose the container that best suits your needs and easily debug your Dotnet application remotely.

## Tools

### Visual Studio Debugger

The Visual Studio Debugger is a powerful debugging tool provided by Microsoft. It offers a rich set of features for debugging Dotnet applications, including breakpoints, stepping through code, inspecting variables, and much more. The Docker image in this repository ships with the Visual Studio Debugger, allowing you to debug your Dotnet application running in a remote container using the familiar Visual Studio debugging experience.

### JetBrains Rider Debugger

JetBrains Rider is a popular integrated development environment (IDE) for .NET development. It includes a robust debugger that provides extensive debugging capabilities, making it an excellent choice for debugging Dotnet applications. The Docker container in this repository comes with the JetBrains Rider Debugger, allowing you to debug your Dotnet application on a remote container using the JetBrains Rider IDE.

### dotMemory and dotTrace

In addition to the debugging tools, this repository provides command-line utilities such as dotMemory and dotTrace. These tools, developed by JetBrains, offer memory and performance profiling capabilities for Dotnet applications. With dotMemory, you can capture memory snapshots to analyze memory usage and identify potential memory leaks. Similarly, dotTrace enables you to capture performance traces to pinpoint performance bottlenecks in your application. These utilities come preinstalled in the Docker containers, allowing you to perform offline debugging and analysis.

### JetBrains SSH Agent

Debugging Dotnet applications on remote containers often involves establishing SSH connections for remote debugging or attachment. The JetBrains SSH Agent included in this repository simplifies this process by managing SSH connections on your behalf. It provides an easy-to-use interface for configuring SSH connections and facilitates remote debugging with both the Visual Studio Debugger and JetBrains Rider Debugger.

## Getting Started

To get started with debugging your Dotnet application on remote containers using the Docker images and tools provided in this repository, please refer to the following sections:

1. **Installation**: WIP
2. **Container Usage**: WIP
3. **Debugging with Visual Studio**: WIP
4. **Debugging with JetBrains Rider**: WIP
5. **Using dotMemory and dotTrace**: WIP
6. **SSH Agent Configuration**: WIP

Please note that while this repository provides a convenient setup for debugging Dotnet applications on remote containers, it's always recommended to consult the official documentation of the respective tools for more detailed information.

## Contributing

Contributions to this repository are welcome! If you have any ideas, bug fixes.
