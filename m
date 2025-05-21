Return-Path: <devicetree+bounces-179302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96288ABF775
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C69B818842FD
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FA919EEBD;
	Wed, 21 May 2025 14:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fpzYXsVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADEE28312E
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747836630; cv=none; b=prg0tRxTEUF+Gt0rfd6UsAO4TEVlFld+WQqkV8Nr/5/Q6cfW5ZFx2HKvvx6kqRjr+ECLORlef8D5SXhNTQ/znDdcCaLe1AxiRgoiKlPgAa4lkaOZTd58mcS477dbja/YFtDyo6FVTD6v33O5h54tAe/yG76/vXlxWw27hFaTKBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747836630; c=relaxed/simple;
	bh=BSsTy3tbn/xKQinuO+XIPNVVjzoHKqygxo857+Pk8I0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qNjqQ0hdu+v1w0Um8mhyjBk8fjt+bs/R/Ko3Y9KmBBaLO6hV2ByUBwKLj3dU7WPGutAQENFsS1STiW6+4Ncgs4Mv7TbcAnKtu535ajb3OwVhzL/3veWRTPy1qNDg/u+fhdFYNtWAJ6RxNi79tsg3FzpzMwZsYeJr1Gxry4P1pTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fpzYXsVS; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-601f1914993so5382921a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 07:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836627; x=1748441427; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5R0SBkCSnZ1ZgHRkf3W4h5B5fht7vGGoztaC7tLlMq0=;
        b=fpzYXsVS7sHayaezRGajAwjlC+6HqUzSUEHYeb8GLNjU+AcriBHc4AbixY/i6L3Jbs
         gG4kyGgxEvRFV6Z1rkPpPKhxIc4Hq6U9gDD+WNB626EhAwg/NjnbKn+PV1Z1Qg/Asc9u
         jX1bqXkvC4TqDcrtD3acHfdfqcEjzW15kxsKlwwI3z4dTAsTpmCEYViOXnWN++qumGxS
         heSTXGNWL3b0Q3BZsLQUWSmJtofKvk4vBRl9zwvqeLvtRyut56s3A/1kcMKuYH7bTn48
         PiX5j/imcOxqKlzlBgoGUHnRZD470tC+dK/RqT/DvteytH1YInR9loFVa82PIWQPLsHF
         eRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836627; x=1748441427;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5R0SBkCSnZ1ZgHRkf3W4h5B5fht7vGGoztaC7tLlMq0=;
        b=euIuxnUaWKjXnN8Y5nBOQLSs9dxJKwL6/zyYF2nv73iNuQVjKVwEJuwL9Lr3tprh+G
         r424ZrDOz9TMAy5BDs3Osq3drmhgIsL5ssTVzqABDwxFmPYavCNAlynxarG7BBD9Rr2B
         I35AasqImYUmXOHCE1yO7tv0XlN2Ob0f8Yvfl8QFBtMhPm2/0O5Z/hPRHL/CMr5ecNEJ
         ZFzffkxRuv3awYBCPh2GNFIpwPUMPR9mZIuG6AL5Pes1tvVOTGSbhYqAiJT/+8n7IF6s
         W20Ke+lCoKgpdJk+n4RdZ6DdvjR9uENbvLWlsO6qowVPRttAurKtCaFh+hGqnh4oCcRJ
         FgPg==
X-Forwarded-Encrypted: i=1; AJvYcCWPOfy4b7JhZLxvpnjROXSZ/glOMF5PsMuPAfTeold3ODyfYBO2m19sidkdcHI0TmEAK7U+vLJ1Bn6i@vger.kernel.org
X-Gm-Message-State: AOJu0YxrAe/ZKtuWynlm/j9U5QzlSIgv9hS1lx89oqK1t38RBdiVDF6S
	K3E7Dpc7FAh/T4ic67KBi4HD3SdYhInpAdwvuZokpuQkgamr37FlLyY8zfoPfEiMP/Y=
