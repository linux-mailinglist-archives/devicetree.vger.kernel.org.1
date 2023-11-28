Return-Path: <devicetree+bounces-19604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E715E7FB6CB
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 254901C2141E
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5124D5B7;
	Tue, 28 Nov 2023 10:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="T9ZbWFRu"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C71BDE;
	Tue, 28 Nov 2023 02:10:43 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAATqg120125;
	Tue, 28 Nov 2023 04:10:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701166229;
	bh=zmcZXRnf/O3DHdDwB61wPRcAg+uD5m20ddO3L0EkAuE=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=T9ZbWFRuUqq3RGOkrsK19AvPAVhnSpt1HexxO6UrAsg6qRODAeqalWeCtPYc8cxxO
	 yi1QR3wfbh7DTBEwFUpS2x3QafYomw20BNWmKaRyPR0SuL/lW3EUGBQfrB10nw0YN+
	 Nb4Dytwjt5c4MUG0vN5lMVZZH4QQbGK6zddLuZqo=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ASAATjt017615
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Nov 2023 04:10:29 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Nov 2023 04:10:28 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Nov 2023 04:10:28 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAARto101282;
	Tue, 28 Nov 2023 04:10:28 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Tue, 28 Nov 2023 15:39:46 +0530
Subject: [PATCH v3 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231128-csi_dts-v3-4-0bb11cfa9d43@ti.com>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
In-Reply-To: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Jai Luthra
	<j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5458; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=LIC3GIHhXLdiNuoGc+jg9VpDQIUTmYS+YEWHfVAN6Rc=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlZbyBlxjxOPWImJC60Ce1smFslsQN+JBv1tuVT
 F9DdqekivWJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWW8gQAKCRBD3pH5JJpx
 Rey3EACvYh6WMjPGZNZ9JNpg8breBA+EJMVinCKAACHb7FgiE+b+BhYcflBPiOgz0h9FyuzQic6
 Jv3yS6/cRYcQ9Pxzj7boLmi8DjBT3MUgTB2lONUGHOxg9A6TIofDqt6ZD6YCLbca9IWlwrI97fG
 NhQmOMBc0D2EhsOESou0pZ/wCzD2np0vC4FPdror4C+zg8ujiEEBC+9IrbmcvBHLtWATuz53Ifa
 nhZgWGHnegssQMbQNMIdyvMGQ+TKMmwDfpV77MPDps9ETi0QgSh/RXKyN4KwGVeHU7C0vtA1kD8
 wnTEcBpUbD7G/T+WZwTfsSestODrU4Ncjo7cMPYQL/QiFdNgxjNOfBLW02W4q+ahGhixarSIA/9
 nCb2HX10XSTe8HbfvcDiwXv+hVKoOVsOCNe4K+RlFZM7orMtyh4q0Rxi3z6tdyBpmhXVz0ttJOz
 vz8gK7YD+ML5Iz1vf9HnTvhxQGQVxOu4refJw8Eil3NXR28OZ3OTTUUUoAK80w7yiR1KI3uyT2C
 q6D5JcmhNdA3wJfqvIw9E7Rc2SPWI19u+rScHyn+qJ4hM1yaZOdnF1H+/j5ChSlBmcCXsBsfX3o
 b5Gw+0KdPLEd1Gwm8ZzNaoadTc8oh32CZvKoereT4yS/wTRTChquPdLPlWNebfvVIWfzWkb7Mgx
 VVGtWvK/p2P4tTA==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Three different OV5640 modules are supported using the FFC connector on
BeaglePlay:
- Digilent PCam 5C
- ALINX AN5641
- TEVI-OV5640-*-RPI

The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
overlay.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile                    | 11 ++++
 .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 ++++++++++++++++++++++
 .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 ++++++++++++++++++++++
 3 files changed, 165 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 77a347f9f47d..c6c7825b4cb2 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -12,6 +12,8 @@
 k3-am625-sk-hdmi-audio-dtbs := k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
 k3-am62-lp-sk-hdmi-audio-dtbs := k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-ov5640.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am625-phyboard-lyra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-dahlia.dtb
@@ -80,7 +82,16 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm.dtb
 
+# Build time test only, enabled by CONFIG_OF_ALL_DTBS
+k3-am625-beagleplay-csi2-ov5640-dtbs := k3-am625-beagleplay.dtb \
+	k3-am625-beagleplay-csi2-ov5640.dtbo
+k3-am625-beagleplay-csi2-tevi-ov5640-dtbs := k3-am625-beagleplay.dtb \
+	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
+dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
+	k3-am625-beagleplay-csi2-tevi-ov5640.dtb
+
 # Enable support for device-tree overlays
+DTC_FLAGS_k3-am625-beagleplay += -@
 DTC_FLAGS_k3-am625-sk += -@
 DTC_FLAGS_k3-am62-lp-sk += -@
 DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
new file mode 100644
index 000000000000..5e80ca7033ba
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ALINX AN5641 & Digilent PCam 5C - OV5640 camera module
+ * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	clk_ov5640_fixed: ov5640-xclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <12000000>;
+	};
+};
+
+&main_gpio0 {
+	p11-hog {
+		/* P11 - CSI2_CAMERA_GPIO1 */
+		gpio-hog;
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "CSI2_CAMERA_GPIO1";
+	};
+};
+
+&wkup_i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ov5640: camera@3c {
+		compatible = "ovti,ov5640";
+		reg = <0x3c>;
+
+		clocks = <&clk_ov5640_fixed>;
+		clock-names = "xclk";
+
+		port {
+			csi2_cam0: endpoint {
+				remote-endpoint = <&csi2rx0_in_sensor>;
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&cdns_csi2rx0 {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		csi0_port0: port@0 {
+			reg = <0>;
+			status = "okay";
+
+			csi2rx0_in_sensor: endpoint {
+				remote-endpoint = <&csi2_cam0>;
+				bus-type = <4>; /* CSI2 DPHY. */
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&dphy0 {
+	status = "okay";
+};
+
+&ti_csi2rx0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
new file mode 100644
index 000000000000..5e1cbbc27c8f
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Technexion TEVI-OV5640-*-RPI - OV5640 camera module
+ * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	clk_ov5640_fixed: ov5640-xclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+	};
+};
+
+&main_gpio0 {
+	p11-hog {
+		/* P11 - CSI2_CAMERA_GPIO1 */
+		gpio-hog;
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "CSI2_CAMERA_GPIO1";
+	};
+};
+
+&wkup_i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ov5640: camera@3c {
+		compatible = "ovti,ov5640";
+		reg = <0x3c>;
+
+		clocks = <&clk_ov5640_fixed>;
+		clock-names = "xclk";
+
+		port {
+			csi2_cam0: endpoint {
+				remote-endpoint = <&csi2rx0_in_sensor>;
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&cdns_csi2rx0 {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		csi0_port0: port@0 {
+			reg = <0>;
+			status = "okay";
+
+			csi2rx0_in_sensor: endpoint {
+				remote-endpoint = <&csi2_cam0>;
+				bus-type = <4>; /* CSI2 DPHY. */
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&dphy0 {
+	status = "okay";
+};
+
+&ti_csi2rx0 {
+	status = "okay";
+};

-- 
2.42.1


