Return-Path: <devicetree+bounces-107207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CAE98D26D
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:47:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5FF41C20E88
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E9220013D;
	Wed,  2 Oct 2024 11:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HNT8HANc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CE220012D
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869616; cv=none; b=f6c9/U5M+GzGMTrcgTiP0oXXl5Xh+OdQxo8mOXZ4eszFoqivXP7oXcvrWpkmk12jEG2FBTfjE8pWqNUteJPOJl/jKjC04yjG3YB+QnKBF+BEbwXUGXTQ0vLUK7aVYnhJ9/LEXEF7d6If19nOJqGG2bnCSnnl1BhpHxU9tlQqeLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869616; c=relaxed/simple;
	bh=mipeEvU1J89wMVim6pdjhVU/AspUy4kZ4peeC45vE/s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JHUaGbRoLoEZPQ5nsUXO/EF1bnYUr2dHXT8+ksC3yQlr6pRpgm/9mERFy2QutiwyWgeq+6rEtF4dXn5yjtgz+DdPLl97bDKGnmwcWB0SWVmDvMY926ZR+c0ZGEHHxEbAh/DD7MjmqZb+llAWNdsO2/7OxlMImpNy4ocAJLPYROU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HNT8HANc; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71dd2b6cbe6so144862b3a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727869614; x=1728474414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zqcv24UnbKvuBwfI70WgH+r7YGyISN8r86eb90rkpPo=;
        b=HNT8HANcj20MIUoFAYHBlsKWSqCfdM6bskFIxEaAdi8Hu6ZRLTSdSDS1pasy0/p8Fx
         baKbtYy2beVeOu9SilGnIv64C+iaPKz+TN9rrqd8Vx1x2wR/krs1eYfAdnsXcP5XTteF
         sQjFo2zqSy98vbSgnGp8KH6ROwMuOdRAtjQ3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727869614; x=1728474414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zqcv24UnbKvuBwfI70WgH+r7YGyISN8r86eb90rkpPo=;
        b=jD2ddyE33dvHnaMo1vR5996ZcR07t0mKkSXva3h9PpPSYHUU18NlKdYMR4JRVquEin
         YK1oDy2b8UxRpOog+K9e3a4gbK0ZvlPspesFefH1A3Vci2Yxmk9V1J3AGQotGMmXfmrC
         HaNhHAhwYkcu7kwLY+i6tIAh6OdOid/pgacEJ79t8EefUzXDlMuBvbVKGIn29PCRPBCJ
         c0u0ci7kPABhlCnQEdfA7h4QnmkAgpRt5Ip/rkzXI+Ty6IxteIAM19Js2kNrUNSIDtT7
         cGMI8d9jvIP8QhTYz84L7B7pxm8FsbhQ6n3+Ezq0n99HwQTyxMqDjCG3DQvEs8+d5Ies
         Z7iQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFeUFzkIAHqKribhRe2AVeZM35D+dEpRBJqV2oueKiCqwD5V/53E5qp6n+UvHEC70S0cgg7ZLWWoUS@vger.kernel.org
X-Gm-Message-State: AOJu0YylsBK63trmrl1Vcq7HZCMgvHh6Z21Qt5yWMG30vuUMlZnrfARz
	Wu5Y5hEuv220j8en7Rv4jQzx+aGOMx4e873R7N7J3GJprM597VOQNyQ90vTmqw==
X-Google-Smtp-Source: AGHT+IEwomWwgrAa/H+NP+99BGuS6Y7BDAEuXzdKPzHGURnkcArLhqtRMWXVinDRUNBZF2+LAcqmbg==
X-Received: by 2002:a05:6a00:4f90:b0:717:8deb:c195 with SMTP id d2e1a72fcca58-71dc5d429cbmr4642019b3a.21.1727869613991;
        Wed, 02 Oct 2024 04:46:53 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2652baefsm9639627b3a.180.2024.10.02.04.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 04:46:53 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/9] arm64: dts: mediatek: mt8188: Add PCIe nodes
Date: Wed,  2 Oct 2024 19:41:42 +0800
Message-ID: <20241002114614.847553-3-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241002114614.847553-1-fshao@chromium.org>
References: <20241002114614.847553-1-fshao@chromium.org>
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

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 62 ++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 10195a4e4e9d..9431f3c5c228 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1763,6 +1763,53 @@ xhci0: usb@112b0000 {
 			status = "disabled";
 		};
 
+		pcie: pcie@112f0000 {
+			compatible = "mediatek,mt8188-pcie", "mediatek,mt8192-pcie";
+			reg = <0 0x112f0000 0 0x2000>;
+			reg-names = "pcie-mac";
+			ranges = <0x82000000 0 0x20000000 0 0x20000000 0 0x4000000>;
+			bus-range = <0 0xff>;
+			device_type = "pci";
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
@@ -1775,6 +1822,21 @@ nor_flash: spi@1132c000 {
 			status = "disabled";
 		};
 
+		pciephy: t-phy@11c20700 {
+			compatible = "mediatek,mt8188-tphy", "mediatek,generic-tphy-v3";
+			ranges = <0 0 0x11c20700 0x700>;
+			#address-cells = <1>;
+			#size-cells = <1>;
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


