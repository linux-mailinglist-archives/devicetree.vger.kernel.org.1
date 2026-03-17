Return-Path: <devicetree+bounces-276848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cARMIVuvuWkkMQIAu9opvQ
	(envelope-from <devicetree+bounces-276848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:45:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D512B1A93
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3438D304D826
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CB73563FB;
	Tue, 17 Mar 2026 19:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SJbhf4Ju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53268348860
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773776697; cv=none; b=QSD49J8kYxIZa5AQ0bXc8bEfFyVerJBzYl/LZqTN47fZopgD1FY4tgCw2WVbe80YSmetYumf3hFkv7IrKAaTdO9eGBti7kd9RWy2tzMRdjdWcXDpMl0C7W8fXhvuyXnvuRY1nDkkv05BxWDDBXDvLIsmHASO5zQR29jY19aJkF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773776697; c=relaxed/simple;
	bh=9XmBIIIhjI47Oa0whEYZccbVPBTLiTSqqL+eIqLztfc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GfLmsb3OONnGJPymrjmRo68bK+6OI6BBFO3tijD1mYyYZyJW1V6WZhNxRVcdfImb0MgzpwtpsCoc1FsH14bAbG/Zv6y6VtBoswWWrDd/7ssNZXhBoNq5gBhSPoTZeh0ylXIKmTdzAID+/ipGoYgwdTxMiSMZJBfbWTOBLhLDXi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SJbhf4Ju; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48534237460so66154745e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773776693; x=1774381493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=igKxPucMBII03kRQli7/XWAkz4QBTsK13FNQqLBFH5w=;
        b=SJbhf4JuaWQNKBrNIk27Vd/CMG6BNS41Wdac2eU8O5OqPmLBcY3VPK9UN4CeSxuYP2
         Hy+yxM5QuHVf76M7lVkgLm7v1ByC3L9SV8iJkEYlhbrkuQfpsZ5GYZ4GW3oueDSmKcaI
         Mi0c8ojqh61mHT1su68j3woB326YjKJKcihsfUxTZO5FUka8x8RfYfUvLJcwQjXVEDqj
         vBi4jp4mqAYUw82CaKsjwBdfRuIsdlYf0Q2p4YsyRw83CyyEo3EsRCzyxPrAk3fA3DyH
         H9mocF91cRVYMZDPHBoMGHO9Tgjg98nj/Dx2rKOlsBSZjHnffxErjxBRaq6kdxn/e/Rs
         aJrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773776693; x=1774381493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=igKxPucMBII03kRQli7/XWAkz4QBTsK13FNQqLBFH5w=;
        b=SgaxoP50pbMG0ZQGGQjmjKTqaiH44CozbmrCivYTd2ON7yuzlOpXaFxKusW5gLgKMS
         RGsqxaMea3/k74R/z4KADv2H9xV64WrgocAK5eM1jpsUS9O24Yf0fBwA/M4ah/xHcd/o
         wGuf8mg4XI/QhBuT4vPTpMavenB+XFG4e4ptZFKe3uKWm7RtTwGF3kd657SRkDAmQ54O
         xpoUjKntjdMkz4Cr9OaFfJWY0p0hYAQ6CVaDcjjcupHEq1P7ViNr5Oz2BRULIY98netG
         rItxX6KoaY0VyZwGieq6HUPdPo9Ft6KUqeBWYrSaVIHuag8aN+RAtR7tNTV+xpHiBSyt
         00rA==
X-Forwarded-Encrypted: i=1; AJvYcCVixllA8/nR15idJ1BV8Z82OjJ9brctdqziTOkGwE+eMJK0a4pcf8hdmkH9LVZ49K+N0P/wmbUiSaK0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw823I3+/xnNyGvku2SH4zgtV0c6f/JuxiXqa5/d+kmIn4dqlk+
	adp2iYdOOMderIs6p9BfmzsJRntcx4+ZD3FMkcA8ebSF5aZUrkXS3lbI
X-Gm-Gg: ATEYQzxlWt1pMBbJ9z7JeNGT+4TH0OgMF/eQPyX7j+53n8SvIz1BNO0JZyN7UvAs3uL
	0O4IzLKmvWJKZXwgTvPivuG4xU5kc9qaySF56AQZVVnCH+JNjoICUVEOs9fBCWMjKu/f6OR7Gd1
	aDN3felu84EjvjB8K1L3l1l5/mbiRqrOXPzZ+8JON87GYK3/ZlBm6QFaTsVY8ouOIJbwFqAzQwZ
	bMe6fWZQQHzHWYpBEYQPsdjmpP/3cgiEsuXkocVl9K0QLvuogdwJmpESvBGFDaGM4qb/GlMx6fa
	fWUAl+RpeLZR75H7B//2Q2mE6haMbwy5TEx6jwrzvV0faaDqwp2CxYdl5d1U9+m7nukgglVJ2mf
	KsOrIRb0sqeO704X8Jpslq3K9RB+DoeHI/H/JMDYn+dnB8Jf8xSdUz0ZaPc1e09wZdOtMQwGtD2
	xr/JsEyXwqC0BLME+JYgHi8JUf5jq8jLZyDl2LaPpnmAucOYEX
X-Received: by 2002:a7b:c5d5:0:b0:485:2c61:9459 with SMTP id 5b1f17b1804b1-486f44221fdmr9577405e9.8.1773776692480;
        Tue, 17 Mar 2026 12:44:52 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm1788235f8f.21.2026.03.17.12.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:44:52 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 6/9] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
