Return-Path: <devicetree+bounces-113352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B9B9A5587
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 19:51:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACD6D1F2122E
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 17:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5282195FEF;
	Sun, 20 Oct 2024 17:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RmdinBgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF62320E;
	Sun, 20 Oct 2024 17:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729446655; cv=none; b=oxE2yDT6d5Xc7TnbhC+/RB2Jq0dWrG9GOO6Y84p2PBXu9M0gk1+D71LA6yalteEO+4225wztScpMRMWmrzhB2a5tm1w6r17Qft2TTxRQvevNHtzufIj0nCjXppcl8GYDmu83iVhDQavYbQInzQWam1c/2QpKfTB0jELdvyPC96s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729446655; c=relaxed/simple;
	bh=zLnx/p+IleDkmimWQJwPJtJZudEsfFbZjk35aiIcDAY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g+3+xPxOu1TJcfMRJcNSLlOZKjh/Rl8Mi1w6REIRyquOjDs7ifhmlyrr4oYa9L6rnpCKjIP8uSiK1KbYOqRUy2AHVM6yTolxA/prhVlZDqgw+ZIGKUCj9R9Fd+7scbzwbMOjBqPUldPkFCmdIyLhAYcCYwJ1WYYmNGsewjjXxvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RmdinBgx; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-431695fa98bso11468785e9.3;
        Sun, 20 Oct 2024 10:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729446651; x=1730051451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PbJKj+fX+xeqfL+u0abVrVtIZjrAKrt8uPVYyQV4HSc=;
        b=RmdinBgxs4O+uhBbSeQQcuUOy2StciBx7WXBie8RAv8XJRHkZOgLOkMr9KbtMVUTQf
         /FfTnosXlkbpAtZ7tDicFH3/U82snRSu+vYh5QCEE8Z9PQ6qaD1ku/TJ2vTmwxgBbMUR
         rtumrAY5a1MhD8FsZ292y8GGJBN4vnRBaBGGTm1ROEV8DVWw0hSz8/iLbTcXh0qLlT3i
         KPqgjs1bN43k/oZzXSyAlxZZCmKiB3o+0jW8tUQ/Vcb/CX8mHPGNOwcifmGsWAij3q7X
         ThOe3C6PI/kFngaCnTz8/5yBKcdEb2wc81J9ROTXGMPNEmaeOY9kssz+0caysBk2WJx7
         vyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729446651; x=1730051451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PbJKj+fX+xeqfL+u0abVrVtIZjrAKrt8uPVYyQV4HSc=;
        b=u7elGPWJbm4QYBxE3oISjjtliNBLe7T6tBXIif7voBTPiqWU4JDXHa2LjaNASrw43d
         ba/1bedlgIHyy9H3WY9oYTE149Bt/eO+6MCx+QRdDvVuUz9nDgXVn55robZqJbly6aOQ
         Axtlh7lVFfgjDy4NFYU7XBBIpjfAQ6QKvFfSp6vBrbbO68P+VclzcwJxVvUm/VnRbF0A
         bhTxhuhMTE5SsmYOcVbNcfEYFZlWYGvXAEozgo8kSSecKmUUvccoNswTOLGdKYoxNujE
         RueeQE9KTsg1yShhI2cSbsEcLuedDCX35ve/QjSC81tFNdz+hul7FdX8WBzDIl/OFYZd
         /hQg==
X-Forwarded-Encrypted: i=1; AJvYcCWJk0sDvPjakblnvlnvCzevpuWAdZX3TjEentedqLtTQc9UmnuAdQalYLXBtSFz7AM4pXyciFhKv82g@vger.kernel.org, AJvYcCWmQLVNfEK5/MNR4AUXsVyBPM3tpxzKWxtM9Xx1CZcHqOFI9eEJjCKX4U+C6rVA25CQUjqoocKagRdg@vger.kernel.org, AJvYcCXjytEWTmIgwqGNKlrtIHBQVQlC+hRRcSUNcaGVjuI49M0ybF9xLpVRJiAuczI79b4KlMq8rhPPuWkTh/EP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs92K+CKC801+mGGF8X8qPWFc17xif6HKOUoVyBIpqMf6vKUZ0
	kbjIqgAmLpyASDYxbJWuT6bqoMvzQdGcEeCg0AhHx07w6stbef7j
X-Google-Smtp-Source: AGHT+IEE9lSrHOpnai6SW3A5ijQZp3D9abV667tU+R8ea7rc0VocfF/Nut6z+ML5hiHgIaaWoNkxTQ==
X-Received: by 2002:a05:600c:1d28:b0:431:5ab3:d28d with SMTP id 5b1f17b1804b1-431616313femr75771185e9.9.1729446650830;
        Sun, 20 Oct 2024 10:50:50 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f57f89fsm29794305e9.16.2024.10.20.10.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 10:50:50 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: clock: Add Exynos8895 SoC CMU bindings
