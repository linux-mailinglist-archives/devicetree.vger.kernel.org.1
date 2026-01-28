Return-Path: <devicetree+bounces-260358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAxRImb3eWkE1QEAu9opvQ
	(envelope-from <devicetree+bounces-260358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:47:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 761BBA0C90
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D05C30B56F8
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2D8E2EC0B5;
	Wed, 28 Jan 2026 11:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M5xNrg2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE7134F253
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599847; cv=none; b=TKI1is2pfNMcVq+KCxVAU6bsjU/QblCjLRjqzxoQBJ0qtQcbDeqmW0rdQ8tFqnPXcqivWgxfFaIlwi3yJ5a3VKjCaVYHs4tj5Dkxy5HcmEOdICzofwfpmfx++XPnKtOES6Q7jvxRQK4kSyB8WC6N1Pu1n0uKVkYSGJRmn0Yn6AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599847; c=relaxed/simple;
	bh=C3sR6PaW4REeRly7HDcIvOw8e7CHYFBG4lFQ5lMS7Pk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TeR9jRDXLx1AdxktevWbnp2DAMMPx7GC3PZ4MOCTPF2SHYU+qXv+tYnosblwnfHsQ0OLbEiob/8yLMk4wNTLMdFaFeYzI06TsVIIqz0JzpTAcM9Jq8YsXfpAa+5fQunL9IZ9Z0ugtfY0VqpFT1FdMuNDoGX7FEotQwYfkVpM4dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M5xNrg2u; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64bea6c5819so10117948a12.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599842; x=1770204642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lwlr+eayV0XsGUozPozpxwkKxPK3GVHGSY5ByGq6lvM=;
        b=M5xNrg2uyI5WJp6f2ytQGoTWn9G8Aq/yoZ9hkc5dM59EmyUjFSDcmU3Tz3ZEQUHaLl
         QizHsEPBBLTgMX6rB8OJ3t+ZNqbjWYaGMSM8oYIv4P1Tc7CnpAVvUwNLpzanS/YWDH9B
         PPQbqf5G7FnHmcMGoRg9r3VUDQynz6zqnuxHHpJHKncLymnB2Cmitjs9ajjLPg+TaY+L
         yfNfbRJIDph/JtbUiFrsKP2imADKSNF4InpxycuMd6FlcuXsVl2iDa//ONW2T2JpY4Q9
         8dNs/0oJz3YnOjGl7jRjbuk+XKCa0vmHkA/RYzKMswWrJaeyeW2v/aPIDBv1ORH0rCLw
         uRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599842; x=1770204642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lwlr+eayV0XsGUozPozpxwkKxPK3GVHGSY5ByGq6lvM=;
        b=nPly4b1O7fKZWKC7Ls0LIWfYEBE08l9x2X0YoVdnHglPeqVRF8OOVtzmchUn06Ui4e
         BRswVZjycItRWO3B9crCMvttPnnuKuoUU3qHzF3xdzcBT3lcJV9TlldpOjod3MjusiRk
         BaeTUhaQt+ypfMqu2OR/99BbMHOKrFYqvzj/S+ouX5ZVg90aXUObmyh5MirQzDGXGBIL
         rtw215kfTeocKz62VZCtJ9ipaRYf3umPei7NXtzkFAk/PpHvXhai4SFH+UusIu3D/YlB
         zomkV9bUUotzWK2sVGbkqKob6ENuKzxqSp/pIhNur+0uDFXt3yA9IbXKnj1/he8bq6ND
         uaEA==
X-Forwarded-Encrypted: i=1; AJvYcCUN93NwPlmUq84boFn5dQ9JmHRw/iQ8bGILN2WTtVgf/FxSvWlSYf4GS6oBD+NdSjrpezN1UjAQisfW@vger.kernel.org
X-Gm-Message-State: AOJu0YxZow5Wxc2E/8ssXDtJBcRSsrF6+U8jisgj8TNdfBrYQE9O7RUM
	6sp27PLifChALyZRfaohbV2jcnEk+JWM1A55GYVVCE65hOO5YXUpvysA
X-Gm-Gg: AZuq6aKIKvDtPOLo73rOKkYqdmzgEfV+BGdWdERs6fF7E49Lmx2ic4iUjnuxGQXOePC
	PESZ3cCW3MxMWRx4M37U9AvoUcXqBM785Hh/FjzpH4dRh7FDAVPSJtnx+YzuG/b6hF151T1dTmw
	1DApEzyMrx6HMZ564lA1R5ZRbW5rC9/nyR9QMKKISZqeuhAM91Kx8JTN3sW1G1wkhrSyz1J9KOZ
	1+YtjDMxMic4250++2hYBo3vNuF9aXaVBDR2MzyP8clqHkRC+LPMZt/sOrQ0GXJMKTAvN70iw0r
	CB/h1UhjzOVHtc2RPAL9UHSWt9AcLm2lpaRQVDSRcS8mTO9gaMNbS8hQ/Mwj8c4ISk2JL9kSdB+
	Ix96sXp1YATAHaRvOyuTD/WYUXJLZz4WjUCKugWivWePAVeMn/SYIlMpYmsFhdHUQFO87/kYN0p
	4FxGtVoHxGr07wLBopOUyHozN9xhTScDojNJ4=
X-Received: by 2002:a17:907:9720:b0:b77:f4a:ca1b with SMTP id a640c23a62f3a-b8dab2db923mr337927166b.16.1769599841383;
        Wed, 28 Jan 2026 03:30:41 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:41 -0800 (PST)
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
Subject: [PATCH v2 07/10] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
Date: Wed, 28 Jan 2026 11:30:26 +0000
Message-ID: <20260128113032.337231-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
References: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260358-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.167.255.208:email,0.168.38.224:email];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,0.0.1.44:email,0.180.91.224:email,bp.renesas.com:mid,0.0.0.100:email,0.189.53.128:email,renesas.com:email,100ac000:email,100c0000:email,0.0.0.200:email,0.168.77.240:email]
X-Rspamd-Queue-Id: 761BBA0C90
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial DTSI for the RZ/G3L SoC.
The files in this commit have the following meaning:
  - r9a08g046.dtsi:    RZ/G3L family SoC common parts
  - r9a08g046l48.dtsi: RZ/G3L R0A08G046L{46,48} SoC specific parts

