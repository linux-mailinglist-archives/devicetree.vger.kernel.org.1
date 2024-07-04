Return-Path: <devicetree+bounces-83177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D992774A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 15:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 924AC1F23AC9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 13:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C041B013D;
	Thu,  4 Jul 2024 13:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KKpOXSoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE221B0115
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 13:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720100213; cv=none; b=NWTxLBiVFfxFiadEPCO/n1Z9z7kxbmj4u/jc1D2huZAyenjLF4Z0NVj69QBQaPST7Q3esw+y1y9ytGbd0OANlpf82T1h+IYZcrLP0AK9TbQiclE5YTvkME94VzHT4Rm/XTABN3kXVpKWCkSiIgMpGXLBpwrHX1fEcyeT1NgjGew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720100213; c=relaxed/simple;
	bh=NWQ/+FxNiWlPrriG/RCWg4yhrkTbbHsDm3/fAZGeotE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qgBRG24zIEp8sSuzmw0slr0GttAeB97Dj1kAHyiT+20jmfHqBKPbIUhe4/rxsx3Y23LYK44HVPR2aCcnwnZ6O8XHXIhm3QqEZcZrSnwSbB2cAfGJspe3iRB91Yrlzw0N4uRHKcLyh3bu9y+tomcLuM9Rit0ZDVpbyOUycPixDq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KKpOXSoV; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52e7693c369so843510e87.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 06:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720100209; x=1720705009; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/0KWVZAazUejIoLcfyGV2EIZ0xgocIz1579DC73ilE8=;
        b=KKpOXSoVnp2QDTvF3K8wxmq9d3gtRlXSwCWGAi6+yf121e4/4X6oHnEfDtoxiMVmkq
         BDRXHKYR8bgSyDfrrRPFLDTTGHpLIjNTY8TeO+VdvwZCPEw2IePLabLsNqp2wtbe48od
         rbooE/IM8csD5PF3IDsMkdw6+qq8lJeBFF9cfk/2tAL8foCXWzD++YzAz3mjzx31Zhgm
         JeOc6lvMjwjtlDgOk0ewHC0hw5mdVGv5puBPRD2oqmK6Sbjt9G8oJ5tQpHMMDYr53xJn
         wWa5M7nH8ImM0AWSGgjBzc3y0u8f5m+Kjh0Wcm2db4z8Vv1YKiQIzlVSvaQkkZny5y4S
         ICYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720100209; x=1720705009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/0KWVZAazUejIoLcfyGV2EIZ0xgocIz1579DC73ilE8=;
        b=npoSOF9w4Yagz2xTspSpXDEAvxEsPBtdsbsO77E3NBLgZsn8kFvAuhIxmXozp1Kw7b
         3/oxds/AnCvqNUBcAHGAnfoyLBJYgqlX9eJLoVooARtuSXs35x0tYgd4XvFJANTICv40
         M8W0ynotifzH0zNppVE0hgPlgt1pikuvRkceey0RfX2D+ZWP+joRvyNjO/Uwto6l4TVY
         PM6DE7dpAhUPl7Zz8JXS0RcyMwb+YwZRA7ii1p+YV9K3k/Ln2oPiQC9JW60JkTE/tQJ0
         zoO1GQ9JariImaMO4lqPSTkco1muGf+Q2/kymXCnvZY+CSLVCYCBAJUV/AvleCmUvzCR
         mwMA==
X-Forwarded-Encrypted: i=1; AJvYcCUGqZbJGpDXNOtqYEnP0O6zL43oFfZbdjZwAzjsf3inLpS/qpgRSn+4apVRpkYuQM0hnpESlpyzinRpCP8eLDBTmRZcCmDPYbbESg==
X-Gm-Message-State: AOJu0YxgfZDW8csxPiukrkvQI2DR+nxX0HGBFxK63RRJ7Yu+fDZ1H0uU
	mfPOA4Mjbc80WsaBcy1/RsoEynFCKl81X/cNoLYoCj/MPXH+C0ESRRexdfG+mYz1g1R+YhlPVJp
	7
X-Google-Smtp-Source: AGHT+IE+XUgzIP2fhSWzqNdccIr/yDFzS1seo1QGzBE8M/IswaP+OxSP7/SNQRIVCTgrLI5teEx4UA==
X-Received: by 2002:a19:c20b:0:b0:52e:768e:4d1f with SMTP id 2adb3069b0e04-52ea0643b98mr1166545e87.36.1720100207994;
        Thu, 04 Jul 2024 06:36:47 -0700 (PDT)
