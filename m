Return-Path: <devicetree+bounces-137469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 638C3A09213
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:32:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B93651671C9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFC5210F51;
	Fri, 10 Jan 2025 13:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xa7ssrKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F3F20FAA4
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515891; cv=none; b=AaZ1CrTODlrdRl+Bl2/kiz7AwwsJisB9A9aHPRWhZztcTF1vwr/hGLtWpQ2c1bgmIeoABlFI/+1PBeoRrhjDteG0MuCauvlwPlg12NkW75u8fd9c2Ue4TyTflhK+gpjPMRBWkfYyURpiqfudMSvoKmxeiQhrrop9eDic7S6W5kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515891; c=relaxed/simple;
	bh=+OaC+AS/ZJpzKH7N8zU/4tgRlbo/T8ud5Vnk6GoVL3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fhQGIoeiPv+idPms1nAZJ8kXFmffFI5kX04Bw5/VyLYD9Z0xb6rArNQB2pbcxikWSpdXZZx02EGHd1wCUyuP3SrT2VlGpK4/rURE/m7LHbHcN0/9/cyIwwq5MO+ki6nWFsA7EY8AoPa3DiQOj8GO/7xAdMavxVjASQlykht1xlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xa7ssrKJ; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-385d7b4da2bso1788705f8f.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736515888; x=1737120688; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0vdEZ4/pRHsUp9cm8HEUVp7ajHvoJqZ5Fn7zAfqqbs=;
        b=xa7ssrKJD77d1WurbgAalBSkVWtNpp+hFYT6t9caZ4FNGxhiLjGVcMvzeSE8i7LixU
         +EnQvoNPAV6v4Pw3RPGyQUD4bhYgr77E+naThV3T4TTpsfQejiyGwDayNcLPTOwvfp3M
         6Tux2nc/pqq3VJFsUcCQausEmGe7Cv5uGe7AlrMahguGrDcGaN4b2+rhGCou/e+rvwCX
         MQF8VfPVbgMYp7lj8thtQeO6G13e6PJw5H3DPIuFu3Cvzv0gQ6D9buu5nWS+kNsvl9G6
         OEvwcizdVJYTVNyVaaT+blY64xw9InqvlgP0sO33LXicoKYI6b3N0HDvF+pecawEc3fM
         Qgzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736515888; x=1737120688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+0vdEZ4/pRHsUp9cm8HEUVp7ajHvoJqZ5Fn7zAfqqbs=;
        b=SYOwV/wnx7OZJXTJ4jE9J97T+KiJfweGdlNvNI046ohHoeaeoCICPL4oUewQ6j8WAF
         zO+OE8ctk4Qcyr92B0nrMK2wTaHQ28VvL8gTvOGWxXx1omZO2Idy7Z35kaJQhteAceK0
         0Sxsu03vUnJ0sSumOEPTPVHK99djWbZXad+uffWc9lO7PfCw8yliH+YBW3g2f0OTax0b
         MR+jrN+njwXPq478xgzjKUzkiW867Silkar4VYrKswYPR1BVBUuqbCSxGxXDULcDoz/6
         wzBReWZX4IgaKo0QqcN3EWEC2247SY1fxQ/OjqNWtDECzNTwiuhEtqXXV9xTdl9SB7cO
         Qhlw==
X-Forwarded-Encrypted: i=1; AJvYcCXA5PyM5XQ8e2eS8osnZvQdV8x6SfkbPY4NSAyS9KVoynJzTfeXkGE9c4nMBz6bq3zk2yAgtUmpvKKB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy79Dp2bR9UPNwzpzagVoEvmKdadPOYxLFxUyRf9yJ+12fKcSk2
	livC52CMEsp7yaseKu6ZA1IRdjmoNEYmZjtrMZjJbSHhmlcd9saeZ0hMlSso9Jo=
X-Gm-Gg: ASbGnctUVJrZY58meDXYg96JdUD6Xz93EIb9Ja8RSgu8CFbL11aPeGQzD72wXtjqW/W
	ax7DS7lZd2y4k+NOnqKoOmou5RMvcrx3KAd3/mtVYXAT4hdnxlOuoSf18fHQugI/jrNaU82EjAT
	B3MGxJ8tD1gCxKOAx3/1IgQgKbfJz8BtWg7sS/VjIxxtMdDNB3O5tk/q6jrITAo68rRCQGARf76
	jsR1XsjuZmBmCsq18j4uNVSwkXjBA7g3sIAs6nCDAk1T+xgehC/aF963J6Z
X-Google-Smtp-Source: AGHT+IFfMAh2JaR0t80N2VsgZR7cjryTPe8kE/cEI3QSekxtSPLAeT2emtZmRY3kopEDIDNrOMRjFQ==
X-Received: by 2002:a05:6000:712:b0:385:ee3f:5cbf with SMTP id ffacd0b85a97d-38a87305369mr10032616f8f.20.1736515887726;
        Fri, 10 Jan 2025 05:31:27 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38c990sm4598193f8f.56.2025.01.10.05.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:31:27 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 10 Jan 2025 14:31:15 +0100
Subject: [PATCH v7 5/6] arm64: dts: mediatek: add display blocks support
 for the MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v7-5-6703f3e26831@baylibre.com>
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
In-Reply-To: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=10929;
 i=amergnat@baylibre.com; h=from:subject:message-id;
 bh=+OaC+AS/ZJpzKH7N8zU/4tgRlbo/T8ud5Vnk6GoVL3w=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngSEnPwMFjYzMaBFfO/Sq6y01Xk2waqkyXb7hWlXE
 LjKwbOWJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EhJwAKCRArRkmdfjHURS6wD/
 9x/2GE7BKkRFhoH4+VVtGcmMFGxmQYDTjniSRkhszKSbdSj44cFe6fW9QF4VNWFy9yh4J5SLHCVfC6
 uf1BDilgAYQziKHsK+xZjkhkpsqYYfNpABFGQR6PtOSlCKATeahQSf8phrBK7SzSOdStXmWoaU0+Yo
 pVNnZX2msGcM8wIOypqhEZ9uIUvM1xV+S1f37E4JfHrgTNs9d8DKv4FA8rKkccKUlRba9we11fYPIv
 Br5tly2kELCh30/BzrMOC2RNbNsPTQ6Wq+vtpyJEObrwSPLBIX8xx00LzmvyN6X7BcwRFdRXMXXmqZ
 k9hSro3VeCYoQFbz4H5M+Qik40Cc/43+gtNllnCxzaaZz65l8+cTppDU+JzM9JQxdP3ZV/nbYoOD2t
 C5En/cIXD9Y02G9/3IBmmzRYNbn/RP6g3TsdI5BO9YuwOThtu7sj1rKiW2ydpa55KREtwnoQFzvti9
 zJbXC3rOM/mS1sAojNOD8XKzrQ9UJbyKHt4pPmKJYT+rrauh7WbLgqA80JFSO/3Py/sQmMzH/Ffv9u
 wvIdjiZv16dikK8TrsNWrAKBWwn1xSP5ejygtxr6l/T8GCuBlcnof0rvvXOyG2Yu+N4ETJkSLWUx1n
 74XEhj4yMCvTdDTzgB6eAi/6SRG/AV+FjPiOtArWf+fC4N8q9hrMKd8vM0Dw==
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

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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


