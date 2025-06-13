Return-Path: <devicetree+bounces-185482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB2FAD8018
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 03:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87EB83B22B3
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 01:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7DF01D514E;
	Fri, 13 Jun 2025 01:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="zSi5JIMf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BB61EEA5F
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749777108; cv=none; b=Xyos0GQL52QnCgUcrWZNLZH7lSCzOlKiZNc4yYCHfMv3t7VQ8I4zDMbtStg3K6fW0D5M4h/4RzhQFyi+3YNIC/+gzhtgIBC2bpWhqH026seI2ql/jp2isgO9Jw6gTzlE5IZ5vgyB9gefCWxEV1xRU1ucRKyOdT3AB+/oPtYeNY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749777108; c=relaxed/simple;
	bh=8u736JUylRMKJQJC8tFKjjHmAF3VB42qomu/hTIe6UM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o9NylfBQW1i56CFmpWCBWGoWo4TElobrQua7iwQFmF+6G7+/12+oCdJ055yLXpKkOKvIn5OSQyoOV/p6tKCvWNJfsJ0vfK3V0YqbH1JxryDliF3I7hRj3D49SEZWmxuSpDdikFcjgQGLkmfk5bU/g5+Fly2gtY56N/Ap6WNcByY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=zSi5JIMf; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2d09d495c6cso425413fac.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 18:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749777104; x=1750381904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qLjk8AtIe7EkG0gXs3iZYCpvTmGpW65yPt2cGZeyPVs=;
        b=zSi5JIMfNakFFLIxQBn5QCs5uDgwCkgKqsCi35kepZITgUBgpnnub7kpjQhKWQ+OXF
         hHygWATq8xwBTmSG8cFCRsW2bv2Mpx6ojw7Zx1yXq9CYMyZVyxXhg3Tirz6OxGvnqtJ4
         h5Opq/EQUXy/3rX44V6QIDrOrH6ChJwyYU+j0Og35RO3uFZtBmND4qJw6AyUXMJPLA64
         LVQLNDdHB7LODTUV0fRyP4qmQzgM8wOrP/EEl7U4rkKpQmbPM8pd0rcj6e7dovhXXOwO
         1h6BFNflE2HEpWUotbRoWysdgKwzNOABi//dEMT9G+QRy1o3lwHacpr2qI3hWBtRDQos
         I+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749777104; x=1750381904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qLjk8AtIe7EkG0gXs3iZYCpvTmGpW65yPt2cGZeyPVs=;
        b=s6p1QbF2OkbC9YJMBF74JtneANae4znaIkRuOrZDkudDthDckA4V8K1aLjL+wulXhB
         eVElsJ2wHQhoHjzHCtd1rbaW0rzD47bZnFcf1yNmFTipMAuJApC9I1GBnmHngRf9be+i
         wyl3vT0pKy5QljtdXvI9808NDn95679wgrN0HjkBy15STjl2ewki4yBIa1UuGuCFVHC6
         izgbx0V7jM7FmsiDVQBKaSOZvn5te92XF2tM4E7uCH+XFjQLE8OeNgdcsoDG9TZhGai1
         3O2xB2qD8jwfCtq3XImG12lX7pP0l2ixNSI3MjmLThVMgs1VjQhKH4si6rw1RC65YIUd
         INMA==
X-Forwarded-Encrypted: i=1; AJvYcCV3g4pFJ9uCtXgLGNDkI6olUfmBsSYCsxXyBxxFU2w7qLCopxN8amOgLzpotFZYdcr9xursiiw/lGEr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzv6x/3bJbes/KiFVB0Daq8BsiyyLhp8td1Qo7vcSD2gJiqef4
	2C+HjgETWEK2eHKrwu22FF2iHq/ydrPyqEmjf+YRB0A+WYWKkpyyuiXSxIu1zpFmaCw=
