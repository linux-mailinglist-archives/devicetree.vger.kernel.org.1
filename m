Return-Path: <devicetree+bounces-240265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D21C6F7AC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 065AF3A8642
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04E0365A09;
	Wed, 19 Nov 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TqqOeqlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902D2364E87
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763562953; cv=none; b=nVDOUDgjgJibfSadAcqQ8TJjmH5m2PxZ4XZ2tyWyuu5czH/dAOo2DfZ5a5JdEqbY1Xb7HnyOR1QtZxnnglyxMzXBrOkciY/MLM9U8kyDoxZ3fAftF3DZuObLl0bv+MTuAn0FwZWI0eyAsPh8basmIsFcZBiGDywuhrJlFIKLe+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763562953; c=relaxed/simple;
	bh=oLgillCwr3ol7/w9E4u4ksaOb+6NxowwyKm+wJrPQtA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p1u28jIjezQTyz5G2ThZPf9eDs0wMC9qm+uRcXRRAQ+jOIGJFjVSp3NGF24c4ME+g9czFsrP0Pljhi+G2C0vWC1FRCwbI3iEHe5y8ehVNHh4IiYlP692oNJUAyFaAng3lyExVpm9k+zSlg8q2jJQRe2pogSxOzfRglw84DhCM9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TqqOeqlW; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477a219db05so25181675e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763562949; x=1764167749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IM2VhAUMoufw5+LLnfeRxVHnf+6zT5XAyOCZf4oWdrc=;
        b=TqqOeqlWMdP9ohoZyILh0bDpE7jYR1vvY64luk+d/tY4PnVO9lseoDeAoQpy4ivcVi
         aaCh4qblPh/0JOOdCbnzZUkC+9tcJx8eUCOxlBpFGW9EbUP8IahvEXXU3hZoSH5OypxR
         5EPh22azZPtSh6yECT00WXZBcinUzt+7DFjS7G34ir3qSU9ewnACex1ZskGewfr2Pp/l
         TB5Kl1TVzqhp+rfHLYrHYaDhB04imgGZ4xeXYlJTT1wyM2SemTkwjp9tgYqAqMsbLMjU
         o4MRp0sE8q7yUS3akAPn8x22SEooRe2+O2OcRjlcsBIpGsgaN2GE4RrVk0F0tlwb4S08
         p63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763562949; x=1764167749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IM2VhAUMoufw5+LLnfeRxVHnf+6zT5XAyOCZf4oWdrc=;
        b=uhT7OiDUAJa3fw1rQolMD3xzeQ7R3oXyddERBTH0Jn0Ce/6U8rPK79fwx2Rl+aFLEV
         vwhrJFm5wrw0efkg7WlkHBa7YcAorwgse0qaimW2RKfiOjMSmy4CgfKZ5w1V9JGRtOPx
         2MktbfzsBB6jc1Ezdvs6eYRxrbW930D04x+nDaOnZ0ZZ5gcyORwkcdBqvReS5TLUfNcj
         7/BnwPwl5YIOJZfFVmJWlfsxC80Ei7L0HuchhP85y23sNCyRV6xVijUT6bg16+Z62XWL
         qUMVI3fU18bGWrBXYn+U5syxnCzrIhYH6lfJWjHB7TnZxpMb13VFMyshvjg0shp/m2Sa
         KXLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV77nBJDWctZDygQEpxtH3j7MpQ8gU6bFc2QOqAZC7D6xfoFJW1g1tiZz7hGDaEOBLQUUnf6SMku3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxzdKT9FcEdunYcDd+pNCbYhMn3/ds96rUQDT4psxijHn4aevJs
	6od44iPv3n8cKh2X8EdWpZDWl4PGAn9WA+SjfxqFl/3kHaeT/hFwp67Rv66fdSbUDsQ=
X-Gm-Gg: ASbGncvWNQwYZ2p8spUB9eIqJZJ/nIAPo2IFFvOeeDzLA9wz5z+O/95xVnYSIHEzijc
	0/wg1Adfdde8dfz4Kaxj0I7EOWEA8vZAEfaaQBhZNUZ770ey6R9Fw7xP69f+tK1KrDOe2bzMr4z
	MkFB2xQgRAu88qjNP4oMqn+lpSfRkm+s5eQ0Hf4WFT76MoBkSb55gf17mGrAo4xFGqD9Bkt0ASg
	UsUtvQeuSBVEpG8FXJwaZ+FZr3733c7BxkzDpx6BKJjs/5nMlACo+a883bVFafHbwV8YfQLemky
	TsopMJtP9ejlPQ8NlLyxfFTRkU6yb7rla389DKczMmuDlj7ILe+9IsqP/ipg+71Qy1LJSqTDThJ
	HJlpeO4ghUUqJq5+LUr/gmoc/8qjZ2X43W0OYiNsItjY0X3ubh3ub7PRsbSEiH9usVNSLv4eX7g
	OuUBN+Qt3eZJu9vjYRT0OC+SlkZIJiGu3wmkSmVgJmbzWiX2idK2w=
