Return-Path: <devicetree+bounces-270917-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Kl8Dm3tp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270917-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:29:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEC21FC9F9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7204302A50A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1421A38C2B5;
	Wed,  4 Mar 2026 08:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WXUKNM1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D5D3914E2
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612778; cv=none; b=C3hq5vkxnGN5CjgNSL2dzzg+Fh1DBhnu9Bi4zCTvjtNvrjettLL0pav2qd7viZcUFmq8JWY+5tAXOJZoui2AA3FhpHSHeuqf3tPinyjt81IERlgYbMlPhT0F7tcMUpahRMwTSuuH4EDO3aHY6fI6nhbVidY1sBez/+HYwOjrFBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612778; c=relaxed/simple;
	bh=KsKAPs16NFdju1/0K64Cu51clPSA8TzJO1IbUwhFMfs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qCH8L1GAv7z3RdlacILm0swwR3+3nnWH5FF3/9s1WdBSVdNYMqXoKd1uc8tQZai/76UdDOy+8tZ1d2D400wRSJYTkhp3WgfZ1yrOltvxxvUhYmdI1sB1fvjghkObLlv/0yNlgbXiU1EVJs4oJXYJRls4gCPMY8+x6f0GaYXM7Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WXUKNM1B; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-82728e5680cso3624102b3a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772612773; x=1773217573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S+0Gl/6jsm6dp6ffbeXLRnGklOmDo7AmQYEeUc9n0f0=;
        b=WXUKNM1By1/oO1+QG7opWNVMLbl2Q39VrgHJ6vYqmJGpe7SORyunxU/g9gCKtdDy/m
         b+UQtCi/JH4PEChg2FxW0ajZEazeQeXK1raw9mJqq4czNPCKZ28/pPKBZzN3hSpfStQc
         OzEd6285dB62HUgafHjN8PBNlcaAImHOc7GXUHLRbsyCAfAzjQ3RwdPr+tC8zVpN7sRo
         /ebwlFcXmc1S2/ZaPBd6T8RCvUqngtXdSCClG9KzuUmQU3Vt9SQOOTgwhzkGjpz7gWQI
         Hx9746EiXv7+Xf+NClnOgCb0VL/TSwXODgl4lJm1h08QjxxjrRf85WbuBWSEvWlmauLJ
         z8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612773; x=1773217573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+0Gl/6jsm6dp6ffbeXLRnGklOmDo7AmQYEeUc9n0f0=;
        b=RkNlYQMBtnc8ML28vvs5XBocdoVn2tASKVcYFrZQvFk5bBj/99xINBhzyQrh/cpMu5
         +m6I40Lh3hn9Oks29mHO5IrC1I7Tya0ls0I2Vv5Apti03Jv1aku2PI7JVkfugOZKRp1s
         vDqaAxhep7eW0JS1iIULWPtpIipnnci+j4gO7r3NatC+iUa4dqixANh2G9f1nJ4S9/zE
         VneM5g3Ok9R6k4xgzYtFEC9+5fLNlyAzyJyXrZZnXfzS+ah5SAktYpX9hEnE3gsO0r8I
         SZKE9If5SyDbNA0RfI4SPJl2QpHpataCdeymYTCSomJG2bg0erUZWP4/K4gSmtS+e+Ns
         w1qg==
X-Forwarded-Encrypted: i=1; AJvYcCXf+LlbDpMvvr27vbup/0Jjcdvlbg+SqYYp1/lNChkaVKhF5KQ42Tfz0rL1AyhEMGI0m8alMxTXSgGU@vger.kernel.org
X-Gm-Message-State: AOJu0YzqSGAPW54xotG87X/JpNVJBQZ0oyZhivGsqF5FqOTWVUzgjRVX
	RWoBw5+cMiHbHokgkwD0APR9/sXpeqYBQmvvFP+cyTb28fjBfX8dyUWE
X-Gm-Gg: ATEYQzzOVw9eCMcOibHAW31Jm4rnHGoBsSrPIbzSEiCDMjqTel0pJeDmXfLZXwIqdAl
	Q5fArru3+Ypbjdh4hfuVGVya3gPoJRV7rjQTI9O3zmSrLDM6V/sSkSnpszMPkTEPFd13kgflaib
	NVfSI08/lPqpbtK/sp294Ka5PPL7mi2eZenAeuMq2zq4/em2lF9vXguch2RgAVN880aBm6WpKkA
	NhukpS9Kyak71ntfGY6oSUdtgABUXwNF07CX9bFleARSXgQ32+cZoTPmcjuV0M1gxwUlHw+Htbg
	Z0KtuEihpL6MnjRSCwxaanIjQ779Rp8QE6dYNjBENWeYN+fMgspz6yESxsDg6lowvwLzM8QXpbB
	/LvZbHiDpmq+lKiiPbIDXVui0GiPKHbFRA/a5SSrcuF/L38pthfAQ8m8HJA77A7Pn4OcBoCr8kp
	nHLLXhPZ5nDrzrZHhKEaDLGvy17U38cBuJ1Q==
