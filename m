Return-Path: <devicetree+bounces-107400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E67598E9FB
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 841E8B2349D
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C90D12BF32;
	Thu,  3 Oct 2024 07:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Cq4uctbo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD03B126C05
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727938915; cv=none; b=Q/hfD0a1jdBzrShVOP81RqUQqowO7K6wNVePdU1ssyX4o3/KajaA1kabj2ElqPmgz/gQgG+MjKPHc5DncGeQsOcfFRWJtt0ZPkRVaavibyJWNpwZhyHMxE80wV6ucXIyj5oHml45qs6A+q0XqtGK/Sm2MV2r0wAXJDMZrmscd8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727938915; c=relaxed/simple;
	bh=0mpLEj9yVGBPVockx2HmuEIpJAkRSQyoa+ZWdgYrad8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fEJLAxIv/JIEXbrOvT3s8hnXDoEg66IzVY6xg4nCxcdLcKx8ikwkQxWU8JQyxOk49oYU1LsNs/Hd26j/CnVZXtguNbNzx2jmEm105vWKvyUtOk17YSVCk6li8NNIgIvoVjqNtiQX4prPxJhrdnkxd9JOTdmFYGfRgm0jIwBE824=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Cq4uctbo; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7db90a28cf6so1148677a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727938912; x=1728543712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aWjhvVZMIKZFWQGVvBTmWBQtbFvDraf8qJPfgaxmV8E=;
        b=Cq4uctbo6qGuDjh2SiJMCTOdRZKgcche+M3fMRNOPAYWf2oobPW0FXlOK2/0qAxKl+
         FrR3vzWGg7SR3HocOPrgd6ofnMUKTNsroDD7X4+/iXsp04+JTE1C0BOkb5HwYbty0JMJ
         beMA5OcQkp8aBqYAp8RUYEFT6WPzHpnuvZb8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727938912; x=1728543712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aWjhvVZMIKZFWQGVvBTmWBQtbFvDraf8qJPfgaxmV8E=;
        b=l1EgDsX0JOatCPnV3yOXvEFq9G3co+GGp+vHiGoT/zEGxAXlLsBHJFnmNJuVPPwxWr
         hT50jDodsxthPGmisfki7ccOTA0c05Vyc3qb3mGSEcXaVS1rkOvtHXgURVWtAUr9cMUS
         4Dwekl6Gee/SEbAkbeqYgLN47HV8BlYR00FXHZF2Mw7kDNCrA29bUqjaLgjdgUFIyStj
         FUDOA6eEW2Fo49hQFJ8rA3LaQcVl1fKGzbi0Lq1yKsdFyYRqai/EpnLv+z+IPDY9qgx3
         oEcJhE2NU2Cq/lC7gk0K+1pbX7K6LX0Gkhi/vMs+yeOsfdmo0kSgvCSB4ZEw0QgoTtAq
         LAjA==
X-Forwarded-Encrypted: i=1; AJvYcCUaPLgTmQi8DfV1zXoJ99Ij+1CK8cNM89zSDX+sZs4wXqHZ9aTHO9JhDNZIbaQcOoD2zNZyBoq0YBMA@vger.kernel.org
X-Gm-Message-State: AOJu0YzaOAq0EvjYxYb/3IidPRjCmWe+NcCn69OVbuHvucXtzquavXxo
	oQG4fM6rR3UdIqeCXm41IZulTaGeW7o8QSneJS9j2yXGq2gR+AyY22OTXioRLw==
X-Google-Smtp-Source: AGHT+IGhrhDbzrLuVxP6LwbUL6ZECwPUpOpG8SVbkabencZcbtS6o7ftPals6nEeuoFPkwElfXd0PA==
X-Received: by 2002:a05:6a20:c89b:b0:1d5:10c1:4713 with SMTP id adf61e73a8af0-1d6d3a8b86emr3319481637.14.1727938911986;
        Thu, 03 Oct 2024 00:01:51 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71dd9d8e473sm633782b3a.81.2024.10.03.00.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 00:01:51 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/9] arm64: dts: mediatek: mt8188: Add PCIe nodes
