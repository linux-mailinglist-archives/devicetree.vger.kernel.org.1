Return-Path: <devicetree+bounces-143428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1E6A29C58
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 23:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7316165CAD
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 22:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD4221885A;
	Wed,  5 Feb 2025 22:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlQUwUdt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC02D217719;
	Wed,  5 Feb 2025 22:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738793456; cv=none; b=VO/eGedpr99EW9qhDeeu5ZFthaQGdtgVa9LseGpIRMe0eSRbFyC1LfSDCTk6LLC/bHCjSqxr5L1SJEAY4l3Vfp7jUvj/X2AYruTDdzZV9wV1jvA2arWjaLLIeaLQrturuwFNM/P3AAgAchia8zxhZNiMJVmDzdgyqK/LaU8d0Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738793456; c=relaxed/simple;
	bh=lEwVZNwQ1WQr2h+ZzeBGiMgr2RZSRo/70TsgVagfL7U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TRgKDylC4TgSVOIxLQiBAO2MtFoH4mUh2J1WKwY0CZs5JBqRgpYF9xMONIyobqdFifwhkNqLKXi8cDWksWI8D3XC1xMOAZU5UHQlm2x6g1rz2KZciqqu4rYvdymNnE4VJmWNV1kIufUMjUiWhnQFqkhDtSONfeY2heYeTsPWJcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlQUwUdt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16BB3C4CEEB;
	Wed,  5 Feb 2025 22:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738793456;
	bh=lEwVZNwQ1WQr2h+ZzeBGiMgr2RZSRo/70TsgVagfL7U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=WlQUwUdt9aLIewu9wBbzBTnpX0jTwsUa+SUal71a+rU93pnHMMwfPlTVIj8l16+xY
	 ccXLdTzdLOg7N6j+B0TqrL4jXedA6Yb9Sjn8x5KcFbMEuVf0yy5ZzEKYXiNPDTLRWu
	 pmlb8j5ACH5HpkzDMnKBCNE5TPOMTJzuNNAbgwyIZEuv+yuQXtnsaciSnvPsYKNEv6
	 SJg+dDWrXSaN5Rud/g3gmF7eyq/ILlw1ovHCb2s5rM8B1iIyBSSQsWaECWa+k/J5bH
	 1hQt8yk3heIDYbJJx7/n2hvCWH2OGgz6DxzDiNgMBYMaA5WVDupFNonypTL/n6DvU4
	 fGayTKO0vpqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AFAFC02194;
	Wed,  5 Feb 2025 22:10:56 +0000 (UTC)
From: Sasha Finkelstein via B4 Relay <devnull+fnkl.kernel.gmail.com@kernel.org>
Date: Wed, 05 Feb 2025 23:10:53 +0100
Subject: [PATCH v5 4/5] arm64: dts: apple: Add touchbar screen nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-adpdrm-v5-4-4e4ec979bbf2@gmail.com>
References: <20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com>
In-Reply-To: <20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com>
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alyssa Ross <hi@alyssa.is>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
 Janne Grunau <j@jannau.net>, Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738793453; l=6698;
 i=fnkl.kernel@gmail.com; s=20241124; h=from:subject:message-id;
 bh=L38CibkVTLHMOZCzHOL4Ykg+WypyAATJkKboZnPrbOg=;
 b=hkalfs4W3aeOfKXJX2rRUnL2Fe3L+DUP/syBAooHTyOnhKALAG0e3pZ9lQb/TQ9F+ez8DamML
 wQfN+yn7nxQD1TanI+oRIUvjnvf2q1yxcRtVolwgFl1X0WsPbb003Pa
X-Developer-Key: i=fnkl.kernel@gmail.com; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Endpoint-Received: by B4 Relay for fnkl.kernel@gmail.com/20241124 with
 auth_id=283
X-Original-From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Reply-To: fnkl.kernel@gmail.com

From: Sasha Finkelstein <fnkl.kernel@gmail.com>

Adds device tree entries for the touchbar screen

Co-developed-by: Janne Grunau <j@jannau.net>
Signed-off-by: Janne Grunau <j@jannau.net>
Reviewed-by: Nick Chan <towinchenmi@gmail.com>
Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
---
 arch/arm64/boot/dts/apple/t8103-j293.dts | 31 ++++++++++++++++
 arch/arm64/boot/dts/apple/t8103.dtsi     | 61 ++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/apple/t8112-j493.dts | 31 ++++++++++++++++
 arch/arm64/boot/dts/apple/t8112.dtsi     | 61 ++++++++++++++++++++++++++++++++
 4 files changed, 184 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8103-j293.dts b/arch/arm64/boot/dts/apple/t8103-j293.dts