X-Google-Smtp-Source: AGHT+IEGiMJoLIMjx5zyljEp90fL86O4kiqQ25tLXsQTYyIDtzz8qjStVtrHSSOGXCpxDhm4kVf5OA==
X-Received: by 2002:a05:600c:4fd2:b0:471:9da:5232 with SMTP id 5b1f17b1804b1-4778fe62164mr189433135e9.15.1763562948802;
        Wed, 19 Nov 2025 06:35:48 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm39973399f8f.26.2025.11.19.06.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 06:35:47 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v8 3/6] arm64: dts: renesas: r9a08g045: Add PCIe node
Date: Wed, 19 Nov 2025 16:35:20 +0200
Message-ID: <20251119143523.977085-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G3S SoC has a variant (R9A08G045S33) which supports PCIe. Add the
PCIe node.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- dropped max-link-speed

Changes in v5:
- updated the last part of ranges and dma-ranges
- collected tags

Changes in v4:
- moved the node to r9a08g045.dtsi
- dropped the "s33" from the compatible string
- added port node
- re-ordered properties to have them grouped together

Changes in v3:
- collected tags
- changed the ranges flags

Changes in v2:
- updated the dma-ranges to reflect the SoC capability; added a
  comment about it.
- updated clock-names, interrupt names
- dropped legacy-interrupt-controller node
- added interrupt-controller property
- moved renesas,sysc at the end of the node to comply with
  DT coding style

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 16e6ac614417..8fd3659b70fe 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -717,6 +717,71 @@ eth1: ethernet@11c40000 {
 			status = "disabled";
 		};
 
+		pcie: pcie@11e40000 {
+			compatible = "renesas,r9a08g045-pcie";
+			reg = <0 0x11e40000 0 0x10000>;
+			ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x08000000>;
+			/* Map all possible DRAM ranges (4 GB). */
+			dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 1 0x00000000>;
+			bus-range = <0x0 0xff>;
+			interrupts = <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "serr", "serr_cor", "serr_nonfatal",
+					  "serr_fatal", "axi_err", "inta",
+					  "intb", "intc", "intd", "msi",
+					  "link_bandwidth", "pm_pme", "dma",
+					  "pcie_evt", "msg", "all";
+			#interrupt-cells = <1>;
+			interrupt-controller;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie 0 0 0 0>, /* INTA */
+					<0 0 0 2 &pcie 0 0 0 1>, /* INTB */
+					<0 0 0 3 &pcie 0 0 0 2>, /* INTC */
+					<0 0 0 4 &pcie 0 0 0 3>; /* INTD */
+			clocks = <&cpg CPG_MOD R9A08G045_PCI_ACLK>,
+				 <&cpg CPG_MOD R9A08G045_PCI_CLKL1PM>;
+			clock-names = "aclk", "pm";
+			resets = <&cpg R9A08G045_PCI_ARESETN>,
+				 <&cpg R9A08G045_PCI_RST_B>,
+				 <&cpg R9A08G045_PCI_RST_GP_B>,
+				 <&cpg R9A08G045_PCI_RST_PS_B>,
+				 <&cpg R9A08G045_PCI_RST_RSM_B>,
+				 <&cpg R9A08G045_PCI_RST_CFG_B>,
+				 <&cpg R9A08G045_PCI_RST_LOAD_B>;
+			reset-names = "aresetn", "rst_b", "rst_gp_b", "rst_ps_b",
+				      "rst_rsm_b", "rst_cfg_b", "rst_load_b";
+			power-domains = <&cpg>;
+			device_type = "pci";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			renesas,sysc = <&sysc>;
+			status = "disabled";
+
+			pcie_port0: pcie@0,0 {
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				ranges;
+				device_type = "pci";
+				vendor-id = <0x1912>;
+				device-id = <0x0033>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+			};
+		};
+
 		gic: interrupt-controller@12400000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
-- 
2.43.0


