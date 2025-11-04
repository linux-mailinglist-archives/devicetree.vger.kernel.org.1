Return-Path: <devicetree+bounces-234885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BE2C31CA8
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3F9224FDF26
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E62330D29;
	Tue,  4 Nov 2025 15:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ksycI02C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B7032F770
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 15:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268829; cv=none; b=HwRRpiqotVS/Q4Qz0v3zSD2oD2rDwIgA+9rpdw/JSuEVdS31deuOIbN6+KgQmTsbt5sVg4fzWqKJRNT0uDU2qwEBahT020EJKeFXpE7uzTO53GI2gLQeIGj63pmh0nfElVu0v23n/prG9gvHEzDMgXKg5UsNJrIgqIJGvhla8/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268829; c=relaxed/simple;
	bh=/gzHGuZ/b71YHeLNSCqF7HwGsuPs7oNiMaA7VmETx8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ODYOv6J6KSfolLZoX05wXVyvfCrQCUpwktXsO2dp4Nc3o3z2YsDZfSssb7wgSB937WeK7M7xyAsIR+RuiT8y8xoMvoiQSH8Zknv7bDI7a2PGCvlGHC7rBH+HFrf5aj/IxsZXm4qe0S2QDnevDDZRC5UbpS50lXLXQtfgCZ64T8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ksycI02C; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64034284521so9727971a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762268825; x=1762873625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y9kL7sLOaubIomrxMG9EMGJEPQDeUh/zlxyCoHi0rRk=;
        b=ksycI02C7PeUQGw8PenXpGZk68bbADO3Uz04QMy1is0yoNTf7tOmfOI6V7lTrQvTWW
         5OW/p2wbhgCO+HX3ZMojVpBxbXwbnZCoXnx78pzRrlyOmqZAlAitOS0WTfmJNR3ugMXp
         aJxT/dcvz01xpmu7YPOWmf+kTdC48J6KooupyyowBPzby/a6iCh/R5/Ze7GiBqHYzud0
         6SAa08xYkWv5m0KziG4A+Fhlc0raZqK9cy0ARA0ntKrRgy9uM0Sx402+YxdJVNqKWwUF
         Et27ZyfAyxyaQkPxk3H21ZEb5y5+yg4Ccu8SQyGZpCHX1H502eVHFKcr+TjS7+Bnf+2l
         m0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268825; x=1762873625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y9kL7sLOaubIomrxMG9EMGJEPQDeUh/zlxyCoHi0rRk=;
        b=cPXxHjiTKiORwcWmkNzfVfPRI2wxvrgPIxp8/tInPq7VElK0J9Mao/z2rj7zJI0V+/
         H/11b9vTLU4SqY9/wa67uxf8IhY+tjgEmRuCIH4Ti/3IxAXp+0NLzQrZiLO3lqGMnWme
         li/f92D2V7r6JeXc3Q6RQ2/y/oyiTaeUYO9hl1M2L5ap6w8vdh8apgd+MSL3enyaH/gs
         5NUZbfph0fBBP++yTDMyg7g4Cb/0RCJh0p0+0KI7CB1eQN9W7uRp13TWAB/LbjdOPOXl
         CINsx/jM3Y+WLXsvcJy9ElL/xepqmB6YI5PWzG+OGjLMHZkb8kU0HChtqld0JFy1aL8+
         pWUA==
X-Forwarded-Encrypted: i=1; AJvYcCUB1A0kGRvfPD0EJDAaRao0f0Jo2YLbHFW0mjIMDaNRhXskpgZKYqy6BwFy4dFya1ry4ggYMYhia8ze@vger.kernel.org
X-Gm-Message-State: AOJu0YzopyNt1ov3oBBZ4VCaqId8o+Za/gdvm/g1+57GpMRUDldrVNsm
	5FtPilFkMJTcWb7UEtlcb4CExuDa0nwcywjFiAqpC/Xmh6R5QvTnzmVDvWfX0U9MmSo=
X-Gm-Gg: ASbGncvfizkUyYj3spjK8HUHN3I8xassfxYbkVxrlIvANhyGBCwZ3RjVcym2ngjo/cg
	8I2EfC5bJjqC4DZDQzgMU4EGEIpDW+1orb2k8MpHw6ubpnXm/Zt2VKhg6xTwtrCPca2HvqcQL/V
	Uj7NdQTKvciU/gynFPzb9cA3xW7j7qY+RqHQHEOhp2PCkJzCFV8IbrIXEuJS4GoR2HlYhwrVbIV
	sEnDGacLndpH28RgioKlO+WlIJ9MEgZQletU6/UXF+TykoM41oqk5os3/P9zgAnpWg+gozeHcUO
	3ombuGvG50nM4WfQ1pYkr1HZmY+Fhk1UVMajRIlv7469wmC4D+D/5ziGYCbEmfonFvJEFy7Dkg/
	Ook4TLasJRWSQda7DD74kiBtY/ilS6suLmBYMCgQn6RBG5Hq7tShVZIaR9L5b1CJAgV82600mlh
	klr4Wcfov9bCqcYXbFwCCQpMjcAw==
