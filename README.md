# 8051 项目模板

这是一个在 Windows 环境下使用开源编译器 SDCC 和 VSCode 的 8051 微控制器项目模板，旨在帮助开发者快速构建新的 8051 项目。

## 项目结构

- `src/`: 包含源代码文件。
- `build/`: 包含编译生成的文件。
- `Makefile`: 项目的构建脚本。
- `README.md`: 项目说明文档。
- `IFLOW.md`: 项目详细信息和开发指南。

## 模板功能

该模板提供了一个基础的 8051 项目结构，包含：
- 基本的 Makefile 配置，用于编译和链接
- VSCode 配置文件，提供 IntelliSense 支持
- 一个简单的 LED 闪烁示例代码，作为项目开发的起点

## 环境要求

- Windows 操作系统
- SDCC (Small Device C Compiler) - 用于编译 C 代码为 8051 机器码
- GCC (包含 MinGW 或 MSYS2 环境中的 Make 工具) - 用于执行 Makefile 中的构建指令
- VSCode - 推荐的代码编辑器，已配置好 8051 项目开发所需插件和设置
- stcgal (可选) - 用于将编译好的程序烧录到 STC 系列 8051 芯片

## 构建和烧录

### 构建项目

```bash
make
```

### 烧录程序

```bash
make flash
```

### 清理构建产物

```bash
make clean
```

## 使用方法

1. 克隆或下载此模板仓库
2. 根据你的硬件修改 `Makefile` 中的编译选项和烧录端口
3. 在 `src` 目录下添加或修改你的 C 源代码
4. 使用 `make` 命令编译项目
5. 使用 `make flash` 命令烧录程序到目标芯片

## 开发指南

请参考 [IFLOW.md](IFLOW.md) 文件获取详细的开发指南和项目信息。