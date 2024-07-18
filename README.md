ROS2 Application
================

This project is a ROS2 (Robot Operating System 2) application that demonstrates the use of publishers, subscribers, clients, and servers for the Robotics course at UFPB. The application consists of nodes that communicate via topics and services to perform distributed tasks.

Project Structure
-----------------

    ros2_application/
    ├── src/
    │   ├── publisher_node.cpp
    │   ├── subscriber_node.cpp
    │   ├── client_node.cpp
    │   ├── server_node.cpp
    ├── include/
    │   └── ros2_application/
    │       ├── publisher_node.hpp
    │       ├── subscriber_node.hpp
    │       ├── client_node.hpp
    │       ├── server_node.hpp
    ├── CMakeLists.txt
    ├── package.xml
    └── README.md
    
Prerequisites
-------------

Make sure you have ROS2 installed on your system. You can follow the installation instructions on the [official ROS2 website](https://docs.ros.org/en/foxy/Installation.html).

Building the Project
--------------------

1.  Clone this repository into your ROS2 workspace:
    
        cd ~/ros2_ws/src
        git clone 
    
2.  Build the project:
    
        cd ~/ros2_ws
        colcon build
    

Running the Application
-----------------------

### Publisher and Subscriber

1.  Open a terminal and run the publisher node:
    
        ros2 run ros2_application publisher_node
    
2.  In another terminal, run the subscriber node:
    
        ros2 run ros2_application subscriber_node
    

### Client and Server

1.  Open a terminal and run the server node:
    
        ros2 run ros2_application server_node
    
2.  In another terminal, run the client node:
    
        ros2 run ros2_application client_node
    

Node Descriptions
-----------------

### Publisher (`publisher_node.cpp`)

The publisher node is responsible for publishing messages on a specific topic. It sends data periodically to be consumed by subscribers.

### Subscriber (`subscriber_node.cpp`)

The subscriber node receives messages from a specific topic. It processes messages published by the publisher and performs actions as necessary.

### Client (`client_node.cpp`)

The client node sends requests to a server to perform a specific operation. It waits for the server's response and processes the returned data.

### Server (`server_node.cpp`)

The server node receives requests from clients, processes the requests, and sends a response back to the client.

Topic and Service Configuration
-------------------------------

The topics and services used by the nodes are defined in their respective code files. Ensure that the names of topics and services are consistent across publishers, subscribers, clients, and servers.

### Topic Example

In `publisher_node.cpp` and `subscriber_node.cpp`, the topic can be defined as:

    std::string topic_name = "example_topic";

### Service Example

In `client_node.cpp` and `server_node.cpp`, the service can be defined as:

    std::string service_name = "example_service";

Contribution
------------

Feel free to contribute to this project. You can open issues to report problems or submit pull requests with improvements and new features.

License
-------

This project is licensed under the MIT License. See the `LICENSE` file for more details.
