use strict;
use Template::Test;

test_expect(\*DATA);

__END__
--test--
[% USE Jcode -%]
[% foo = '�ԣ��󡡣�󡡣���' -%]
[% foo.jcode.tr('����-�ڣ�-����-����','.A-Za-z0-9 ') -%]
--expect--
This is tr.

--test--
[% USE Jcode -%]
[% bar = 'This is tr.' -%]
[% bar.jcode.tr('.A-Za-z0-9 ','����-�ڣ�-����-����') -%]
--expect--
�ԣ��󡡣�󡡣���

--test--
[% USE Jcode -%]
[% baz = '�ʎݎ��������ގݎ����Ǝ���' -%]
[% baz.jcode.h2z.euc -%]
--expect--
�ϥ󥫥��򥼥󥫥��˥���
