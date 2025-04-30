Return-Path: <devicetree+bounces-172364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B6BAA48C2
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 323653A0629
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED9A25CC7A;
	Wed, 30 Apr 2025 10:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ck0Yu9BV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FF025CC64
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009197; cv=none; b=Agsg5AHOf7prn3zqIwWHou1yiuD0cW933pmzllaibvL/r4vf4NEg852mmVZnhVoq2k49YD9UkuL6Cy4lu3ruSo8+GaADA6pgrwXNaN2dQLvf9rTq7cTAr7VysrMgeYIHq4nDJg3rYG633PUgc26DDMCYQUaOlELIAwSZScaVT80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009197; c=relaxed/simple;
	bh=mq/lfbjEAahbi8v/Yxilo1z7mltq0L7V1rgg9IzAxl4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NZF/KRpZjsFT2TzhJ5I6St3NyuypWFXX/TYPmt7Onu84RMP4m7ku9hbgSoP9EdQkiBxxPfHXDe5SpGgk4k/1fUN9I4i2Xhj49afl7V7InLFwdzg52jBLN4dLdLNmG4j7Yo84nM8mKnwF/vIn90S4vKJ2gPA40HaU22W72RWATuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ck0Yu9BV; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac2963dc379so1059629966b.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746009193; x=1746613993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NXuUx7wovZ0PAW+LIKC1wW/SlMfBkmpMINNtgC9+O8I=;
        b=ck0Yu9BVnnMdw34p7HSlErxRD1LPCsKyDzBzNdttlnPFn8axfz4T1fGMiOeggXjm8z
         +MELIVUAXEFoEYgDSHGdsRXoaVmcoPauY5C0TTQD95J+EsndSv/khEKRO4j1bLwl+6IL
         QcATaKzHvfWeKSWIWbK3HHlnCFeXjI5AhRyMUTEjC93mhDzp2Xp0/zIHo9GSPkFwE95U
         g+XqsZl1QUx15vjuIxlh16u8hOa/XZehgiwuvkfoOEvbpEAzx4wvWaXhPrWdVR606PTa
         6apMufzFd8Ir05VBJFjwfLfLkvZphRkiOiBQzSyOn2SscSzamXvtGzrzzIYvjL+O2kP2
         kF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009193; x=1746613993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NXuUx7wovZ0PAW+LIKC1wW/SlMfBkmpMINNtgC9+O8I=;
        b=Q06vsgaSogw5aQYXsy8nlvy5hfJ1w73crfJPOWFwXgsq/U5ES4UvORmqKfqJD6qSGh
         r7eyfwzCTd64hLzzuwmJEHyhogLQYOoCjGnwm1FzoHUajR/wTy2qoRip1tgU7BA6PCEw
         ykq733GoNa0CjZM1P9YOwD2KzOFEWc6c4q/sdlSmqkwYb4pOiRZK/qmP6IU+OPgNCPh3
         Zl00hxrmd6e32R0BeqLkWAydesIQG2QjjWTmhzC/DAqJEEoR6pGW2T9ZAYFY83lH3oY0
         6HBphtHSvImdVjt1DfAR21frj8MJAQ4wrcOdsbDvaoYh0qdi23axtmFfFEQIFb7d6DQ3
         AH2w==
X-Forwarded-Encrypted: i=1; AJvYcCV8W96KxekjywR5fPp9VfaIWUimynwSEMG+PHKSJxVvVE63dWt5pk3rsFYn3VdJMaLSYh11fqSXfXKt@vger.kernel.org
X-Gm-Message-State: AOJu0YxvhSIbfv6lYHhFhqOvBCRU4vKzpqvePHElFxQE3HgleLXTe+ji
	LV2l79tsXcZJfbtW7xdye4mMHBJYu+2wVze/4QszGR671dNh4K9bnrPZ7wTuZpk=
