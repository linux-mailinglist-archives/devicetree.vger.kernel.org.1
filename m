Return-Path: <devicetree+bounces-237253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BADC4EE6A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F92A3A69FB
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3557B36C5AB;
	Tue, 11 Nov 2025 15:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dp1MyIGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467B736C585
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876598; cv=none; b=oyXLCjIUKCZx3CHPtFJua1K1zduF4R+1Xlh1/s49iOqnOMkR5yeXPCjXPqFECL2YmI03Vjs7SqElaP2CFGFA5ivShteNdbsW9wJ0n+KCvNWp2UU2pSsY8YYSyViM12Rl1kMGpSRTSLt15BPOwlTJXvzsqbnb4r2SFc771HB0gkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876598; c=relaxed/simple;
	bh=zN24KWDJZb1WgQ/Z3lpGNyeeBBk4det6/dpjp/Gy6y0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kM6lgVHAk56NiIVXifmi3ESTQ36MI3Vuc4kgPjnit+5ZMWqvLykV4V7j5X9XDRPTHLTuBdxBhfDlT9iTxe1yj0VFO+fOHDa3IKjySIg58GJK3NvtG/H96qg6FWwWXR9zuDfQo27MhfVGkYw53EI3y1r7zyfaZDN+eH0nwkF8DPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dp1MyIGy; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47728f914a4so25474065e9.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762876595; x=1763481395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7fIZgZpE0U6JBB52ynsnA5QA9drzTFVpt2SE1VH4l3E=;
        b=Dp1MyIGyKy4vdvAztHJrXTK8tBNtkvNU242YXH2GKP7AQYbFOXmLPlZ4c2hyADO7ty
         ACuPJhnmloPnw7K+wmu7/AN2RelrmgjozS2b8S+cvZLGC5zyiCY5+5WBEyterD/ltGsw
         Yv1UQSCDkSPtl1U8uXtH6SAqVDmHiNHWf5Rg0j/USPtiR2/DZ5/JcmJWfCUQ3t82AWmX
         e/NAKtQxXcA/SE5Chn0MgGhE1uaBp26436AY8dStcR49ciXnd/FDgpz9X6eTauab/bge
         NKFYR2+s60/tZDmn69TsVoZAA0+E7wjdW8SW1mpNPYoJelIw/eYKelIs4awNTzXOHYUN
         FXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876595; x=1763481395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7fIZgZpE0U6JBB52ynsnA5QA9drzTFVpt2SE1VH4l3E=;
        b=DznLVuJvKrjfn9t6J38i75RLgE+s3xf9Ub1ANi9dSSC18BvJxaBgJeC+cv7EjPLOjI
         Dg0kluvlRsdoEe/EazlIDQ4pR2lc8uJeH/1uikiG5BlgcFOFG1Ip5U+O4pD31Y6bXRqU
         7pDY4GO9+IVciCGBKKCmmPVknRJrYr8HvDg0zOxEWWO+g5/fLwD1M6gKjVw1lJX3O+kn
         ZNqrD42icg2Hs8RQC3SAUUXN9ZptB2b1vuPX50EceHFQfyuCnNQbSLKYvOAUnRrPQ0Ss
         qjwJu8q1ko8l3JmwexgIHITFVQ5KpoNNwOH0UTooOXcMXRCHl3LMQm6mdFlBqyPTJ732
         waUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKAAJu9llLqfpO7/dD/Rl3sc4z+ohf0BtgvyWtaOf2bIzH11cWyf8LKP3hahMoVa0zqJhuzJd6U0Nf@vger.kernel.org
X-Gm-Message-State: AOJu0YxtlsJjsBG8GjaupC91K3+67DbStH/8iIa30nTOrBVJgnaIUAT/
	lHdKr3neZrQJwI/6ex790XyOyYCZLVjkW5tgRNwLG9hj1Xx95qmrqKoQeVBGsg==
X-Gm-Gg: ASbGnctfz2wcjg088BxnXWyR4NTtJYhAesiNHCYiflrHyMRJn+m1WvLIFVWUlt9dVYc
	G2QemIjXH2w4PXlHjXLaIS1pgm3aWAK21pIjzKBdOPiTbZgf68wL40u9pKFHtRKiBnPXmW+nSIG
	5766cx7MVmXufqGlkgERjb7m4W9gpVXhJ+sJhGW4O0nwh3O9lARDqFp8dN90AofkTzYfmZmKOVF
	4CMe0bWSsUnRvsx5tg9Qtj3XquJicxgX0/vGXKNhg4BVW/Yfq967IwZM68YnEu/3zO1ol/TZZ3w
	MeHADJDT/9hy60I3rhwZ4V6w56ZrXLa6GdDlqwyDKylYD4WHV67U6rfUuh+Toqw8G65m4rqteNW
	64H5v8I3HTGfBpoxfljsevk0nG4OHVCiQpZukRo48cUnQelMVvpLLDZ0/nuHILVNIANxeQMQgQ7
	qD4GRpQW6yy23cEtbw7vWH3rKGt9Mwtw==
X-Google-Smtp-Source: AGHT+IHJrBECeJh0b66lv3P+gg5fs729mTYmWDJdAcvMZDVj5CNLrnzuFJRU38R+n0e9SoVI8pc0zA==
X-Received: by 2002:a05:600c:46d5:b0:477:3fcf:3651 with SMTP id 5b1f17b1804b1-47773298023mr98870775e9.39.1762876594567;
        Tue, 11 Nov 2025 07:56:34 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm28676766f8f.19.2025.11.11.07.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:56:34 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 4/5] dt-bindings: clock: airoha: Document support for AN7583 clock
