Return-Path: <devicetree+bounces-237172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F136C4D970
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9E2E44F7F4D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5EB358D1A;
	Tue, 11 Nov 2025 12:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IvwE+mTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BC9358D04
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862471; cv=none; b=H+ehY3QnUFlKob6D9C623IN20NixoIUArjfKG13YrhcX7cLyucRAiW6A3sEU/Pyop6RO2biA5M9VT9EfBVWpXKp+FOj1nqO7aegnbqPpeGcL+NIGqT3jrGBxXM5Dat7tRBe2RZV0DEibqB8OcH60w2OGQf7dxNO1UH6DqvZIq60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862471; c=relaxed/simple;
	bh=/gzHGuZ/b71YHeLNSCqF7HwGsuPs7oNiMaA7VmETx8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l0osxkUjGwj3Oum2jzGFld5KZmtG/kPlXkJoJSND+QHA1sOskhCjBLmNxmzZsnJ+8hUEZB+lJoRu2pXvsk8F+0LocWn3q2PJ+2IUriZtm8VxPN+GeilAaI+b/jtLgcDCJ2cJxXixqHiAuF/9jVZxmKyrpUZKUcheqFD9GEeBP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IvwE+mTZ; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-641977dc00fso2861847a12.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762862468; x=1763467268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y9kL7sLOaubIomrxMG9EMGJEPQDeUh/zlxyCoHi0rRk=;
        b=IvwE+mTZciSfhqvPK3agkWbkUnd3cGqwlHgAv+uRYyoQSqaN3C0BOTVYuaS1S4rMeN
         ZRplJxbOYD+PRmvD2Zvkrr/UdM1NV3wS9H8XrJ9INdhG0tcCgew/aWkB6tgUYwsvHxhD
         ooZ+wRBTiRiLSsttNbPsnWCM97imu954pc21MFNsZ9n1ApEO3s6nJ7bPYakzOw6WTeTJ
         JKBZd338TanZgmgLfzKx5bv6MuCjZBErnQfjxjoUtWprjrfiwmnOeiFXPsrUVX51ilMR
         54GjPUSlRNeBsijSgP3UAxYmUxKw33ObS6uM1fKDIQGpOsrJZ3+31ayFI3F1+tKfcvbN
         a0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762862468; x=1763467268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y9kL7sLOaubIomrxMG9EMGJEPQDeUh/zlxyCoHi0rRk=;
        b=DGtg3ZXvL0152StjpUMB+HnWcDmbU33KgUAmGKqv5NjQq/GYGhFsBeWIcUO67ni5xi
         jZztkT/w2h7jeR7Lo8WuWB8uLnly95ev/RpRVNx2QxVm68jxJ1aZsGk72YM9J+1e5RHF
         gPHDDb9N8zxe25zqB8eCj8rJfClSBGJ3+lXK4dRyjyTuz9oE8/vfLV4W/w0YJH+6wCyX
         FTVCLjUnNrSgGonCZNkJtIpPiLSssUcAUK9VpwjC6MOVJtM0+9MitYeuGuAcCLg7nPf8
         863uyI3MwcpW+4aFKZOkNyXGDpBrrdxOHGaI7npZqK3AE889KTYr4ZLRuofTxwQYseSr
         u36A==
X-Forwarded-Encrypted: i=1; AJvYcCXZyXy+6zqOQ88XI7KOgYJO9bZRqpHAU4S2zSocQm95SaHdHP78pm51IGhr+/Y102AU4tlgA40qXYKT@vger.kernel.org
X-Gm-Message-State: AOJu0YyPmu0adXv3bobRSEmFgG8C+Ggohfr8wBennFhbex2luqQUvp4j
	UqIqjc8ENLIbthGb3Of+csfaZ64YW33O8dw5Z9HhtYA2dFVQ5/sSPSw/
X-Gm-Gg: ASbGncvbTLAEg8CjrRgFahvh0WSxZ/uVDUG6o6BAknoWYn2c2nQ4A7RgY9owckv1oTT
	RtTWybi3pwMYb3GQjh6PelHo1L/C65DMYX7N4zHD1CoBqNDDq0TU4Ayiq3L3sHViRPk0onX+Uu9
	zFlOroyyzbAfmOxKEPJSi52I3X98RwN+3XYbcxqK8hc7DGCh1dG7W6MPE73n2XwnHEK1gSg+e2L
	DzgXaZZ2zXYu7SzRAnoCi4hqGt+NG1wS1BVRY98hfr0GwlZmvQwIIJP9iAnE0TnUixJ56BMy6Rc
	UQ6xLLVtPdqIfxgFMSSI0o70oYKmkToz0U2aNb/Qgh/4wLVtZOVHXMJqqoU3H70Bp2kD44AfO8s
	az+vfgfDB7e01Bu9hZg41lbUD1dxLmpqoE9NFEB5SJhG9Os/mVulxIXPipGTFT2ZmM2fZO3vtWI
	3DFQkp5wDHcgTygC/W8okwV0Fkc+BF/nkjDY7b
X-Google-Smtp-Source: AGHT+IGQs7jakKZkFO/dMmI5qT5oEtzxJPB2RdXOKmXDqglsY8VX/AxfcjPsqoxWzM27nSsqJCFqIA==
X-Received: by 2002:a17:907:7f21:b0:b72:5a54:1713 with SMTP id a640c23a62f3a-b72e04efb37mr1121724566b.58.1762862467536;
        Tue, 11 Nov 2025 04:01:07 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf407a01sm1340707466b.22.2025.11.11.04.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:01:07 -0800 (PST)
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
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: imx8mp: make 'dsp' node depend on 'aips5'
Date: Tue, 11 Nov 2025 04:00:22 -0800
Message-ID: <20251111120022.696-4-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
References: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
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


