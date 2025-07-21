#include <yaml-cpp/yaml.h>

#include <iostream>

int main() {
  YAML::Node config;
  std::string path = "/etc/interception/my-mappings.yaml";
  config = YAML::LoadFile(path);
  std::cout << "the config is: " << std::endl;
  std::cout << YAML::Dump(config) << std::endl;
}