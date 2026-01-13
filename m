Return-Path: <devicetree+bounces-254625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 113D0D1A27C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:18:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42E943054983
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC14620F08C;
	Tue, 13 Jan 2026 16:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jbwZ8dlp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4925C1A9FBD
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320912; cv=none; b=h3ESwGalDhzH8ebu+jmO0978vI42BUQ1hBL2HaCLS8PDgY1DHcIbHHNSsdoHCznNeme4fEg4bFcqohumVolVRT1CVO/xFscMo/vDgZKM9ospsuv8Sg26piM0Lze+3kriuDJWZOkxVFUPiBCEuDNT+Wr1z/QU8gIRjJyaIm5v1N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320912; c=relaxed/simple;
	bh=TLoU5lWDyws1OeV7OXou1lN7fTwwTLr00N4mF7uK9x0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nV/HZGxuX21ZLhS9Fn1N4psbF8IPkuReWfYdL21TINFvKSBHWvIf/inF3tlEbFcJxUipxHGkELUP3Q+DRML93vzg5Wv5a89u5LKDlMOt2bwku2YHiBXZPpCoR7UWl5f0c6aKP76YKIKubEiuIN6KWJ4xksA2jLanA1x8gPU36QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jbwZ8dlp; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso53923905e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320910; x=1768925710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hvtxYilHF4JVL0eXB0D64yPAf4KKBwd/NTOQX2Jue3w=;
        b=jbwZ8dlpO+NbW2m0Cdbp2Bd042UVS5eSflx4nVu4KNBG2fIeBqbFWQfw6+arzV2d4A
         1lBFdrKuBMN2QU2ViRm+cl0eVi6S8CJzjNF/wgCfjrMR695NI2X2TQmaJ0qWlLg3AKT1
         lSgP1MP3bqEgIoA4cG37+ac84/FlhP0jF7dfEOQvUhB1IXXvsT4Van9xLNfHBJa/4azL
         bkmkAK5iIffoKCMT5dENVv8GLFj9gqj7PTfd7FUdoPO9fIXL/e2MEk+P1ZaQJzSt93mB
         eVHbLbzXyMcGJl/U7BIx5Myd5/9xyp+GWZexyKy8tVr+nLKuNBbp6h4PfaS1P9lFPK2D
         UBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320910; x=1768925710;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hvtxYilHF4JVL0eXB0D64yPAf4KKBwd/NTOQX2Jue3w=;
        b=W+8hq6yjfQaK2C4IlnFmuU3Pm2qd7wPdsLYT5phhbf8RTbNhhwqQJJU3QjPkg9E/wp
         rbzjAzf1jXGtykNbLns7TsmZP2pUouEfAHiP9ppw5xvm2vMLmlrsTGjbXUN9X1LCRx9D
         awylz1AoBeLxpdwjfGfBs0/DtF4ANPjeTs0RI6Uc7okk2yHNtccPTXdlGy1FH8nJE223
         NL+jOAvhKt47/gicEEZdCsuEraY4gwdB571tFRgsgVUK0h//710Jy+kpS+q28hjcmJE0
         bnJ9dsXN4qzQVnDcX8ZHtfJllIcwJ8hmebVRU2+NDqejZ9CekeGCip52MKoXOmgNxx7R
         FZRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVOFpVWw8j7thMQ++I/tkHFVDyswLZbHrNfK7GwDtO5Q2YqF4HAjbZa3sAXqLGfwsnZGfD+ypnP/11@vger.kernel.org
X-Gm-Message-State: AOJu0YwY9ujKfb/1HbZq4Q/m3/RDcMw6xC0HhOl19dj0rb4G6woc6NuQ
	XcmxymloCLz7VAhNpDsAIQn2NZTjgvBZmJpNz9wGBdFmkPMN+/txiNh6
X-Gm-Gg: AY/fxX41ENnCAGDLaK3qYYnbSMpcwlfCsch0cFIKp1FOHTVaANRLTx0XPhjDpITVTWc
	DT8inPPiRv/YtfgPDL+dx5oKJkRwj7288d22wFV6L4UFc0SvhEpvQbQyu7m+DvKN923Her4gMH7
	9PBEAeKnmQkVmoOirLEVbv0OEKApGD3UEIJ1A5dCMaG8hRrR3iQCDdDCdwDysQVUnSNrorctkHP
	LS09fuQ+D22vlvej74xVH+Bk1+IkjpG6tPsa9LfFl8ktSDi2+OBRY4EfexaWFkqCpLIlRv4hs1n
	jjHYmbDAWy+dF++axaOi1KEu5eyQXET7nGRxr10QroVoY0Lev71hyKFsIhM8s9ayLE83IPC9dV6
	TKJ5q297BdY9iXlpRNnX2q55yrtbd6aUGAsyuSt7RKAPpSgRaUKoTeXEYqAJqGNSHiThQobKCSX
	4e3AnFRpLaGDk6dwmul1fIu8SUj6lBoqSr/mLmoJt00RTyHEWhljbOD+Q0E/50LdhB