X-Gm-Gg: ASbGncvzRud56lYLIJSoYslwe4WamGZwUcX0btX5vOb9tXwD0vPEARtHoEJU3C7ZWRy
	oOhZ3BetaSXEbTLI+pklgaGwpQLGeoQj8dZV5hKkbcPvg2dkb29lJOnaP8xsDws9Eu/2qh39igj
	9KT4u1QQOPE4euya4lH+0PABt/6iEWlScWAEuHLyCV2641XfTgqjcEgDHH9jTxxuaSNhnCMA85I
	mhoIGxLaRotJ50M6QenwEvwp4AquDaZMjGi332MKOsGvGoq6lpoz5I8QghrydtyRHGTMhTwPS/d
	vyqTIUwDbLmch8IC1CkIZhFcHobJbvuHr2eImi01wAXv5vh+KBZXRAmy5dwikuZVbZZsH6+MDuD
	8Llwk
X-Google-Smtp-Source: AGHT+IHIkR9ssJIhuCx1mmiAIGd6OoO/KN3o16DijCKheyN/jOueJQVldCbsG3V2xpWCs2Emi9rUQg==
X-Received: by 2002:a17:907:96a1:b0:ad2:1cba:cf85 with SMTP id a640c23a62f3a-ad536dce1b0mr1741373266b.39.1747836626692;
        Wed, 21 May 2025 07:10:26 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:25 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 11/12] arm64: dts: renesas: r9a08g045: Add USB support
Date: Wed, 21 May 2025 17:09:42 +0300
Message-ID: <20250521140943.3830195-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
host and device support.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- changed the nodes order to keep similar nodes toghether

Changes in v2:
- this was patch 14/16 in v1
- added renesas,sysc-signal properties to USB PHYs
- collected tags
- Geert: I kept your tag; please let me know if you consider otherwise 

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 120 +++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0364f89776e6..e329c55c3fad 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -681,6 +681,126 @@ eth1: ethernet@11c40000 {
 			status = "disabled";
 		};
 
+		phyrst: usbphy-ctrl@11e00000 {
+			compatible = "renesas,r9a08g045-usbphy-ctrl";
+			reg = <0 0x11e00000 0 0x10000>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
+			resets = <&cpg R9A08G045_USB_PRESETN>;
+			power-domains = <&cpg>;
+			#reset-cells = <1>;
+			renesas,sysc-signals = <&sysc 0xd70 0x1>;
+			status = "disabled";
+
+			usb0_vbus_otg: regulator-vbus {
+				regulator-name = "vbus";
+			};
+		};
+
+		ohci0: usb@11e10000 {
+			compatible = "generic-ohci";
+			reg = <0 0x11e10000 0 0x100>;
+			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			phys = <&usb2_phy0 1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ohci1: usb@11e30000 {
+			compatible = "generic-ohci";
+			reg = <0 0x11e30000 0 0x100>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			phys = <&usb2_phy1 1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci0: usb@11e10100 {
+			compatible = "generic-ehci";
+			reg = <0 0x11e10100 0 0x100>;
+			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			phys = <&usb2_phy0 2>;
+			phy-names = "usb";
+			companion = <&ohci0>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci1: usb@11e30100 {
+			compatible = "generic-ehci";
+			reg = <0 0x11e30100 0 0x100>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			phys = <&usb2_phy1 2>;
+			phy-names = "usb";
+			companion = <&ohci1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy0: usb-phy@11e10200 {
+			compatible = "renesas,usb2-phy-r9a08g045";
+			reg = <0 0x11e10200 0 0x700>;
+			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			#phy-cells = <1>;
+			power-domains = <&cpg>;
+			renesas,sysc-signals = <&sysc 0xd70 0x1>;
+			status = "disabled";
+		};
+
+		usb2_phy1: usb-phy@11e30200 {
+			compatible = "renesas,usb2-phy-r9a08g045";
+			reg = <0 0x11e30200 0 0x700>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			#phy-cells = <1>;
+			power-domains = <&cpg>;
+			renesas,sysc-signals = <&sysc 0xd70 0x1>;
+			status = "disabled";
+		};
+
+		hsusb: usb@11e20000 {
+			compatible = "renesas,usbhs-r9a08g045",
+				     "renesas,rzg2l-usbhs";
+			reg = <0 0x11e20000 0 0x10000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2P_EXR_CPUCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2P_EXL_SYSRST>;
+			renesas,buswait = <7>;
+			phys = <&usb2_phy0 3>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@12400000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
-- 
2.43.0