X-Received: by 2002:a05:6a20:26aa:b0:394:5ac7:8ffa with SMTP id adf61e73a8af0-3982ded341amr1286519637.16.1772612772757;
        Wed, 04 Mar 2026 00:26:12 -0800 (PST)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7377062904sm1274642a12.30.2026.03.04.00.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:26:12 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH] riscv: dts: spacemit: k3: Add ethernet device node
Date: Wed,  4 Mar 2026 16:25:41 +0800
Message-ID: <20260304082541.1786223-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8CEC21FC9F9
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270917-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cac80000:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,d4015000:email,cac82000:email,cac8e000:email,5.245.225.0:email,0.0.0.1:email]
X-Rspamd-Action: no action

Add all ethernet device nodes for K3 SoC. And enable the available
ethernet device for the PICO ITX board.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
Require the following patch series:
1. Basic DT device patch
https://lore.kernel.org/spacemit/20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org
2. Ethernet driver patch
https://lore.kernel.org/spacemit/20260304080721.1658224-1-inochiama@gmail.com
---
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts |  20 ++++
 arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi |  38 +++++++
 arch/riscv/boot/dts/spacemit/k3.dtsi         | 106 +++++++++++++++++++
 3 files changed, 164 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
index b098dbd0e7a1..47e4fa824417 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -6,6 +6,7 @@

 #include "k3.dtsi"
 #include "k3-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>

 / {
 	model = "SpacemiT K3 Pico-ITX";
@@ -25,6 +26,25 @@ memory@100000000 {
 	};
 };

+&eth0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_cfg>;
+
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy0>;
+	status = "okay";
+
+	mdio {
+		phy0: phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			reset-gpios = <&gpio 0 15 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <10000>;
+		};
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_0_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
index efb0f1572188..256880192846 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
@@ -21,4 +21,42 @@ uart0-0-pins {
 			drive-strength = <25>;
 		};
 	};
+
+	gmac0_cfg: gmac0-cfg {
+		gmac0_base_pins: gmac0-0-pins {
+			pinmux = <K3_PADCONF(0, 1)>,
+				 <K3_PADCONF(1, 1)>,
+				 <K3_PADCONF(2, 1)>,
+				 <K3_PADCONF(3, 1)>,
+				 <K3_PADCONF(6, 1)>,
+				 <K3_PADCONF(7, 1)>,
+				 <K3_PADCONF(11, 1)>,
+				 <K3_PADCONF(12, 1)>,
+				 <K3_PADCONF(13, 1)>;
+
+			bias-disable;
+			drive-strength = <25>;
+			power-source = <1800>;
+		};
+
+		gmac0_rgmii_add_pins: gmac0-1-pins {
+			pinmux = <K3_PADCONF(4, 1)>,
+				 <K3_PADCONF(5, 1)>,
+				 <K3_PADCONF(8, 1)>,
+				 <K3_PADCONF(9, 1)>,
+				 <K3_PADCONF(10, 1)>;
+
+			bias-disable;
+			drive-strength = <25>;
+			power-source = <1800>;
+		};
+
+		gmac0_int_pins: gmac0-3-pins {
+			pinmux = <K3_PADCONF(14, 1)>;
+
+			bias-disable;
+			drive-strength = <25>;
+			power-source = <1800>;
+		};
+	};
 };
diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
index a3a8ceddabec..237fb00e4bc4 100644
--- a/arch/riscv/boot/dts/spacemit/k3.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
@@ -438,6 +438,112 @@ soc: soc {
 		dma-noncoherent;
 		ranges;

+		gmac_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <0xf>;
+			snps,rd_osr_lmt = <0xf>;
+			/* max axi burst len is 256 */
+			snps,blen = <256 128 64 32 16 0 0>;
+		};
+
+		eth0: ethernet@cac80000 {
+			compatible = "spacemit,k3-dwmac", "snps,dwmac-5.40a";
+			reg = <0x0 0xcac80000 0x0 0x2000>;
+			clocks = <&syscon_apmu CLK_APMU_EMAC0_BUS>,
+				 <&syscon_apmu CLK_APMU_EMAC0_1588>,
+				 <&syscon_apmu CLK_APMU_EMAC0_RGMII_TX>;
+			clock-names = "stmmaceth", "ptp_ref", "tx";
+			interrupt-parent = <&saplic>;
+			interrupts = <131 IRQ_TYPE_LEVEL_HIGH>,
+				     <276 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			resets = <&syscon_apmu RESET_APMU_EMAC0>;
+			reset-names = "stmmaceth";
+			rx-fifo-depth = <8192>;
+			tx-fifo-depth = <8192>;
+			snps,multicast-filter-bins = <64>;
+			snps,perfect-filter-entries = <32>;
+			snps,aal;
+			snps,tso;
+			snps,txpbl = <8>;
+			snps,rxpbl = <8>;
+			snps,force_sf_dma_mode;
+			snps,axi-config = <&gmac_axi_setup>;
+			spacemit,apmu = <&syscon_apmu 0x3e4 0x3e8>;
+			status = "disabled";
+
+			mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		eth1: ethernet@cac82000 {
+			compatible = "spacemit,k3-dwmac", "snps,dwmac-5.40a";
+			reg = <0x0 0xcac82000 0x0 0x2000>;
+			clocks = <&syscon_apmu CLK_APMU_EMAC1_BUS>,
+				 <&syscon_apmu CLK_APMU_EMAC1_1588>,
+				 <&syscon_apmu CLK_APMU_EMAC1_RGMII_TX>;
+			clock-names = "stmmaceth", "ptp_ref", "tx";
+			interrupt-parent = <&saplic>;
+			interrupts = <133 IRQ_TYPE_LEVEL_HIGH>,
+				     <277 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			resets = <&syscon_apmu RESET_APMU_EMAC1>;
+			reset-names = "stmmaceth";
+			rx-fifo-depth = <8192>;
+			tx-fifo-depth = <8192>;
+			snps,multicast-filter-bins = <64>;
+			snps,perfect-filter-entries = <32>;
+			snps,aal;
+			snps,tso;
+			snps,txpbl = <8>;
+			snps,rxpbl = <8>;
+			snps,force_sf_dma_mode;
+			snps,axi-config = <&gmac_axi_setup>;
+			spacemit,apmu = <&syscon_apmu 0x3ec 0x3f0>;
+			status = "disabled";
+
+			mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		eth2: ethernet@cac8e000 {
+			compatible = "spacemit,k3-dwmac", "snps,dwmac-5.40a";
+			reg = <0x0 0xcac8e000 0x0 0x2000>;
+			clocks = <&syscon_apmu CLK_APMU_EMAC2_BUS>,
+				 <&syscon_apmu CLK_APMU_EMAC2_1588>,
+				 <&syscon_apmu CLK_APMU_EMAC2_RGMII_TX>;
+			clock-names = "stmmaceth", "ptp_ref", "tx";
+			interrupt-parent = <&saplic>;
+			interrupts = <130 IRQ_TYPE_LEVEL_HIGH>,
+				     <278 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			resets = <&syscon_apmu RESET_APMU_EMAC2>;
+			reset-names = "stmmaceth";
+			rx-fifo-depth = <4096>;
+			tx-fifo-depth = <4096>;
+			snps,multicast-filter-bins = <64>;
+			snps,perfect-filter-entries = <32>;
+			snps,aal;
+			snps,tso;
+			snps,txpbl = <8>;
+			snps,rxpbl = <8>;
+			snps,force_sf_dma_mode;
+			snps,axi-config = <&gmac_axi_setup>;
+			spacemit,apmu = <&syscon_apmu 0x248 0x24c>;
+			status = "disabled";
+
+			mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		syscon_apbc: system-controller@d4015000 {
 			compatible = "spacemit,k3-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;

base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
prerequisite-patch-id: 68c4d869548687dc115dd91e2ffb8f4c11482d86
prerequisite-patch-id: fdadcf964c2cb3406160edb579d99a8d5695f8e6
prerequisite-patch-id: 73b9e745338b0499b849fa4f7f9508987ab39a59
prerequisite-patch-id: cd26770c2160c3c31a406bd8a6b01ab666180ae0
prerequisite-patch-id: 93a515969fca3b15f827b3507979422dda14db8b
prerequisite-patch-id: a637cffacb823aa7ae91e03ed42831ef8fbd0d1f
prerequisite-patch-id: 40c49afe4eb71457913c45ddb720a9c8917aa827
--
2.53.0