X-Gm-Gg: ASbGncsOIEjU/0Xb1MdkGK/svnGzhECfNdgrhAtWP1/07qRiJfnp6QngKyipFJDVHPp
	KtI2wkRsfPueK49wRtre5ej4UPVxSwsQu/OMB96WqFHYgt9swhs4I3xmEhurq+VATSZ5EQtF0mg
	H2DaMGcveRvCTcRbP2XfWI7Kjq0teYDs7Bw1sRoCpqKvIMUehbZyAcmroUEtoa2TPJnonqlePHV
	cuCN3rsptU9PrCFNtR0AhGJfABLqsmauiONXkjhfhwLb9vrp30ZSKiNdOcnzOBjF2BK6G1B7UKb
	dwQEmZihJoYrMosBr2U39pDjjBGIFzqUl+Mu3JXrytK5pe9DpXLk5gOlM9+C09vRxyjnBmI=
X-Google-Smtp-Source: AGHT+IFBnCMqwv/bA5b/iHfecbvBB+Yr4Jy1p1ir0HdMA9k60f2mMrCz9DtJCVKYrl1BbCQtAeT7Qg==
X-Received: by 2002:a17:907:3ea6:b0:ac3:48e4:f8bc with SMTP id a640c23a62f3a-acee25c74a2mr231543466b.48.1746009193099;
        Wed, 30 Apr 2025 03:33:13 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.166])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed6af86sm909390366b.133.2025.04.30.03.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 03:33:12 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	saravanak@google.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 6/8] arm64: dts: renesas: r9a08g045s33: Add PCIe node
Date: Wed, 30 Apr 2025 13:32:34 +0300
Message-ID: <20250430103236.3511989-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G3S SoC has a variant (R9A08G045S33) which support PCIe. Add the
PCIe node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi
index 3351f26c7a2a..d8e1dc80e56e 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi
@@ -12,3 +12,73 @@
 / {
 	compatible = "renesas,r9a08g045s33", "renesas,r9a08g045";
 };
+
+&soc {
+	pcie: pcie@11e40000 {
+		compatible = "renesas,r9a08g045s33-pcie";
+		reg = <0 0x11e40000 0 0x10000>;
+		ranges = <0x03000000 0 0x30000000 0 0x30000000 0 0x8000000>;
+		dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0 0x38000000>;
+		bus-range = <0x0 0xff>;
+		clocks = <&cpg CPG_MOD R9A08G045_PCI_ACLK>,
+			 <&cpg CPG_MOD R9A08G045_PCI_CLKL1PM>;
+		clock-names = "aclk", "clkl1pm";
+		resets = <&cpg R9A08G045_PCI_ARESETN>,
+			 <&cpg R9A08G045_PCI_RST_B>,
+			 <&cpg R9A08G045_PCI_RST_GP_B>,
+			 <&cpg R9A08G045_PCI_RST_PS_B>,
+			 <&cpg R9A08G045_PCI_RST_RSM_B>,
+			 <&cpg R9A08G045_PCI_RST_CFG_B>,
+			 <&cpg R9A08G045_PCI_RST_LOAD_B>;
+		reset-names = "aresetn", "rst_b", "rst_gp_b", "rst_ps_b",
+			      "rst_rsm_b", "rst_cfg_b", "rst_load_b";
+		interrupts = <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int_serr", "int_serr_cor", "int_serr_nonfatal",
+				  "int_serr_fatal", "axi_err_int", "inta_rc",
+				  "intb_rc", "intc_rc", "intd_rc",
+				  "intmsi_rc", "int_link_bandwidth", "int_pm_pme",
+				  "dma_int", "pcie_evt_int", "msg_int",
+				  "int_all";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie_intx 0>, /* INT A */
+				<0 0 0 2 &pcie_intx 1>, /* INT B */
+				<0 0 0 3 &pcie_intx 2>, /* INT C */
+				<0 0 0 4 &pcie_intx 3>; /* INT D */
+		device_type = "pci";
+		num-lanes = <1>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		power-domains = <&cpg>;
+		renesas,sysc = <&sysc>;
+		vendor-id = <0x1912>;
+		device-id = <0x0033>;
+		status = "disabled";
+
+		pcie_intx: legacy-interrupt-controller {
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			#address-cells = <0>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+};
-- 
2.43.0


