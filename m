Return-Path: <devicetree+bounces-111002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3532699C86F
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:14:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60E671C23A21
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198181AB51B;
	Mon, 14 Oct 2024 11:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SNZD1b1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D7A1AAE34
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904281; cv=none; b=lgUOM1sY/l3x4BkD85vUwRKgIrkvbTr2IrIZ9szi2EGTNeDq8SASFYo4anFNPMlOGrbQrH0rGnWlfEWwKaVQKyPbk4HgZS3A3NGJeEohC2ZjX5NWg+PEYM+mrkWZxKvcL00xxwE0/YQzItHOFZg2smrptmNth7kANMgwApU6JYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904281; c=relaxed/simple;
	bh=0Vk1BgGyCTsRz9EtA6mNehdqq+irDnXqXVtWtNGE5h4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qlmShH/NDF9xsLqYUrGaHJHS8NirGQQcl/QCN28j1ojVpa25a4vQJWK3+gYlZ0966VDGbocCG0wA1nAsHuw4i7H/MJ/8yAQfN9uwhiJLujmjJ7g0j3REXNmyMU7uEEa2EX0ZAECdJdL4aWDTVc2wmDb6OuMgjimFZj3QBun+E/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SNZD1b1q; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20c805a0753so33545665ad.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728904279; x=1729509079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LwIS9I03C/lAU1nJtc47O9K/5Y8oWUHw3UUCf3xwMKQ=;
        b=SNZD1b1qA4B008GRdkW3JfsOU/Keoi/FRCFxnNzKCTr9qYn95tD9Y+MVgquUO52yl0
         sB2y58tT74FK5FgFtrRKEyZXEYRhfpPgUtsb3bQCN5ZLfsgWucpZ1NHbO+2ZlovIzbnI
         wwYrEk9JWCKvftAHCOjGAvYi1QoUBzGJZHf/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904279; x=1729509079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LwIS9I03C/lAU1nJtc47O9K/5Y8oWUHw3UUCf3xwMKQ=;
        b=B058l5ijnNWm3q/3rjrB/fAxG2k/zRdcQA1pPiQB21TPGgJfFmHaZxTEjVOPSmY0zy
         6FAWR8HVFNdHc9k5izJfM9GMd7E6uEKUCmcjXrmN/nnSLoB6CtsZt+YB7MUDB4DU0bLV
         bWEiK7ycxWv4wwzs4B6gJbqTmQcetoRDud8prMoiDixbhn7/mC5ANKTJy0zJRID3XQEW
         BeN6WSDjr5TzZgZReuUz42aGNqvy02WoakbM2qDpEm752lFIQ4nvFLhO/tKE/AxYJX+m
         Xf461D7G/7htCTBH96UXd0xowormYZkPGMdm0Oiu9KB46CID7gXVqjCvj3x6TVnWMHfJ
         jppw==
X-Forwarded-Encrypted: i=1; AJvYcCVlsw3dUNd6B6aCMDQn8/6ix62d6EPNtvWxYEsVy9cGSZgXEPk9DDinaiHx8IjWw173sDRHMZ9QCu8s@vger.kernel.org
X-Gm-Message-State: AOJu0YwFNGFpgE5y8P+myFeniVUQ7bB5k1849EcaIv4o93RDmCPeGYEQ
	cG6ZoOD3OeXFJnx/qVARMhnVayA3n+6wD6XNK+FWAD466UA6ClYwf4FG78qKhg==
X-Google-Smtp-Source: AGHT+IFpFG9R++JpQbBp8jKqFx4zYvCgDM8kF47+6kRcMglDB5kru9b7NJ+CTGr+DS5hxHELONN6Sw==
X-Received: by 2002:a17:902:f64b:b0:20c:ecd9:960 with SMTP id d9443c01a7336-20cecd91365mr42931695ad.27.1728904278664;
        Mon, 14 Oct 2024 04:11:18 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4907:d52a:1a1a:58d0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc3e6fcsm63858285ad.118.2024.10.14.04.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:11:18 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 2/9] arm64: dts: mediatek: mt8188: Add PCIe nodes
Date: Mon, 14 Oct 2024 19:09:24 +0800
Message-ID: <20241014111053.2294519-3-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
In-Reply-To: <20241014111053.2294519-1-fshao@chromium.org>
References: <20241014111053.2294519-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add PCIe node and the associated PHY node.
Individual board device tree should enable the nodes as needed.

Reviewed-by: Macpaul Lin <macpaul.lin@mediatek.com>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v2)

Changes in v2:
- add linux,pci-domain to PCIe node
- add power domain to PCIe PHY node

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
2.47.0.rc1.288.g06298d1525-goog


