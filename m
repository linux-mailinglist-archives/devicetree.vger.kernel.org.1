Return-Path: <devicetree+bounces-277772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JOXGH7xu2nkqQIAu9opvQ
	(envelope-from <devicetree+bounces-277772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EB32CB653
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8B2723008D54
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540643D522E;
	Thu, 19 Mar 2026 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A7GDaL+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76813D3D10
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924717; cv=none; b=tujNNk8Et4RWrSnxbQ8pPCYOm7A+jd1WJ45v689buC3ZlYd+HySR4lfqt6eGXJd9CHuHPC6gahvNXUSvUq4zyOC7TiPquLckHfLrVG32ulOkuYDynUyDvIqxK2tK2R0SNbXDhaLx4hPYopQ3E758rrzfkDCAp0tcK5MIzJSV57s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924717; c=relaxed/simple;
	bh=z4hU8qgkS8FvwXagXfSF5VY6bz+uAmy/WEbgcys+3gY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e8tww0Z8y4XohVOVe+QBsuTj5jgdpOJgcTG+y6sbQgHCGKlVdYRsBnySD3RgsZOFTo+DSM7UuToc/0dBclalNp7OxQ2YNbAdmJyFjWsj6xRxNcFxc4fMrfC/8MHbbJwZnR4IzB/x6IPLTRY77Z4xuUuV6nH5Z31aQdHOJB4PopI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A7GDaL+B; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso7060945e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773924713; x=1774529513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbEmLTY4y/JP9KvAglFiZUvOjs202qCXRyllRj1/v0w=;
        b=A7GDaL+BTWQBfoLEypyOFGdIPnBDNwCoK3GIdn7r7Ibwc7Jum4V/M3WSVIvhU7e4tA
         rDJuhTBLEaKhRclBQ64t1V30ZRmc+a2ajXHI861no73e1F/2dLpVp70bHqgNLv3moAlb
         4PcERKVZPPzbApwGYFF9l36zOt5OPWNiIsAdCL5nUHp1Z3WsOFcyTlyW6WckZgrUvEid
         cLByz9/KhQW60ps+V74prDHg+ChnDZs92XA116QndLzpCht4tOScgEZVeoL3iElnN/3y
         u48jdGFFzCqQFHAEmW/6nTcQnu5S19jIfS5tVsE6OWMaAdO3DnZzHRPNwIPRXL4xQb7P
         6GAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773924713; x=1774529513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FbEmLTY4y/JP9KvAglFiZUvOjs202qCXRyllRj1/v0w=;
        b=WlEnKyq3VFQa96WJZpOjXh0hZxpqCcJBohfu6KGQbu0zkDquP9ei/sfm4GnKVk77z4
         Xld24tsVd7hUzPecL0mtEtsdraze3jmOLoXOTu6jflmZaxVlED2GOHT9iiDEUYA6Eaul
         oquwdV3+ji8aZRYH3k/BQPEj/Uw9RndK31fZM/AhpCHmy3RYMSf68GRf7sWasAQ+x1sI
         J1jNSop6BGfKnEGH6z6l+2ad+5+MCNliSsUt9zbGMcz1+CzGAhdnVptZbm3RUZ8jvnDD
         dsEFtM6i6wnyQSGjCY9eohhfn1h710WJnnnG6DmxoEEh8cLcsvjspf6kJPuwE40HTEw4
         Zh5w==
X-Forwarded-Encrypted: i=1; AJvYcCXACQastR3CjR1T0Ut7brR37EmxiZ/rq+PLt/CXNY00fra57x8Gt42aSi2Iy4Rs7JJREln005NQVXFf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7m11kHPULkXJArOMn7bWwDqyFCrQQbHmpPbDS/cjnx1UU8bk2
	6oRZRJV6C33jQR6l3p57/z0aj19HJA/PfMARU04gF0Olasy6o+wbEd8S
X-Gm-Gg: ATEYQzwDT75b/PKSSa2/u2FDDlAOH3lWzJNhcRWa7tEMIYN106KrrW9JIjekBfNuwHq
	OAjBcsGXngJhE/34Ofl8pNnKI2eO0kgyOMrHtRZTyIP27jR/GjfTsYtGgyYnNNUAGdX1G1fncvW
	Jay9R1BtZgphyNVhCx7GK3pL6dABhLFgXlAWVui4VFNfMpFfCc/M3xKLXWrrgmMs2+yoEZ8DUuP
	XtP1mwx7zQeEYTb1UgfXU7HqrGUnM08XOlGRImN5ljAl/wjZxQ3Ihzl/WMZlbvYp7obECRPxfrB
	1oK4nID8PX99jC5bBc0dUbdQk1s7Ng1xvyLGnQW0Ism1mSrcKSzZ46zy5rjdiumrcCQhOEY5jGd
	6lSqlaBJ845ME6/xPCiG2vNX6Vd9uzU1fD5vOLjcysNKqLA7CDNuopYUXlExh7PKikQTquic6bk
	MDRhNeqTVoiq53P1pX60oyjUueBtWlSgk=
X-Received: by 2002:a05:600c:3e85:b0:483:6d4a:7e6d with SMTP id 5b1f17b1804b1-486f447008amr110174265e9.30.1773924712640;
        Thu, 19 Mar 2026 05:51:52 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:8326:7b31:bf82:d2d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bc96c6sm72382035e9.5.2026.03.19.05.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 05:51:51 -0700 (PDT)
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
Subject: [PATCH v6 07/10] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
Date: Thu, 19 Mar 2026 12:51:31 +0000
Message-ID: <20260319125143.230377-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
References: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277772-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.953];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F0EB32CB653
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
v5->v6:
 * Dropped dma-ranges, bus-range and comment from the pcie device node
v4->v5:
 * No change
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
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 212 ++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi |  13 ++
 2 files changed, 225 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
new file mode 100644
index 000000000000..e030e785ea2a
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
@@ -0,0 +1,212 @@
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


