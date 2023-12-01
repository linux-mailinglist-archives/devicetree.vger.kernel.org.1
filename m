Return-Path: <devicetree+bounces-20567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 585618002D8
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1014A281512
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6538459556;
	Fri,  1 Dec 2023 05:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gCxbQATg"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B1131FDE;
	Thu, 30 Nov 2023 21:10:23 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B15AClE025922;
	Thu, 30 Nov 2023 23:10:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407412;
	bh=3GYwtw59YCcor/NLf8ZP0vjymxatZ5xSsrnhTHTWfNg=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=gCxbQATgUHodfbilIbAfwLt8QN3dLKjxQAPSEh2g+yZMMHtCiafzLDrchVhI2QohS
	 ASbNbumxdv23XQEfqxV+WiqGmMPdIEJTVBZcBq2ZBbn9xujiR04pmUjtufJdZ/j8/8
	 DCku+UMEu/EaHJi05lu5WY5+O4BJN8BLY2Qsc/Kc=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B15ABYc007103
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:10:11 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:10:11 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:10:11 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B15AAep112862;
	Thu, 30 Nov 2023 23:10:11 -0600
From: Jai Luthra <j-luthra@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Jai Luthra <j-luthra@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
        Vaishnav Achath
	<vaishnav.a@ti.com>,
        Julien Massot <julien.massot@collabora.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Matthias Schiffer
	<matthias.schiffer@ew.tq-group.com>
Subject: [PATCH RESEND v3 6/9] arm64: dts: ti: k3-am62x: Add overlays for OV5640
Date: Fri, 1 Dec 2023 10:39:21 +0530
Message-ID: <20231201-csi_dts-v3-6-9f06f31080fe@ti.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
References: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6292; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=siE15amp7sBe0tqZO+R7dGdDyBuGj7LaqdT6TjKRyvc=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlaWXueF8s2VLBkPfPgociIFMVPyjS33IIwUrDk
 BEdgI9n6cWJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWll7gAKCRBD3pH5JJpx
 RbcXD/9CPEgXCMCHUuLszCBsIL02Ve6t5e7cqsNZWB6zAcI9wJpk0/IDhAH7OtQHENiuxVGs/Ko
 KFF3wLd7r/zB+r1+egs6sgPqalbRls6LAY2YMSzRyjkJ7RiNGzTXDMtGIOWBZPsYIKi40WmT0nz
 d8rcQNdh34KoHbnwJ34vcbO6WBPwZUPfoBjcG1oDFMrJxPMH4l7ckAgnO4fZktiIaC3vTJMTX6U
 jVFSBE0VkwLAqR78b+ZSDiGjHA+GmHYeiVf0QLG06EG92PzeJdLXLf24VIBY10fGHYEVrOgPzhq
 rXp0e6Vtze4PHu9mbb30PqNMPzA+lCNyAS/2uBZz3kO0Zgto8HHIzMSRtVFKFYXp8R8qb6Kh8UF
 zwDAq22wFrr9bkA6XICiHmdsY3sSr7G11VRixpUcEhDwC4RAkDRA/Wc7FeeTNH87aK5MmsFVMo8
 sg4app84quRDQH9dXabxpqBYH9cmQZEXbxy7DunVU3juPwid/Iodx/I/kniBEHLRmtz4+9xSaPH
 vwiOnVUxTqbuzZqJIW0Q7SXvu0MdXFeQ5HHEtyNZnInp2zT33RmQhRqjT1JqDpYJbduE7tzyFRx
 ox5YbMyVPecvYfRZN6EPjzm89L6jhqMFq+LA51QWV/6xxAPhLwCZhys52dptaT0eFZIij6wbU68
 R+VAIITmQ8hPDQw==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Three different OV5640 modules are supported using the 15-pin FFC
connector on SK-AM62:
- Digilent PCam 5C
- ALINX AN5641
- TEVI-OV5640-*-RPI

The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
overlay.

These overlays can be used on other boards of the SK-AM62* family that
have a 15/22-pin FFC connector, so we name the overlays with the prefix
k3-am62x-.