index 56b0c67bfcda321b60c621de092643017693ff91..3af8536da779b56bf856cf40befd74d4737baa8f 100644
--- a/arch/arm64/boot/dts/apple/t8103-j293.dts
+++ b/arch/arm64/boot/dts/apple/t8103-j293.dts
@@ -49,3 +49,34 @@ &i2c4 {
 &fpwm1 {
 	status = "okay";
 };
+
+&display_dfr {
+	status = "okay";
+};
+
+&dfr_mipi_out {
+	dfr_mipi_out_panel: endpoint@0 {
+		reg = <0>;
+		remote-endpoint = <&dfr_panel_in>;
+	};
+};
+
+&displaydfr_mipi {
+	status = "okay";
+
+	dfr_panel: panel@0 {
+		compatible = "apple,j293-summit", "apple,summit";
+		reg = <0>;
+		max-brightness = <255>;
+
+		port {
+			dfr_panel_in: endpoint {
+				remote-endpoint = <&dfr_mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&displaydfr_dart {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
index 9b0dad6b618444ac6b1c9735c50cccfc3965f947..b08176c139ceef913683e41cc7d8a755e6d3216b 100644
--- a/arch/arm64/boot/dts/apple/t8103.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103.dtsi
@@ -356,6 +356,67 @@ cpufreq_p: performance-controller@211e20000 {
 			#performance-domain-cells = <0>;
 		};
 
+		display_dfr: display-pipe@228200000 {
+			compatible = "apple,t8103-display-pipe", "apple,h7-display-pipe";
+			reg = <0x2 0x28200000 0x0 0xc000>,
+			      <0x2 0x28400000 0x0 0x4000>;
+			reg-names = "be", "fe";
+			power-domains = <&ps_dispdfr_fe>, <&ps_dispdfr_be>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 502 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 506 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "be", "fe";
+			iommus = <&displaydfr_dart 0>;
+			status = "disabled";
+
+			port {
+				dfr_adp_out_mipi: endpoint {
+					remote-endpoint = <&dfr_mipi_in_adp>;
+				};
+			};
+		};
+
+		displaydfr_dart: iommu@228304000 {
+			compatible = "apple,t8103-dart";
+			reg = <0x2 0x28304000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 504 IRQ_TYPE_LEVEL_HIGH>;
+			#iommu-cells = <1>;
+			power-domains = <&ps_dispdfr_fe>;
+			status = "disabled";
+		};
+
+		displaydfr_mipi: dsi@228600000 {
+			compatible = "apple,t8103-display-pipe-mipi", "apple,h7-display-pipe-mipi";
+			reg = <0x2 0x28600000 0x0 0x100000>;
+			power-domains = <&ps_mipi_dsi>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dfr_mipi_in: port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dfr_mipi_in_adp: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&dfr_adp_out_mipi>;
+					};
+				};
+
+				dfr_mipi_out: port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
 		sio_dart: iommu@235004000 {
 			compatible = "apple,t8103-dart";
 			reg = <0x2 0x35004000 0x0 0x4000>;
diff --git a/arch/arm64/boot/dts/apple/t8112-j493.dts b/arch/arm64/boot/dts/apple/t8112-j493.dts
index 0ad908349f55406783942735a2e9dad54cda00ec..372fe69a96f6b84f576221101a4127d68bb54691 100644
--- a/arch/arm64/boot/dts/apple/t8112-j493.dts
+++ b/arch/arm64/boot/dts/apple/t8112-j493.dts
@@ -35,6 +35,37 @@ led-0 {
 	};
 };
 
+&display_dfr {
+	status = "okay";
+};
+
+&dfr_mipi_out {
+	dfr_mipi_out_panel: endpoint@0 {
+		reg = <0>;
+		remote-endpoint = <&dfr_panel_in>;
+	};
+};
+
+&displaydfr_mipi {
+	status = "okay";
+
+	dfr_panel: panel@0 {
+		compatible = "apple,j493-summit", "apple,summit";
+		reg = <0>;
+		max-brightness = <255>;
+
+		port {
+			dfr_panel_in: endpoint {
+				remote-endpoint = <&dfr_mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&displaydfr_dart {
+	status = "okay";
+};
+
 /*
  * Force the bus number assignments so that we can declare some of the
  * on-board devices and properties that are populated by the bootloader
diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/apple/t8112.dtsi
index 1666e6ab250bc0be9b8318e3c8fc903ccd3f3760..1eead9640543632c3ba86c1ff766258e3158c84c 100644
--- a/arch/arm64/boot/dts/apple/t8112.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112.dtsi
@@ -379,6 +379,67 @@ cpufreq_p: cpufreq@211e20000 {
 			#performance-domain-cells = <0>;
 		};
 
+		display_dfr: display-pipe@228200000 {
+			compatible = "apple,t8112-display-pipe", "apple,h7-display-pipe";
+			reg = <0x2 0x28200000 0x0 0xc000>,
+			      <0x2 0x28400000 0x0 0x4000>;
+			reg-names = "be", "fe";
+			power-domains = <&ps_dispdfr_fe>, <&ps_dispdfr_be>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 614 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 618 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "be", "fe";
+			iommus = <&displaydfr_dart 0>;
+			status = "disabled";
+
+			port {
+				dfr_adp_out_mipi: endpoint {
+					remote-endpoint = <&dfr_mipi_in_adp>;
+				};
+			};
+		};
+
+		displaydfr_dart: iommu@228304000 {
+			compatible = "apple,t8110-dart";
+			reg = <0x2 0x28304000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 616 IRQ_TYPE_LEVEL_HIGH>;
+			#iommu-cells = <1>;
+			power-domains = <&ps_dispdfr_fe>;
+			status = "disabled";
+		};
+
+		displaydfr_mipi: dsi@228600000 {
+			compatible = "apple,t8112-display-pipe-mipi", "apple,h7-display-pipe-mipi";
+			reg = <0x2 0x28600000 0x0 0x100000>;
+			power-domains = <&ps_mipi_dsi>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dfr_mipi_in: port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dfr_mipi_in_adp: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&dfr_adp_out_mipi>;
+					};
+				};
+
+				dfr_mipi_out: port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
 		sio_dart: iommu@235004000 {
 			compatible = "apple,t8110-dart";
 			reg = <0x2 0x35004000 0x0 0x4000>;

-- 
2.48.1



