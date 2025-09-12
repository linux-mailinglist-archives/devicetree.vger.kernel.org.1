Return-Path: <devicetree+bounces-216465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B2BB54DA3
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4129464190
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33CA130AAC1;
	Fri, 12 Sep 2025 12:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="V/pwBTJl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BA63081B8
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679899; cv=none; b=maYMzNiDGQuJi29pwNsm4n97zX3irPIp6NYzl1JFswz/Eqm1WxSRqe/bZ5eOweyoZtUcMTe14UAluPuW1oWfPGhI64X0EvfBBFc8KPfR238yOosNpXkt29ci49wwk/evJ7uLtOY20vSKzX5wnybGT+4Zlz61ECE2I30KODmuifM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679899; c=relaxed/simple;
	bh=Idy4MnnwyW73LgvtKGSX14OK328le/bFhSLD/4KKkrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DaTRjbzRvRsYtwjigflSzcInUH3O/TSqiq+XmJa9ML2/2RoQ0JuMyyC/SXi/1MdNIHQGhwbc6lQY9Mk86EqI5UhAfBKDp1YZS556O+PX1p9Rr/NutjqCpfLU6dCy9wInxAjaNyQJESqdyo00hdger5kOo+gfH2o/Sl+hl9//PjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=V/pwBTJl; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3e537dc30f7so1052458f8f.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757679895; x=1758284695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tR5SdXAMox76biQwuBynNAnyY0Z5laSJHWc9eKoORtQ=;
        b=V/pwBTJlGQhhEpalanNwo5Bi6ltXbb3S6Z3gNNlVOzP0dcFyc6WKQJuX/jlBVg5pSd
         cAAE/NxwryFUGmFmTcKQw1c2c2/LriAGaT1+CxD6TOC0W26aDQLaN8thBXSxy8VUzN4J
         rxrVPLpOgZQYXFtEqJ3ELbiCy/dVNfiS7OkSU3MNfDMKxJfQ/XMI78AsQwrpb3RKJeZu
         JSTbXS7UffHKPH6QlI25UELN8OUDial74TBHJOKC+jNXBTQnkXTO+UYQxichfuCdzDpc
         YqYMLfmPceDKV2ti20Sv9HIfBhVA80NAMOuboYLI210CmNro94rEW2rdTYMnl6B5Jo4k
         S3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679895; x=1758284695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tR5SdXAMox76biQwuBynNAnyY0Z5laSJHWc9eKoORtQ=;
        b=k2kcTzVF8SxwnmsPRdkHHk1+1qUrneow0PL/ookb/X6O5fjc5TyVgtpgImxymwe7Kx
         lvZjDn8aHXDLKERNOpth+BjzxPGJbE6mEphKl5ZahuypMEzQqWBaA9qAe1TNDGJtlHhc
         XXdFgKNhrX/lW70N7GjVASTQ4aQnBJaG+cKrpxPfJ9Gi+sXBi3FFZvLp1ThjMsg6YBTN
         aLJPVFnLtUwSaNyhtzKQqRsOxbJJwe4WuUsasSOoV6TYuTV/KUdBbiPPoU8aRT3H1a3I
         Uif2HhdSqT52Uf3YZtFqOVntWiruER/ErOzYiDFFt1OzBD6rrkdLbajGS0Z5qMqilEHs
         xsCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPDfgcqWED3cg8dlignd+Urzsp+/TMNelN840Y5orKqVjiC/hCiGoC7HR6kpcHaQd1354tYsDvKRBc@vger.kernel.org
X-Gm-Message-State: AOJu0YyAW1T4NwvXxBIR5w67SsqCQklQ2DifSHw4X4Kz3lrDB9O4AjhT
	zw4sAV9KyLmrYLRUCCHY9sB1Q/hWOKihWZiAuz3pqUqgKSBrp3BHUiNeJof9WdZzAaw=
X-Gm-Gg: ASbGnct76BsAYPPSlnGKkH/sPc2EgZi/le2yCo9s/cMXO+3jv6A3CT3yvuk16lfAyfV
	iwKDpCtej3vjnFwYzdGX+i7DBK5oBiEr1f8Kwyyt/mjBWJDbVBEcDETxZcJDhcvgnUsasgh2C2U
	tsXpafoJ62KLZHMGfgS0LPQVXNnOKD6+MRC8i9HGsdbScA2vCBDZ+wT2kkuKOOopZ8k1uJ+pP7B
	Bsa9ZWNGPrCmQxQEVM1w/BnBMXXg06e3NUog/NGyShGCGz1jQEMDeEjMWMmhwZw3EahkWCJ8McA
	lsXT6yQ9TpFDC4uxVePMNUUKTdBGV+9AuVGTNELj2ime0zZvUK837hJIPoCaFYwXUZdwzCrrLWz
	Nq5W/qvC5+hO8io9ZWj3Z7INwCZkhsZiWRe8KbM0dvkLuOsB35aEmZedMZRb6BWI=
X-Google-Smtp-Source: AGHT+IHWMOoqmrLz2UUn1TPJK4AmGOtrCtrlHF6djOW8GPJ6Hq1GA4Nbs6eAupjjvds1Vk3ou1VUJA==
X-Received: by 2002:a05:6000:2405:b0:3e7:639a:9992 with SMTP id ffacd0b85a97d-3e7659f3c8fmr2729978f8f.42.1757679894644;
        Fri, 12 Sep 2025 05:24:54 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607770c2sm6320091f8f.8.2025.09.12.05.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:24:54 -0700 (PDT)
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
Subject: [PATCH v4 3/6] arm64: dts: renesas: r9a08g045: Add PCIe node
Date: Fri, 12 Sep 2025 15:24:41 +0300
Message-ID: <20250912122444.3870284-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 66 ++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 16e6ac614417..8bf6601c8710 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -717,6 +717,72 @@ eth1: ethernet@11c40000 {
 			status = "disabled";
 		};
 
+		pcie: pcie@11e40000 {
+			compatible = "renesas,r9a08g045-pcie";
+			reg = <0 0x11e40000 0 0x10000>;
+			ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x8000000>;
+			/* Map all possible DRAM ranges (4 GB). */
+			dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 0x1 0x0>;
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
+			max-link-speed = <2>;
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


