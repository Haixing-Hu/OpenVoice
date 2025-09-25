# OpenVoice V2 安装指南

本指南将帮助您安装 OpenVoice V2 及其所有依赖，包括 MeloTTS。

## 系统要求

- Python 3.9+
- macOS 或 Linux 系统
- 至少 8GB 可用磁盘空间（用于下载模型和数据包）

## 快速安装

### 方法一：使用自动安装脚本（推荐）

1. **创建并激活虚拟环境**：
   ```bash
   python -m venv .openvoice-env
   source .openvoice-env/bin/activate  # macOS/Linux
   ```

2. **运行自动安装脚本**：
   ```bash
   ./install_dependencies.sh
   ```

### 方法二：手动安装

1. **创建并激活虚拟环境**：
   ```bash
   python -m venv .openvoice-env
   source .openvoice-env/bin/activate  # macOS/Linux
   ```

2. **安装系统依赖**：

   **macOS**：
   ```bash
   brew install mecab mecab-ipadic
   ```

   **Ubuntu/Debian**：
   ```bash
   sudo apt-get install mecab mecab-ipadic-utf8
   ```

   **CentOS/RHEL**：
   ```bash
   sudo yum install mecab mecab-ipadic
   ```

3. **安装 Python 依赖**：
   ```bash
   # 安装所有依赖（包含改进的MeloTTS fork版本，支持Python 3.13+）
   pip install -r requirements.txt

   # 以开发模式安装项目
   pip install -e .

   # 下载 unidic 数据包
   python -m unidic download
   ```

## 下载模型文件

1. **下载 OpenVoice V2 模型**：
   - 从 [官方链接](https://github.com/myshell-ai/OpenVoice/releases) 下载 `checkpoints_v2.zip`
   - 解压到项目根目录的 `checkpoints_v2` 文件夹

2. **验证文件结构**：
   ```
   OpenVoice/
   ├── checkpoints_v2/
   │   ├── base_speakers/
   │   │   ├── en-us.pth
   │   │   ├── zh.pth
   │   │   └── ...
   │   └── converter/
   │       ├── checkpoint.pth
   │       └── config.json
   └── ...
   ```

## 验证安装

运行以下命令验证安装是否成功：

```python
import openvoice
import melo
print("✅ OpenVoice V2 安装成功！")
```

## 使用方法

查看 `demo_part3.ipynb` 了解 OpenVoice V2 的使用方法。

支持的语言：
- 🇺🇸 英语 (English)
- 🇪🇸 西班牙语 (Spanish)
- 🇫🇷 法语 (French)
- 🇨🇳 中文 (Chinese)
- 🇯🇵 日语 (Japanese)
- 🇰🇷 韩语 (Korean)

## 常见问题

### Q: 安装 MeloTTS 时遇到 `num2words` 错误
**A**: 本项目使用了改进的MeloTTS fork版本，具有更好的依赖兼容性。使用 `pip install -e .` 应该可以自动安装。如果仍有问题，请尝试：
```bash
pip install -i https://pypi.org/simple/ num2words
```

### Q: 安装时遇到 MeCab 相关错误
**A**: 确保已安装 MeCab 系统依赖：
- macOS: `brew install mecab mecab-ipadic`
- Ubuntu: `sudo apt-get install mecab mecab-ipadic-utf8`

### Q: unidic 下载失败
**A**: 确保网络连接正常，unidic 数据包约 526MB，下载可能需要一些时间。

### Q: 内存不足
**A**: 确保系统有足够的可用内存（建议 8GB+）和磁盘空间。

## 故障排除

如果遇到问题，请检查：

1. **Python 版本**：确保使用 Python 3.9+
2. **虚拟环境**：确保在正确的虚拟环境中
3. **网络连接**：确保可以访问 PyPI 和下载服务器
4. **系统依赖**：确保已安装 MeCab

## 更新依赖

如果需要更新依赖：

```bash
# 激活虚拟环境
source .openvoice-env/bin/activate

# 更新项目依赖
pip install -e . --upgrade
```

## 卸载

如果需要卸载：

```bash
# 激活虚拟环境
source .openvoice-env/bin/activate

# 卸载项目
pip uninstall MyShell-OpenVoice

# 删除虚拟环境
rm -rf .openvoice-env
```

---

🎉 **安装完成！** 现在您可以开始使用 OpenVoice V2 了！
