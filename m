Return-Path: <devicetree+bounces-124559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7822F9D9425
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:22:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DA1D2867ED
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5C71CEAC2;
	Tue, 26 Nov 2024 09:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IirP2PBv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0B31CBE8C
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612877; cv=none; b=Bw+xhkP8VolFZIcO/rKWH+hAueUtNzxQbN/SkzvtfAlr50X4KmUNtrDl60PuLJoXwMt2zmxZr9RJfO0e3rlF/vy4itTj+jiyRMNq6jIb5iqLXPy0gOfmdBm+9baEcfrk0x53VHwgcGoaY5WwF7IfRj9j8DHzvMiJdIcwuroS+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612877; c=relaxed/simple;
	bh=4F232ENECAOLomVUSY8tBxTq5zAbQQSu7jUMFMN+Pp4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h9qhs/+XBkQtZMKNvq1hbqFGGLYfnLN1fE06rIFiY90/ncP/uAccDYuP06HIyBQyk2oWqaesAoRJFkGXVufLke27MRZlZ2nboD+naNhe3d6QLJMhtt/GPqDex18Ss9OHkfg8e2Bwn7U9BhTeQmRG2vNvBbb+ztXaiipTL84E0Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IirP2PBv; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434a044dce2so20409555e9.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612874; x=1733217674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LKW3EfLpg9xj1NAX34ulRBb1/poqN6qEBq3WFAZfenM=;
        b=IirP2PBvcho0H6iTKUBPqaFzZSLbr1s7FmnuIkmTtgERTsDdFAzdIRHukfAB2WgkpW
         3vGQapU8wAhXsndg+PAL+Mt3Y0nI5ePH+lHgwdVr29Lmf12twCqc0vR/ABqtQvET9ICv
         ZgXCMAPJdtcginb9Hy+pvQf6zGMIhJhbuv9PaNW3sS0SF4luQBW3CIvAN5+sHujMMCbZ
         DZjj1EBi/vf0xotjebPF8mbkXsZ/5+GtFUXqPEnnQ3XH9SxrlFxc1ceFghiUYRAnZvJR
         F6U9iXNYMBbXmP1x5wJbzMroauFk030pDfTT2bnCCa9snMx7W6fNONnlSsML246LhHnu
         wnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612874; x=1733217674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKW3EfLpg9xj1NAX34ulRBb1/poqN6qEBq3WFAZfenM=;
        b=bWnX/6RyBrucMK+Jq40Eb88GucTdKLcmGPbU26Se7M9+BFrJFFjDoBYxLZJMLiti+q
         dj+fC6pGCI46UZirzJ4qtA4nE1UzZb9BZEsVEWqhX+JMYGc/ZNNrnkxqiwPr9jXnFfKQ
         6YNjeTZcvNY0xPi17Nz9hFdT7VzLh/dHCk8Z25LMh4XaqjQFN887evxu/E/aDHSJtGlc
         C4srxBSUVBktOqfb5+/xOIRtK6dBguqYEJ2vietpwkJFuiu89jCDkKN0shyQrm4CekXH
         u/+ZoLaeIvEAealMmIMEqZdEkrn/K6afYcR1WrgGinN37dTQJ4u1oXDay+DufVU+eUsk
         X+HA==
X-Forwarded-Encrypted: i=1; AJvYcCXnVdxk3RVF2r0YcHAym4G0ubuwpIQCpjvwOBbZMBvQ6knh5iNUPKnVcgtawlUPO5mmJc4rPHDNHSDg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0tqJPu/8hXxcyb6IfV+4rxhPETCc42F7wc5ML+GCfIoFC2Z26
	r+4IrVhfmy5yhzasITJ91Fupgv8VSIKfpXVH3qh9auvDRpGX9U6LTvK9qNRd+q4=
X-Gm-Gg: ASbGncsWjeLkgfyJgSwT7MMrhf2LgMvbs0GUNZw6Y0H5fhkxow4qUJSQE+JJXV2aXtS
	1ZxjnSCtG1qi2vxzt3DImhIbVDRD7t2+leQ5Jb+jA61WVkH4J5uFHICj9o/2YZrHsT8rewpik0H
	05HElc5bIsjhv1ecgqBhiW+ppV79/CI4rwGr3Dz9b2JbvwRCuiKE1lrPI8kbKWQVeirpLEPidWr
	ux0WDknp0UqeZdrAreATe8K9mq+z/CC0syDr2Yvz+ENhuOihZ6M5AVSMeAeoZ4dVBbJfyXDZyFS
	joM=