X-Gm-Gg: ASbGnctJ4qpjJdgZIpZI7SaHYlhQxOQn3k6Cl4xr9PfN0ADtGrnlQh1csDva8pBwJ9o
	vFe5gOpl4mIriPS18ELWYbsRhn8+kIW+vJj+kFfJHb/1NPPNddKX6UJwhXiSRu3ack9wje2yQMz
	r3+F9BwsdIOOcM1X76ad1mdK98p+hEZlhlCabroxi1lyjdo3ndeCvR+1wFo0OhGyjVdUF9299Rc
	qnY5D22TcMSfkyAKvXxlbxABSYW7l/qg/IWXX7ehiS1+VD8134U6BxC2cBMcr2QFZperNDLHjEs
	BYDT3O7V0J+9XWez/pZupU0BvPmS2TAIaBlHfk87Xskbkpw5xmGyHHAstNJiul8uCvHH3XBXVJG
	d30YvDIwyQTp3zeikwWiolHDOhNA/n1gIfF3wWpXIOA==
X-Google-Smtp-Source: AGHT+IGuYA1UmF+qyhDFUECuEGO+2TaO/UuS30QC1CnU/pGEOag7zhyk90q5MH8bH5ojGbCRLTOPgQ==
X-Received: by 2002:a05:6870:ab09:b0:2e8:7505:638e with SMTP id 586e51a60fabf-2ead51cc4c8mr724652fac.39.1749777104481;
        Thu, 12 Jun 2025 18:11:44 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2eac0c17211sm407685fac.18.2025.06.12.18.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 18:11:43 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	inochiama@outlook.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v11 0/6] reset: spacemit: add K1 reset support
Date: Thu, 12 Jun 2025 20:11:32 -0500
Message-ID: <20250613011139.1201702-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds reset controller support for the SpacemiT K1 SoC.
A SpacemiT reset controller is implemented as an auxiliary device
associated with a clock controller (CCU).  A new header file
holds definitions used by both the clock and reset drivers.

In this version several "multi-bit" resets have been redefined as
individual ones.  For example, RESET_AUDIO had a mask that included
3 bits.  Now there are 3 separate resets (one for each bit):
RESET_AUDIO_SYS; RESET_AUDIO_MCU_CORE; and RESET_AUDIO_APMU.

The reset symbols affected (their previous names) are:
    RESET_USB3_0 ->
      RESET_USB30_AHB,  RESET_USB30_VCC, RESET_USB30_PHY 
    RESET_AUDIO ->
      RESET_AUDIO_SYS, RESET_AUDIO_MCU, RESET_AUDIO_APMU
    RESET_PCIE0 ->
      RESET_PCI0_DBI, RESET_PCI0_SLV, RESET_PCI0_MSTR, RESET_PCI0_GLB
    RESET_PCIE1 ->
      RESET_PCI1_DBI, RESET_PCI1_SLV, RESET_PCI1_MSTR, RESET_PCI1_GLB
    RESET_PCIE2 ->
      RESET_PCI2_DBI, RESET_PCI2_SLV, RESET_PCI2_MSTR, RESET_PCI2_GLB

No other code has changed since v10.

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v11

					-Alex

Between version 10 and version 11:
  - Rebased onto Linux v6.16-rc1
  - Redefined several "multi-bit" resets as individual ones.

Here is version 10 of this series.
  https://lore.kernel.org/lkml/20250513215345.3631593-1-elder@riscstar.com/

All other history is available via that link, so I won't reproduce
it again here.

Alex Elder (6):
  dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
  soc: spacemit: create a header for clock/reset registers
  clk: spacemit: set up reset auxiliary devices
  clk: spacemit: define three reset-only CCUs
  reset: spacemit: add support for SpacemiT CCU resets
  riscv: dts: spacemit: add reset support for the K1 SoC

 .../soc/spacemit/spacemit,k1-syscon.yaml      |  29 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  18 ++
 drivers/clk/spacemit/Kconfig                  |   1 +
 drivers/clk/spacemit/ccu-k1.c                 | 239 +++++++-------
 drivers/reset/Kconfig                         |   9 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-spacemit.c                | 304 ++++++++++++++++++
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 141 ++++++++
 include/soc/spacemit/k1-syscon.h              | 160 +++++++++
 9 files changed, 775 insertions(+), 127 deletions(-)
 create mode 100644 drivers/reset/reset-spacemit.c
 create mode 100644 include/soc/spacemit/k1-syscon.h


base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
-- 
2.45.2