Date: Tue, 11 Nov 2025 16:56:20 +0100
Message-ID: <20251111155623.9024-5-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251111155623.9024-1-ansuelsmth@gmail.com>
References: <20251111155623.9024-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for Airoha AN7583 clock based on the EN7523
clock schema.

Add additional binding for additional clock and reset lines.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/clock/airoha,en7523-scu.yaml     |  5 +-
 include/dt-bindings/clock/en7523-clk.h        |  3 +
 .../dt-bindings/reset/airoha,an7583-reset.h   | 62 +++++++++++++++++++
 3 files changed, 69 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/reset/airoha,an7583-reset.h

diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
index fe2c5c1baf43..2d53b96356c5 100644
--- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
+++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
@@ -30,6 +30,7 @@ properties:
   compatible:
     items:
       - enum:
+          - airoha,an7583-scu
           - airoha,en7523-scu
           - airoha,en7581-scu
 
@@ -69,7 +70,9 @@ allOf:
   - if:
       properties:
         compatible:
-          const: airoha,en7581-scu
+          enum:
+            - airoha,an7583-scu
+            - airoha,en7581-scu
     then:
       properties:
         reg:
diff --git a/include/dt-bindings/clock/en7523-clk.h b/include/dt-bindings/clock/en7523-clk.h
index edfa64045f52..0fbbcb7b1b25 100644
--- a/include/dt-bindings/clock/en7523-clk.h
+++ b/include/dt-bindings/clock/en7523-clk.h
@@ -14,4 +14,7 @@
 
 #define EN7581_CLK_EMMC		8
 
+#define AN7583_CLK_MDIO0	9
+#define AN7583_CLK_MDIO1	10
+
 #endif /* _DT_BINDINGS_CLOCK_AIROHA_EN7523_H_ */
diff --git a/include/dt-bindings/reset/airoha,an7583-reset.h b/include/dt-bindings/reset/airoha,an7583-reset.h
new file mode 100644
index 000000000000..7ff07986f8ba
--- /dev/null
+++ b/include/dt-bindings/reset/airoha,an7583-reset.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2024 AIROHA Inc
+ * Author: Christian Marangi <ansuelsmth@gmail.com>
+ */
+
+#ifndef __DT_BINDINGS_RESET_CONTROLLER_AIROHA_AN7583_H_
+#define __DT_BINDINGS_RESET_CONTROLLER_AIROHA_AN7583_H_
+
+/* RST_CTRL2 */
+#define AN7583_XPON_PHY_RST		 0
+#define AN7583_GPON_OLT_RST		 1
+#define AN7583_CPU_TIMER2_RST		 2
+#define AN7583_HSUART_RST		 3
+#define AN7583_UART4_RST		 4
+#define AN7583_UART5_RST		 5
+#define AN7583_I2C2_RST			 6
+#define AN7583_XSI_MAC_RST		 7
+#define AN7583_XSI_PHY_RST		 8
+#define AN7583_NPU_RST			 9
+#define AN7583_TRNG_MSTART_RST		10
+#define AN7583_DUAL_HSI0_RST		11
+#define AN7583_DUAL_HSI1_RST		12
+#define AN7583_DUAL_HSI0_MAC_RST	13
+#define AN7583_DUAL_HSI1_MAC_RST	14
+#define AN7583_XPON_XFI_RST             15
+#define AN7583_WDMA_RST			16
+#define AN7583_WOE0_RST			17
+#define AN7583_HSDMA_RST		18
+#define AN7583_TDMA_RST			19
+#define AN7583_EMMC_RST			20
+#define AN7583_SOE_RST			21
+#define AN7583_XFP_MAC_RST		22
+#define AN7583_MDIO0                    23
+#define AN7583_MDIO1                    24
+/* RST_CTRL1 */
+#define AN7583_PCM1_ZSI_ISI_RST		25
+#define AN7583_FE_PDMA_RST		26
+#define AN7583_FE_QDMA_RST		27
+#define AN7583_PCM_SPIWP_RST		28
+#define AN7583_CRYPTO_RST		29
+#define AN7583_TIMER_RST		30
+#define AN7583_PCM1_RST			31
+#define AN7583_UART_RST			32
+#define AN7583_GPIO_RST			33
+#define AN7583_GDMA_RST			34
+#define AN7583_I2C_MASTER_RST		35
+#define AN7583_PCM2_ZSI_ISI_RST		36
+#define AN7583_SFC_RST			37
+#define AN7583_UART2_RST		38
+#define AN7583_GDMP_RST			39
+#define AN7583_FE_RST			40
+#define AN7583_USB_HOST_P0_RST		41
+#define AN7583_GSW_RST			42
+#define AN7583_SFC2_PCM_RST		43
+#define AN7583_PCIE0_RST		44
+#define AN7583_PCIE1_RST		45
+#define AN7583_CPU_TIMER_RST		46
+#define AN7583_PCIE_HB_RST		47
+#define AN7583_XPON_MAC_RST		48
+
+#endif /* __DT_BINDINGS_RESET_CONTROLLER_AIROHA_AN7583_H_ */
-- 
2.51.0