Date: Sun, 20 Oct 2024 20:48:23 +0300
Message-ID: <20241020174825.375096-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241020174825.375096-1-ivo.ivanov.ivanov1@gmail.com>
References: <20241020174825.375096-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Provide dt-schema documentation for Exynos8895 SoC clock controller.
Add device tree clock binding definitions for the following CMU blocks:
 - CMU_TOP
 - CMU_FSYS0/1
 - CMU_PERIC0/1
 - CMU_PERIS

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../clock/samsung,exynos8895-clock.yaml       | 243 ++++++++
 .../dt-bindings/clock/samsung,exynos8895.h    | 535 ++++++++++++++++++
 2 files changed, 778 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,exynos8895-clock.yaml
 create mode 100644 include/dt-bindings/clock/samsung,exynos8895.h

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos8895-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos8895-clock.yaml
new file mode 100644
index 000000000..0f7710b2f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos8895-clock.yaml
@@ -0,0 +1,243 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/samsung,exynos8895-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos8895 SoC clock controller
+
+maintainers:
+  - Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzk@kernel.org>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+  - Tomasz Figa <tomasz.figa@gmail.com>
+
+description: |
+  Exynos8895 clock controller is comprised of several CMU units, generating
+  clocks for different domains. Those CMU units are modeled as separate device
+  tree nodes, and might depend on each other. The root clock in that root tree
+  is an external clock: OSCCLK (26 MHz). This external clock must be defined
+  as a fixed-rate clock in dts.
+
+  CMU_TOP is a top-level CMU, where all base clocks are prepared using PLLs and
+  dividers; all other clocks of function blocks (other CMUs) are usually
+  derived from CMU_TOP.
+
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All clocks available for usage
+  in clock consumer nodes are defined as preprocessor macros in
+  'include/dt-bindings/clock/samsung,exynos8895.h' header.
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos8895-cmu-top
+      - samsung,exynos8895-cmu-fsys0
+      - samsung,exynos8895-cmu-fsys1
+      - samsung,exynos8895-cmu-peric0
+      - samsung,exynos8895-cmu-peric1
+      - samsung,exynos8895-cmu-peris
+
+  clocks:
+    minItems: 1
+    maxItems: 16
+
+  clock-names:
+    minItems: 1
+    maxItems: 16
+
+  "#clock-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos8895-cmu-top
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+
+        clock-names:
+          items:
+            - const: oscclk
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos8895-cmu-fsys0
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CMU_FSYS0 BUS clock (from CMU_TOP)
+            - description: CMU_FSYS0 DPGTC clock (from CMU_TOP)
+            - description: CMU_FSYS0 MMC_EMBD clock (from CMU_TOP)
+            - description: CMU_FSYS0 UFS_EMBD clock (from CMU_TOP)
+            - description: CMU_FSYS0 USBDRD30 clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: dpgtc
+            - const: mmc_embd
+            - const: ufs_embd
+            - const: usbdrd30
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos8895-cmu-fsys1
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CMU_FSYS1 BUS clock (from CMU_TOP)
+            - description: CMU_FSYS1 MMC_CARD clock (from CMU_TOP)
+            - description: CMU_FSYS1 PCIE clock (from CMU_TOP)
+            - description: CMU_FSYS1 UFS_CARD clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: mmc_card
+            - const: pcie
+            - const: ufs_card
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos8895-cmu-peric0
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CMU_PERIC0 BUS clock (from CMU_TOP)
+            - description: CMU_PERIC0 UART_DBG clock (from CMU_TOP)
+            - description: CMU_PERIC0 USI00 clock (from CMU_TOP)
+            - description: CMU_PERIC0 USI01 clock (from CMU_TOP)
+            - description: CMU_PERIC0 USI02 clock (from CMU_TOP)
+            - description: CMU_PERIC0 USI03 clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: uart_dbg
+            - const: usi00
+            - const: usi01
+            - const: usi02
+            - const: usi03
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos8895-cmu-peric1
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CMU_PERIC1 BUS clock (from CMU_TOP)
+            - description: CMU_PERIC1 SPEEDY2 clock (from CMU_TOP)
+            - description: CMU_PERIC1 SPI_CAM0 clock (from CMU_TOP)
+            - description: CMU_PERIC1 SPI_CAM1 clock (from CMU_TOP)
+            - description: CMU_PERIC1 UART_BT clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI04 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI05 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI06 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI07 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI08 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI09 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI10 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI11 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI12 clock (from CMU_TOP)
+            - description: CMU_PERIC1 USI13 clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: speedy2
+            - const: cam0
+            - const: cam1
+            - const: uart_bt
+            - const: usi04
+            - const: usi05
+            - const: usi06
+            - const: usi07
+            - const: usi08
+            - const: usi09
+            - const: usi10
+            - const: usi11
+            - const: usi12
+            - const: usi13
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos8895-cmu-peris
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CMU_PERIS BUS clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+
+required:
+  - compatible
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - reg
+
+additionalProperties: false
+
+examples:
+  # Clock controller node for CMU_FSYS1
+  - |
+    #include <dt-bindings/clock/samsung,exynos8895.h>
+
+    cmu_fsys1: clock-controller@11400000 {
+        compatible = "samsung,exynos8895-cmu-fsys1";
+        reg = <0x11400000 0x8000>;
+        #clock-cells = <1>;
+
+        clocks = <&oscclk>,
+                 <&cmu_top CLK_DOUT_CMU_FSYS1_BUS>,
+                 <&cmu_top CLK_DOUT_CMU_FSYS1_MMC_CARD>,
+                 <&cmu_top CLK_DOUT_CMU_FSYS1_PCIE>,
+                 <&cmu_top CLK_DOUT_CMU_FSYS1_UFS_CARD>;
+        clock-names = "oscclk", "bus", "mmc_card",
+                      "pcie", "ufs_card";
+    };
+
+...
diff --git a/include/dt-bindings/clock/samsung,exynos8895.h b/include/dt-bindings/clock/samsung,exynos8895.h
new file mode 100644
index 000000000..add55b3bf
--- /dev/null
+++ b/include/dt-bindings/clock/samsung,exynos8895.h
@@ -0,0 +1,535 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (C) 2024 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ * Author: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ *
+ * Device Tree binding constants for Exynos8895 clock controller.
+ */
+
+#ifndef _DT_BINDINGS_CLOCK_EXYNOS8895_H
+#define _DT_BINDINGS_CLOCK_EXYNOS8895_H
+
+/* CMU_TOP */
+#define CLK_FOUT_SHARED0_PLL			1
+#define CLK_FOUT_SHARED1_PLL			2
+#define CLK_FOUT_SHARED2_PLL			3
+#define CLK_FOUT_SHARED3_PLL			4
+#define CLK_FOUT_SHARED4_PLL			5
+#define CLK_MOUT_PLL_SHARED0			6
+#define CLK_MOUT_PLL_SHARED1			7
+#define CLK_MOUT_PLL_SHARED2			8
+#define CLK_MOUT_PLL_SHARED3			9
+#define CLK_MOUT_PLL_SHARED4			10
+#define CLK_MOUT_CP2AP_MIF_CLK_USER		11
+#define CLK_MOUT_CMU_ABOX_CPUABOX		12
+#define CLK_MOUT_CMU_APM_BUS			13
+#define CLK_MOUT_CMU_BUS1_BUS			14
+#define CLK_MOUT_CMU_BUSC_BUS			15
+#define CLK_MOUT_CMU_BUSC_BUSPHSI2C		16
+#define CLK_MOUT_CMU_CAM_BUS			17
+#define CLK_MOUT_CMU_CAM_TPU0			18
+#define CLK_MOUT_CMU_CAM_TPU1			19
+#define CLK_MOUT_CMU_CAM_VRA			20
+#define CLK_MOUT_CMU_CIS_CLK0			21
+#define CLK_MOUT_CMU_CIS_CLK1			22
+#define CLK_MOUT_CMU_CIS_CLK2			23
+#define CLK_MOUT_CMU_CIS_CLK3			24
+#define CLK_MOUT_CMU_CORE_BUS			25
+#define CLK_MOUT_CMU_CPUCL0_SWITCH		26
+#define CLK_MOUT_CMU_CPUCL1_SWITCH		27
+#define CLK_MOUT_CMU_DBG_BUS			28
+#define CLK_MOUT_CMU_DCAM_BUS			29
+#define CLK_MOUT_CMU_DCAM_IMGD			30
+#define CLK_MOUT_CMU_DPU_BUS			31
+#define CLK_MOUT_CMU_DROOPDETECTOR		32
+#define CLK_MOUT_CMU_DSP_BUS			33
+#define CLK_MOUT_CMU_FSYS0_BUS			34
+#define CLK_MOUT_CMU_FSYS0_DPGTC		35
+#define CLK_MOUT_CMU_FSYS0_MMC_EMBD		36
+#define CLK_MOUT_CMU_FSYS0_UFS_EMBD		37
+#define CLK_MOUT_CMU_FSYS0_USBDRD30		38
+#define CLK_MOUT_CMU_FSYS1_BUS			39
+#define CLK_MOUT_CMU_FSYS1_MMC_CARD		40
+#define CLK_MOUT_CMU_FSYS1_PCIE			41
+#define CLK_MOUT_CMU_FSYS1_UFS_CARD		42
+#define CLK_MOUT_CMU_G2D_G2D			43
+#define CLK_MOUT_CMU_G2D_JPEG			44
+#define CLK_MOUT_CMU_HPM			45
+#define CLK_MOUT_CMU_IMEM_BUS			46
+#define CLK_MOUT_CMU_ISPHQ_BUS			47
+#define CLK_MOUT_CMU_ISPLP_BUS			48
+#define CLK_MOUT_CMU_IVA_BUS			49
+#define CLK_MOUT_CMU_MFC_BUS			50
+#define CLK_MOUT_CMU_MIF_SWITCH			51
+#define CLK_MOUT_CMU_PERIC0_BUS			52
+#define CLK_MOUT_CMU_PERIC0_UART_DBG		53
+#define CLK_MOUT_CMU_PERIC0_USI00		54
+#define CLK_MOUT_CMU_PERIC0_USI01		55
+#define CLK_MOUT_CMU_PERIC0_USI02		56
+#define CLK_MOUT_CMU_PERIC0_USI03		57
+#define CLK_MOUT_CMU_PERIC1_BUS			58
+#define CLK_MOUT_CMU_PERIC1_SPEEDY2		59
+#define CLK_MOUT_CMU_PERIC1_SPI_CAM0		60
+#define CLK_MOUT_CMU_PERIC1_SPI_CAM1		61
+#define CLK_MOUT_CMU_PERIC1_UART_BT		62
+#define CLK_MOUT_CMU_PERIC1_USI04		63
+#define CLK_MOUT_CMU_PERIC1_USI05		64
+#define CLK_MOUT_CMU_PERIC1_USI06		65
+#define CLK_MOUT_CMU_PERIC1_USI07		66
+#define CLK_MOUT_CMU_PERIC1_USI08		67
+#define CLK_MOUT_CMU_PERIC1_USI09		68
+#define CLK_MOUT_CMU_PERIC1_USI10		69
+#define CLK_MOUT_CMU_PERIC1_USI11		70
+#define CLK_MOUT_CMU_PERIC1_USI12		71
+#define CLK_MOUT_CMU_PERIC1_USI13		72
+#define CLK_MOUT_CMU_PERIS_BUS			73
+#define CLK_MOUT_CMU_SRDZ_BUS			74
+#define CLK_MOUT_CMU_SRDZ_IMGD			75
+#define CLK_MOUT_CMU_VPU_BUS			76
+#define CLK_DOUT_CMU_ABOX_CPUABOX		77
+#define CLK_DOUT_CMU_APM_BUS			78
+#define CLK_DOUT_CMU_BUS1_BUS			79
+#define CLK_DOUT_CMU_BUSC_BUS			80
+#define CLK_DOUT_CMU_BUSC_BUSPHSI2C		81
+#define CLK_DOUT_CMU_CAM_BUS			82
+#define CLK_DOUT_CMU_CAM_TPU0			83
+#define CLK_DOUT_CMU_CAM_TPU1			84
+#define CLK_DOUT_CMU_CAM_VRA			85
+#define CLK_DOUT_CMU_CIS_CLK0			86
+#define CLK_DOUT_CMU_CIS_CLK1			87
+#define CLK_DOUT_CMU_CIS_CLK2			88
+#define CLK_DOUT_CMU_CIS_CLK3			89
+#define CLK_DOUT_CMU_CORE_BUS			90
+#define CLK_DOUT_CMU_CPUCL0_SWITCH		91
+#define CLK_DOUT_CMU_CPUCL1_SWITCH		92
+#define CLK_DOUT_CMU_DBG_BUS			93
+#define CLK_DOUT_CMU_DCAM_BUS			94
+#define CLK_DOUT_CMU_DCAM_IMGD			95
+#define CLK_DOUT_CMU_DPU_BUS			96
+#define CLK_DOUT_CMU_DSP_BUS			97
+#define CLK_DOUT_CMU_FSYS0_BUS			98
+#define CLK_DOUT_CMU_FSYS0_DPGTC		99
+#define CLK_DOUT_CMU_FSYS0_MMC_EMBD		100
+#define CLK_DOUT_CMU_FSYS0_UFS_EMBD		101
+#define CLK_DOUT_CMU_FSYS0_USBDRD30		102
+#define CLK_DOUT_CMU_FSYS1_BUS			103
+#define CLK_DOUT_CMU_FSYS1_MMC_CARD		104
+#define CLK_DOUT_CMU_FSYS1_UFS_CARD		105
+#define CLK_DOUT_CMU_G2D_G2D			106
+#define CLK_DOUT_CMU_G2D_JPEG			107
+#define CLK_DOUT_CMU_G3D_SWITCH			108
+#define CLK_DOUT_CMU_HPM			109
+#define CLK_DOUT_CMU_IMEM_BUS			110
+#define CLK_DOUT_CMU_ISPHQ_BUS			111
+#define CLK_DOUT_CMU_ISPLP_BUS			112
+#define CLK_DOUT_CMU_IVA_BUS			113
+#define CLK_DOUT_CMU_MFC_BUS			114
+#define CLK_DOUT_CMU_MODEM_SHARED0		115
+#define CLK_DOUT_CMU_MODEM_SHARED1		116
+#define CLK_DOUT_CMU_PERIC0_BUS			117
+#define CLK_DOUT_CMU_PERIC0_UART_DBG		118
+#define CLK_DOUT_CMU_PERIC0_USI00		119
+#define CLK_DOUT_CMU_PERIC0_USI01		120
+#define CLK_DOUT_CMU_PERIC0_USI02		121
+#define CLK_DOUT_CMU_PERIC0_USI03		122
+#define CLK_DOUT_CMU_PERIC1_BUS			123
+#define CLK_DOUT_CMU_PERIC1_SPEEDY2		124
+#define CLK_DOUT_CMU_PERIC1_SPI_CAM0		125
+#define CLK_DOUT_CMU_PERIC1_SPI_CAM1		126
+#define CLK_DOUT_CMU_PERIC1_UART_BT		127
+#define CLK_DOUT_CMU_PERIC1_USI04		128
+#define CLK_DOUT_CMU_PERIC1_USI05		129
+#define CLK_DOUT_CMU_PERIC1_USI06		130
+#define CLK_DOUT_CMU_PERIC1_USI07		131
+#define CLK_DOUT_CMU_PERIC1_USI08		132
+#define CLK_DOUT_CMU_PERIC1_USI09		133
+#define CLK_DOUT_CMU_PERIC1_USI10		134
+#define CLK_DOUT_CMU_PERIC1_USI11		135
+#define CLK_DOUT_CMU_PERIC1_USI12		136
+#define CLK_DOUT_CMU_PERIC1_USI13		137
+#define CLK_DOUT_CMU_PERIS_BUS			138
+#define CLK_DOUT_CMU_SRDZ_BUS			139
+#define CLK_DOUT_CMU_SRDZ_IMGD			140
+#define CLK_DOUT_CMU_VPU_BUS			141
+#define CLK_DOUT_CMU_SHARED0_DIV2		142
+#define CLK_DOUT_CMU_SHARED0_DIV4		143
+#define CLK_DOUT_CMU_SHARED1_DIV2		144
+#define CLK_DOUT_CMU_SHARED1_DIV4		145
+#define CLK_DOUT_CMU_SHARED2_DIV2		146
+#define CLK_DOUT_CMU_SHARED3_DIV2		147
+#define CLK_DOUT_CMU_SHARED4_DIV2		148
+#define CLK_DOUT_CMU_FSYS1_PCIE			149
+#define CLK_DOUT_CMU_CP2AP_MIF_CLK_DIV2		150
+#define CLK_DOUT_CMU_CMU_OTP			151
+#define CLK_GOUT_CMU_DROOPDETECTOR		152
+#define CLK_GOUT_CMU_MIF_SWITCH			153
+#define CLK_GOUT_CMU_ABOX_CPUABOX		154
+#define CLK_GOUT_CMU_APM_BUS			155
+#define CLK_GOUT_CMU_BUS1_BUS			156
+#define CLK_GOUT_CMU_BUSC_BUS			157
+#define CLK_GOUT_CMU_BUSC_BUSPHSI2C		158
+#define CLK_GOUT_CMU_CAM_BUS			159
+#define CLK_GOUT_CMU_CAM_TPU0			160
+#define CLK_GOUT_CMU_CAM_TPU1			161
+#define CLK_GOUT_CMU_CAM_VRA			162
+#define CLK_GOUT_CMU_CIS_CLK0			163
+#define CLK_GOUT_CMU_CIS_CLK1			164
+#define CLK_GOUT_CMU_CIS_CLK2			165
+#define CLK_GOUT_CMU_CIS_CLK3			166
+#define CLK_GOUT_CMU_CORE_BUS			167
+#define CLK_GOUT_CMU_CPUCL0_SWITCH		168
+#define CLK_GOUT_CMU_CPUCL1_SWITCH		169
+#define CLK_GOUT_CMU_DBG_BUS			170
+#define CLK_GOUT_CMU_DCAM_BUS			171
+#define CLK_GOUT_CMU_DCAM_IMGD			172
+#define CLK_GOUT_CMU_DPU_BUS			173
+#define CLK_GOUT_CMU_DSP_BUS			174
+#define CLK_GOUT_CMU_FSYS0_BUS			175
+#define CLK_GOUT_CMU_FSYS0_DPGTC		176
+#define CLK_GOUT_CMU_FSYS0_MMC_EMBD		177
+#define CLK_GOUT_CMU_FSYS0_UFS_EMBD		178
+#define CLK_GOUT_CMU_FSYS0_USBDRD30		179
+#define CLK_GOUT_CMU_FSYS1_BUS			180
+#define CLK_GOUT_CMU_FSYS1_MMC_CARD		181
+#define CLK_GOUT_CMU_FSYS1_PCIE			182
+#define CLK_GOUT_CMU_FSYS1_UFS_CARD		183
+#define CLK_GOUT_CMU_G2D_G2D			184
+#define CLK_GOUT_CMU_G2D_JPEG			185
+#define CLK_GOUT_CMU_G3D_SWITCH			186
+#define CLK_GOUT_CMU_HPM			187
+#define CLK_GOUT_CMU_IMEM_BUS			188
+#define CLK_GOUT_CMU_ISPHQ_BUS			189
+#define CLK_GOUT_CMU_ISPLP_BUS			190
+#define CLK_GOUT_CMU_IVA_BUS			191
+#define CLK_GOUT_CMU_MFC_BUS			192
+#define CLK_GOUT_CMU_MODEM_SHARED0		193
+#define CLK_GOUT_CMU_MODEM_SHARED1		194
+#define CLK_GOUT_CMU_PERIC0_BUS			195
+#define CLK_GOUT_CMU_PERIC0_UART_DBG		196
+#define CLK_GOUT_CMU_PERIC0_USI00		197
+#define CLK_GOUT_CMU_PERIC0_USI01		198
+#define CLK_GOUT_CMU_PERIC0_USI02		199
+#define CLK_GOUT_CMU_PERIC0_USI03		200
+#define CLK_GOUT_CMU_PERIC1_BUS			201
+#define CLK_GOUT_CMU_PERIC1_SPEEDY2		202
+#define CLK_GOUT_CMU_PERIC1_SPI_CAM0		203
+#define CLK_GOUT_CMU_PERIC1_SPI_CAM1		204
+#define CLK_GOUT_CMU_PERIC1_UART_BT		205
+#define CLK_GOUT_CMU_PERIC1_USI04		206
+#define CLK_GOUT_CMU_PERIC1_USI05		207
+#define CLK_GOUT_CMU_PERIC1_USI06		208
+#define CLK_GOUT_CMU_PERIC1_USI07		209
+#define CLK_GOUT_CMU_PERIC1_USI08		210
+#define CLK_GOUT_CMU_PERIC1_USI09		211
+#define CLK_GOUT_CMU_PERIC1_USI10		212
+#define CLK_GOUT_CMU_PERIC1_USI11		213
+#define CLK_GOUT_CMU_PERIC1_USI12		214
+#define CLK_GOUT_CMU_PERIC1_USI13		215
+#define CLK_GOUT_CMU_PERIS_BUS			216
+#define CLK_GOUT_CMU_SRDZ_BUS			217
+#define CLK_GOUT_CMU_SRDZ_IMGD			218
+#define CLK_GOUT_CMU_VPU_BUS			219
+
+/* CMU_PERIS */
+#define CLK_MOUT_PERIS_BUS_USER				1
+#define CLK_MOUT_PERIS_GIC				2
+#define CLK_GOUT_PERIS_CMU_PERIS_PCLK			3
+#define CLK_GOUT_PERIS_AD_AXI_P_PERIS_ACLKM		4
+#define CLK_GOUT_PERIS_AD_AXI_P_PERIS_ACLKS		5
+#define CLK_GOUT_PERIS_AXI2APB_PERISP0_ACLK		6
+#define CLK_GOUT_PERIS_AXI2APB_PERISP1_ACLK		7
+#define CLK_GOUT_PERIS_BUSIF_TMU_PCLK			8
+#define CLK_GOUT_PERIS_GIC_CLK				9
+#define CLK_GOUT_PERIS_LHM_AXI_P_PERIS_I_CLK		10
+#define CLK_GOUT_PERIS_MCT_PCLK				11
+#define CLK_GOUT_PERIS_OTP_CON_BIRA_PCLK		12
+#define CLK_GOUT_PERIS_OTP_CON_TOP_PCLK			13
+#define CLK_GOUT_PERIS_PMU_PERIS_PCLK			14
+#define CLK_GOUT_PERIS_RSTNSYNC_CLK_PERIS_BUSP_CLK	15
+#define CLK_GOUT_PERIS_RSTNSYNC_CLK_PERIS_GIC_CLK	16
+#define CLK_GOUT_PERIS_SYSREG_PERIS_PCLK		17
+#define CLK_GOUT_PERIS_TZPC00_PCLK			18
+#define CLK_GOUT_PERIS_TZPC01_PCLK			19
+#define CLK_GOUT_PERIS_TZPC02_PCLK			20
+#define CLK_GOUT_PERIS_TZPC03_PCLK			21
+#define CLK_GOUT_PERIS_TZPC04_PCLK			22
+#define CLK_GOUT_PERIS_TZPC05_PCLK			23
+#define CLK_GOUT_PERIS_TZPC06_PCLK			24
+#define CLK_GOUT_PERIS_TZPC07_PCLK			25
+#define CLK_GOUT_PERIS_TZPC08_PCLK			26
+#define CLK_GOUT_PERIS_TZPC09_PCLK			27
+#define CLK_GOUT_PERIS_TZPC10_PCLK			28
+#define CLK_GOUT_PERIS_TZPC11_PCLK			29
+#define CLK_GOUT_PERIS_TZPC12_PCLK			30
+#define CLK_GOUT_PERIS_TZPC13_PCLK			31
+#define CLK_GOUT_PERIS_TZPC14_PCLK			32
+#define CLK_GOUT_PERIS_TZPC15_PCLK			33
+#define CLK_GOUT_PERIS_WDT_CLUSTER0_PCLK		34
+#define CLK_GOUT_PERIS_WDT_CLUSTER1_PCLK		35
+#define CLK_GOUT_PERIS_XIU_P_PERIS_ACLK			36
+
+/* CMU_CORE */
+#define CLK_MOUT_CORE_BUS_USER				1
+#define CLK_DOUT_CORE_BUSP				2
+#define CLK_GOUT_CORE_CORE_CMU_CORE_PCLK		3
+#define CLK_GOUT_CORE_HPM_CORE_HPM_TARGETCLK_C		4
+#define CLK_GOUT_CORE_ADM_APB_G_BDU_PCLKM		5
+#define CLK_GOUT_CORE_APBBR_CCI_PCLK			6
+#define CLK_GOUT_CORE_AXI2APB_CORE_ACLK			7
+#define CLK_GOUT_CORE_AXI2APB_CORE_TP_ACLK		8
+#define CLK_GOUT_CORE_BDU_I_CLK				9
+#define CLK_GOUT_CORE_BDU_I_PCLK			10
+#define CLK_GOUT_CORE_BUSIF_HPMCORE_PCLK		11
+#define CLK_GOUT_CORE_CCI_CLK				12
+#define CLK_GOUT_CORE_CCI_PCLK				13
+#define CLK_GOUT_CORE_LHM_ACE_D0_G3D_I_CLK		14
+#define CLK_GOUT_CORE_LHM_ACE_D1_G3D_I_CLK		15
+#define CLK_GOUT_CORE_LHM_ACE_D2_G3D_I_CLK		16
+#define CLK_GOUT_CORE_LHM_ACE_D3_G3D_I_CLK		17
+#define CLK_GOUT_CORE_LHM_ACE_D_CPUCL1_I_CLK		18
+#define CLK_GOUT_CORE_LHM_AXI_D_CP_I_CLK		19
+#define CLK_GOUT_CORE_LHM_AXI_P_CP_I_CLK		20
+#define CLK_GOUT_CORE_LHM_CPACE_D_CPUCL0_I_CLK		21
+#define CLK_GOUT_CORE_LHM_DBG_G0_DMC_I_CLK		22
+#define CLK_GOUT_CORE_LHM_DBG_G1_DMC_I_CLK		23
+#define CLK_GOUT_CORE_LHM_DBG_G2_DMC_I_CLK		24
+#define CLK_GOUT_CORE_LHM_DBG_G3_DMC_I_CLK		25
+#define CLK_GOUT_CORE_LHS_ATB_T_BDU_I_CLK		26
+#define CLK_GOUT_CORE_LHS_AXI_P_CPUCL0_I_CLK		27
+#define CLK_GOUT_CORE_LHS_AXI_P_CPUCL1_I_CLK		28
+#define CLK_GOUT_CORE_LHS_AXI_P_DBG_I_CLK		29
+#define CLK_GOUT_CORE_LHS_AXI_P_G3D_I_CLK		30
+#define CLK_GOUT_CORE_LHS_AXI_P_IMEM_I_CLK		31
+#define CLK_GOUT_CORE_LHS_PSCDC_D_MIF0_I_CLK		32
+#define CLK_GOUT_CORE_LHS_PSCDC_D_MIF1_I_CLK		33
+#define CLK_GOUT_CORE_LHS_PSCDC_D_MIF2_I_CLK		34
+#define CLK_GOUT_CORE_LHS_PSCDC_D_MIF3_I_CLK		35
+#define CLK_GOUT_CORE_MPACE2AXI_0_CLK			36
+#define CLK_GOUT_CORE_MPACE2AXI_1_CLK			37
+#define CLK_GOUT_CORE_PMU_CORE_PCLK			38
+#define CLK_GOUT_CORE_PPCFW_G3D_ACLK			39
+#define CLK_GOUT_CORE_PPCFW_G3D_PCLK			40
+#define CLK_GOUT_CORE_BCMPPC_CCI_ACLK			41
+#define CLK_GOUT_CORE_BCMPPC_CCI_PCLK			42
+#define CLK_GOUT_CORE_BCM_CPUCL0_ACLK			43
+#define CLK_GOUT_CORE_BCM_CPUCL0_PCLK			44
+#define CLK_GOUT_CORE_BCM_CPUCL1_ACLK			45
+#define CLK_GOUT_CORE_BCM_CPUCL1_PCLK			46
+#define CLK_GOUT_CORE_BCM_G3D0_ACLK			47
+#define CLK_GOUT_CORE_BCM_G3D0_PCLK			48
+#define CLK_GOUT_CORE_BCM_G3D1_ACLK			49
+#define CLK_GOUT_CORE_BCM_G3D1_PCLK			50
+#define CLK_GOUT_CORE_BCM_G3D2_ACLK			51
+#define CLK_GOUT_CORE_BCM_G3D2_PCLK			52
+#define CLK_GOUT_CORE_BCM_G3D3_ACLK			53
+#define CLK_GOUT_CORE_BCM_G3D3_PCLK			54
+#define CLK_GOUT_CORE_RSTNSYNC_CLK_CORE_BUSD_CLK	55
+#define CLK_GOUT_CORE_RSTNSYNC_CLK_CORE_BUSP_CLK	56
+#define CLK_GOUT_CORE_SYSREG_CORE_PCLK			57
+#define CLK_GOUT_CORE_TREX_D_CORE_ACLK			58
+#define CLK_GOUT_CORE_TREX_D_CORE_PCLK			59
+#define CLK_GOUT_CORE_TREX_P0_CORE_ACLK_CORE		60
+#define CLK_GOUT_CORE_TREX_P0_CORE_PCLK			61
+#define CLK_GOUT_CORE_TREX_P0_CORE_PCLK_CORE		62
+#define CLK_GOUT_CORE_TREX_P1_CORE_PCLK			63
+#define CLK_GOUT_CORE_TREX_P1_CORE_PCLK_CORE		64
+
+/* CMU_FSYS0 */
+#define CLK_MOUT_FSYS0_BUS_USER				1
+#define CLK_MOUT_FSYS0_DPGTC_USER			2
+#define CLK_MOUT_FSYS0_MMC_EMBD_USER			3
+#define CLK_MOUT_FSYS0_UFS_EMBD_USER			4
+#define CLK_MOUT_FSYS0_USBDRD30_USER			5
+#define CLK_GOUT_FSYS0_FSYS0_CMU_FSYS0_PCLK		6
+#define CLK_GOUT_FSYS0_AHBBR_FSYS0_HCLK			7
+#define CLK_GOUT_FSYS0_AXI2AHB_FSYS0_ACLK		8
+#define CLK_GOUT_FSYS0_AXI2AHB_USB_FSYS0_ACLK		9
+#define CLK_GOUT_FSYS0_AXI2APB_FSYS0_ACLK		10
+#define CLK_GOUT_FSYS0_BTM_FSYS0_I_ACLK			11
+#define CLK_GOUT_FSYS0_BTM_FSYS0_I_PCLK			12
+#define CLK_GOUT_FSYS0_DP_LINK_I_GTC_EXT_CLK		13
+#define CLK_GOUT_FSYS0_DP_LINK_I_PCLK			14
+#define CLK_GOUT_FSYS0_ETR_MIU_I_ACLK			15
+#define CLK_GOUT_FSYS0_ETR_MIU_I_PCLK			16
+#define CLK_GOUT_FSYS0_GPIO_FSYS0_PCLK			17
+#define CLK_GOUT_FSYS0_LHM_AXI_D_USBTV_I_CLK		18
+#define CLK_GOUT_FSYS0_LHM_AXI_G_ETR_I_CLK		19
+#define CLK_GOUT_FSYS0_LHM_AXI_P_FSYS0_I_CLK		20
+#define CLK_GOUT_FSYS0_LHS_ACEL_D_FSYS0_I_CLK		21
+#define CLK_GOUT_FSYS0_MMC_EMBD_I_ACLK			22
+#define CLK_GOUT_FSYS0_MMC_EMBD_SDCLKIN			23
+#define CLK_GOUT_FSYS0_PMU_FSYS0_PCLK			24
+#define CLK_GOUT_FSYS0_BCM_FSYS0_ACLK			25
+#define CLK_GOUT_FSYS0_BCM_FSYS0_PCLK			26
+#define CLK_GOUT_FSYS0_RSTNSYNC_CLK_FSYS0_BUS_CLK	27
+#define CLK_GOUT_FSYS0_SYSREG_FSYS0_PCLK		28
+#define CLK_GOUT_FSYS0_UFS_EMBD_I_ACLK			29
+#define CLK_GOUT_FSYS0_UFS_EMBD_I_CLK_UNIPRO		30
+#define CLK_GOUT_FSYS0_UFS_EMBD_I_FMP_CLK		31
+#define CLK_GOUT_FSYS0_USBTV_I_USB30DRD_ACLK		32
+#define CLK_GOUT_FSYS0_USBTV_I_USB30DRD_REF_CLK		33
+#define CLK_GOUT_FSYS0_USBTV_I_USB30DRD_SUSPEND_CLK	34
+#define CLK_GOUT_FSYS0_USBTV_I_USBTVH_AHB_CLK		35
+#define CLK_GOUT_FSYS0_USBTV_I_USBTVH_CORE_CLK		36
+#define CLK_GOUT_FSYS0_USBTV_I_USBTVH_XIU_CLK		37
+#define CLK_GOUT_FSYS0_US_D_FSYS0_USB_ACLK		38
+#define CLK_GOUT_FSYS0_XIU_D_FSYS0_ACLK			39
+#define CLK_GOUT_FSYS0_XIU_D_FSYS0_USB_ACLK		40
+#define CLK_GOUT_FSYS0_XIU_P_FSYS0_ACLK			41
+
+/* CMU_FSYS1 */
+#define CLK_MOUT_FSYS1_BUS_USER								1
+#define CLK_MOUT_FSYS1_MMC_CARD_USER							2
+#define CLK_MOUT_FSYS1_PCIE_USER							3
+#define CLK_MOUT_FSYS1_UFS_CARD_USER							4
+#define CLK_GOUT_FSYS1_PCIE_PHY_REF_CLK_IN						5
+#define CLK_GOUT_FSYS1_ADM_AHB_SSS_HCLKM						6
+#define CLK_GOUT_FSYS1_AHBBR_FSYS1_HCLK							7
+#define CLK_GOUT_FSYS1_AXI2AHB_FSYS1_ACLK						8
+#define CLK_GOUT_FSYS1_AXI2APB_FSYS1P0_ACLK						9
+#define CLK_GOUT_FSYS1_AXI2APB_FSYS1P1_ACLK						10
+#define CLK_GOUT_FSYS1_BTM_FSYS1_I_ACLK							11
+#define CLK_GOUT_FSYS1_BTM_FSYS1_I_PCLK							12
+#define CLK_GOUT_FSYS1_FSYS1_CMU_FSYS1_PCLK						13
+#define CLK_GOUT_FSYS1_GPIO_FSYS1_PCLK							14
+#define CLK_GOUT_FSYS1_LHM_AXI_P_FSYS1_I_CLK						15
+#define CLK_GOUT_FSYS1_LHS_ACEL_D_FSYS1_I_CLK						16
+#define CLK_GOUT_FSYS1_MMC_CARD_I_ACLK							17
+#define CLK_GOUT_FSYS1_MMC_CARD_SDCLKIN							18
+#define CLK_GOUT_FSYS1_PCIE_DBI_ACLK_0							19
+#define CLK_GOUT_FSYS1_PCIE_DBI_ACLK_1							20
+#define CLK_GOUT_FSYS1_PCIE_IEEE1500_WRAPPER_FOR_PCIE_PHY_LC_X2_INST_0_I_SCL_APB_PCLK	21
+#define CLK_GOUT_FSYS1_PCIE_MSTR_ACLK_0							22
+#define CLK_GOUT_FSYS1_PCIE_MSTR_ACLK_1							23
+#define CLK_GOUT_FSYS1_PCIE_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK			24
+#define CLK_GOUT_FSYS1_PCIE_PCIE_SUB_CTRL_INST_1_I_DRIVER_APB_CLK			25
+#define CLK_GOUT_FSYS1_PCIE_PIPE2_DIGITAL_X2_WRAP_INST_0_I_APB_PCLK_SCL			26
+#define CLK_GOUT_FSYS1_PCIE_SLV_ACLK_0							27
+#define CLK_GOUT_FSYS1_PCIE_SLV_ACLK_1							28
+#define CLK_GOUT_FSYS1_PMU_FSYS1_PCLK							29
+#define CLK_GOUT_FSYS1_BCM_FSYS1_ACLK							30
+#define CLK_GOUT_FSYS1_BCM_FSYS1_PCLK							31
+#define CLK_GOUT_FSYS1_RSTNSYNC_CLK_FSYS1_BUS_CLK					32
+#define CLK_GOUT_FSYS1_RTIC_I_ACLK							33
+#define CLK_GOUT_FSYS1_RTIC_I_PCLK							34
+#define CLK_GOUT_FSYS1_SSS_I_ACLK							35
+#define CLK_GOUT_FSYS1_SSS_I_PCLK							36
+#define CLK_GOUT_FSYS1_SYSREG_FSYS1_PCLK						37
+#define CLK_GOUT_FSYS1_TOE_WIFI0_I_CLK							38
+#define CLK_GOUT_FSYS1_TOE_WIFI1_I_CLK							39
+#define CLK_GOUT_FSYS1_UFS_CARD_I_ACLK							40
+#define CLK_GOUT_FSYS1_UFS_CARD_I_CLK_UNIPRO						41
+#define CLK_GOUT_FSYS1_UFS_CARD_I_FMP_CLK						42
+#define CLK_GOUT_FSYS1_XIU_D_FSYS1_ACLK							43
+#define CLK_GOUT_FSYS1_XIU_P_FSYS1_ACLK							44
+
+/* CMU_G3D */
+#define CLK_FOUT_G3D_PLL				1
+#define CLK_MOUT_G3D_PLL				2
+#define CLK_MOUT_G3D_SWITCH_USER			3
+#define CLK_MOUT_G3D_BUSD				4
+#define CLK_DOUT_G3D_BUSP				5
+#define CLK_GOUT_G3D_AGPU				6
+#define CLK_GOUT_G3D_AXI2APB_G3D_ACLK			7
+#define CLK_GOUT_G3D_BUSIF_HPMG3D_PCLK			8
+#define CLK_GOUT_G3D_LHM_AXI_P_G3D_I_CLK		9
+#define CLK_GOUT_G3D_LHS_AXI_G3DSFR_I_CLK		10
+#define CLK_GOUT_G3D_PMU_G3D_PCLK			11
+#define CLK_GOUT_G3D_RSTNSYNC_CLK_G3D_BUSP_CLK		12
+#define CLK_GOUT_G3D_SYSREG_G3D_PCLK			13
+#define CLK_GOUT_G3D_XIU_P_G3D_ACLK			14
+
+/* CMU_PERIC0 */
+#define CLK_MOUT_PERIC0_BUS_USER			1
+#define CLK_MOUT_PERIC0_UART_DBG_USER			2
+#define CLK_MOUT_PERIC0_USI00_USER			3
+#define CLK_MOUT_PERIC0_USI01_USER			4
+#define CLK_MOUT_PERIC0_USI02_USER			5
+#define CLK_MOUT_PERIC0_USI03_USER			6
+#define CLK_GOUT_PERIC0_PERIC0_CMU_PERIC0_PCLK		7
+#define CLK_GOUT_PERIC0_AXI2APB_PERIC0_ACLK		8
+#define CLK_GOUT_PERIC0_GPIO_PERIC0_PCLK		9
+#define CLK_GOUT_PERIC0_LHM_AXI_P_PERIC0_I_CLK		10
+#define CLK_GOUT_PERIC0_PMU_PERIC0_PCLK			11
+#define CLK_GOUT_PERIC0_PWM_I_PCLK_S0			12
+#define CLK_GOUT_PERIC0_RSTNSYNC_CLK_PERIC0_BUSP_CLK	13
+#define CLK_GOUT_PERIC0_SPEEDY2_TSP_CLK			14
+#define CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK		15
+#define CLK_GOUT_PERIC0_UART_DBG_EXT_UCLK		16
+#define CLK_GOUT_PERIC0_UART_DBG_PCLK			17
+#define CLK_GOUT_PERIC0_USI00_I_PCLK			18
+#define CLK_GOUT_PERIC0_USI00_I_SCLK_USI		19
+#define CLK_GOUT_PERIC0_USI01_I_PCLK			20
+#define CLK_GOUT_PERIC0_USI01_I_SCLK_USI		21
+#define CLK_GOUT_PERIC0_USI02_I_PCLK			22
+#define CLK_GOUT_PERIC0_USI02_I_SCLK_USI		23
+#define CLK_GOUT_PERIC0_USI03_I_PCLK			24
+#define CLK_GOUT_PERIC0_USI03_I_SCLK_USI		25
+
+/* CMU_PERIC1 */
+#define CLK_MOUT_PERIC1_BUS_USER			1
+#define CLK_MOUT_PERIC1_SPEEDY2_USER			2
+#define CLK_MOUT_PERIC1_SPI_CAM0_USER			3
+#define CLK_MOUT_PERIC1_SPI_CAM1_USER			4
+#define CLK_MOUT_PERIC1_UART_BT_USER			5
+#define CLK_MOUT_PERIC1_USI04_USER			6
+#define CLK_MOUT_PERIC1_USI05_USER			7
+#define CLK_MOUT_PERIC1_USI06_USER			8
+#define CLK_MOUT_PERIC1_USI07_USER			9
+#define CLK_MOUT_PERIC1_USI08_USER			10
+#define CLK_MOUT_PERIC1_USI09_USER			11
+#define CLK_MOUT_PERIC1_USI10_USER			12
+#define CLK_MOUT_PERIC1_USI11_USER			13
+#define CLK_MOUT_PERIC1_USI12_USER			14
+#define CLK_MOUT_PERIC1_USI13_USER			15
+#define CLK_GOUT_PERIC1_PERIC1_CMU_PERIC1_PCLK		16
+#define CLK_GOUT_PERIC1_RSTNSYNC_CLK_PERIC1_SPEEDY2_CLK	17
+#define CLK_GOUT_PERIC1_AXI2APB_PERIC1P0_ACLK		18
+#define CLK_GOUT_PERIC1_AXI2APB_PERIC1P1_ACLK		19
+#define CLK_GOUT_PERIC1_AXI2APB_PERIC1P2_ACLK		20
+#define CLK_GOUT_PERIC1_GPIO_PERIC1_PCLK		21
+#define CLK_GOUT_PERIC1_HSI2C_CAM0_IPCLK		22
+#define CLK_GOUT_PERIC1_HSI2C_CAM1_IPCLK		23
+#define CLK_GOUT_PERIC1_HSI2C_CAM2_IPCLK		24
+#define CLK_GOUT_PERIC1_HSI2C_CAM3_IPCLK		25
+#define CLK_GOUT_PERIC1_LHM_AXI_P_PERIC1_I_CLK		26
+#define CLK_GOUT_PERIC1_PMU_PERIC1_PCLK			27
+#define CLK_GOUT_PERIC1_RSTNSYNC_CLK_PERIC1_BUSP_CLK	28
+#define CLK_GOUT_PERIC1_SPEEDY2_DDI1_CLK		29
+#define CLK_GOUT_PERIC1_SPEEDY2_DDI1_SCLK		30
+#define CLK_GOUT_PERIC1_SPEEDY2_DDI2_CLK		31
+#define CLK_GOUT_PERIC1_SPEEDY2_DDI2_SCLK		32
+#define CLK_GOUT_PERIC1_SPEEDY2_DDI_CLK			33
+#define CLK_GOUT_PERIC1_SPEEDY2_DDI_SCLK		34
+#define CLK_GOUT_PERIC1_SPEEDY2_TSP1_CLK		35
+#define CLK_GOUT_PERIC1_SPEEDY2_TSP2_CLK		36
+#define CLK_GOUT_PERIC1_SPI_CAM0_PCLK			37
+#define CLK_GOUT_PERIC1_SPI_CAM0_SPI_EXT_CLK		38
+#define CLK_GOUT_PERIC1_SPI_CAM1_PCLK			39
+#define CLK_GOUT_PERIC1_SPI_CAM1_SPI_EXT_CLK		40
+#define CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK		41
+#define CLK_GOUT_PERIC1_UART_BT_EXT_UCLK		42
+#define CLK_GOUT_PERIC1_UART_BT_PCLK			43
+#define CLK_GOUT_PERIC1_USI04_I_PCLK			44
+#define CLK_GOUT_PERIC1_USI04_I_SCLK_USI		45
+#define CLK_GOUT_PERIC1_USI05_I_PCLK			46
+#define CLK_GOUT_PERIC1_USI05_I_SCLK_USI		47
+#define CLK_GOUT_PERIC1_USI06_I_PCLK			48
+#define CLK_GOUT_PERIC1_USI06_I_SCLK_USI		49
+#define CLK_GOUT_PERIC1_USI07_I_PCLK			50
+#define CLK_GOUT_PERIC1_USI07_I_SCLK_USI		51
+#define CLK_GOUT_PERIC1_USI08_I_PCLK			52
+#define CLK_GOUT_PERIC1_USI08_I_SCLK_USI		53
+#define CLK_GOUT_PERIC1_USI09_I_PCLK			54
+#define CLK_GOUT_PERIC1_USI09_I_SCLK_USI		55
+#define CLK_GOUT_PERIC1_USI10_I_PCLK			56
+#define CLK_GOUT_PERIC1_USI10_I_SCLK_USI		57
+#define CLK_GOUT_PERIC1_USI11_I_PCLK			58
+#define CLK_GOUT_PERIC1_USI11_I_SCLK_USI		59
+#define CLK_GOUT_PERIC1_USI12_I_PCLK			60
+#define CLK_GOUT_PERIC1_USI12_I_SCLK_USI		61
+#define CLK_GOUT_PERIC1_USI13_I_PCLK			62
+#define CLK_GOUT_PERIC1_USI13_I_SCLK_USI		63
+#define CLK_GOUT_PERIC1_XIU_P_PERIC1_ACLK		64
+
+#endif /* _DT_BINDINGS_CLOCK_EXYNOS8895_H */
-- 
2.43.0