X-Google-Smtp-Source: AGHT+IFZdmElqbY9AODKm8wDfOCdQUqzn7Zp3okj0ZJauLQDD2dujxP+a4vOZzN9gWrLXe/og7S+0w==
X-Received: by 2002:a05:6402:51c9:b0:640:b825:183d with SMTP id 4fb4d7f45d1cf-640b8252621mr8119844a12.14.1762268825258;
        Tue, 04 Nov 2025 07:07:05 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6805da3sm2342014a12.15.2025.11.04.07.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 07:07:04 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Daniel Baluta <daniel.baluta@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: imx8mp: make 'dsp' node depend on 'aips5'
Date: Tue,  4 Nov 2025 07:06:12 -0800
Message-ID: <20251104150612.1874-4-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104150612.1874-1-laurentiumihalcea111@gmail.com>
References: <20251104150612.1874-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The DSP needs to access peripherals on AIPSTZ5 (to communicate with
the AP using AUDIOMIX MU, for instance). To do so, the security-related
registers of the bridge have to be configured before the DSP is started.
Enforce a dependency on AIPSTZ5 by adding the 'access-controllers'
property to the 'dsp' node.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-aipstz.h | 33 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  6 ++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aipstz.h

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-aipstz.h b/arch/arm64/boot/dts/freescale/imx8mp-aipstz.h
new file mode 100644
index 000000000000..6481c484ca37
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-aipstz.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright 2025 NXP
+ */
+
+#ifndef __IMX8MP_AIPSTZ_H
+#define __IMX8MP_AIPSTZ_H
+
+/* consumer type - master or peripheral */
+#define IMX8MP_AIPSTZ_MASTER		0x0
+#define IMX8MP_AIPSTZ_PERIPH		0x1
+
+/* master configuration options */
+#define IMX8MP_AIPSTZ_MPL		(1 << 0)
+#define IMX8MP_AIPSTZ_MTW		(1 << 1)
+#define IMX8MP_AIPSTZ_MTR		(1 << 2)
+#define IMX8MP_AIPSTZ_MBW		(1 << 3)
+
+/* peripheral configuration options */
+#define IMX8MP_AIPSTZ_TP		(1 << 0)
+#define IMX8MP_AIPSTZ_WP		(1 << 1)
+#define IMX8MP_AIPSTZ_SP		(1 << 2)
+#define IMX8MP_AIPSTZ_BW		(1 << 3)
+
+/* master ID definitions */
+#define IMX8MP_AIPSTZ_EDMA		0 /* AUDIOMIX EDMA */
+#define IMX8MP_AIPSTZ_CA53		1 /* Cortex-A53 cluster */
+#define IMX8MP_AIPSTZ_SDMA2		3 /* AUDIOMIX SDMA2 */
+#define IMX8MP_AIPSTZ_SDMA3		3 /* AUDIOMIX SDMA3 */
+#define IMX8MP_AIPSTZ_HIFI4		5 /* HIFI4 DSP */
+#define IMX8MP_AIPSTZ_CM7		6 /* Cortex-M7 */
+
+#endif /* __IMX8MP_AIPSTZ_H */
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 426c11853d84..2173b539dfb5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -13,6 +13,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/thermal/thermal.h>
 
+#include "imx8mp-aipstz.h"
 #include "imx8mp-pinfunc.h"
 
 / {
@@ -2479,6 +2480,11 @@ dsp: dsp@3b6e8000 {
 			firmware-name = "imx/dsp/hifi4.bin";
 			resets = <&audio_blk_ctrl IMX8MP_AUDIOMIX_DSP_RUNSTALL>;
 			reset-names = "runstall";
+			access-controllers = <&aips5
+				IMX8MP_AIPSTZ_HIFI4
+				IMX8MP_AIPSTZ_MASTER
+				(IMX8MP_AIPSTZ_MPL | IMX8MP_AIPSTZ_MTW | IMX8MP_AIPSTZ_MTR)
+			>;
 			status = "disabled";
 		};
 	};
-- 
2.43.0


