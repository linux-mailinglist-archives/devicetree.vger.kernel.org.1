Return-Path: <devicetree+bounces-239258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D848C63178
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E25A736638F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B206328604;
	Mon, 17 Nov 2025 09:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pY9qEgNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19097327219
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370574; cv=none; b=QBx4QQja1I1/4nYg9zeNlvSa3bvBVMtChfQ8e1viS/atWQIRD49RYw0F81utNt7qARO/w1zBXY75RP8GJwyshZEW1BX8qEdymN7pMUGujxesZACQrvk99zIgBurLaGNjXruE2OgUfAhDXZErABQ6XamqUeT+cqchHSOJIr+K60M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370574; c=relaxed/simple;
	bh=kz9T2KGxOEfX5UpMNTiYKQBBW63oxNnvugSyhpgKZPA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZjwVJyhZ2RvrAplIrhzvmOem7KYE7KZnzPO24iDr8tnK0BtEppDyeRlLtzmlXM3ouKMWtBI/WQBrPh7iySAx2+RK3zrJeL/NLcFnbFrK61vg4G+ha4+NXmChRuCfoaX782sUqU4OVENRdkXnxxc6Po/bkTCTcgwf89tVNi/5h7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pY9qEgNU; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b3c965df5so2396655f8f.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763370569; x=1763975369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3FR/c9MnUrs4lL5l6XQRc5YUd7UbmmEgaYQZlcLjqA=;
        b=pY9qEgNU0zxeIQkKLPiFX9AtgxTpFm7XNHioTtkJ6UpBf7KQPFgisIsbvsKKzcX3lQ
         dqpSBPODVqkWTwgh6rI7mt21IThDLiPCVITfV+5EBpO1RpdGJ7Pqfr7xVBynixbEH2Nx
         i8nGEBaYX5rfSfS9WiJaMhiiejVecyJ6MAK56Z0ZJqsJmip7RVS7EB/tNESDLjzxpcOG
         aiSF8h+U/8NIfNi6SWnzGH+AHgVPSMT3UfEXb37UBhIsDZOUmUEcTG+tlh6aJ18m4LjL
         BldXtVjtuAlAreL+yF31ZsbYqP8JszwyzHrZpIC2JRkx51rql0YbBCBH5YawhrtEhhpU
         BGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763370569; x=1763975369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X3FR/c9MnUrs4lL5l6XQRc5YUd7UbmmEgaYQZlcLjqA=;
        b=h4N3SxUIZKbfyX27mq/z5WUs3oASl2uTXhyWg1ju8PmvUXaU3TKlugrHFOr+Fuyqi+
         jggsI2h3evEpRdWIBHbUmWIPJyQzjB2oXN9hQ4U7RT41B+dcy9CMZ1gMrliy/wiUa6m6
         P3AGwQCnuxdjSxERgM1Jf+dpdXQ7ZB6r0U9XyaiYn2S4KQ9AucqOAvxLbAwQzRM7WZJX
         AYApAvBD3WxL2QGZ/otN+F8irgatFR8Wv5MBkPsCg5yXFgZqdEksoarY6xlrywCqqTaX
         OR51EJKyMa1ogHYks3nnqJUK4tcgcuUUU2BXhYL3mZAUytHge+tlqo4j0GlwjksgeSsj
         ZHVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYjraBvbIPH25e3LcDBjtTI4+7cQTfX3KR39fRQvwG4Da0u4ZpVm/PuFKtHXpxicu4mA9MlaY3dGAb@vger.kernel.org
X-Gm-Message-State: AOJu0YxRqXPGItUk/9cOhnu42iTz5elps/Hqgz1+yYKKN/EvLbKJTsmG
	Ua2AEVic0A3iQz4JEGo4TJNI5CIyTu1sqjoiOeYZI/IYI4dE99i86INCLP9qbdQEjZ0=
X-Gm-Gg: ASbGncuprwqLKXDvaO06pzPxP4djEkyplTUgklONuilCzIkEySL6mL1zlhuI4hg3Y5S
	7GUtVwHwPQ+g0z44o3C3Wpp61MNrA6zMKWNsKlNHQOMXw8NwwoO/FDbUHKC5HC2vFYnR3Moj/S1
	TaGzWlKOaI7G/pAMdt4DrOysWEiWG1G/bNmAte99y1OjnwCfU2S9s2lhUTo/E34OBhcNl+zKx/3
	ntxnnD3Kz5jhBBIl6TyODwrwucAUJzu7gzn0Cgpgg0xmXOpmLbYdxrA18ZLpwTysDBgKwfjvFgn
	nnoGhVW7KqIN5k8KNG8MWFQpI/y9hiRJdZJmAMQIcgu6MPXoySDsjk1lacFAtdauNOErfNPa0o7
	fycxBjdDEfw2yncSvLejr5aEmIJhjqMNzfC1HxmqM7CPF0SzYC+jmkDSFg+m0QG4g4mKI6NGBug
	FMANSibGSPzcAjWNv6G6o2hU4VZvIlNT0hfXWHLt0K
X-Google-Smtp-Source: AGHT+IEeMwc9bWDg+GvUI760bic3oGssOpWM18xNbJeQXMnCLI1b1s0n6BBW747gFuj9F0UWirjv3Q==
X-Received: by 2002:a05:6000:25c4:b0:42b:3806:2bb7 with SMTP id ffacd0b85a97d-42b593458c5mr10747629f8f.6.1763370569351;
        Mon, 17 Nov 2025 01:09:29 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm25703786f8f.26.2025.11.17.01.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:09:28 -0800 (PST)
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
Subject: [PATCH v7 3/6] arm64: dts: renesas: r9a08g045: Add PCIe node
Date: Mon, 17 Nov 2025 11:08:55 +0200
Message-ID: <20251117090859.3840888-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
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