Date: Tue, 17 Mar 2026 19:44:33 +0000
Message-ID: <20260317194442.468147-7-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317194442.468147-1-biju.das.jz@bp.renesas.com>
References: <20260317194442.468147-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276848-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 25D512B1A93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial DTSI for the RZ/G3L SoC.
The files in this commit have the following meaning:
  - r9a08g046.dtsi:    RZ/G3L family SoC common parts
  - r9a08g046l48.dtsi: RZ/G3L R9A08G046L48 SoC-specific parts

Add placeholders to reuse the code for the Renesas SMARC II carrier
board.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Fixed typo R0A08G046L->R9A08G046L in commit description
 * Dropped R9A08G046L46 from commit description
 * Dropped unused audio_clk{1,2} andcan_clk device nodes
 * Reordered i2c device node and updated reg entries by using lower-case
   hexadecimal number
 * Added placeholder in pinctrl node
 * Dropped unused DMAC device node
 * Added pcie node with placeholder
v2->v3:
 * No change.
v1->v2:
 * Added external clocks eth{0,1}_txc_tx_clk and eth{0,1}_rxc_rx_clk
   as it needed for cpg as it is a clock source for mux.
 * Updated cpg node
---
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 215 ++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi |  13 ++
 2 files changed, 228 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
new file mode 100644
index 000000000000..20efe09d441e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
@@ -0,0 +1,215 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/G3L SoC
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+#include <dt-bindings/clock/r9a08g046-cpg.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	compatible = "renesas,r9a08g046";
+	#address-cells = <2>;
+	#size-cells = <2>;
+	interrupt-parent = <&gic>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a55";
+			reg = <0>;
+			device_type = "cpu";
+			next-level-cache = <&L3_CA55>;
+			enable-method = "psci";
+		};
+
+		cpu1: cpu@100 {
+			compatible = "arm,cortex-a55";
+			reg = <0x100>;
+			device_type = "cpu";
+			next-level-cache = <&L3_CA55>;
+			enable-method = "psci";
+		};
+
+		cpu2: cpu@200 {
+			compatible = "arm,cortex-a55";
+			reg = <0x200>;
+			device_type = "cpu";
+			next-level-cache = <&L3_CA55>;
+			enable-method = "psci";
+		};
+
+		cpu3: cpu@300 {
+			compatible = "arm,cortex-a55";
+			reg = <0x300>;
+			device_type = "cpu";
+			next-level-cache = <&L3_CA55>;
+			enable-method = "psci";
+		};
+
+		L3_CA55: cache-controller-0 {
+			compatible = "cache";
+			cache-unified;
+			cache-size = <0x80000>;
+			cache-level = <3>;
+		};
+	};
+
+	eth0_txc_tx_clk: eth0-txc-tx-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	eth0_rxc_rx_clk: eth0-rxc-rx-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	eth1_txc_tx_clk: eth1-txc-tx-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	eth1_rxc_rx_clk: eth1-rxc-rx-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	extal_clk: extal-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board. */
+		clock-frequency = <0>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2";
+		method = "smc";
+	};
+
+	soc: soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		scif0: serial@100ac000 {
+			compatible = "renesas,scif-r9a08g046", "renesas,scif-r9a07g044";
+			reg = <0 0x100ac000 0 0x400>;
+			interrupts = <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 389 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 390 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 390 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "eri", "rxi", "txi",
+					  "bri", "dri", "tei";
+			clocks = <&cpg CPG_MOD R9A08G046_SCIF0_CLK_PCK>;
+			clock-names = "fck";
+			power-domains = <&cpg>;
+			resets = <&cpg R9A08G046_SCIF0_RST_SYSTEM_N>;
+			status = "disabled";
+		};
+
+		i2c0: i2c@100ae000 {
+			reg = <0 0x100ae000 0 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			/* placeholder */
+		};
+
+		canfd: can@100c0000 {
+			reg = <0 0x100c0000 0 0x20000>;
+			/* placeholder */
+		};
+
+		cpg: clock-controller@11010000 {
+			compatible = "renesas,r9a08g046-cpg";
+			reg = <0 0x11010000 0 0x10000>;
+			clocks = <&extal_clk>,
+				 <&eth0_txc_tx_clk>, <&eth0_rxc_rx_clk>,
+				 <&eth1_txc_tx_clk>, <&eth1_rxc_rx_clk>;
+			clock-names = "extal",
+				      "eth0_txc_tx_clk", "eth0_rxc_rx_clk",
+				      "eth1_txc_tx_clk", "eth1_rxc_rx_clk";
+			#clock-cells = <2>;
+			#reset-cells = <1>;
+			#power-domain-cells = <0>;
+		};
+
+		sysc: system-controller@11020000 {
+			compatible = "renesas,r9a08g046-sysc";
+			reg = <0 0x11020000 0 0x10000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "lpm_int", "ca55stbydone_int",
+					  "cm33stbyr_int", "ca55_deny";
+		};
+
+		pinctrl: pinctrl@11030000 {
+			reg = <0 0x11030000 0 0x10000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			/* placeholder */
+		};
+
+		sdhi1: mmc@11c10000 {
+			reg = <0x0 0x11c10000 0 0x10000>;
+			/* placeholder */
+		};
+
+		pcie: pcie@11e40000 {
+			reg = <0 0x11e40000 0 0x10000>;
+			ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x08000000>;
+			/* Map all possible DRAM ranges (4 GB). */
+			dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 1 0x00000000>;
+			bus-range = <0x0 0xff>;
+			device_type = "pci";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			/* placeholder */
+
+			pcie_port0: pcie@0,0 {
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				ranges;
+				device_type = "pci";
+				#address-cells = <3>;
+				#size-cells = <2>;
+				/* placeholder */
+			};
+		};
+
+		gic: interrupt-controller@12400000 {
+			compatible = "arm,gic-v3";
+			reg = <0x0 0x12400000 0 0x20000>,
+			      <0x0 0x12440000 0 0x80000>;
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+			interrupt-controller;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "sec-phys", "phys", "virt", "hyp-phys", "hyp-virt";
+	};
+};
diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi
new file mode 100644
index 000000000000..f6f673abc01b
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/G3E R9A08G046L48 SoC specific parts
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/dts-v1/;
+#include "r9a08g046.dtsi"
+
+/ {
+	compatible = "renesas,r9a08g046l48", "renesas,r9a08g046";
+};
-- 
2.43.0


