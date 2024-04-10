Return-Path: <devicetree+bounces-57886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E4489F22A
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0DB1281E00
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88FE715ECE4;
	Wed, 10 Apr 2024 12:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bYNfsx1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D9F15E816
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752039; cv=none; b=dDrDhcEQrJ3rBN1lHMinXUm2SndJjsR6PiI/vezszyF2JTbRgEmqaFyVAKWg/CcSGoyylyq9ebjJ8Z+Ax8DswXpdMUNsJ3Aeu1gHUlRrNlly89mi8HP6rgg3UGTFEuOCUNDpv4lMEDEebmA1+n5XdNIn/3uA4hephRxIJLPGib8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752039; c=relaxed/simple;
	bh=/SapMZDbr7we3R/nDfhqB1tO55zkEkfLpHk1lnckIYc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PFEMi9fJnHgCxLpdf8vYkoWEbJWH9II8Xt3blJmfuJzE25+IuuheYCx+/vznLaDw+P9z4YP/7WgcwXvehbHT+43mwwAMTmHChHF8fdzVruzbxj8dCmzfzjn4wqHrcoIYmU+sCuPXMBrIT723ks4ce+3gIutCJnuxXilU8uOASck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bYNfsx1B; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-417c5656adeso675115e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712752036; x=1713356836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0RYIWJlebFDDwbIFrq3BSXmJNpUIeTjSZ+W2cRCXOM=;
        b=bYNfsx1BXcUrr8rkhb/+naFzoQNaZtTaVp9WCgttgNYaK1VRfkotX3gFt5TUz55ci0
         cphuwdm+qW5sku4KAXUkmjEuO3DBSh1lEcockinXnYXwmzTM0WDWHeJ38VpYHhfmAk4P
         oSyrLu8WBztuDWg6ssuIUCJn4r31pzKJXjjC8zirUcvEo0kRAg0aeDS8japlCXheLULJ
         aerOsxBvBfHVfHYQ2BqSFmKVbn6m0wsEGbXZnPWi4TgLWhe82erXkCSnFNiFEMSJjVxB
         gZMfssgbVI4glVTWV3b8hVxGxyIU/Q98DJ5uLMMYsWw9xQNEkaXzd2jLE76lVln+QsDQ
         S4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712752036; x=1713356836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U0RYIWJlebFDDwbIFrq3BSXmJNpUIeTjSZ+W2cRCXOM=;
        b=sKhVAhIvrzr2Eqcyhi/R/nqk1mj/XjF3zHSELC7Ec/IJ2Ufd8t0tCCJWbZkB0Z9DCH
         8kyAlrYfaU87VIC3JqLMIqi254foZ15YeoVK/Chc32M/PYdd6la6kQQfgryv+Xm3khLe
         kWomcrYWweRwYknPbascCfp9KXZXVif+L+FPNJgydBlezRFllUqd+BChc1D8nkfE6wHD
         l9kY/Zph/8aliK1pdrz/sWzzu0xmMZPt22HcGMTWgZQutajXbdE5fmOSS6fP2j2/I0aA
         6AILdnkUyG/4H7H7ksALYQaGhBW/15OTtMq5VdQfn9YR7L0SXNg8hCEHIJatPTZdZVaU
         Oaog==
X-Forwarded-Encrypted: i=1; AJvYcCXNbZWj18qD8HMZlTtBmlnhGPK6+GXF6U7wbcB2phpxwHkjBDvCDmTjhVYA+zuMwh4CbE5Fh80vimHIOFdj7JMmA8VN3Fn3M5gpsw==
X-Gm-Message-State: AOJu0YyiEYWQVDRw8wEFtBiNJkyHJKtP+1ptkcCAFbJr0+Jy/HnPZReD
	mWfZYan7XC0qiOvGB+YGv92FDT0m+KY0Y8fdymihR3bj+2+pAVEIbkAsbersyMM=
X-Google-Smtp-Source: AGHT+IHT2XZLgfUdbRTbKBeKWXnT/P22mEfSl1llZs6etbBbJQXiOcc7SepbiJe7Ofcyxfio1Su+7w==
X-Received: by 2002:a05:600c:4586:b0:416:731e:4a6b with SMTP id r6-20020a05600c458600b00416731e4a6bmr2162471wmo.29.1712752036171;
        Wed, 10 Apr 2024 05:27:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b004171f151a5csm1679446wms.16.2024.04.10.05.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:27:15 -0700 (PDT)
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
Subject: [PATCH v3 4/9] dt-bindings: clock: r9a08g045-cpg: Add power domain IDs
Date: Wed, 10 Apr 2024 15:26:52 +0300
Message-Id: <20240410122657.2051132-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add power domain IDs for RZ/G3S (R9A08G045) SoC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- collected tag

 include/dt-bindings/clock/r9a08g045-cpg.h | 70 +++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/include/dt-bindings/clock/r9a08g045-cpg.h b/include/dt-bindings/clock/r9a08g045-cpg.h
