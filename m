Return-Path: <devicetree+bounces-224188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAB8BC1851
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DDB43B269F
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E852E1EE6;
	Tue,  7 Oct 2025 13:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Qy9+iF6r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC4B2E1757
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844244; cv=none; b=dxLk5OEN+SmaEnloTuizdVH6B4Sf/QX0UicsZGvE08g7L6rzykOm0o6Tjt744IuWl1O3j/pHzRZzu0bPbrqsk7wLVLmPxQoUN+pQ+Nmr58FqnK7PCHlYyKrjJpcQtOLcMDzHnkMs5GEDsk7dkLEWDlqFSBSIE/AJkNDUuwaIiO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844244; c=relaxed/simple;
	bh=RpdnNbrVn0b7dBlRv383Ehwxmz1LT5B4dkZCILAk05c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j8qShs8XjqTDs5VcBydSHAheyFiVrSpTCEom2hM+IDIYP6di5dxsrUuZoHaCQJNeKb1B81z370jMj3vDHVtpTuslO2t+DOYq9gticlrtQKMoYAzHhMsKjr/TQ4jwENoEpd3HHu0ALj9HMDMeg9bYUPgx96m4wcBnuuiYGfrkgzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Qy9+iF6r; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46b303f7469so40604665e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1759844240; x=1760449040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LT0gXBq+U1AMvRGkpBaatl/Xv/PMYwxUcE4kDcPfFVA=;
        b=Qy9+iF6rnVeqfl3IFQz6rz88zeGFtPezdp/pd/4EDoar2sDhSwueLOcFmfGtFwzzOd
         trkkZgqT6frfaqnLQmyq/BoAUkvzrHWWjZgrS8uV77WtBdemPwqZOM52ECiilZpOejJ/
         uLKJR1mG7CGdh7k07Q0uzG4ZJwoj5q3oMrSE7W7gbq1dv+u9i8xiEHP4A+HcEaYWGfW+
         Q2MVZ4szWzWX67eDasP1zYBvIOwtm/nNuOH9M16vFebYpb5/fhBVGKMGBh4rfNq/kIXV
         KJrFWE8XeJiD3Wu2myEnmE21mMkehsL6OLq9bNhCx8n05Nln9Ar6dp46f4oEJU15rHxB
         BN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759844240; x=1760449040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LT0gXBq+U1AMvRGkpBaatl/Xv/PMYwxUcE4kDcPfFVA=;
        b=MkWYEK/QUxmq27Dg9YXrH4vT7HOMTGfyUNBNR4B3dODR7BPqpuzS6EHcst0XVgIu8T
         ISKcUboF3oo2r4Gb38RImBqmTiD4FZDjHwGi2lDDZtIhykEXXw/pfp7lxJZ2xnq0scn7
         a2IRI7u8HK9XuV3laHS6lo/oAB3jTi0iZjr3vDFfa3InyrH96ZZt2ckJ2UBgmXXv2G2i
         c3x5HyglDGePbop2KLwK7GItne42TPpl6WAORHpxBHyNCrtQbPbw08vv55gWvnjEDpiR
         VLDNe+6W2klt9dANBHW6tzPQMzQpf6WSdUxOutvvR7cUKA6QXHrYbqPao/mi3YunQyQ7
         tuKA==
X-Forwarded-Encrypted: i=1; AJvYcCVdCSQUgJtkoemd7zF1c6BGHx53p5gRBw5drgj4sbscs7AkGH3bBnL/YKWqrwEADnrGj0Xjg6wfazGJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxEyhSYm+BWHBRD/syJ2veq05+p49sQfQu6pQPFMMHwnJmozzYz
	bF1+zu04T1e100QLuqNTdh1sQdjXN/exAObokbbaMk4WHkhgw7WgU+MI4TKgUSXZQK8=
X-Gm-Gg: ASbGncsAbD6RhSUXm32oY2DONLsbVGZL9iHKykCCCBMKVOlTq6tGLEMqFjBzxJRREDl
	m/PMjEwNqUFaJSEiN1STPH98aOKHxMlcah7s9/g8XcyYYPO+f57/478o6/W59QPuCUFquEl3Q07
	aeZiwZ8ZXiYyUT2hDSojjtL2j49/CSuWuPfjg9nZ7y9MdURaGq6CjLmOTLQENVGr2VgbqX88vsB
	9p6Y/jFDCSPBfBDXGPB/FFLPFKblYaGSSXlo7SYN7Wc95WYwsAV1hH1ldZ9Gqic9xvetABJo9j/
	vgojjxlhp4rCkx0/UEHQmQ4szN7VcijuCFus4kLYA/7DMNMvkRggqjpHI1QLYn7dw6Xe0v5wX7x
	6qh5qDnwI/N2YNgahNAzCSC4MMzLhaZEz
X-Google-Smtp-Source: AGHT+IEQEdqQV8aA6QCI1nIzRLsSitkSoMJ7gvZgt6Ow3HrwfSSg4Zlv8zHbr6vw3Ds4kAb+8sCGkw==
X-Received: by 2002:a05:6000:4029:b0:3e4:b44d:c586 with SMTP id ffacd0b85a97d-4256719e10dmr9134482f8f.34.1759844240083;
        Tue, 07 Oct 2025 06:37:20 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.59])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e674b6591sm272189625e9.4.2025.10.07.06.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 06:37:19 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
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
Subject: [PATCH v5 3/6] arm64: dts: renesas: r9a08g045: Add PCIe node
Date: Tue,  7 Oct 2025 16:36:54 +0300
Message-ID: <20251007133657.390523-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
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

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 66 ++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 16e6ac614417..00b43377877e 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -717,6 +717,72 @@ eth1: ethernet@11c40000 {
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


