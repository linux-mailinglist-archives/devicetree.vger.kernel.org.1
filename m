Return-Path: <devicetree+bounces-57883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C113D89F21E
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E47D11C23555
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2481F15D5AB;
	Wed, 10 Apr 2024 12:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DX1BPzrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB2D15B126
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752034; cv=none; b=YFahiBA/uvz2d5EMRXW/AyK1rli98keV3efDhfK2l+pRUtIWzg0Q2g3pDhdif+s2ALiwc+Se+wazu7jLraoIZEAgyfHrS/f+dnSG1ja1zLbGNCV4UWOLSTCXTmhk+eGQd5BfinI8vmOaCR4/Vw7K1vPyE/vEW5abjfenl8wlcPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752034; c=relaxed/simple;
	bh=TJKT/pPUusOMgixv4Q5e6XG+MpMem0x+/efc18RrB88=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pzPY/ZgI3jQjnxoPdCb6zsU/qd9icz6VZZoi25QQhh6s42031kqVMBPDTDbWYbPNQ7qwzS6Z6jIuudQirnpF1NkPoB0yj+sd63GUrUgy5I1tqtfInlceuEZjAsirSBdhfNqSJJCVHWhwhPGh1RGlhMePgF0S8GS77Vbq4F0a/9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DX1BPzrn; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d88a869ce6so42871471fa.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712752029; x=1713356829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1BZbAtu1RktUOhtr/eXu+3740J0qR/Eht6n39nZDjco=;
        b=DX1BPzrngHnVc108nU2rPg4X+HHaSO4SzvpS+Ci8fghwfMv8ItAkDUaaialy8YnjeT
         n6K+kPhdcR5pBP1zyg/JHragxnPgRJeL3NaGanA1SK5Ph2J5PxqvsZszI56h+PAfd/OP
         pCp2hlS8VA4Mj5I7WDhN7UJBKIPAxRvERKcN4peMQv5/wRUcqXKsI0onkYhZIIzaHpYq
         9MHCLY+lpKfOg2J9T46XKMrpPKi+vEyLuCbUiMAYROXIKbnjC38FeXnEOY1GgXwdE6Gt
         4qYsSXs+KE8ik95avdIT2L2MktG7NjWyQVa1twI0LlhFRjTmdNI/ymBjj38191P94EGP
         W5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712752029; x=1713356829;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1BZbAtu1RktUOhtr/eXu+3740J0qR/Eht6n39nZDjco=;
        b=buXzCe0xUF+nw9lAqBg8xovoK8lswlPcpVaS/DRAs8baISdyJ+HgpGub1zDN5Kbsyz
         AOWkYBErdSrHtsUtPt1cKfQA7C2xNK8pE0UwR9CFeVXfspzVvvK4h/WlwG//16+TRTKF
         9pDUackItKgxgWNN17ph1YXhPKmqSkfuMdP6KoUqrPTt2Pka/+bDqyM5bpY3t0rtU4p0
         QQszmfNnbh7ytth4yeYMkhRxyrwchYU5BmOZzmI4klFDfAofi94eSwVtd1wKo8aUqaIf
         YcZov+NsgcQkBJxQyfD8eSJ1dLTIXBMwW0HSTE/6jNTahFevxq7ON9po01NYJoMxBIgg
         xjPA==
X-Forwarded-Encrypted: i=1; AJvYcCVXWUK/Vyh/MrOS5bagykiegKMm8Q5in8C0Zh6id53yBe6EJ6Qezje7DRS3Z7uesSrKKQ7Mtu/SENYONSa5OV/8JRmcrJ/iqYTQDw==
X-Gm-Message-State: AOJu0YzVBXTNfaTnK5MINM0s8ZM92CIVFZmMcAptqkESU9LRfwkgIAE6
	nySaPvR3yEN69n/SJfjhmmjHfa/ZcTw8/4iOCeUq/bG5u+ww51f8o2xKYY1urRc=
X-Google-Smtp-Source: AGHT+IEycXW0nrhq5FASqePeqckHqiK9kjSHcUnm6/pG6A586NTQNYl+wrG+AdZzDo1aZ7WWxP306Q==
X-Received: by 2002:a2e:b613:0:b0:2d7:1ce5:3e24 with SMTP id r19-20020a2eb613000000b002d71ce53e24mr1998196ljn.34.1712752029459;
        Wed, 10 Apr 2024 05:27:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b004171f151a5csm1679446wms.16.2024.04.10.05.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:27:08 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 0/9]  clk: renesas: rzg2l: Add support for power domains