index 410725b778a8..8281e9caf3a9 100644
--- a/include/dt-bindings/clock/r9a08g045-cpg.h
+++ b/include/dt-bindings/clock/r9a08g045-cpg.h
@@ -239,4 +239,74 @@
 #define R9A08G045_I3C_PRESETN		92
 #define R9A08G045_VBAT_BRESETN		93
 
+/* Power domain IDs. */
+#define R9A08G045_PD_ALWAYS_ON		0
+#define R9A08G045_PD_GIC		1
+#define R9A08G045_PD_IA55		2
+#define R9A08G045_PD_MHU		3
+#define R9A08G045_PD_CORESIGHT		4
+#define R9A08G045_PD_SYC		5
+#define R9A08G045_PD_DMAC		6
+#define R9A08G045_PD_GTM0		7
+#define R9A08G045_PD_GTM1		8
+#define R9A08G045_PD_GTM2		9
+#define R9A08G045_PD_GTM3		10
+#define R9A08G045_PD_GTM4		11
+#define R9A08G045_PD_GTM5		12
+#define R9A08G045_PD_GTM6		13
+#define R9A08G045_PD_GTM7		14
+#define R9A08G045_PD_MTU		15
+#define R9A08G045_PD_POE3		16
+#define R9A08G045_PD_GPT		17
+#define R9A08G045_PD_POEGA		18
+#define R9A08G045_PD_POEGB		19
+#define R9A08G045_PD_POEGC		20
+#define R9A08G045_PD_POEGD		21
+#define R9A08G045_PD_WDT0		22
+#define R9A08G045_PD_XSPI		23
+#define R9A08G045_PD_SDHI0		24
+#define R9A08G045_PD_SDHI1		25
+#define R9A08G045_PD_SDHI2		26
+#define R9A08G045_PD_SSI0		27
+#define R9A08G045_PD_SSI1		28
+#define R9A08G045_PD_SSI2		29
+#define R9A08G045_PD_SSI3		30
+#define R9A08G045_PD_SRC		31
+#define R9A08G045_PD_USB0		32
+#define R9A08G045_PD_USB1		33
+#define R9A08G045_PD_USB_PHY		34
+#define R9A08G045_PD_ETHER0		35
+#define R9A08G045_PD_ETHER1		36
+#define R9A08G045_PD_I2C0		37
+#define R9A08G045_PD_I2C1		38
+#define R9A08G045_PD_I2C2		39
+#define R9A08G045_PD_I2C3		40
+#define R9A08G045_PD_SCIF0		41
+#define R9A08G045_PD_SCIF1		42
+#define R9A08G045_PD_SCIF2		43
+#define R9A08G045_PD_SCIF3		44
+#define R9A08G045_PD_SCIF4		45
+#define R9A08G045_PD_SCIF5		46
+#define R9A08G045_PD_SCI0		47
+#define R9A08G045_PD_SCI1		48
+#define R9A08G045_PD_IRDA		49
+#define R9A08G045_PD_RSPI0		50
+#define R9A08G045_PD_RSPI1		51
+#define R9A08G045_PD_RSPI2		52
+#define R9A08G045_PD_RSPI3		53
+#define R9A08G045_PD_RSPI4		54
+#define R9A08G045_PD_CANFD		55
+#define R9A08G045_PD_ADC		56
+#define R9A08G045_PD_TSU		57
+#define R9A08G045_PD_OCTA		58
+#define R9A08G045_PD_PDM		59
+#define R9A08G045_PD_PCI		60
+#define R9A08G045_PD_SPDIF		61
+#define R9A08G045_PD_I3C		62
+#define R9A08G045_PD_VBAT		63
+
+#define R9A08G045_PD_DDR		64
+#define R9A08G045_PD_TZCDDR		65
+#define R9A08G045_PD_OTFDE_DDR		66
+
 #endif /* __DT_BINDINGS_CLOCK_R9A08G045_CPG_H__ */
-- 
2.39.2