Received: from [192.168.42.0] ([2a02:8428:e55b:1101:1e41:304e:170b:482f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a2ca5d5sm25382025e9.30.2024.07.04.06.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 06:36:47 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Thu, 04 Jul 2024 15:36:44 +0200
Subject: [PATCH v5 5/5] arm64: dts: mediatek: mt8365: Add support for
 camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240704-add-mtk-isp-3-0-support-v5-5-bfccccc5ec21@baylibre.com>
References: <20240704-add-mtk-isp-3-0-support-v5-0-bfccccc5ec21@baylibre.com>
In-Reply-To: <20240704-add-mtk-isp-3-0-support-v5-0-bfccccc5ec21@baylibre.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Andy Hsieh <andy.hsieh@mediatek.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.13.0

Add base support for cameras for mt8365 platforms. This requires nodes
for the sensor interface, camsv, and CSI receivers.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 125 +++++++++++++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 24581f7410aa..cabdb51f4041 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/power/mediatek,mt8365-power.h>
+#include <dt-bindings/memory/mediatek,mt8365-larb-port.h>
 
 / {
 	compatible = "mediatek,mt8365";
@@ -703,6 +704,23 @@ ethernet: ethernet@112a0000 {
 			status = "disabled";
 		};
 
+		mipi_csi0: mipi-csi0@11c10000 {
+			compatible = "mediatek,mt8365-csi-rx";
+			reg = <0 0x11c10000 0 0x2000>;
+			status = "disabled";
+			num-lanes = <4>;
+			#phy-cells = <1>;
+		};
+
+		mipi_csi1: mipi-csi1@11c12000 {
+			compatible = "mediatek,mt8365-csi-rx";
+			reg = <0 0x11c12000 0 0x2000>;
+			phy-type = <PHY_TYPE_DPHY>;
+			status = "disabled";
+			num-lanes = <4>;
+			#phy-cells = <0>;
+		};
+
 		u3phy: t-phy@11cc0000 {
 			compatible = "mediatek,mt8365-tphy", "mediatek,generic-tphy-v2";
 			#address-cells = <1>;
@@ -773,6 +791,113 @@ larb2: larb@15001000 {
 			mediatek,larb-id = <2>;
 		};
 
+		seninf: seninf@15040000 {
+			compatible = "mediatek,mt8365-seninf";
+			reg = <0 0x15040000 0 0x6000>;
+			interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&camsys CLK_CAM_SENIF>,
+				 <&topckgen CLK_TOP_SENIF_SEL>;
+			clock-names = "camsys", "top_mux";
+
+			power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+
+			phys = <&mipi_csi0 PHY_TYPE_DPHY>, <&mipi_csi1>;
+			phy-names = "csi0", "csi1";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+
+				port@3 {
+					reg = <3>;
+				};
+
+				port@4 {
+					reg = <4>;
+					seninf_camsv1_endpoint: endpoint {
+						remote-endpoint =
+							<&camsv1_endpoint>;
+					};
+				};
+
+				port@5 {
+					reg = <5>;
+					seninf_camsv2_endpoint: endpoint {
+						remote-endpoint =
+							<&camsv2_endpoint>;
+					};
+				};
+			};
+		};
+
+		camsv1: camsv@15050000 {
+			compatible = "mediatek,mt8365-camsv";
+			reg = <0 0x15050000 0 0x0040>,
+			      <0 0x15050208 0 0x0020>,
+			      <0 0x15050400 0 0x0100>;
+			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&camsys CLK_CAM>,
+				 <&camsys CLK_CAMTG>,
+				 <&camsys CLK_CAMSV0>;
+			clock-names = "cam", "camtg", "camsv";
+			iommus = <&iommu M4U_PORT_CAM_IMGO>;
+			mediatek,larb = <&larb2>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+					camsv1_endpoint: endpoint {
+						remote-endpoint = <&seninf_camsv1_endpoint>;
+					};
+				};
+			};
+		};
+
+		camsv2: camsv@15050800 {
+			compatible = "mediatek,mt8365-camsv";
+			reg = <0 0x15050800 0 0x0040>,
+			      <0 0x15050228 0 0x0020>,
+			      <0 0x15050c00 0 0x0100>;
+			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&camsys CLK_CAM>,
+				 <&camsys CLK_CAMTG>,
+				 <&camsys CLK_CAMSV1>;
+			clock-names = "cam", "camtg", "camsv";
+			iommus = <&iommu M4U_PORT_CAM_IMGO>;
+			mediatek,larb = <&larb2>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+					camsv2_endpoint: endpoint {
+						remote-endpoint = <&seninf_camsv2_endpoint>;
+					};
+				};
+			};
+		};
+
 		vdecsys: syscon@16000000 {
 			compatible = "mediatek,mt8365-vdecsys", "syscon";
 			reg = <0 0x16000000 0 0x1000>;

-- 
2.45.1


