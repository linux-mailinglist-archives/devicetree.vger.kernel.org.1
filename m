Return-Path: <devicetree+bounces-137003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 356B4A07384
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C284165B17
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC680217653;
	Thu,  9 Jan 2025 10:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QcE4vwAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D13B216E03
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419087; cv=none; b=ofGt0DSbY9csFd3nebJY3VJQ0iHrBKOTgrsU+pW1otuhXI3Vk9wWCMTZ6Ecwlp1tXn5fIxLGBYZoIwsy8Xm6u8PvClE4BoY2qMB0Un+hMuhMVIOqh8huohc5CmBlAFMris38oyj7Ex61lvZV9D0d8sXzx2aT0hWKtGZJoAd+MNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419087; c=relaxed/simple;
	bh=yWk8HLzOpkZhXK2l7uxJYBkmU29C+tC9uY/Wa+pPUI8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o3To1meQ/BKM3MBF+QZdIsfRy+vueUrvJivO6Mnx5WIZF3os+wMyQ11pI2xaPjzbC/tRACjujEaWPfsu4HTuQck7os8bEB2GoaJMovn/SCtqAwOx0q27EQqgrJGpKtESghFhPQ5clLW6MK/mhvtt+TQrDM6T1ogLTKfHFdw7xxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QcE4vwAM; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361815b96cso5692125e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736419083; x=1737023883; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wn0z/hnPHRXKbB0BiiICrVZl9kYhQ/tTXH5ga1zPWyc=;
        b=QcE4vwAMwlXwHt5WAPt/ALmBoYhgjPqshPNfZ4Yql1Q0gOyc/giUyBCKmWRYkmaNHY
         Pa1vKcMBPbSfV8BQ9cQHBH5ZXM+cFAszQZjTlsvqyM9fXvbwcvUmSGiVWcik0PSKbTFa
         cp6w8D/kNyDXRLmPXZ7P9cz5mDEzyfa0pdAYyvy84UK46gZOTPLZQv4oehLgH8bDPytB
         TdV/bBKWf4tOOddZD8d9LG+I55F+cgOcI9WVnbK9Rw0WRxCPHz0/r7HpQxd3VLX3wcat
         a4FWuOwkoTTv98WIVf+1kUnOkUP+VKsv4pjrHKA8aypBNBlYx/gdjGik20eBwSbkokO3
         HOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736419083; x=1737023883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wn0z/hnPHRXKbB0BiiICrVZl9kYhQ/tTXH5ga1zPWyc=;
        b=ueIRx4XhkMMputoPI/F27YZsmJDlgrOn73Z4l+Q1fghgAIas1/P0X7a8PLVP9B/v0O
         S8HS6U63K2XbtY2b4GMdH90vWtUxuoyE6AFVrBDj5RfuJPQkdY+GxEUE9TegZD4vYJC2
         JKFJZKwJGmHitHqaw/oaHmi/9KfwsvT5fkggPr1ki17fhrVwKh+RgVVX41ezcxIus8wx
         1VWZck3slzwl9FYtEjmbXw5p5tHtJZpYUqsassocbfvdfllo8S1X2bu3MUhPBn3lCu/C
         WbbONknWo0V+RA0+7DkdNnAICctg+haeEHY5EzmcUS44rgkJzPFePg/PjhKRLJKqiw6Q
         7s+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVuQ4qGgBWEZXHMb415LyiRKcHL2rVP2HaNrWYiwflsFx4AxDi8iv7ANYOTuhkvivywRsK/XOV8uKYD@vger.kernel.org
X-Gm-Message-State: AOJu0YzS6sGnzoPnA/Q/sDlSrVB+flG4mrMNvYoWNfgYytYQoHhO336q
	v2bXl1TrnwkxG40UsN2uIv+slEPE5rWoCjIiE/nJvtdC92jNIzIQTkKtP3bt2Y4=
X-Gm-Gg: ASbGncvDNjFlDedLFcJbXE28BcQazL1IMttOKxREaOSUvMR6CJve8YZ8G3XWhYyHmGO
	0nm49qQn4X+nv8WnuQxBbR9e2f3NdX2XJLXY2MTiuHJB2PznCVpecC/bNeeVpwEcZ+7SmUW/UBv
	t/4pbFRuTM1LI1T+v8drbBMfD77hi0RzYUA3d2v4XJuSJNJcntO0NSFcpWMBkT7KnKgj+bX0UQ5
	yS7/QXi4WjaSALVQs2kHJmBAHafrKOmPzv+GgwQ4MTvTRE3mWzWlpX2SiI=
X-Google-Smtp-Source: AGHT+IGNhdxlzft9cAt4N+SyuS/WJYcc1LOqhL+JwxatbAklIgLAGVRKGCQL9PKAKc0gIpHztZhRCQ==
X-Received: by 2002:a05:600c:3c9e:b0:431:5e3c:2ff0 with SMTP id 5b1f17b1804b1-436e26a6727mr55842615e9.8.1736419083542;
        Thu, 09 Jan 2025 02:38:03 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8826sm16428195e9.11.2025.01.09.02.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:38:03 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 09 Jan 2025 11:37:58 +0100
