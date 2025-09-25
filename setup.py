from setuptools import setup, find_packages


setup(name='MyShell-OpenVoice',
      version='0.0.0',
      description='Instant voice cloning by MyShell.',
      long_description=open('README.md').read().strip(),
      long_description_content_type='text/markdown',
      keywords=[
            'text-to-speech',
            'tts',
            'voice-clone',
            'zero-shot-tts'
      ],
      url='https://github.com/myshell-ai/OpenVoice',
      project_urls={
        'Documentation': 'https://github.com/myshell-ai/OpenVoice/blob/main/docs/USAGE.md',
        'Changes': 'https://github.com/myshell-ai/OpenVoice/releases',
        'Code': 'https://github.com/myshell-ai/OpenVoice',
        'Issue tracker': 'https://github.com/myshell-ai/OpenVoice/issues',
      },
      author='MyShell',
      author_email='ethan@myshell.ai',
      license='MIT License',
      packages=find_packages(),

      python_requires='>=3.9',
      install_requires=[
            'librosa==0.9.1',
            'faster-whisper>=1.0.0',
            'pydub==0.25.1',
            'wavmark==0.0.3',
            'numpy>=1.24.0',
            'eng_to_ipa==0.0.2',
            'inflect==7.0.0',
            'unidecode==1.3.7',
            'whisper-timestamped==1.14.2',
            'pypinyin==0.50.0',
            'cn2an==0.5.22',
            'jieba==0.42.1',
            'gradio>=4.0.0',
            'langid==1.1.6',
            # MeloTTS dependencies (using forked version with improved compatibility)
            'txtsplit',
            'torch',
            'torchaudio',
            'cached_path',
            'transformers>=4.27.4',
            'num2words>=0.5.12',
            'unidic_lite>=1.0.8',
            'unidic>=1.1.0',
            'mecab-python3>=1.0.9',
            'pykakasi>=2.2.1',
            'fugashi>=1.3.0',
            'g2p_en>=2.1.0',
            'anyascii>=0.3.2',
            'jamo>=0.4.1',
            'gruut[de,es,fr]>=2.2.3',
            'g2pkk>=0.1.1',
            'tensorboard>=2.16.2',
            'loguru>=0.7.2'
      ],
      zip_safe=False
      )