Tested-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile                    | 19 ++++-
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso | 82 ++++++++++++++++++++++
 .../boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso  | 82 ++++++++++++++++++++++
 3 files changed, 182 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index c6c7825b4cb2..f957b5f741ff 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -32,6 +32,10 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62a7-sk.dtb
 # Boards with AM62Px SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
 
+# Common overlays for SK-AM62* family of boards
+dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-ov5640.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-tevi-ov5640.dtbo
+
 # Boards with AM64x SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
@@ -87,13 +91,26 @@ k3-am625-beagleplay-csi2-ov5640-dtbs := k3-am625-beagleplay.dtb \
 	k3-am625-beagleplay-csi2-ov5640.dtbo
 k3-am625-beagleplay-csi2-tevi-ov5640-dtbs := k3-am625-beagleplay.dtb \
 	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
+k3-am625-sk-csi2-ov5640-dtbs := k3-am625-sk.dtb \
+	k3-am62x-sk-csi2-ov5640.dtbo
+k3-am625-sk-csi2-tevi-ov5640-dtbs := k3-am625-sk.dtb \
+	k3-am62x-sk-csi2-tevi-ov5640.dtbo
+k3-am62a7-sk-csi2-ov5640-dtbs := k3-am62a7-sk.dtb \
+	k3-am62x-sk-csi2-ov5640.dtbo
+k3-am62a7-sk-csi2-tevi-ov5640-dtbs := k3-am62a7-sk.dtb \
+	k3-am62x-sk-csi2-tevi-ov5640.dtbo
 dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
-	k3-am625-beagleplay-csi2-tevi-ov5640.dtb
+	k3-am625-beagleplay-csi2-tevi-ov5640.dtb \
+	k3-am625-sk-csi2-ov5640.dtb \
+	k3-am625-sk-csi2-tevi-ov5640.dtb \
+	k3-am62a7-sk-csi2-ov5640.dtb \
+	k3-am62a7-sk-csi2-tevi-ov5640.dtb
 
 # Enable support for device-tree overlays
 DTC_FLAGS_k3-am625-beagleplay += -@
 DTC_FLAGS_k3-am625-sk += -@
 DTC_FLAGS_k3-am62-lp-sk += -@
+DTC_FLAGS_k3-am62a7-sk += -@
 DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
 DTC_FLAGS_k3-j721e-common-proc-board += -@
 DTC_FLAGS_k3-j721s2-common-proc-board += -@
diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso
new file mode 100644
index 000000000000..1f3aebbc8df8
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ALINX AN5641 & Digilent PCam 5C - OV5640 camera module
+ * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.com/
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
+&main_i2c2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	i2c-switch@71 {
+		compatible = "nxp,pca9543";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x71>;
+
+		/* CAM port */
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			ov5640: camera@3c {
+				compatible = "ovti,ov5640";
+				reg = <0x3c>;
+
+				clocks = <&clk_ov5640_fixed>;
+				clock-names = "xclk";
+				powerdown-gpios = <&exp1 13 GPIO_ACTIVE_LOW>;
+
+				port {
+					csi2_cam0: endpoint {
+						remote-endpoint = <&csi2rx0_in_sensor>;
+						clock-lanes = <0>;
+						data-lanes = <1 2>;
+					};
+				};
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
+&ti_csi2rx0 {
+	status = "okay";
+};
+
+&dphy0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso
new file mode 100644
index 000000000000..6a367f13be63
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Technexion TEVI-OV5640-*-RPI - OV5640 camera module
+ * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.com/
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
+&main_i2c2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	i2c-switch@71 {
+		compatible = "nxp,pca9543";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x71>;
+
+		/* CAM port */
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			ov5640: camera@3c {
+				compatible = "ovti,ov5640";
+				reg = <0x3c>;
+
+				clocks = <&clk_ov5640_fixed>;
+				clock-names = "xclk";
+				powerdown-gpios = <&exp1 13 GPIO_ACTIVE_LOW>;
+
+				port {
+					csi2_cam0: endpoint {
+						remote-endpoint = <&csi2rx0_in_sensor>;
+						clock-lanes = <0>;
+						data-lanes = <1 2>;
+					};
+				};
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
+&ti_csi2rx0 {
+	status = "okay";
+};
+
+&dphy0 {
+	status = "okay";
+};

-- 
2.42.1


