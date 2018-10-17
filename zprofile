autoload -U compinit
compinit

#prompt
PROMPT='%n{4}-{4}%*{4} :%c{2} $ '

# �����t�@�C���̕ۑ���
export HISTFILE=${HOME}/.zhistory
# �������ɕۑ�����闚���̌���
export HISTSIZE=1000
# �����t�@�C���ɕۑ�����闚���̌���
export SAVEHIST=100000
# �d�����L�^���Ȃ�
setopt hist_ignore_dups
# �J�n�ƏI�����L�^
setopt EXTENDED_HISTORY
# history�����L
setopt share_history
# �q�X�g���ɒǉ������R�}���h�s���Â����̂Ɠ����Ȃ�Â����̂��폜
setopt hist_ignore_all_dups
# �X�y�[�X�Ŏn�܂�R�}���h�s�̓q�X�g�����X�g����폜
setopt hist_ignore_space
# �q�X�g�����Ăяo���Ă�����s����ԂɈ�U�ҏW�\
setopt hist_verify
# �]���ȋ󔒂͋l�߂ċL�^
setopt hist_reduce_blanks  
# �Â��R�}���h�Ɠ������͖̂��� 
setopt hist_save_no_dups
# history�R�}���h�͗����ɓo�^���Ȃ�
setopt hist_no_store
# �⊮���Ƀq�X�g���������I�ɓW�J
setopt hist_expand
# �������C���N�������^���ɒǉ�
setopt inc_append_history
# �C���N�������^������̌���
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# migration .bash_profile
source ~/.bash_profile