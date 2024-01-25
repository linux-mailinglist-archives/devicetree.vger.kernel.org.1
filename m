Return-Path: <devicetree+bounces-34934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F07B483BC61
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 302261C218DA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36B717BA7;
	Thu, 25 Jan 2024 08:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BtZH1tbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0152D11705
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706172923; cv=none; b=aHBtRdwfJT5uvca78tqfhYYBB1TRg2b7bGQwYvXNFl6fzlF4KXbHGfwI4kwIqdGYR+L/p19T4AfkDZdnUH1kaPfExvy0hTISOiNVVEjc7RAecdaZgs5FftBvpZ8jjfgkXKGHA9l+fHVOzinyi9br51Er10X96quickqBHfg+xBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706172923; c=relaxed/simple;
	bh=FTo2yOvJu53MLeMwPZNQm4wVD5iRvbNwad1qsaGHEY4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=nxBCdnRJ/1aLSAwdZW0yEz5GEL9n8dF4KNLRzue4q8wYF3f+IeTyUWt8UOgHN2N7tN8jxqFk6/W803w0J0gzcmJC9pO2mLvhGzSKtBqmJps0zc0DY7K+7yO7kiiMWEQYiRIJgUMCWfJEZGEK0Wqbt72hCSUe0nI9F68RrB0eJNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BtZH1tbg; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55783b7b47aso7178063a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 00:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706172920; x=1706777720; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WAWhgsK082LNeBTumE6fnsgQbDx5wOiOc8LnddYvWyA=;
        b=BtZH1tbgQ9d9QkGyQMTVxsfekk1ddb0BK/0+VXfEbXkfIi219RJKqSLR1jNunvRA8X
         LzPXM20nAHvSjkJuq1blUmOo/uM6q/XSapInzJBVsopxLG3lo+YUhSCpQ2q5ULjVKjCK
         vXM/UtjJkIHCrpxKK56Dw3JtFDCzqmyP2kjdJoJUBcZvBvXiRkUEUe9DGLzklyn6Z68q
         xCSyWoHi2NchhpJnAwEEllLHwB8IGLeyU4HlpIAgvnD8/Urpud7K/H1b60Znzhe9L4IH
         6dbE46FUVFoGQEhNPXtqdz/LwiZiSs20n7AQaWYjesUi7H4dHVBU4oB1b/QDbLwq9Hov
         Zbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706172920; x=1706777720;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WAWhgsK082LNeBTumE6fnsgQbDx5wOiOc8LnddYvWyA=;
        b=cHaU04t53PpY6kQqabnfm0sE5xLJBRxMuiD35a2/5oBarfoy+9EKExEew9ZG/0KsoR
         jfgKj714kZNtyHDleN1XwvTfby3MOdalCFPIby97MPVM02cPqKHXI9Dc2Qe7HJR8w2D/
         H2oxEp5bpPwG+9+c3XPf6GomquRjgHVEJYSOj60RfOR+ENyq9WRMnEh9u5/ZUM/DEy9H
         iglV6dXWTKg9ReyMvOSLzAym52xML+09cGiV/wB4109C/SEVmIErj2O7SZQ+6KCi6DQF
         dUMrzCterKVgw3qQxj6wIUb2YFZUkylhMIOe4bgpHgpzxS6dDn8dwlGqvmaW2eDTNBZm
         aNgA==
X-Gm-Message-State: AOJu0YyK7mMEI5n4F/YktBAjk1aDLrrdusOf2ZCCXni4wbBzDUsTSIXk
	uyxgsmH+nIX6rCFfGWR7hWnD88KMLS26zqP6L2ZOE+xlxaVhAoyDHkhZjIbcG9YgJ+Q5iZaLZAJ
	1pdMmmJB3wHDbdbxJOtq2VfWZVoBA6RJ2K34=
X-Google-Smtp-Source: AGHT+IFyCFdXoYpRNHAG2+OaAm5PMv323tqy1w+q5YcvpaMsjIqqjVvDBDmr31aok39Uz0Qw+nNbUFGJEmwwAMBYMkg=
X-Received: by 2002:a05:6402:198:b0:55c:eebe:8c47 with SMTP id
 r24-20020a056402019800b0055ceebe8c47mr399855edv.25.1706172919630; Thu, 25 Jan
 2024 00:55:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?SMOpY3RvciBPcsOzbiBNYXJ0w61uZXo=?= <hector.oron@gmail.com>
Date: Thu, 25 Jan 2024 09:55:08 +0100
Message-ID: <CAODfWeHbQsy+bKkAVOTc_an-=xLqqw-CV1NEBi1sUQ9fsmefFw@mail.gmail.com>
Subject: Test case failure when using Python3.12
To: devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

  I have been trying to build device-tree-compiler with Python3.12,
but a couple tests fail:

[...]
testAccess (__main__.PyLibfdtRoTests.testAccess)
Basic sanity check for the FdtRo class ... ok
testCreate (__main__.PyLibfdtSwTests.testCreate) ... FAIL

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
FAIL: testReserveMap (__main__.PyLibfdtBasicTests.testReserveMap)
Test that we can access the memory reserve map
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/tmp/device-tree-compiler/tests/./pylibfdt_tests.py", line
421, in testReserveMap
    self.assertEqual([ 0xdeadbeef00000000, 0x100000],
AssertionError: Lists differ: [16045690981097406464, 1048576] !=3D [0,
16045690981097406464, 1048576]

First differing element 0:
16045690981097406464
0

Second list contains 1 additional elements.
First extra element 2:
1048576

- [16045690981097406464, 1048576]
+ [0, 16045690981097406464, 1048576]
?  +++


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
FAIL: testCreate (__main__.PyLibfdtSwTests.testCreate)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/tmp/device-tree-compiler/tests/./pylibfdt_tests.py", line
618, in testCreate
    self.assertEqual([TEST_ADDR_1, TEST_SIZE_1], fdt.get_mem_rsv(0))
AssertionError: Lists differ: [9223372036854775808, 1048576] !=3D [0,
9223372036854775808, 1048576]

First differing element 0:
9223372036854775808
0

Second list contains 1 additional elements.
First extra element 2:
1048576

- [9223372036854775808, 1048576]
+ [0, 9223372036854775808, 1048576]
?  +++


----------------------------------------------------------------------
Ran 41 tests in 0.004s

FAILED (failures=3D2)
********** TEST SUMMARY
*     Total testcases:    2126
*                PASS:    2124
*                FAIL:    0
*   Bad configuration:    0
* Strange test result:    0
**********

Do you have a suggestion to get this fixed?

Regards
--=20
 H=C3=A9ctor Or=C3=B3n  -.. . -... .. .- -.   -.. . ...- . .-.. --- .--. . =
.-.

