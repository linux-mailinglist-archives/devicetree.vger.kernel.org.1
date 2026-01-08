Return-Path: <devicetree+bounces-252858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FB3D0411D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA17A34A87D8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D225347B43A;
	Thu,  8 Jan 2026 14:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="OQ2jH2XG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F3347B401
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882189; cv=none; b=g3gzAzfTxuKCjf0chI4oGof9R57HS8n4H3A/WA8wqzhG60S6clrYTLxVwlSG/FbcKwTUx/Zf91BbiOfBongVjexHgbQEclbE/eXHkO+g0lkteWPK+uCE6nS4dr2fgscE2XeLhmQAuhQSTxsSm1bclr8qYB1OE5NKfEiIncSXzr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882189; c=relaxed/simple;
	bh=dTVIKHPNLlFZoMBpxQkH9hg82booe+Lm/MLxt0nQBKs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oFcasoOeyd0w3ayZd5diyuoQGBXJdNEimjNrHoyATd15TDwRG6cmz1GZLf7PbgI/yBo2YnczHl1OJvOethfRDnoKABJJkz14pYN2eswSBq7nSvdD+3w5rp13lb6fivdlJsDTzYfDWt8uxGzWmNPfM1dqjKQSHsukjSO+AfuJNAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=OQ2jH2XG; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7e2762ad850so2758054b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767882187; x=1768486987; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EL8qeXIFUBprMt4HB/lPCre3+ycNyMSxvOH+cskZlVc=;
        b=OQ2jH2XGJIoCYoQzGCV0RBnHJ7HkXCeykaZaW2LDXrljy8DGDWQmsQRswP7gA3BeAw
         IJ4pBjToMH6zsBkp9reZ+xFv4felSsVzcy8HZAvttbnzAuR8W9fosLz498rOU7jum8dB
         tzvZkJ4ky3EYV+s0/sDj/7agHNvf61TRc1NI3VJkdqFF54aY+4jYu3lUnoK9Uju0bNvd
         TQzA3BBxefSBmIWoiov6WHI2Z/nPmjE/Osb8ZCQ9t4r5cQ2Q+PeKZyCiz4C3a9jlnk3i
         sm4S8SPGMVwfgC3UuijDGrJTN0kkQ/QsJzJZSjKJMaD9ohjeZB9Yia+ANl8RP8AEz8xk
         uY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767882187; x=1768486987;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EL8qeXIFUBprMt4HB/lPCre3+ycNyMSxvOH+cskZlVc=;
        b=jvS0O7aszXYflC9uCVMFIC/A56NiYXDpcAn44S/hen0TKFOWdwJNPVr7Css++D4v71
         cJ+Bk9LBb6rxrP7EY7WIkDj37EAbn8WMxxA5XvSqXzbVbI6fWfYCbMsQIZTpe+nWYfDs
         e5TQ0HW8am3A19+g07M2ElLKAd5d0RpbF/coBG4sMD/dMh0slqjoAy6cTwIET10faFvW
         rNne+ZmNnWg/BOhiVII00UJpyIrG9bv0DK2fFGDagja5XM7QixYRnHOOfmtzvEHVxuN+
         LhGoYxfh8ExrTAC4qmJSDXGu1mjt0V7zYIBXHjroeAuxvVlp4pkIk0onQL5D0cJ+PV/i
         u5sw==
X-Forwarded-Encrypted: i=1; AJvYcCWNxgcjMmzp4F0AueecVhktScsHwaO463Fx5nMxVksX7qliAdR6et+8AMIXQz6e4QfqmfhibZZE+ivC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc/aKDzOFKVg4VwwNKD/5M2ncOYgZWJssTg7E2wvb7oSnfChik
	2VIAeWe/MTCqOIrD00EmQ9wHKrk1X2ufEMpSRTc0H6oMUjnOoc+KtS0o4S2BFIk/Pjw=
X-Gm-Gg: AY/fxX4kbWfxUT8yBS+6APDHxiMeYUHQdpNzBOnJbY772CQiEfM+I63uKgBil6UufSd
	saqFW34fRht/PvT9U8sLxq5kQ8aXrPifHf3x2d0ubdnp12pUhVJCHb7hkZf+oA0I+LS00/BmupH
	/9rn7dH3lWRawWlRCiivyfTA7J/aBnaxTBA4PIuVgrrfTr1MxOeHMucmX3sanNwXavxjksC3qz3
	ggIggvxfBP5mdEO8l2l/404YZ3eidQVQbCpLnj0+K11a/PG+v8dbEM0th66DfEHnnfzdMXNqpGj
	nGXficdmU6vn7yJRfnikalaQYAO7N/H6SM1js0orbR2904MdzqSube3bRzXxymuBwApn6jrRUlj
	PMiTSioulceE9epPc8+TTZXpZWaL7yfW3MKl81WvSLZKrW6UuTH4k5sxI3rafX4GuQzj0D7360y
	zvJI1BPH7JOm3cic8g88kE82TyhRqtpNk=
