Return-Path: <devicetree+bounces-88986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 274EE93F8A2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 16:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A74191F2210C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 14:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA0515666D;
	Mon, 29 Jul 2024 14:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U/hOehe7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36EA155A58
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 14:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722264497; cv=none; b=mPXR27EfXZVVKtnSUNVJh8lG2pMqqSUGC0jDgsuDEW0xb03hv7N+7kPHtFmKk7Ka31A8W3AixqpvoJusksHJ9/hqFPqwQ7aPAr0agFXMsvuHD6namli+rsuW/4SMzOV5/0s/EehHHa/ucx8aEQrNPeKkB6OkuMlU2tsYaGoER8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722264497; c=relaxed/simple;
	bh=NWQ/+FxNiWlPrriG/RCWg4yhrkTbbHsDm3/fAZGeotE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lp9ubuM+IWsdLqeG28H01NNYA1lKKjlkqImgVdb8L2fDGHWwnDBUCZhG5tB4GTJRT81lMzjBHNkQlazT1llTMaL3uZrBjF9Gx28ddsIDBVFWCLVdFEcvaDavukMmy+UCyV1X2VY0Oo4Kvlp9fKtJcN8Dtp6t7SAh9MQtvqsl9SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U/hOehe7; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4281abc65daso10835555e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722264493; x=1722869293; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/0KWVZAazUejIoLcfyGV2EIZ0xgocIz1579DC73ilE8=;
        b=U/hOehe7JKTmsYZgVtz9XTdzRz5IMsr0PBOK8yp1+dehEhTjPHmRiMeQAm76bMmMT5
         2LBRC8KQSOEmn37I1gtv+b73h35r3QNZdooRNGJdwSDxNbThB9BEk8FExbqQRKjxmzW3
         si6c5iPifX7xqxugo7MctAKqU+vz42klEaJI/BQZMxlk9lZ4sKu3j8Ue1Ux/PJu0UfGy
         GLCQjPR8VKVahbi6b90ItzF3Nk2DIIYC85hdar6PNrbEbCBCgxLgtR70vppNwem4sBU3
         HkBRK5IkSTz1zGcJq8BLb28djnB1TJfKdjT8tHYAVGmgdR2p6AaVXBrX04Hv6kz3iFY7
         mFkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722264493; x=1722869293;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/0KWVZAazUejIoLcfyGV2EIZ0xgocIz1579DC73ilE8=;
        b=r8VEFjhyduKhwPSga1Akn7Wz3IXakuDUWwdYdXwRKk+2MVrQB0XIZp/pCvvoSFnUIG
         +uQaizu9v+0UwVPSUSo6da8036yNV36um5tdQF65MfyLL0tFwa1LE3wqi0yBVJnl/N4H
         80T6dj4aywIk6UpAI07IKDNcp182ayKJEOdL81woMHF7MyZqr7I2XMUu34JW8GeJ+zh3
         W7HMf+8zGK/Spw80389H/cW5fRbmn7ZWRwy7n2rdYhyGGKYA7dzkAjGArh0boxZSqLBM
         m/vMogJ3WxmGDDOIu4KDy5+i4Rz5zjud6hNqnN+BeJTWBIEiK5qxM6fsSN4rIteUVbUi
         yWZA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ0BEN95zksR3NEcnvxnST/j/Y1YR9jZGVmQ0I7ePdFtFCI4uyQ5Pp0Z3dB4ULw/5vC3yz4zVoAsNRQPSqH9Z3r92XX3fW7srLQA==
X-Gm-Message-State: AOJu0YxekBrz9akA3Kq6X+fCft0VObvPGG5bEFT17rvqrihsVjxoH5xB
	J2YVxD8x8x2Wp0fe6Cb4rpVcDUBwypx564tyJ04gA4xq1CVrJfqTHdZGs7hm81k=
X-Google-Smtp-Source: AGHT+IES43dsB88pOWowCZDjQUgfhJCapGqHMmVWsAEmurz0DmUV9AN94vXTX24YzUWQSKDYVqd96g==
X-Received: by 2002:a05:600c:4fcf:b0:426:62c6:4341 with SMTP id 5b1f17b1804b1-42811d9cb8emr51617445e9.20.1722264493259;
        Mon, 29 Jul 2024 07:48:13 -0700 (PDT)
Received: from [192.168.42.0] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428057b645dsm180091705e9.43.2024.07.29.07.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 07:48:13 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 29 Jul 2024 16:48:04 +0200
Subject: [PATCH v6 5/5] arm64: dts: mediatek: mt8365: Add support for
 camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240729-add-mtk-isp-3-0-support-v6-5-c374c9e0c672@baylibre.com>
References: <20240729-add-mtk-isp-3-0-support-v6-0-c374c9e0c672@baylibre.com>
In-Reply-To: <20240729-add-mtk-isp-3-0-support-v6-0-c374c9e0c672@baylibre.com>
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


