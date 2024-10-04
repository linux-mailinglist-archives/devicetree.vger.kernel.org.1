Return-Path: <devicetree+bounces-107754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F97498FEB1
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:13:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52ABD282D03
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F18313C8F3;
	Fri,  4 Oct 2024 08:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NAjYK6iV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95C613D899
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029574; cv=none; b=dJKTFq51CQDFL1HRjE7dpCsjDGS6dtx655ywLD+7eFRNwUnlEv4SlV510WqBrTxYy0ugzhPZwTXiRsWgX9RPGFwOqDmOoB5WjGJNe1eeZvK6n2Hu14yF+OyyMEkcgVHij/nfblXxeAmSbzl9Ko9pUotU+2kY+r8hXcXXiOBKA5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029574; c=relaxed/simple;
	bh=H1VJkOfMZE2T04HxxlpkY8dN0P5tJJDnmZJxfggidqg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mULLy8RJJgU953V8mv5kXRsEuCWO7uykaDBb07d5PNP/KN06nXVWCGqTjSriNjvEaNg8fKjtRcMz5l4mzz56AXhkuic81RIqac/0D2gauNhye38W6oFJIRiRGTljI7en5BWeuFvXHWqrRrq+HnxhgPQipkhu1Wa9fHzv1vnVqxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NAjYK6iV; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20b7463dd89so20318305ad.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029571; x=1728634371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51XTVsZzEt4mq71MSs0yqggO8rkXWZxGhVvPUO2dS4I=;
        b=NAjYK6iVVLFEQ4gGSZ9IYFzUOj4/F7KzKd/FOz6DRBbckLpVyEzjhUvh+NIYOnd7Gh
         lIy/95EJYhFornWJrNMo2tvzE5r/hPUUKw+ZmDeBEviAewUcXtPzgqQAR8yUoMN4wide
         YdJY3v5sUk1B8JJnm9TD+xTbZEL3jbTcXqpiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029571; x=1728634371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51XTVsZzEt4mq71MSs0yqggO8rkXWZxGhVvPUO2dS4I=;
        b=qmTjHR9pqeeVJseJU/0UtNZQCg/DWISpnkHaUIxTFOm4gsp9Q7a1zScoZMemu1RH0W
         wkdrGuyMZTwqxVswVTO3jIqo2ClUNyk/fzA2yx8DkbWt/otMMEP2FAgzKCqMxKP8hoAV
         RYcyWkoCmpTnCPRBu9OIPHvVhQe8Boza1OenBrc3mXwRQEJAAiyGgaOu8vIPElfbBxtp
         2glR6WYGGB0fnnDrrv1rjpsMrk+si1tFMzo1rK2+AnT+oTRYt72AKqXxIpfTt3k8e4Yl
         blzvtl7nObEO+/zDd0FvYndj0bLNQwO+t+jcMIfoXRMTL3IHEbG1Cw4bMDBOtQ+rHTsk
         Jq5w==
X-Forwarded-Encrypted: i=1; AJvYcCX2/WbBii49e8wzt5KGIQ6zhpt9qYwjABPWMmZ2h2i4FzEbkon2C4+zFt9H3KrNqe0g3xAabNQEKNjz@vger.kernel.org
X-Gm-Message-State: AOJu0YyMNZs2CBQY4wVhu5WosMqV+m8YE5ILxyr5uCtksI/N02+nsz4Z
	aFOXwbP6u/o1FOxKLmigkaRLW7g8K+K1wNQOVdsVROsZppa06mlWPnSGJ3ZmVQ==
X-Google-Smtp-Source: AGHT+IFyMA3M/DNWq/zKUz0UfhJqSPFA7wlM693F6oloupjh2iNEoH5dRNi6WQAnKOnmbqg42ucsIA==
X-Received: by 2002:a17:903:32cc:b0:20b:a9f3:7996 with SMTP id d9443c01a7336-20bff17b269mr28842715ad.51.1728029571249;
        Fri, 04 Oct 2024 01:12:51 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:12:50 -0700 (PDT)
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
Subject: [PATCH v3 2/9] arm64: dts: mediatek: mt8188: Add PCIe nodes
Date: Fri,  4 Oct 2024 16:11:54 +0800
Message-ID: <20241004081218.55962-3-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241004081218.55962-1-fshao@chromium.org>
References: <20241004081218.55962-1-fshao@chromium.org>
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
  The binding patch:
  https://lore.kernel.org/all/20240926101804.22471-1-macpaul.lin@mediatek.com/

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 64 ++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index e216a0b40b9e..3cc00a898cc9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1766,6 +1766,54 @@ xhci0: usb@112b0000 {
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
@@ -1780,6 +1828,22 @@ nor_flash: spi@1132c000 {
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
2.47.0.rc0.187.ge670bccf7e-goog


