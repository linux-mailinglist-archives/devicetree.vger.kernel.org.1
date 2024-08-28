Return-Path: <devicetree+bounces-97516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 667A5962770
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 14:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D9F4285E65
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 12:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7334E17A597;
	Wed, 28 Aug 2024 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LTPJ/LSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C5117556B;
	Wed, 28 Aug 2024 12:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724848913; cv=none; b=P6AwS6nfAxlr5hw4bODJaqjnmc2GuyK33+jVPCcx5lVgVlDmDfHY3TlsW1WuOIEAr248wmc6/cs50JM+PbHk/Xvit2VRaZfw2gidU7D1pIYrupCX9Okv5l7oEjTDMoeRYO1xvPqq8kuf+lPfHf234cTwMCtG7QwNn1TaTG20ZxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724848913; c=relaxed/simple;
	bh=910g6k0MZyDuT/WMTjCMQ4lHUDTOiPKJSeIYGrcYROc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lkPRognV5iO4QQBqlJ37D+ou7nAdYdMNMtNc/bpx1nUADmUhFR+0uA1oZFSwKm26/s0DoA0UzRzmyqZUeChaPw2ccLRIx0L+hZoVL8T/A7PrXcaQ4NgjuxpTjfThB3o2CZ4LJCV2aMwhWtF5B1mUj88P5uTOWeBNJ1T2VeUGtpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LTPJ/LSM; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37496a92188so429384f8f.0;
        Wed, 28 Aug 2024 05:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724848910; x=1725453710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8kEv94nGr3ih59xQabX+cdO/Y8fAAbLq9kHLgSireOU=;
        b=LTPJ/LSMn/QqCRegQVpHxIb1Pc2M8tJu9j+lkkUNbHO9zw9cpL+ChxHQACuJ4qQNyP
         rgnABiF4nRih+DcSeiWIzMtLopQKJRSGL24CN4epaV01JwEJjWv+cNlqAcAoFVymbmI8
         bFc4r+rVcbnhi3IWJYrj9m+dr0VQ3d1vZeKodo59txxKT0MStHGbOMmFAl1VWNcbLmNE
         ZRrKfovqsE1bQ9+y0TvSAOSKqhI/ESM77TueJbPCWC9BrIVNm67RrTBws7IyIMjNlwHA
         hb7tDCh4NwyJ5AV4XNton50oeNOlLqjgPezAg1UMNLOTBRp7oG+F0w8P85EvOEvbbFki
         hw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724848910; x=1725453710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8kEv94nGr3ih59xQabX+cdO/Y8fAAbLq9kHLgSireOU=;
        b=Jked6sRm8658ghO4GkLiTBNvIIC172frFI0Lx91RvZ+y10iJDWWqPRLe2T8HhBtxiq
         hnJQ4brkI0/CcdESZ+fkSomyq9mGWedMJFtJULIebParen8wrhCnl7CvZU9NmMMeFGQ8
         81xqCi9r6pUphlUUKfmq+sQtRuJ506m261ookTi1lYmwPN1IlrY/3G9HeryJ6woQSmDt
         wzLkwRWVeFUIocIlmh/goHhXikfxGkWJNC1bFuHhZc1oNEHafcbNOn6FDk8QehuHVljY
         g+Gw0h7fWZbTqfZfGob/C0824T86O9dH1Wu3dsKbSiVoNnh6teqYuJuTAxADPhX2/mQT
         iLlg==
X-Forwarded-Encrypted: i=1; AJvYcCVNoo+vpHUFKHo9E2eG84XEIFmoWJCpAHJJxE/njaSi9JMXgVsiHPR5ILXOQ4ElZTuDTK3yrrjJYzLwM07F@vger.kernel.org, AJvYcCX8Z7AfL9aWMYCER0ayhDsmKCTwk0STtVgYR/eUW8qp6Fq7lUNxJ3skTzfKbmwX3uPxOMR261Rjy7c3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/+GG8DVtiyoRJTrUB3neg4LNtgPBzK2edN0dOinBNnvR5CVvw
	QxaoHE21LXLH1HtjVFgyyOMThpJ80OKpRsIeJicf1QCGRLkAL96n