Subject: [PATCH v6 5/6] arm64: dts: mediatek: add display blocks support
 for the MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v6-5-c6af4f34f4d8@baylibre.com>
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
In-Reply-To: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10846;
 i=amergnat@baylibre.com; h=from:subject:message-id;
 bh=yWk8HLzOpkZhXK2l7uxJYBkmU29C+tC9uY/Wa+pPUI8=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnf6cDD6lk21jvNg0r0YVGooaw1xUxt2clZKrjxXdX
 g+RyrwyJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ3+nAwAKCRArRkmdfjHURYG/EA
 CDvteY8W5W2/ee3MzQhqEtqPngeF3BuHR+tImk8kekZEnRoPFwYNcFo0GOzKusyUpJbppYBN7KGEKX
 GMFKK9IjyBX32/kfEVU7CNCuemXcMSkrNr0gz7UQg31cDIxDeWqj229hPvjp7qL3111Ksi8AG7FvgK
 LFdkaLdhE+Ue3Y6j+xNJzgTvC1Y5tJm3efy9lJf6nEFYO4NMgTTYN1h20WDwbLO7SOfSBdegcIZ83i
 sRpUh4oDeziAfFEbNx6MHsaamQiX4gm5CwGpfjeTXl1SfdbtC1rm+0mjrTIipFqyrfLqxc3ERAWGWw
 ZCRMvWMlyavszykcw6REsCi3S+YsXMZjKjLAoD8SywI4LJinYMw9S9gTqrdL+KwAg2yOso9bztjm3/
 tHZCNpYC0mF0EAGFZt6C8Zs+HzDqGTlYl9BhhFQZjys+WG4tLsOgoy4w9T4gF71bujaP7RXf83YAC3
 dJPkydA2y4dMj2Di99i2ZL+WdYL3Sm/INXSkO5g5pKjOQCdcQ8jplZaLVI9XlpWlyLqfXV5GtPLzOT
 3BcibTfLXqzadUUddRmzOU6tbaZeJnnTiW8LuzUj/q7WuufX8asK7DhE6mkOBX4lSzNzRkpSmOZ1Rs
 Kse7plSs9C60arbJd6U8xPy3QvXs5CyhVoKd9+frixOR/QzY+Wi2GMjqMBvw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

- Add aliases for each display components to help display drivers.
- Add the Display Pulse Width Modulation (DISP_PWM) to provide PWM signals
  for the LED driver of mobile LCM.
- Add the MIPI Display Serial Interface (DSI) PHY support. (up to 4-lane
  output)
- Add the display mutex support.
- Add the following display component support:
  - OVL0 (Overlay)
  - RDMA0 (Data Path Read DMA)
  - Color0
  - CCorr0 (Color Correction)
  - AAL0 (Adaptive Ambient Light)
  - GAMMA0
  - Dither0
  - DSI0 (Display Serial Interface)
  - RDMA1 (Data Path Read DMA)
  - DPI0 (Display Parallel Interface)

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 336 +++++++++++++++++++++++++++++++
 1 file changed, 336 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 9c91fe8ea0f9..fdd570ca2d20 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/clock/mediatek,mt8365-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/memory/mediatek,mt8365-larb-port.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/power/mediatek,mt8365-power.h>
 
@@ -19,6 +20,19 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		aal0 = &aal0;
+		ccorr0 = &ccorr0;
+		color0 = &color0;
+		dither0 = &dither0;
+		dpi0 = &dpi0;
+		dsi0 = &dsi0;
+		gamma0 = &gamma0;
+		ovl0 = &ovl0;
+		rdma0 = &rdma0;
+		rdma1 = &rdma1;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -608,6 +622,15 @@ spi: spi@1100a000 {
 			status = "disabled";
 		};
 
