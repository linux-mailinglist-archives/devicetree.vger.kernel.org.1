Return-Path: <devicetree+bounces-257759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DnDA0l9cGmxYAAAu9opvQ
	(envelope-from <devicetree+bounces-257759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:16:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B632052AF6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 526644E6665
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACD63803FC;
	Wed, 21 Jan 2026 07:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F1qOCW7A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E17637A488
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979704; cv=none; b=R3bXchgmJjLPplLoyT4m8/rf415nzP8TbgvhfW1S0UPqYWdW4fS5wxxUmTQNxib0tazkI/tAydvVkPDhzxHQ1C0JW5SIjJS7hoh/8yQXCV2BlNJKCCgXDHpwdLjRVyWJfba4mTYDJJ2pI040ZyehNpKtrJtmE4cBik7Xe4rT30U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979704; c=relaxed/simple;
	bh=ahg33l3AJOH1rfadapjHgirfPG34CL28MEBfnXM2NdY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eDxKnZ3ita9yCytxhBAcujVUgBQH6iduBDLuAh6Ye6xkIKqft9TXz8d7sO8q/JsT29hFUHTiGu33iYuEnr7I9qbLAqGIaUYyNyQkzEFktig/H0Q5pmsOAFoQ8NnDrr2z+RelI/fb9sOl+++o5Fc2W9w5GaXI5B7RL/V1UO0qRKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F1qOCW7A; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34ccb7ad166so3228934a91.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768979700; x=1769584500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUgZiLntEbgzbxe6UxabpcXc2vBDUtdRAn3q1YtRa1w=;
        b=F1qOCW7AJbCY25ThJu7DYDS0qvgClTOk8+cF2Lab/LgR3AvsBIvPSZmRfFya932SPc
         tI8fDj5yHxG+T4BIP5MVMDxI2ynuiXYQpwKcdK7VxoslNSljlx2Tx7Kij6vfwGJxeJIG
         9pdEP6/AVjjVtozM9Q+VXZskX9CUD6Ukp6n8NOkTQ1eIQCGZH7LA5jlZOSLoSdDfesau
         11Ml7xAw6FPeLaMyKiwsPWjP+5pFRgZvxcS446JXn5KQROWuZOQk5CBq1If8EHkKojyc
         /nf9pcFjXwagHQcNCsS5LdvB4+kidkEePHHN1rp5P+/DPr0W3maY9/DIzIhnNc7JVphZ
         jbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768979700; x=1769584500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gUgZiLntEbgzbxe6UxabpcXc2vBDUtdRAn3q1YtRa1w=;
        b=T5cED5on9PxX3V7XCIyCS8s7fcpj5Kx7gvSKAdVrHD3EF5+LCBlShWG9kfz6P2iqgd
         gHQLk/opg7Unc32ponN0pIaFZ3FAaQO+0Cy+AOHNeOEXMySPd4YbVVWi1djUedGBi7+M
         Yij8dq3O9yrqGZVfV4U3JB5IV8/nfeXpGIf8GsZXDqhQxQBhWKDaEDZVGaVYurm2P6lk
         SsRAp2G5+Rd4ktQzkWUjtCq5VgAXKj5ltN1qxpaZxcPZ48/vQ0lJF+E+lk8IG/lTtdct
         +k523rNqx0Zt8KOgU/SHzGC85lc4WwEhp2A1/DJLNMu9v/FxCfe/tLKG7OdofZXlq/mq
         118Q==
X-Forwarded-Encrypted: i=1; AJvYcCXgBHGe2pyVjrHXcjZxwFtwhv0nta3bbcpqLPudeFwYrY3MEWbZdmcZjz3Zzgw5tQambPP2F0sFihY+@vger.kernel.org
X-Gm-Message-State: AOJu0YwsrDkT8xLCnlmP1D4LxslN+PQ4VMePHVnzymR8Ea9XOKu5Km0A
	VAsknTRiYb/8PWnaIRszzYP4KTCt5IPzo2fmJo5lSPbfJkTtca43azwa
X-Gm-Gg: AZuq6aL6g9TXuq+Exbo1H8R1S8TAKNfM41DCXeOWsG7nejymqQj50cRCDggDvbWxQPh
	M5fe3QYFDs0X10gUt4y/RnuLW2MGOsIJmltN1v9MUO+BvG7ADqc2zhxkY15aYezV1W5/htSvstG
	XdEqr62tq+c9XfTHMrswN0W7m/XxUbx/uY4oSbYslZeGnASXUVDqmbF1yfyXRB8P9JfEdr6Awtj
	kVkLVfMc0neKfvQaESJ3qu2yH2RiTkxLC4Inj1krxmzFqimo64mY6lxAtHA/h6RFSc/qCidBGaG
	eD5l/yL9COXT18Dd3GjpPI+vxEkxLrulLpJhUPaoBUf5M7jhmmw7SMc4g4rgYxv9kOVYub7gvH4
	DBK7SF1sFQ+F902QiJYthxXWGHbfyHCLUOLT2Dhbxkmtit/8ZJCrsjc35/jQWK4mEsqKJi/JgsB
	DMgvU=
X-Received: by 2002:a17:90b:1b41:b0:340:d511:e167 with SMTP id 98e67ed59e1d1-35273028655mr13918915a91.0.1768979699955;
        Tue, 20 Jan 2026 23:14:59 -0800 (PST)
Received: from k.. ([223.74.152.156])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352fb191a62sm507411a91.5.2026.01.20.23.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 23:14:59 -0800 (PST)
From: Nadi Ke <kenadicanady@gmail.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	orsonzhai@gmail.com,
	baolin.wang@linux.alibaba.com
Cc: zhang.lyra@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nadi Ke <kenadicanady@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: clock: sprd: add SC9832E clock controller
Date: Wed, 21 Jan 2026 15:14:11 +0800
Message-Id: <20260121071412.256215-2-kenadicanady@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121071412.256215-1-kenadicanady@gmail.com>
References: <20260121071412.256215-1-kenadicanady@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-257759-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,linux.alibaba.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[kenadicanady@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,402b0000:email,1.72.16.96:email]
X-Rspamd-Queue-Id: B632052AF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SC9832E clock architecture involves several PLLs and gates.
Some gate clocks are located within the PMU global register area.
These are modeled as part of the system controller node to reflect
the hardware layout where clock control bits are interleaved with
other system control registers.

Signed-off-by: Nadi Ke <kenadicanady@gmail.com>
---
Changes in v2:
 - Removed the artificial 'sprd,sc9832e-pmu-gate' child node definition.
 - Added '#clock-cells' to the 'sprd,sc9832e-glbregs' node definition.
 
 .../bindings/clock/sprd,sc9832e-clk.yaml      | 182 ++++++++++++++++++
 include/dt-bindings/clock/sprd,sc9832e-clk.h  | 177 +++++++++++++++++
 2 files changed, 359 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
 create mode 100644 include/dt-bindings/clock/sprd,sc9832e-clk.h

diff --git a/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml b/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
new file mode 100644
index 000000000..06c09b184
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
@@ -0,0 +1,182 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/sprd,sc9832e-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Unisoc SC9832E Clock Controllers
+
+maintainers:
+  - Orson Zhai <orsonzhai@gmail.com>
+  - Baolin Wang <baolin.wang7@gmail.com>
+  - Chunyan Zhang <zhang.lyra@gmail.com>
+  - Nadi Ke <kenadicanady@gmail.com>
+
+description: |
+  Unisoc SC9832E Clock Controllers.
+
+  The SC9832E clock architecture uses a mix of independent controllers and
+  sub-nodes within a system controller.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: sprd,sc9832e-glbregs
+          - const: syscon
+      - enum:
+          - sprd,sc9832e-ap-clk
+          - sprd,sc9832e-aon-clk
+          - sprd,sc9832e-apahb-gate
+          - sprd,sc9832e-aonapb-gate
+          - sprd,sc9832e-apapb-gate
+          - sprd,sc9832e-pll
+          - sprd,sc9832e-mpll
+          - sprd,sc9832e-dpll
+          - sprd,sc9832e-rpll
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
+    description:
+      The input parent clock(s) phandle for this clock controller.
+
+  clock-names:
+    minItems: 1
+    maxItems: 6
+
+required:
+  - compatible
+  - '#clock-cells'
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sprd,sc9832e-ap-clk
+    then:
+      required:
+        - reg
+        - clocks
+        - clock-names
+      properties:
+        clocks:
+          items:
+            - description: External 26MHz clock
+            - description: External 1MHz clock
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
+      required:
+        - reg
+        - clocks
+        - clock-names
+      properties:
+        clocks:
+          items:
+            - description: External 4.3MHz clock
+            - description: External 26MHz clock
+            - description: External 32kHz clock
+            - description: External 6.5MHz clock
+            - description: External 13MHz clock
+            - description: External 250kHz clock
+        clock-names:
+          items:
+            - const: ext-4m3
+            - const: ext-26m
+            - const: ext-32k
+            - const: ext-6m5
+            - const: ext-13m
+            - const: ext-250k
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - sprd,sc9832e-pll
+            - sprd,sc9832e-mpll
+            - sprd,sc9832e-dpll
+            - sprd,sc9832e-rpll
+            - sprd,sc9832e-apahb-gate
+            - sprd,sc9832e-aonapb-gate
+            - sprd,sc9832e-apapb-gate
+    then:
+      required:
+        - reg
+        - clocks
+        - clock-names
+      properties:
+        clocks:
+          items:
+            - description: External 26MHz clock
+        clock-names:
+          items:
+            - const: ext-26m
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sprd,sc9832e-glbregs
+    then:
+      required:
+        - reg
+        - "#clock-cells"
+        - clocks
+        - clock-names
+      properties:
+        "#clock-cells":
+          const: 1
+        clocks:
+          items:
+            - description: External 26MHz clock
+        clock-names:
+          items:
+            - const: ext-26m
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sprd,sc9832e-clk.h>
+
+    ap_clk: clock-controller@21500000 {
+      compatible = "sprd,sc9832e-ap-clk";
+      reg = <0x21500000 0x1000>;
+      clocks = <&ext_26m>, <&ext_1m>;
+      clock-names = "ext-26m", "ext-1m";
+      #clock-cells = <1>;
+    };
+
+    pll: clock-controller@403c0000 {
+      compatible = "sprd,sc9832e-pll";
+      reg = <0x403c0000 0x1000>;
+      clocks = <&ext_26m>;
+      clock-names = "ext-26m";
+      #clock-cells = <1>;
+    };
+
+    pmu_controller: syscon@402b0000 {
+      compatible = "sprd,sc9832e-glbregs", "syscon";
+      reg = <0x402b0000 0x4000>;
+      #clock-cells = <1>;
+      clocks = <&ext_26m>;
+      clock-names = "ext-26m";
+    };
+...
+
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