Added place holders to reuse the code for Renesas SMARC II carrier
board.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Added external clocks eth{0,1}_txc_tx_clk and eth{0,1}_rxc_rx_clk
   as it needed for cpg as it is a clock source for mux.
 * Updated cpg node
---
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 251 ++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi |  13 +
 2 files changed, 264 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
new file mode 100644
index 000000000000..0922ad642c67
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
@@ -0,0 +1,251 @@
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
+	audio_clk1: audio-clk1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it. */
+		clock-frequency = <0>;
+	};
+
+	audio_clk2: audio-clk2 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it. */
+		clock-frequency = <0>;
+	};
+
+	can_clk: can-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it. */
+		clock-frequency = <0>;
+	};
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
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x100AE000 0 0x400>;
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
+		};
+
+		dmac: dma-controller@11820000 {
+			compatible = "renesas,r9a08g046-dmac", "renesas,rz-dmac";
+			reg = <0 0x11820000 0 0x10000>,
+			      <0 0x11830000 0 0x10000>;
+			interrupts = <GIC_SPI 153 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 154 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 155 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 156 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 157 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 158 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 159 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 160 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 161 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 162 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 163 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 164 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 165 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 167 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 169 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "error",
+					  "ch0", "ch1", "ch2", "ch3",
+					  "ch4", "ch5", "ch6", "ch7",
+					  "ch8", "ch9", "ch10", "ch11",
+					  "ch12", "ch13", "ch14", "ch15";
+			clocks = <&cpg CPG_MOD R9A08G046_DMAC_ACLK>,
+				 <&cpg CPG_MOD R9A08G046_DMAC_PCLK>;
+			clock-names = "main", "register";
+			power-domains = <&cpg>;
+			resets = <&cpg R9A08G046_DMAC_ARESETN>,
+				 <&cpg R9A08G046_DMAC_RST_ASYNC>;
+			reset-names = "arst", "rst_async";
+			#dma-cells = <1>;
+			dma-channels = <16>;
+		};
+
+		sdhi1: mmc@11c10000 {
+			reg = <0x0 0x11c10000 0 0x10000>;
+			/* placeholder */
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