Date: Wed, 10 Apr 2024 15:26:48 +0300
Message-Id: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds support for power domains on rzg2l driver.

RZ/G2L kind of devices support a functionality called MSTOP (module
stop/standby). According to hardware manual the module could be switch
to standby after its clocks are disabled. The reverse order of operation
should be done when enabling a module (get the module out of standby,
enable its clocks etc).

In [1] the MSTOP settings were implemented by adding code in driver
to attach the MSTOP state to the IP clocks. But it has been proposed
to implement it as power domain. The result is this series.

Along with MSTOP functionality there is also module power down
functionality (which is currently available only on RZ/G3S). This has
been also implemented through power domains.

The DT bindings were updated with power domain IDs (plain integers
that matches the DT with driver data structures). The current DT
bindings were updated with module IDs for the modules listed in tables
with name "Registers for Module Standby Mode" (see HW manual) exception
being RZ/G3S where, due to the power down functionality, the DDR,
TZCDDR, OTFDE_DDR were also added, to avoid system being blocked due
to the following lines of code from patch 6/9.

+       /* Prepare for power down the BUSes in power down mode. */
+       if (info->pm_domain_pwrdn_mstop)
+               writel(CPG_PWRDN_MSTOP_ENABLE, priv->base + CPG_PWRDN_MSTOP);

Domain IDs were added to all SoC specific bindings.

Thank you,
Claudiu Beznea 

Changes in v3:
- collected tags
- dinamically detect if a SCIF is serial console and populate
  pd->suspend_check
- dropped patch 09/10 from v2

Changes in v2:
- addressed review comments
- dropped:
    - dt-bindings: clock: r9a09g011-cpg: Add always-on power domain IDs
    - clk: renesas: r9a07g043: Add initial support for power domains
    - clk: renesas: r9a07g044: Add initial support for power domains
    - clk: renesas: r9a09g011: Add initial support for power domains
    - clk: renesas: r9a09g011: Add initial support for power domains
    - arm64: dts: renesas: r9a07g043: Update #power-domain-cells = <1>
    - arm64: dts: renesas: r9a07g044: Update #power-domain-cells = <1>
    - arm64: dts: renesas: r9a07g054: Update #power-domain-cells = <1>
    - arm64: dts: renesas: r9a09g011: Update #power-domain-cells = <1>
  as suggested in the review process
- dropped "arm64: dts: renesas: rzg3s-smarc-som: Guard the ethernet IRQ
  GPIOs with proper flags" patch as it was integrated
- added suspend to RAM support
- collected tag

[1] https://lore.kernel.org/all/20231120070024.4079344-4-claudiu.beznea.uj@bp.renesas.com/


Claudiu Beznea (9):
  dt-bindings: clock: r9a07g043-cpg: Add power domain IDs
  dt-bindings: clock: r9a07g044-cpg: Add power domain IDs
  dt-bindings: clock: r9a07g054-cpg: Add power domain IDs
  dt-bindings: clock: r9a08g045-cpg: Add power domain IDs
  dt-bindings: clock: renesas,rzg2l-cpg: Update #power-domain-cells =
    <1> for RZ/G3S
  clk: renesas: rzg2l: Extend power domain support
  clk: renesas: r9a08g045: Add support for power domains
  clk: renesas: rzg2l-cpg: Add suspend/resume support for power domains
  arm64: dts: renesas: r9a08g045: Update #power-domain-cells = <1>

 .../bindings/clock/renesas,rzg2l-cpg.yaml     |  18 +-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  20 +-
 drivers/clk/renesas/r9a08g045-cpg.c           |  61 ++++
 drivers/clk/renesas/rzg2l-cpg.c               | 269 +++++++++++++++++-
 drivers/clk/renesas/rzg2l-cpg.h               |  77 +++++
 include/dt-bindings/clock/r9a07g043-cpg.h     |  52 ++++
 include/dt-bindings/clock/r9a07g044-cpg.h     |  58 ++++
 include/dt-bindings/clock/r9a07g054-cpg.h     |  58 ++++
 include/dt-bindings/clock/r9a08g045-cpg.h     |  70 +++++
 9 files changed, 659 insertions(+), 24 deletions(-)

-- 
2.39.2