Date: Thu,  3 Oct 2024 14:59:56 +0800
Message-ID: <20241003070139.1461472-3-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241003070139.1461472-1-fshao@chromium.org>
References: <20241003070139.1461472-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add PCIe node and the associated PHY node.
Individual board device tree should enable the nodes as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v2:
- add linux,pci-domain to PCIe node
- add power domain to PCIe PHY node.
  The binding patch:
  https://lore.kernel.org/all/20240926101804.22471-1-macpaul.lin@mediatek.com/

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 64 ++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 10195a4e4e9d..23101d316c4e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1763,6 +1763,54 @@ xhci0: usb@112b0000 {
 			status = "disabled";
 		};
 
+		pcie: pcie@112f0000 {
+			compatible = "mediatek,mt8188-pcie", "mediatek,mt8192-pcie";
+			reg = <0 0x112f0000 0 0x2000>;
+			reg-names = "pcie-mac";
+			ranges = <0x82000000 0 0x20000000 0 0x20000000 0 0x4000000>;
+			bus-range = <0 0xff>;
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			clocks = <&infracfg_ao CLK_INFRA_AO_PCIE_PL_P_250M_P0>,
+				 <&infracfg_ao CLK_INFRA_AO_PCIE_TL_26M>,
+				 <&infracfg_ao CLK_INFRA_AO_PCIE_TL_96M>,
+				 <&infracfg_ao CLK_INFRA_AO_PCIE_TL_32K>,
+				 <&infracfg_ao CLK_INFRA_AO_PCIE_PERI_26M>,
+				 <&pericfg_ao CLK_PERI_AO_PCIE_P0_FMEM>;
+			clock-names = "pl_250m", "tl_26m", "tl_96m", "tl_32k",
+				      "peri_26m", "peri_mem";
+
+			#interrupt-cells = <1>;
+			interrupts = <GIC_SPI 791 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-map = <0 0 0 1 &pcie_intc 0>,
+					<0 0 0 2 &pcie_intc 1>,
+					<0 0 0 3 &pcie_intc 2>,
+					<0 0 0 4 &pcie_intc 3>;
+			interrupt-map-mask = <0 0 0 7>;
+
+			iommu-map = <0 &infra_iommu IFR_IOMMU_PORT_PCIE_0 0xffff>;
+			iommu-map-mask = <0>;
+
+			phys = <&pcieport PHY_TYPE_PCIE>;
+			phy-names = "pcie-phy";
+
+			power-domains = <&spm MT8188_POWER_DOMAIN_PEXTP_MAC_P0>;
+
+			resets = <&watchdog MT8188_TOPRGU_PCIE_SW_RST>;
+			reset-names = "mac";
+
+			status = "disabled";
+
+			pcie_intc: interrupt-controller {
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+				interrupt-controller;
+			};
+		};
+
 		nor_flash: spi@1132c000 {
 			compatible = "mediatek,mt8188-nor", "mediatek,mt8186-nor";
 			reg = <0 0x1132c000 0 0x1000>;
@@ -1775,6 +1823,22 @@ nor_flash: spi@1132c000 {
 			status = "disabled";
 		};
 
+		pciephy: t-phy@11c20700 {
+			compatible = "mediatek,mt8188-tphy", "mediatek,generic-tphy-v3";
+			ranges = <0 0 0x11c20700 0x700>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_PEXTP_PHY_TOP>;
+			status = "disabled";
+
+			pcieport: pcie-phy@0 {
+				reg = <0 0x700>;
+				clocks = <&topckgen CLK_TOP_CFGREG_F_PCIE_PHY_REF>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+			};
+		};
+
 		i2c1: i2c@11e00000 {
 			compatible = "mediatek,mt8188-i2c";
 			reg = <0 0x11e00000 0 0x1000>,
-- 
2.46.1.824.gd892dcdcdd-goog


