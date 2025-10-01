# 使用官方 Python 镜像作为基础
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 复制依赖清单
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . .

# 运行 FastAPI 应用（默认端口 8000）
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