X-Google-Smtp-Source: AGHT+IF+aBtoeR0yZaJ9gyokrwTxKccV3AxKSA9yDrmTncQe7uJWwRCX/FuLsPCHSchmvbFa8UYvNw==
X-Received: by 2002:adf:ab1b:0:b0:371:8484:57d7 with SMTP id ffacd0b85a97d-37496816044mr1462004f8f.15.1724848909833;
        Wed, 28 Aug 2024 05:41:49 -0700 (PDT)
Received: from prasmi.home ([2a00:23c8:2500:a01:2595:4364:d152:dff3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730813c5edsm15508226f8f.31.2024.08.28.05.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 05:41:49 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v4 2/9] arm64: dts: renesas: Add initial SoC DTSI for RZ/V2H(P) SoC
Date: Wed, 28 Aug 2024 13:41:27 +0100
Message-Id: <20240828124134.188864-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240828124134.188864-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240828124134.188864-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add initial SoC DTSI for Renesas RZ/V2H(P) ("R9A09G057") SoC, below are
the list of blocks added:
- EXT CLKs
- 4X CA55
- SCIF
- PFC
- CPG
- SYS
- GIC
- ARMv8 Timer

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v3->v4
- Sorted nodes by nodename
- Used hexadecimal values for clocks and resets

v2->v3
- Updated GIC node to match with the coding-style of DTS

v1->v2
- Updated commit description
---
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 165 +++++++++++++++++++++
 1 file changed, 165 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a09g057.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
new file mode 100644
index 000000000000..35b34c40cdc8
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/V2H(P) SoC
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ */
+
+#include <dt-bindings/clock/renesas,r9a09g057-cpg.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	compatible = "renesas,r9a09g057";
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	audio_extal_clk: audio-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
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
+			cache-size = <0x100000>;
+			cache-level = <3>;
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2";
+		method = "smc";
+	};
+
+	qextal_clk: qextal-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	rtxin_clk: rtxin-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	soc: soc {
+		compatible = "simple-bus";
+		interrupt-parent = <&gic>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		pinctrl: pinctrl@10410000 {
+			compatible = "renesas,r9a09g057-pinctrl";
+			reg = <0 0x10410000 0 0x10000>;
+			clocks = <&cpg CPG_CORE R9A09G057_IOTOP_0_SHCLK>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl 0 0 96>;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			power-domains = <&cpg>;
+			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+		};
+
+		cpg: clock-controller@10420000 {
+			compatible = "renesas,r9a09g057-cpg";
+			reg = <0 0x10420000 0 0x10000>;
+			clocks = <&audio_extal_clk>, <&rtxin_clk>, <&qextal_clk>;
+			clock-names = "audio_extal", "rtxin", "qextal";
+			#clock-cells = <2>;
+			#reset-cells = <1>;
+			#power-domain-cells = <0>;
+		};
+
+		sys: system-controller@10430000 {
+			compatible = "renesas,r9a09g057-sys";
+			reg = <0 0x10430000 0 0x10000>;
+			clocks = <&cpg CPG_CORE R9A09G057_SYS_0_PCLK>;
+			resets = <&cpg 0x30>;
+			status = "disabled";
+		};
+
+		scif: serial@11c01400 {
+			compatible = "renesas,scif-r9a09g057";
+			reg = <0 0x11c01400 0 0x400>;
+			interrupts = <GIC_SPI 529 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 532 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 533 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 530 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 534 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 531 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 535 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 536 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 537 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "eri", "rxi", "txi", "bri", "dri",
+					  "tei", "tei-dri", "rxi-edge", "txi-edge";
+			clocks = <&cpg CPG_MOD 0x8f>;
+			clock-names = "fck";
+			power-domains = <&cpg>;
+			resets = <&cpg 0x95>;
+			status = "disabled";
+		};
+
+		gic: interrupt-controller@14900000 {
+			compatible = "arm,gic-v3";
+			reg = <0x0 0x14900000 0 0x20000>,
+			      <0x0 0x14940000 0 0x80000>;
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+			interrupt-controller;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts-extended = <&gic GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+				      <&gic GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+				      <&gic GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+				      <&gic GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
+				      <&gic GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "sec-phys", "phys", "virt", "hyp-phys", "hyp-virt";
+	};
+};
-- 
2.34.1