X-Google-Smtp-Source: AGHT+IGxUyhcWl3pgdIJIBh8Xwg6I8nxAbuPkNaohVN6gOCkrsEZRn9ddDq3kJmePJgLlHuH3ww0ng==
X-Received: by 2002:a05:6a21:6da0:b0:364:1339:97c2 with SMTP id adf61e73a8af0-3898f8ccd38mr6576254637.14.1767882186882;
        Thu, 08 Jan 2026 06:23:06 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e7c16sm7927906b3a.53.2026.01.08.06.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:23:06 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 22:22:15 +0800
Subject: [PATCH v2 2/4] reset: Create subdirectory for SpacemiT drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-reset-v2-2-457df235efe9@riscstar.com>
References: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
In-Reply-To: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Create a dedicated subdirectory for SpacemiT reset drivers to allow
for better organization as support for more SoCs is added.

Move the existing K1 reset driver into this new directory and rename
it to reset-spacemit-k1.c.

Rename the Kconfig symbol to RESET_SPACEMIT_K1 and update its default
from ARCH_SPACEMIT to SPACEMIT_K1_CCU. The reset driver depends on the
clock driver to register reset devices as an auxiliary device, so the
default should reflect this dependency.

Also sort the drivers/reset/Kconfig entries alphabetically.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: No change.
---
 drivers/reset/Kconfig                                      | 12 ++----------
 drivers/reset/Makefile                                     |  2 +-
 drivers/reset/spacemit/Kconfig                             | 14 ++++++++++++++
 drivers/reset/spacemit/Makefile                            |  3 +++
 .../{reset-spacemit.c => spacemit/reset-spacemit-k1.c}     |  0
 5 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6e5d6deffa7d367040b0b380b78ce02d775a3a63..b110f0fa7bb13eff63e1939e50a926cd0106db3f 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -299,15 +299,6 @@ config RESET_SOCFPGA
 	  This enables the reset driver for the SoCFPGA ARMv7 platforms. This
 	  driver gets initialized early during platform init calls.
 
-config RESET_SPACEMIT
-	tristate "SpacemiT reset driver"
-	depends on ARCH_SPACEMIT || COMPILE_TEST
-	select AUXILIARY_BUS
-	default ARCH_SPACEMIT
-	help
-	  This enables the reset controller driver for SpacemiT SoCs,
-	  including the K1.
-
 config RESET_SUNPLUS
 	bool "Sunplus SoCs Reset Driver" if COMPILE_TEST
 	default ARCH_SUNPLUS
@@ -406,9 +397,10 @@ config RESET_ZYNQMP
 	  This enables the reset controller driver for Xilinx ZynqMP SoCs.
 
 source "drivers/reset/amlogic/Kconfig"
+source "drivers/reset/hisilicon/Kconfig"
+source "drivers/reset/spacemit/Kconfig"
 source "drivers/reset/starfive/Kconfig"
 source "drivers/reset/sti/Kconfig"
-source "drivers/reset/hisilicon/Kconfig"
 source "drivers/reset/tegra/Kconfig"
 
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 9c3e484dfd81a4f7b2f156a6226d5fa233600f9f..fc0cc99f8514cac161af59389ba1cbd5490209c8 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -2,6 +2,7 @@
 obj-y += core.o
 obj-y += amlogic/
 obj-y += hisilicon/
+obj-y += spacemit/
 obj-y += starfive/
 obj-y += sti/
 obj-y += tegra/
@@ -38,7 +39,6 @@ obj-$(CONFIG_RESET_RZV2H_USB2PHY) += reset-rzv2h-usb2phy.o
 obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
 obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
-obj-$(CONFIG_RESET_SPACEMIT) += reset-spacemit.o
 obj-$(CONFIG_RESET_SUNPLUS) += reset-sunplus.o
 obj-$(CONFIG_RESET_SUNXI) += reset-sunxi.o
 obj-$(CONFIG_RESET_TH1520) += reset-th1520.o
diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kconfig
new file mode 100644
index 0000000000000000000000000000000000000000..552884e8b72afeb05cdb9b6565ad8e7fd32f990b
--- /dev/null
+++ b/drivers/reset/spacemit/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config RESET_SPACEMIT_K1
+	tristate "SpacemiT K1 reset driver"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on SPACEMIT_K1_CCU
+	select AUXILIARY_BUS
+	default SPACEMIT_K1_CCU
+	help
+	  Support for reset controller in SpacemiT K1 SoC.
+	  This driver works with the SpacemiT K1 clock controller
+	  unit (CCU) driver to provide reset control functionality
+	  for various peripherals and subsystems in the SoC.
+
diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..de7e358c74fd7b0fac3ec2c18d985331af64fcbb
--- /dev/null
+++ b/drivers/reset/spacemit/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_RESET_SPACEMIT_K1)		+= reset-spacemit-k1.o
+
diff --git a/drivers/reset/reset-spacemit.c b/drivers/reset/spacemit/reset-spacemit-k1.c
similarity index 100%
rename from drivers/reset/reset-spacemit.c
rename to drivers/reset/spacemit/reset-spacemit-k1.c

-- 
2.43.0


