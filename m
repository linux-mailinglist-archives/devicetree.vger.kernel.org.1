Return-Path: <devicetree+bounces-140322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7B0A1932C
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 684F71887D51
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD6B2144BB;
	Wed, 22 Jan 2025 13:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bJz47iNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1E5213E84
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737554362; cv=none; b=lZZZTR2XhK4cjkTW5Pj/N0iIh45RIRCSGKN36udjg6tYXs4Vjj/gFe5+DV0Cc0rpo5zbEbwE6KRxJ9QqxokP53IZNBoeKHmc0P0OJ3mdjrYTFt4bKf8cYlTWlYou3LVVTiovFwr0aBfcrB7tszoTbIIPgw4V7lxNe6ZLUOgA1ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737554362; c=relaxed/simple;
	bh=z0/26YU2W7bMxQBItIEPGs3sFX4Y7chqNLkxsvojV5Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ar1WiHUDHXZxN2dT+mZDnlKU/QXgAlOLv5MoF9/tG+YwPTySBz5R6AxkEi9fmeJWtCYdEB81mcsvOmfS6MUL+rDN/5oR0B5SIopVzMdD6iKjGtR/hFQv6pEJTyZAyYDNmwQz2sN6yCDke2xB9IMFnzl8wTIrobHnrptqj8jbOTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bJz47iNT; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43675b1155bso79819555e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737554358; x=1738159158; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sjObFV+5+IOFwxOPwnSxQhyUg3oWIAesTKvlJmdJGqo=;
        b=bJz47iNTeR5vTeST/gXAbPeejq8YOjLq1qDQsAPMvp+h5nHilaV3WutZNQEWjCPwRM
         Idj47rKbJohWKBppFfsp7wPgnaBY/jx5Hn3ilkhr5OACGwKpAHPVQm94CY15SBodKYA0
         1MUun2s17arXIAAFdIVfnHrI5FWPMWS6iQcE+89i4Ywa61+ZNYO8XcuzsImPVQYCd4Ny
         3iv8MieCsTixlamsftK3V57mItdROZ5MEh7xtt+qk/8eKKFTHHwnhmVbFh72VFHL7/XU
         IAZ7upxc1USrKzI3PM1CPLeabzO9tZXyCO6lBTgOEI/yU2SQF0rBmdd/hIbDr3B4Ez/H
         GQ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737554358; x=1738159158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sjObFV+5+IOFwxOPwnSxQhyUg3oWIAesTKvlJmdJGqo=;
        b=a8q22pBZN23QeyefQozfKmKWBj9c1Fsy2v8BaXVP6+oTStEd0oughDYlGCaPJsWwHX
         BFyuug5nBgCK4nrQArUIhbOT3OygQD7n8ChFBIPpqWsX/MnMH+yGoS/2T7NB4fV2wKg7
         mzt+n+Kmh9TNMgNlSMChcjMu9EpmqzNjBQD7bksdZZXALldLC84DmGivIoZuh8fYlCUb
         YI7ckw1k9lbJ27KSehryPYSaGHzFTY1yNeywyOS0ROEAbw3Jy3XrhbIlKbPH4fRr0Cai
         /RtKmG/Zl9unx6dfoY9PvFN7PKeSkjOaRJpyLpJYxrmo9NhJjA/mq2ZC9t+nxRwrKMa/
         dNFg==
X-Forwarded-Encrypted: i=1; AJvYcCUNyFLolL8E04cKU8isSrxrJKpZl71rlbsvALTNbX00N4GmgCTKskcN9mx76Y8rVgt7Wo0oI0jZxRae@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3Q8NIKYuYYXuw07HpXMmP6BbD/VyYnCZamU72VoNlLlAwgNt9
	z4CHV9/8r78MHXpeOT0Nf1Sxd3m+vLPvZSVDpc9SbnH2aB1dY0GiLqLB1SsC7PVJyhqM1wBQvvU
	1qOs=
X-Gm-Gg: ASbGncuo8BH1KFyern7Wx9FHddKlwrIkwbCb8ZDHCjWxVNC4MoAge8iwVcvcORuNaxq
	7nS49V2t72V9J4w0JwJMCZTZvgAB+VfhkwLF9YRTRpmWht3s7JDFvVx3nQ6SbqE2Wt78m8CxD5e
	1u0wyWs8MdUgC/mcClz/Dj/TxePrtMx+pKPsOJjLnoTVXJEB3SOaSlWlpgQC/uXmsZYFx9YmF07
	LyCdJdkgOr/eEfSl6YbWXVdk6FJUNa1JFncdfDxt2v+9CxhC8R93LhIcCEbtQr/SvcMHMxUszQa
	wkEEJrFXmThqkVtb4fQSShsyW3Zf/+xMYCheDsHrFVZ64DY2ceLuYw4I0yliNiCX
X-Google-Smtp-Source: AGHT+IEcBubbGcRatIlVSw9RDhs2ejWQE884JQiPuWEigDo6YpqYA+Dt/gIHnHhfGQdtnsFdI/cyCg==
X-Received: by 2002:a05:6000:18a7:b0:386:4312:53ec with SMTP id ffacd0b85a97d-38bf5663683mr21211301f8f.17.1737554357727;
        Wed, 22 Jan 2025 05:59:17 -0800 (PST)
Received: from [192.168.42.0] (2a02-8428-e55b-1101-1e41-304e-170b-482f.rev.sfr.net. [2a02:8428:e55b:1101:1e41:304e:170b:482f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3278f06sm16418985f8f.70.2025.01.22.05.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 05:59:17 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 22 Jan 2025 14:59:14 +0100
Subject: [PATCH v8 5/5] arm64: dts: mediatek: mt8365: Add support for
 camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-add-mtk-isp-3-0-support-v8-5-a3d3731eef45@baylibre.com>
References: <20250122-add-mtk-isp-3-0-support-v8-0-a3d3731eef45@baylibre.com>
In-Reply-To: <20250122-add-mtk-isp-3-0-support-v8-0-a3d3731eef45@baylibre.com>
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
X-Mailer: b4 0.14.2

Add base support for cameras for mt8365 platforms. This requires nodes
for the sensor interface, camsv, and CSI receivers.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 125 +++++++++++++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 9c91fe8ea0f969770a611f90b593683f93ff3e22..f3aae8d76cbece5779fe0b23139d594c0ea52579 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/power/mediatek,mt8365-power.h>
+#include <dt-bindings/memory/mediatek,mt8365-larb-port.h>
 
 / {
 	compatible = "mediatek,mt8365";
@@ -704,6 +705,23 @@ ethernet: ethernet@112a0000 {
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
@@ -774,6 +792,113 @@ larb2: larb@15001000 {
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
2.47.1


