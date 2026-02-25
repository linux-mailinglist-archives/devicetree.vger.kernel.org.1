Return-Path: <devicetree+bounces-268099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPYPGwVMnmkSUgQAu9opvQ
	(envelope-from <devicetree+bounces-268099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:10:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA6318E8C6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88AF9306FE04
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6599E22D792;
	Wed, 25 Feb 2026 01:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PzoFzLvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F34248881
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771981776; cv=none; b=FFV2jh3ZMtN9zeelA/yVJtHem+jwJX92PUK/m9J+Lin7XrLWLoCUMnvD87Tb+dwRhx9fWPzJj1hMxYJsoR+QPZmzV58C0nfNyF6mZjUJG6JbZz0570O+vR1QbzaQeyoo/dTWLzBNygKiYIuqwcpNgoIKImpqgf59K+o6vIR+X64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771981776; c=relaxed/simple;
	bh=g3SF18+pO6/yYs02dSCn0SkcpZdfPpGO96e06mX2z4Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mTM3umADSj4/xL/iIQ9D5vHRx+lZekXnm3LCn2oFo5bGvX9kCG8zuWzb64qqiYjWMkReKasHCwpG3v+PH5TfPJiJknmy1UkqihDaOlIPK12ORxEObmKKy8e5/e6y4i8zBbQ7LnKSniZ2THngCEaBuULSv/w0Hmms5XbT1cvHAiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PzoFzLvc; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a962230847so58747165ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771981773; x=1772586573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g7/D+Ze7UXv2d7y8Hitf+M6kSx3SFdAfDUruGUFVxKI=;
        b=PzoFzLvcdW+E6SuMrxNAz3Zmk3XWHRSRsSGsf4RkDrUYhb6flRUqoiYFVUfbqzeXm/
         1+5rwChbLwPVK2V7ooI+gszGuhyHNERUkUQgGZtf+CZcAxSll/ktKjMrA8P5ZbHIefNB
         aAw1z6O6KbpJPA54wuVhF3by3yvF71JDiPo4pOGl44LJvPz4Ggic1z6/btxJ2OzS2b0+
         HLEIa1YIjbOQ0lcf6sRyKVQ+/L6qAaaGbSRzy4O965nqxdzh+AxxQpaTR7WrhbGik7iq
         uBA5DI13X7XxvwAGe4yMRh/1jmtrbAb0b0w0Jhc/yDbBeZnh6GPQ3swCNdDhRqjg9A9E
         xOBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771981773; x=1772586573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g7/D+Ze7UXv2d7y8Hitf+M6kSx3SFdAfDUruGUFVxKI=;
        b=Q5RfBX+aoJhW1ZWBb8Ahtg/8Py7yJHW9AoBEFE2fnpMUi/xcK4/Ghejl105/iCeqI8
         V3FtuV4J/01P5VrP1el9cjsvrEqSgsy3+fYBRLhf3ExmMlmX3u09yJQaFuqgaJMobSt7
         Q22nQfc8T4ph4WgtUNitI5gyNtUU9i7/qL4PZpNsi5OiVW5LU+Av/8xJJZz8eMtsH3lE
         BvcL+1NqXohJWMcMg2Q8efcVz0ZR5Kd1bSG/nSzmWIMGFVHkym4TIRUMS9L+tEWi6HNn
         eZFm4PtxUJ/zyCT8IBIvyw59in/3FGuDsWSO+aleC0iJLzImuw8tC4w//KHx82M9GzuE
         OG6w==
X-Forwarded-Encrypted: i=1; AJvYcCVXMamlzca3gJCSNcm645hh7JZ6DdqYOKuyG/55GBIaN6HNHhLYC17D+MiNUtrZ7i1KQo17Uny7c9A9@vger.kernel.org
X-Gm-Message-State: AOJu0YwrMLekkj0H9/Dws3q93/r3+xHGpUAI9AP5Huw+E90SSR/97efX
	Od6PTW2W56PwBoah7MBhR4maaZD0uu8K5x400AlU959bK0/nuW0GEjH7
X-Gm-Gg: ATEYQzzR0+h9os5HpsWrepUgXfTaGOgXUfwI6eX9sajWWl/m0K0qmRujSKqJVTF2q8t
	kQ2ajMgjURoiAzwo2SG2BrIO5IFIA6VvtLRHg9fJ8YE2Ev4sV0oSmpEHNhW1iedjm855gATU/v2
	vBkqRxBcSCVmOcZEjCs0vseTD+q3qlWWD4xdbPzYkd22IarPb8te9e7RvAjfU4cX3603Xpbnjwm
	Taq0/58ZcyznOkcSplb/9je/TIafBd6DALsFffdhNbBZJx8Rr4VCCmrXIFAAey6z5xEq94JQw4m
	1qJhwqCcn95TJ9kZw/4y71GRKlmmqcsNrAx+ryDLvyrRv5/AQJ6YZYKjn6qnL0kg1kqDdQcdMb0
	jRsDcDquyBk3EPynEQr107kP45KmacapwJt2o/dItIxkQO3iE6MmwzOb+pZFvNW0gHo9HpcPUXP
	LRmyg2F1aL7q1mioFaWFwtQc0dRRA4smk3M0ObABXB1kW8M3hk9386vds=
X-Received: by 2002:a17:902:ccc4:b0:2a9:5e25:4708 with SMTP id d9443c01a7336-2ad743fbdfcmr137100535ad.3.1771981773321;
        Tue, 24 Feb 2026 17:09:33 -0800 (PST)
Received: from k.localdomain ([120.229.13.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f5e0f2sm119350245ad.31.2026.02.24.17.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 17:09:32 -0800 (PST)
From: kanadenadi <kenadicanady@gmail.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: orsonzhai@gmail.com,
	baolin.wang@linux.alibaba.com,
	zhang.lyra@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kanadenadi <kenadicanady@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: clock: sprd: Add Unisoc SC9832E clock controller
Date: Wed, 25 Feb 2026 09:09:19 +0800
Message-Id: <20260225010920.757793-2-kenadicanady@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260225010920.757793-1-kenadicanady@gmail.com>
References: <20260225010920.757793-1-kenadicanady@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.alibaba.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-268099-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kenadicanady@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[1.72.16.96:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: EEA6318E8C6
X-Rspamd-Action: no action

Add device tree bindings for Unisoc SC9832E clock controller. The controller supports multiple clock gates and PLLs.

Signed-off-by: kanadenadi <kenadicanady@gmail.com>
---
Changes in v3:
 - Dropped redundant 'description' from 'clocks' property.
 - Moved globally required properties (reg, clocks, clock-names) to the top-level 'required' block.
 - Unified quote styles for "#clock-cells".
 - Consolidated identical if-then validation rules for single-clock variants into a single block to avoid code duplication.
 - Dropped extra redundant examples, keeping only one representative example.

 .../bindings/clock/sprd,sc9832e-clk.yaml      | 120 ++++++++++++
 include/dt-bindings/clock/sprd,sc9832e-clk.h  | 177 ++++++++++++++++++
 2 files changed, 297 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
 create mode 100644 include/dt-bindings/clock/sprd,sc9832e-clk.h

diff --git a/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml b/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
new file mode 100644
index 000000000..36d6ddc73
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
@@ -0,0 +1,120 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2026 Unisoc Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/sprd,sc9832e-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Unisoc SC9832E Clock Controllers
+
+maintainers:
+  - Nadi Ke <kenadicanady@gmail.com>
+  - Orson Zhai <orsonzhai@gmail.com>
+  - Baolin Wang <baolin.wang7@gmail.com>
+  - Chunyan Zhang <zhang.lyra@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - sprd,sc9832e-glbregs
+      - sprd,sc9832e-pll
+      - sprd,sc9832e-mpll
+      - sprd,sc9832e-dpll
+      - sprd,sc9832e-rpll
+      - sprd,sc9832e-apahb-gate
+      - sprd,sc9832e-aonapb-gate
+      - sprd,sc9832e-ap-clk
+      - sprd,sc9832e-aon-clk
+      - sprd,sc9832e-apapb-gate
+
+  "#clock-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 6
+
+  clock-names:
+    minItems: 1
+    maxItems: 6
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - sprd,sc9832e-glbregs
+              - sprd,sc9832e-pll
+              - sprd,sc9832e-mpll
+              - sprd,sc9832e-dpll
+              - sprd,sc9832e-rpll
+              - sprd,sc9832e-apahb-gate
+              - sprd,sc9832e-aonapb-gate
+              - sprd,sc9832e-apapb-gate
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          items:
+            - const: ext-26m
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sprd,sc9832e-ap-clk
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: ext-26m
+            - const: ext-1m
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sprd,sc9832e-aon-clk
+    then:
+      properties:
+        clocks:
+          minItems: 6
+          maxItems: 6
+        clock-names:
+          items:
+            - const: ext-4m3
+            - const: ext-26m
+            - const: ext-32k
+            - const: ext-6m5
+            - const: ext-13m
+            - const: ext-250k
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sprd,sc9832e-clk.h>
+
+    clock-controller@21500000 {
+        compatible = "sprd,sc9832e-ap-clk";
+        reg = <0x21500000 0x1000>;
+        clocks = <&ext_26m>, <&ext_1m>;
+        clock-names = "ext-26m", "ext-1m";
+        #clock-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/clock/sprd,sc9832e-clk.h b/include/dt-bindings/clock/sprd,sc9832e-clk.h
new file mode 100644
index 000000000..cd0b9952b
--- /dev/null
+++ b/include/dt-bindings/clock/sprd,sc9832e-clk.h
@@ -0,0 +1,177 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Unisoc SC9832E platform clocks
+ *
+ * Copyright (C) 2015 Spreadtrum, Inc.
+ */
+
+#ifndef _DT_BINDINGS_CLK_SC9832E_H_
+#define _DT_BINDINGS_CLK_SC9832E_H_
+
+#define CLK_ISPPLL_GATE		0
+#define CLK_MPLL_GATE		1
+#define CLK_DPLL_GATE		2
+#define CLK_LPLL_GATE		3
+#define CLK_GPLL_GATE		4
+
+#define CLK_TWPLL		0
+#define CLK_TWPLL_768M		1
+#define CLK_TWPLL_384M		2
+#define CLK_TWPLL_192M		3
+#define CLK_TWPLL_96M		4
+#define CLK_TWPLL_48M		5
+#define CLK_TWPLL_24M		6
+#define CLK_TWPLL_12M		7
+#define CLK_TWPLL_512M		8
+#define CLK_TWPLL_256M		9
+#define CLK_TWPLL_128M		10
+#define CLK_TWPLL_64M		11
+#define CLK_TWPLL_307M2		12
+#define CLK_TWPLL_219M4		13
+#define CLK_TWPLL_170M6		14
+#define CLK_TWPLL_153M6		15
+#define CLK_TWPLL_76M8		16
+#define CLK_TWPLL_51M2		17
+#define CLK_TWPLL_38M4		18
+#define CLK_TWPLL_19M2		19
+#define CLK_LPLL		20
+#define CLK_LPLL_409M6		21
+#define CLK_LPLL_245M76		22
+#define CLK_GPLL		23
+#define CLK_ISPPLL		24
+#define CLK_ISPPLL_468M		25
+
+#define CLK_MPLL		0
+#define CLK_MPLL_50M		1
+
+#define CLK_DPLL		0
+#define CLK_DPLL_40M		1
+
+#define CLK_AUDIO_GATE		0
+#define CLK_RPLL		1
+#define CLK_RPLL_390M		2
+#define CLK_RPLL_260M		3
+#define CLK_RPLL_195M		4
+#define CLK_RPLL_26M		5
+
+#define CLK_DSI_EB		0
+#define CLK_DISPC_EB		1
+#define CLK_VSP_EB		2
+#define CLK_GSP_EB		3
+#define CLK_OTG_EB		4
+#define CLK_DMA_PUB_EB		5
+#define CLK_CE_PUB_EB		6
+#define CLK_AHB_CKG_EB		7
+#define CLK_SDIO0_EB		8
+#define CLK_SDIO1_EB		9
+#define CLK_NANDC_EB		10
+#define CLK_EMMC_EB		11
+#define CLK_SPINLOCK_EB		12
+#define CLK_CE_EFUSE_EB		13
+#define CLK_EMMC_32K_EB		14
+#define CLK_SDIO0_32K_EB	15
+#define CLK_SDIO1_32K_EB	16
+
+#define CLK_ADC_EB		0
+#define CLK_FM_EB		1
+#define CLK_TPC_EB		2
+#define CLK_GPIO_EB		3
+#define CLK_PWM0_EB		4
+#define CLK_PWM1_EB		5
+#define CLK_PWM2_EB		6
+#define CLK_PWM3_EB		7
+#define CLK_KPD_EB		8
+#define CLK_AON_SYST_EB		9
+#define CLK_AP_SYST_EB		10
+#define CLK_AON_TMR_EB		11
+#define CLK_AP_TMR0_EB		12
+#define CLK_EFUSE_EB		13
+#define CLK_EIC_EB		14
+#define CLK_INTC_EB		15
+#define CLK_ADI_EB		16
+#define CLK_AUDIF_EB		17
+#define CLK_AUD_EB		18
+#define CLK_VBC_EB		19
+#define CLK_PIN_EB		20
+#define CLK_IPI_EB		21
+#define CLK_SPLK_EB		22
+#define CLK_AP_WDG_EB		23
+#define CLK_MM_EB		24
+#define CLK_AON_APB_CKG_EB	25
+#define CLK_GPU_EB		26
+#define CLK_CA7_TS0_EB		27
+#define CLK_CA7_DAP_EB		28
+
+#define CLK_AP_APB		0
+#define CLK_NANDC_ECC		1
+#define CLK_OTG_REF		2
+#define CLK_OTG_UTMI		3
+#define CLK_UART1		4
+#define CLK_I2C0		5
+#define CLK_I2C1		6
+#define CLK_I2C2		7
+#define CLK_I2C3		8
+#define CLK_I2C4		9
+#define CLK_SPI0		10
+#define CLK_SPI2		11
+#define CLK_HS_SPI		12
+#define CLK_IIS0		13
+#define CLK_CE			14
+#define CLK_NANDC_2X		15
+#define CLK_SDIO0_2X		16
+#define CLK_SDIO1_2X		17
+#define CLK_EMMC_2X		18
+#define CLK_VSP			19
+#define CLK_GSP			20
+#define CLK_DISPC0		21
+#define CLK_DISPC0_DPI		22
+#define CLK_DSI_RXESC		23
+#define CLK_DSI_LANEBYTE	24
+
+#define CLK_AON_APB		0
+#define CLK_ADI			1
+#define CLK_AUX0		2
+#define CLK_AUX1		3
+#define CLK_PWM0		4
+#define CLK_PWM1		5
+#define CLK_PWM2		6
+#define CLK_PWM3		7
+#define CLK_THM0		8
+#define CLK_THM1		9
+#define CLK_AUDIF		10
+#define CLK_AUD_IIS_DA0		11
+#define CLK_AUD_IIS_AD0		12
+#define CLK_CA53_DAP		13
+#define CLK_CA53_DMTCK		14
+#define CLK_CA53_TS		15
+#define CLK_DJTAG_TCK		16
+#define CLK_EMC_REF		17
+#define CLK_CSSYS		18
+#define CLK_TMR			19
+#define CLK_DSI_TEST		20
+#define CLK_SDPHY_APB		21
+#define CLK_AIO_APB		22
+#define CLK_DTCK_HW		23
+#define CLK_AP_MM		24
+#define CLK_AP_AXI		25
+#define CLK_NIC_GPU		26
+#define CLK_MM_ISP		27
+
+#define CLK_SIM0_EB		0
+#define CLK_IIS0_EB		1
+#define CLK_APB_REG_EB		2
+#define CLK_SPI0_EB		3
+#define CLK_SPI2_EB		4
+#define CLK_I2C0_EB		5
+#define CLK_I2C1_EB		6
+#define CLK_I2C2_EB		7
+#define CLK_I2C3_EB		8
+#define CLK_I2C4_EB		9
+#define CLK_UART1_EB		10
+#define CLK_SIM0_32K_EB		11
+#define CLK_INTC0_EB		12
+#define CLK_INTC1_EB		13
+#define CLK_INTC2_EB		14
+#define CLK_INTC3_EB		15
+
+#endif /* _DT_BINDINGS_CLK_SC9832E_H_ */
-- 
2.34.1