X-Google-Smtp-Source: AGHT+IHGnmH/TbTUHTNUygniJjnxJnceaBkBBxZYIEq6h5tXVP2zWAtGpXJekrtv9xsl6fqRHOSMxQ==
X-Received: by 2002:a05:600c:4ed3:b0:477:afc5:fb02 with SMTP id 5b1f17b1804b1-47d84b34785mr281616625e9.21.1768320909407;
        Tue, 13 Jan 2026 08:15:09 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f418538sm415828485e9.5.2026.01.13.08.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:06 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>
Subject: [PATCH v4 0/6] OpenRISC de0 nano single and multicore boards
Date: Tue, 13 Jan 2026 16:11:33 +0000
Message-ID: <20260113161152.3688309-1-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since v3:
 - Switch order of gpio-mmio driver and bindings patches to patch binding
   first before driver.  Suggested by Krzysztof.
 - Removed example form binding suggested by Krzysztof.
 - Added Reviewed-by's from Geert and Linus W.
Since v2:
 - Fixup (replace) gpio-mmio patch to update driver compatible list and just add
   opencores,gpio to mmio-gpio bindings.  Discussed with Geert and Linus W
   because the 8-bit opencores,gpio is not the same as the 32-bit broadcom
   chip. [1].
 - Update new device trees to use proper ordering, remove debug options, remove
   unneeded "status" properties.  Suggested by Geert.
Since v1:
 - Use proper schema in gpio-mmio suggsted by Conor Dooley
 - Remove 0 clock-frequency definitions in dtsi file

The patches add support for OpenRISC systems running on the De0 Nano FPGA
development board.  We have two SoCs which are available here:

 - https://github.com/olofk/de0_nano - Single core
 - https://github.com/stffrdhrn/de0_nano-multicore - Multicore

As I work on tutorials [2] to help other get started with OpenRISC I would like to
have these defconfig and devicetree definitions in the upstream kernel to avoid
losing them.

When I was working on resurrecting these old setup's I found a major bug in
OpenRISC SMP which is fixed in this series as well.

[1] https://lore.kernel.org/lkml/20251217080843.70621-1-shorne@gmail.com/
[2] https://openrisc.io/tutorials/


Stafford Horne (6):
  dt-bindings: gpio-mmio: Add opencores GPIO
  gpio: mmio: Add compatible for opencores GPIO
  openrisc: dts: Add de0 nano config and devicetree
  openrisc: Fix IPIs on simple multicore systems
  openrisc: dts: Split simple smp dts to dts and dtsi
  openrisc: dts: Add de0 nano multicore config and devicetree

 .../devicetree/bindings/gpio/gpio-mmio.yaml   |  1 +
 arch/openrisc/boot/dts/de0-nano-common.dtsi   | 42 +++++++++
 arch/openrisc/boot/dts/de0-nano-multicore.dts | 25 +++++
 arch/openrisc/boot/dts/de0-nano.dts           | 54 +++++++++++
 arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++
 .../dts/{simple_smp.dts => simple-smp.dtsi}   | 11 +--
 arch/openrisc/configs/de0_nano_defconfig      | 79 ++++++++++++++++
 .../configs/de0_nano_multicore_defconfig      | 92 +++++++++++++++++++
 arch/openrisc/configs/simple_smp_defconfig    |  2 +-
 arch/openrisc/include/asm/smp.h               |  3 +-
 arch/openrisc/kernel/smp.c                    | 22 ++++-
 drivers/gpio/gpio-mmio.c                      |  1 +
 drivers/irqchip/irq-ompic.c                   | 15 ++-
 drivers/irqchip/irq-or1k-pic.c                | 27 +++++-
 14 files changed, 385 insertions(+), 14 deletions(-)
 create mode 100644 arch/openrisc/boot/dts/de0-nano-common.dtsi
 create mode 100644 arch/openrisc/boot/dts/de0-nano-multicore.dts
 create mode 100644 arch/openrisc/boot/dts/de0-nano.dts
 create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
 rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (90%)
 create mode 100644 arch/openrisc/configs/de0_nano_defconfig
 create mode 100644 arch/openrisc/configs/de0_nano_multicore_defconfig

-- 
2.51.0


