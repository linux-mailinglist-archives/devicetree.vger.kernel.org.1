Return-Path: <devicetree+bounces-257320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHuEGncXcGkEVwAAu9opvQ
	(envelope-from <devicetree+bounces-257320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:01:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8A24E3E7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:01:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E558C601AFA
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B033341C2FD;
	Tue, 20 Jan 2026 11:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="L7YbPn8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F168B41B36F
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907481; cv=none; b=SeXQ7aKIfAzV+l4mNmfMB8mVL8Uxypsc3EWvxDeeyX3QADuM6cj249VhwDe5eGGIavrgTSK0cxdG8qwmE7fftcoWHLXXQvNHztmmJWls208zHSCA4V8H1VCzvacBfX+/mWgiW/p4Xfc+iGOeEglDK4afe8cipSWXWE0g/nqzN2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907481; c=relaxed/simple;
	bh=dfwYfXDU7fRvePV7n6sSb6fLGHYkCvkdHHCR07GvgC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rISLaH91NEjrjoqGB/Umis4rKDVwNW8mPsxWiBGz+qdhhWFNhfbqorN2kwOQKwR22Guk3pOdKI/j5aUgEyKpX/r7wmmSNI2rs1Xx4t7vEZ3VON0JKd6UbQVOp2SxDBgLA8zSyufPH/s/PW6DIF/ynL20V18+CIaA0fKGrydBXyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=L7YbPn8l; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-81e9d0cd082so4078251b3a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768907479; x=1769512279; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JaBSZVkVDpyEFk0K6mei2gWdyNIGdA1b2fG0c+mMO1c=;
        b=L7YbPn8lCpt4K5uxcX9gVkPm+WnVbHmbzOhD/OrSXKQWqSvpBfXBYOIqfb/ohaY2U6
         PQ9s72o1LtT63Z198blFgTcESPzCDjJyrK7dokr6M8s81xsvCNkKfOU7P/hpw/GGPNOY
         80/+vGtX2rGHo4T7fnRjw9AwIxfIeAE6tahmzJEasOFJmdkHZEUTMScde1UFNf3tzO1z
         LRhQ0i//8MKKaF4NnaOS2Z/c1SaCu8acUe+Q2bIyuOLK7I1LegnjczU8c5No/dDaszyq
         ibZgluRLYQYq5QeWYoqR6htO1S8Fy3W3D4ZrjBq0Zd1Ku4GXwriO17BEYRD5o+0rhHiH
         5s6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907479; x=1769512279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JaBSZVkVDpyEFk0K6mei2gWdyNIGdA1b2fG0c+mMO1c=;
        b=ETxHPlr+QcPvLDtodFfnJ8RR0ftIvPhhUmBd6gGbOTAbuEV1u7abmsm8uOTCoojCNZ
         BR4Atyg4mH2LymGPuF2wSCbR91ZUwJ02tmX4Q7h0Lyh7DvATCB7H7hWPIBRcVoq5pz1/
         NJcmedbG1avLcn/ubMrIztHujC6dWRlGEUEuy52XWUg2VGs520en/Cs8HN1NbrzYwXH+
         qdaAL5j7Ga8qXN50Fs4ZIXtI5cERUC0KM6QOUyQ4r4zJaaLUcrc/cKin8McBVBbV6b25
         U7kLq6WLOJl2x8lyPz1tx6z/fUV9Rf65HPdKsv1coJ8FOJIeh/hN0RAS5hFlLjV/zoYw
         Pijw==
X-Forwarded-Encrypted: i=1; AJvYcCVFIUlwrvNdFwYlaxWY91DJ1sNY+0uuW7NZhFLo2y+v8tnyokpl1bkQcPl9bGL/ytrHD/+hiyi1MUhH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5GCfjXgQ1U0gvbsREvCVN97O2WoE71uXoV0jVtK0d0qN4AA6f
	0y2J0OORpqU+fjvN162iRryDHZ79EvQ4GQzdVua2WtpIbtIw2Czu3PNeZNsyxZ+3zWI=
X-Gm-Gg: AY/fxX4gMxr1Os/vGuOjiHXtatjZh7l8WK3KNVWAobm6GUwTDSq9pGcnOrzX+DyIwdl
	CTZJFNSVvPbG1KTpbe/t9gFFxujQEyGl3sxpe5CSeHWqDfvBWoinhtYeOX5BoKc6njNye8pn05u
	M4DZEV1f0BaDcZ+vnfwNN5MKmw/dWVFmEUFjCysmzhYbM1hJhlfq9fhSZupQC9SjyqBYR2LBYhP
	IWXPe7d9KMGvmouuA3xVIjUv9FytgZ+i0vlhV/VuvncxjzLdHfu92jP8f3wYlMOvrSnrx8d60s9
	EiY2p6APPtknr4ZmWkgUbbUh2u/0bxSwHYvKY/HJ/apLKgrWjEABbEeqyVItOahB5SCDPHtGgZ7
	diRHc7Tkm7JS0z3MNksbqynV4jC+H/TjBxJ0v6Y9DpbYzKCXZBqSNY4F+E49ds7HNo45Gj2hbA6
	P4ul1K9hXjQck/MEuCsLLd1rJn+pxNcU+OhsNgSZ74DQ==
X-Received: by 2002:a05:6a00:3a25:b0:81f:4063:f1e4 with SMTP id d2e1a72fcca58-81fa184efc7mr11353743b3a.56.1768907479280;
        Tue, 20 Jan 2026 03:11:19 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4015])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10efc6bsm11398349b3a.29.2026.01.20.03.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 03:11:18 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 20 Jan 2026 19:10:50 +0800
Subject: [PATCH v3 2/4] reset: Create subdirectory for SpacemiT drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-k3-reset-v3-2-effe87f4bdbe@riscstar.com>
References: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
In-Reply-To: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257320-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,riscstar.com:email,riscstar.com:mid]
X-Rspamd-Queue-Id: 0B8A24E3E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Create a dedicated subdirectory for SpacemiT reset drivers to allow
for better organization as support for more SoCs is added.

Move the existing K1 reset driver into this new directory and rename
it to reset-spacemit-k1.c.

Rename the Kconfig symbol to RESET_SPACEMIT_K1 and update its default
from ARCH_SPACEMIT to SPACEMIT_K1_CCU. The reset driver depends on the
clock driver to register reset devices as an auxiliary device, so the
default should reflect this dependency.

Also sort the drivers/reset/Kconfig entries alphabetically.

Reviewed-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Add Alex's reviewed-by.
    Remove the trailing empty newline in Makefile to keep constant style
     with others in the reset folder.
v2: No change.
---
 drivers/reset/Kconfig                                      | 12 ++----------
 drivers/reset/Makefile                                     |  2 +-
 drivers/reset/spacemit/Kconfig                             | 14 ++++++++++++++
 drivers/reset/spacemit/Makefile                            |  2 ++
 .../{reset-spacemit.c => spacemit/reset-spacemit-k1.c}     |  0
 5 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6e5d6deffa7d..b110f0fa7bb1 100644
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
index 9c3e484dfd81..fc0cc99f8514 100644
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
index 000000000000..552884e8b72a
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
index 000000000000..34e3350136bb
--- /dev/null
+++ b/drivers/reset/spacemit/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_RESET_SPACEMIT_K1)		+= reset-spacemit-k1.o
diff --git a/drivers/reset/reset-spacemit.c b/drivers/reset/spacemit/reset-spacemit-k1.c
similarity index 100%
rename from drivers/reset/reset-spacemit.c
rename to drivers/reset/spacemit/reset-spacemit-k1.c

-- 
2.43.0