X-Google-Smtp-Source: AGHT+IE7w+dBoCGCxxbUApCfNcapHwRVn5rVPYIN6Suv5fX7t/i3bspO7Ak4XFCK5NYSFpFy53f9sQ==
X-Received: by 2002:a05:600c:5122:b0:428:d31:ef25 with SMTP id 5b1f17b1804b1-433ce41ffc9mr177417025e9.12.1732612874002;
        Tue, 26 Nov 2024 01:21:14 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:13 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 05/15] soc: renesas: rz-sysc: Move RZ/G3S SoC detection to the SYSC driver
Date: Tue, 26 Nov 2024 11:20:40 +0200
Message-Id: <20241126092050.1825607-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Now that we have SoC detection in the RZ SYSC driver, move the RZ/G3S
SoC detection to it. The SYSC provides SoC ID in its own registers.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this was handled though patch 05/16 in v1 
- provide SoC specific init data through the SoC specific driver

 drivers/soc/renesas/r9a08g045-sysc.c | 12 ++++++++++++
 drivers/soc/renesas/renesas-soc.c    | 12 ------------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
index ceea738aee72..81970db300b2 100644
--- a/drivers/soc/renesas/r9a08g045-sysc.c
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -11,6 +11,9 @@
 
 #include "rz-sysc.h"
 
+#define SYS_LSI_DEVID		0xa04
+#define SYS_LSI_DEVID_REV	GENMASK(31, 28)
+#define SYS_LSI_DEVID_SPECIFIC	GENMASK(27, 0)
 #define SYS_USB_PWRRDY		0xd70
 #define SYS_USB_PWRRDY_PWRRDY_N	BIT(0)
 #define SYS_MAX_REG		0xe20
@@ -24,7 +27,16 @@ static const struct rz_sysc_signal_init_data rzg3s_sysc_signals_init_data[] __in
 	}
 };
 
+static const struct rz_sysc_soc_id_init_data rzg3s_sysc_soc_id_init_data __initconst = {
+	.family = "RZ/G3S",
+	.id = 0x85e0447,
+	.offset = SYS_LSI_DEVID,
+	.revision_mask = SYS_LSI_DEVID_REV,
+	.specific_id_mask = SYS_LSI_DEVID_SPECIFIC
+};
+
 const struct rz_sysc_init_data rzg3s_sysc_init_data = {
+	.soc_id_init_data = &rzg3s_sysc_soc_id_init_data,
 	.signals_init_data = rzg3s_sysc_signals_init_data,
 	.num_signals = ARRAY_SIZE(rzg3s_sysc_signals_init_data),
 	.max_register_offset = SYS_MAX_REG,
diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 172d59e6fbcf..425d9037dcd0 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -71,10 +71,6 @@ static const struct renesas_family fam_rzg2ul __initconst __maybe_unused = {
 	.name	= "RZ/G2UL",
 };
 
-static const struct renesas_family fam_rzg3s __initconst __maybe_unused = {
-	.name	= "RZ/G3S",
-};
-
 static const struct renesas_family fam_rzv2h __initconst __maybe_unused = {
 	.name	= "RZ/V2H",
 };
@@ -176,11 +172,6 @@ static const struct renesas_soc soc_rz_g2ul __initconst __maybe_unused = {
 	.id     = 0x8450447,
 };
 
-static const struct renesas_soc soc_rz_g3s __initconst __maybe_unused = {
-	.family = &fam_rzg3s,
-	.id	= 0x85e0447,
-};
-
 static const struct renesas_soc soc_rz_v2h __initconst __maybe_unused = {
 	.family = &fam_rzv2h,
 	.id     = 0x847a447,
@@ -410,9 +401,6 @@ static const struct of_device_id renesas_socs[] __initconst __maybe_unused = {
 #ifdef CONFIG_ARCH_R9A07G054
 	{ .compatible = "renesas,r9a07g054",	.data = &soc_rz_v2l },
 #endif
-#ifdef CONFIG_ARCH_R9A08G045
-	{ .compatible = "renesas,r9a08g045",	.data = &soc_rz_g3s },
-#endif
 #ifdef CONFIG_ARCH_R9A09G011
 	{ .compatible = "renesas,r9a09g011",	.data = &soc_rz_v2m },
 #endif
-- 
2.39.2