+		disp_pwm: pwm@1100e000 {
+			compatible = "mediatek,mt8365-disp-pwm", "mediatek,mt8183-disp-pwm";
+			reg = <0 0x1100e000 0 0x1000>;
+			clock-names = "main", "mm";
+			clocks = <&topckgen CLK_TOP_DISP_PWM_SEL>, <&infracfg CLK_IFR_DISP_PWM>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			#pwm-cells = <2>;
+		};
+
 		i2c3: i2c@1100f000 {
 			compatible = "mediatek,mt8365-i2c", "mediatek,mt8168-i2c";
 			reg = <0 0x1100f000 0 0xa0>, <0 0x11000200 0 0x80>;
@@ -704,6 +727,15 @@ ethernet: ethernet@112a0000 {
 			status = "disabled";
 		};
 
+		mipi_tx0: dsi-phy@11c00000 {
+			compatible = "mediatek,mt8365-mipi-tx", "mediatek,mt8183-mipi-tx";
+			reg = <0 0x11c00000 0 0x800>;
+			clock-output-names = "mipi_tx0_pll";
+			clocks = <&clk26m>;
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+		};
+
 		u3phy: t-phy@11cc0000 {
 			compatible = "mediatek,mt8365-tphy", "mediatek,generic-tphy-v2";
 			#address-cells = <1>;
@@ -731,6 +763,26 @@ mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8365-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mmsys_main: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&ovl0_in>;
+				};
+				mmsys_ext: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&rdma1_in>;
+				};
+			};
+		};
+
+		mutex: mutex@14001000 {
+			compatible =  "mediatek,mt8365-disp-mutex";
+			reg = <0 0x14001000 0 0x1000>;
+			interrupts = <GIC_SPI 154 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
 		};
 
 		smi_common: smi@14002000 {
@@ -756,6 +808,290 @@ larb0: larb@14003000 {
 			mediatek,larb-id = <0>;
 		};
 
+		ovl0: ovl@1400b000 {
+			compatible = "mediatek,mt8365-disp-ovl", "mediatek,mt8192-disp-ovl";
+			reg = <0 0x1400b000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_OVL0>;
+			interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_OVL0>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					ovl0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&mmsys_main>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					ovl0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&rdma0_in>;
+					};
+				};
+			};
+		};
+
+		rdma0: rdma@1400d000 {
+			compatible = "mediatek,mt8365-disp-rdma", "mediatek,mt8183-disp-rdma";
+			reg = <0 0x1400d000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_RDMA0>;
+			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
+			mediatek,rdma-fifo-size = <5120>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					rdma0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&ovl0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					rdma0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&color0_in>;
+					};
+				};
+			};
+		};
+
+		color0: color@1400f000 {
+			compatible = "mediatek,mt8365-disp-color", "mediatek,mt8173-disp-color";
+			reg = <0 0x1400f000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_COLOR0>;
+			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					color0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&rdma0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					color0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&ccorr0_in>;
+					};
+				};
+			};
+		};
+
+		ccorr0: ccorr@14010000 {
+			compatible = "mediatek,mt8365-disp-ccorr", "mediatek,mt8183-disp-ccorr";
+			reg = <0 0x14010000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_CCORR0>;
+			interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					ccorr0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&color0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					ccorr0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&aal0_in>;
+					};
+				};
+			};
+		};
+
+		aal0: aal@14011000 {
+			compatible = "mediatek,mt8365-disp-aal", "mediatek,mt8183-disp-aal";
+			reg = <0 0x14011000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_AAL0>;
+			interrupts = <GIC_SPI 166 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					aal0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&ccorr0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					aal0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&gamma0_in>;
+					};
+				};
+			};
+		};
+
+		gamma0: gamma@14012000 {
+			compatible = "mediatek,mt8365-disp-gamma", "mediatek,mt8183-disp-gamma";
+			reg = <0 0x14012000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_GAMMA0>;
+			interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					gamma0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&aal0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					gamma0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&dither0_in>;
+					};
+				};
+			};
+		};
+
+		dither0: dither@14013000 {
+			compatible = "mediatek,mt8365-disp-dither", "mediatek,mt8183-disp-dither";
+			reg = <0 0x14013000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_DITHER0>;
+			interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					dither0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&gamma0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					dither0_out: endpoint@0 {
+						reg = <0>;
+					};
+				};
+			};
+		};
+
+		dsi0: dsi@14014000 {
+			compatible = "mediatek,mt8365-dsi", "mediatek,mt8183-dsi";
+			reg = <0 0x14014000 0 0x1000>;
+			clock-names = "engine", "digital", "hs";
+			clocks = <&mmsys CLK_MM_MM_DSI0>,
+				 <&mmsys CLK_MM_DSI0_DIG_DSI>,
+				 <&mipi_tx0>;
+			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
+			phy-names = "dphy";
+			phys = <&mipi_tx0>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+		};
+
+		rdma1: rdma@14016000 {
+			compatible = "mediatek,mt8365-disp-rdma", "mediatek,mt8183-disp-rdma";
+			reg = <0 0x14016000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_DISP_RDMA1>;
+			interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
+			mediatek,rdma-fifo-size = <2048>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					rdma1_in: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&mmsys_ext>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					rdma1_out: endpoint@1 {
+						reg = <1>;
+					};
+				};
+			};
+		};
+
+		dpi0: dpi@14018000 {
+			compatible = "mediatek,mt8365-dpi", "mediatek,mt8192-dpi";
+			reg = <0 0x14018000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DPI0_DPI0>,
+				 <&mmsys CLK_MM_MM_DPI0>,
+				 <&apmixedsys CLK_APMIXED_LVDSPLL>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			status = "disabled";
+		};
+
 		camsys: syscon@15000000 {
 			compatible = "mediatek,mt8365-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;

-- 
2.25.1


