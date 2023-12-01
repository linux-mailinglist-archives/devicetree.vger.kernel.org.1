Return-Path: <devicetree+bounces-20565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0246D8002D7
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:10:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37E8EB20BC2
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A267C2587;
	Fri,  1 Dec 2023 05:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="XLYW52m4"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8511736;
	Thu, 30 Nov 2023 21:10:18 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B15A6S3025870;
	Thu, 30 Nov 2023 23:10:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407406;
	bh=TXwdryAk3KvLew2aYZTv2br41TDQVy4Et3R1+LZ2JEU=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=XLYW52m4Vz/kmF7ND/xMgMMwylETk3OvwR8dq7OuV+/RKSVMEgOV94c1sXlz2qhnY
	 xHLBIyJItiTdIyrUgxF8F/Vx1kLHg5XOYxUhInXZFeZ0LQ3EDICaru4yo2gCIbctkt
	 /GuPG6PWnTOV0bRMTc3lNdk1Ey76KGlLY8h+mLl0=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B15A6YM007066
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:10:06 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:10:06 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:10:06 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B15A5UX023469;
	Thu, 30 Nov 2023 23:10:06 -0600
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
	<matthias.schiffer@ew.tq-group.com>,
        Andrew Davis <afd@ti.com>
Subject: [PATCH RESEND v3 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays for OV5640
Date: Fri, 1 Dec 2023 10:39:19 +0530
Message-ID: <20231201-csi_dts-v3-4-9f06f31080fe@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5498; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=M+9Rsg0ibVClxe5Zu6Qc5VQ9yb+dxt+bKYeHE5oBfWY=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlaWYLpWzNFEZMhTV0jPd1JpYlVbbW3uzTwy08x
 pqnOR7FvhWJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWlmCwAKCRBD3pH5JJpx
 RSunD/9AxVxPl2O4Dvks18M9Kfmt/+OddmH2jaW8hVkHwWOg3u7HC5xIJXOTjef5cBI0jR/lSL3
 IYCNuLL1Kkl9M+c8sV3aGF3I+nH8f88jpNC+ZUQ0eh/gzmLGJByy3p6B54wvvqD7iXub+iJTIy1
 8ZHSzAduNArOskFk9XcQRyHH91+fhj7lZKempge/tZypNQCRjXm3hOo3zwFnwNaFSbXLasg4HwC
 7mWOX5hHM9eAfkIyhfqzR/1EqeU3z1PmF/I76gHeknInFktAhYAf4L8kac1yLC5fuwQ10Re94ky
 1l070zDCnSVbpM4RtXaK7/2u2Hqq+szRxs+yxL2t5hKgaAfdpeHACg/juY4vDwqEdkmtrSK6Pfj
 9a+ahvCNybMgqpEDhFGghn4khPVpSFo9rbNdZOf7FM8gRqB5vsJDT/msFT5Ai2FHwMvY40JYbrF
 bef/yClxzP54mjoi2j5RWYHymorzSiSPGufiCW1qomJYfNmbtLBWgdxbDVKS7Pre1vMDAnUMoHK
 JBKwr3juOZo7fkfZS1wFZwRxG0VZ0WW8BXL4bNI4FjbHCO7NVG7ZgEBWtOgyxkJsPPz/PfkdXxn
 60XQe/QjV7A9jCCT9U34i7ZRL1uxZ5RCdEUp45e/sd+PtY3nI20bGb06oGlSQWetBVQUH+YB/3S
 6ZhmSvDKNIuvRQw==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Three different OV5640 modules are supported using the FFC connector on=0D
BeaglePlay:=0D
- Digilent PCam 5C=0D
- ALINX AN5641=0D
- TEVI-OV5640-*-RPI=0D
=0D
The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while=0D
the TEVI module supplies a 24Mhz XCLK, thus requiring a separate=0D
overlay.=0D
=0D
Reviewed-by: Andrew Davis <afd@ti.com>=0D
Signed-off-by: Jai Luthra <j-luthra@ti.com>=0D
---=0D
 arch/arm64/boot/dts/ti/Makefile                    | 11 ++++=0D
 .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 ++++++++++++++++++=
++++=0D
 .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 ++++++++++++++++++=
++++=0D
 3 files changed, 165 insertions(+)=0D
=0D
diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makef=
ile=0D
index 77a347f9f47d..c6c7825b4cb2 100644=0D
--- a/arch/arm64/boot/dts/ti/Makefile=0D
+++ b/arch/arm64/boot/dts/ti/Makefile=0D
@@ -12,6 +12,8 @@=0D
 k3-am625-sk-hdmi-audio-dtbs :=3D k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dt=
bo=0D
 k3-am62-lp-sk-hdmi-audio-dtbs :=3D k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audi=
o.dtbo=0D
 dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay.dtb=0D
+dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay-csi2-ov5640.dtbo
+dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-phyboard-lyra-rdk.dtb=0D
 dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-sk.dtb=0D
 dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-verdin-nonwifi-dahlia.dtb=0D
@@ -80,7 +82,16 @@ dtb-$(CONFIG_ARCH_K3) +=3D k3-j721s2-evm.dtb=0D
 dtb-$(CONFIG_ARCH_K3) +=3D k3-am69-sk.dtb=0D
 dtb-$(CONFIG_ARCH_K3) +=3D k3-j784s4-evm.dtb=0D
 =0D
+# Build time test only, enabled by CONFIG_OF_ALL_DTBS
+k3-am625-beagleplay-csi2-ov5640-dtbs :=3D k3-am625-beagleplay.dtb \
+	k3-am625-beagleplay-csi2-ov5640.dtbo
+k3-am625-beagleplay-csi2-tevi-ov5640-dtbs :=3D k3-am625-beagleplay.dtb \
+	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
+dtb- +=3D k3-am625-beagleplay-csi2-ov5640.dtb \
+	k3-am625-beagleplay-csi2-tevi-ov5640.dtb
+
 # Enable support for device-tree overlays=0D
+DTC_FLAGS_k3-am625-beagleplay +=3D -@
 DTC_FLAGS_k3-am625-sk +=3D -@=0D
 DTC_FLAGS_k3-am62-lp-sk +=3D -@=0D
 DTC_FLAGS_k3-am6548-iot2050-advanced-m2 +=3D -@=0D
diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso b/=
arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso=0D
new file mode 100644=0D
index 000000000000..5e80ca7033ba=0D
--- /dev/null=0D
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso=0D
@@ -0,0 +1,77 @@=0D
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ALINX AN5641 & Digilent PCam 5C - OV5640 camera module
+ * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti=
.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	clk_ov5640_fixed: ov5640-xclk {
+		compatible =3D "fixed-clock";
+		#clock-cells =3D <0>;
+		clock-frequency =3D <12000000>;
+	};
+};
+
+&main_gpio0 {
+	p11-hog {
+		/* P11 - CSI2_CAMERA_GPIO1 */
+		gpio-hog;
+		gpios =3D <11 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name =3D "CSI2_CAMERA_GPIO1";
+	};
+};
+
+&wkup_i2c0 {
+	#address-cells =3D <1>;
+	#size-cells =3D <0>;
+	status =3D "okay";
+
+	ov5640: camera@3c {
+		compatible =3D "ovti,ov5640";
+		reg =3D <0x3c>;
+
+		clocks =3D <&clk_ov5640_fixed>;
+		clock-names =3D "xclk";
+
+		port {
+			csi2_cam0: endpoint {
+				remote-endpoint =3D <&csi2rx0_in_sensor>;
+				clock-lanes =3D <0>;
+				data-lanes =3D <1 2>;
+			};
+		};
+	};
+};
+
+&cdns_csi2rx0 {
+	ports {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+
+		csi0_port0: port@0 {
+			reg =3D <0>;
+			status =3D "okay";
+
+			csi2rx0_in_sensor: endpoint {
+				remote-endpoint =3D <&csi2_cam0>;
+				bus-type =3D <4>; /* CSI2 DPHY. */
+				clock-lanes =3D <0>;
+				data-lanes =3D <1 2>;
+			};
+		};
+	};
+};
+
+&dphy0 {
+	status =3D "okay";
+};
+
+&ti_csi2rx0 {
+	status =3D "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dt=
so b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso=0D
new file mode 100644=0D
index 000000000000..5e1cbbc27c8f=0D
--- /dev/null=0D
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso=0D
@@ -0,0 +1,77 @@=0D
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Technexion TEVI-OV5640-*-RPI - OV5640 camera module
+ * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti=
.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	clk_ov5640_fixed: ov5640-xclk {
+		compatible =3D "fixed-clock";
+		#clock-cells =3D <0>;
+		clock-frequency =3D <24000000>;
+	};
+};
+
+&main_gpio0 {
+	p11-hog {
+		/* P11 - CSI2_CAMERA_GPIO1 */
+		gpio-hog;
+		gpios =3D <11 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name =3D "CSI2_CAMERA_GPIO1";
+	};
+};
+
+&wkup_i2c0 {
+	#address-cells =3D <1>;
+	#size-cells =3D <0>;
+	status =3D "okay";
+
+	ov5640: camera@3c {
+		compatible =3D "ovti,ov5640";
+		reg =3D <0x3c>;
+
+		clocks =3D <&clk_ov5640_fixed>;
+		clock-names =3D "xclk";
+
+		port {
+			csi2_cam0: endpoint {
+				remote-endpoint =3D <&csi2rx0_in_sensor>;
+				clock-lanes =3D <0>;
+				data-lanes =3D <1 2>;
+			};
+		};
+	};
+};
+
+&cdns_csi2rx0 {
+	ports {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+
+		csi0_port0: port@0 {
+			reg =3D <0>;
+			status =3D "okay";
+
+			csi2rx0_in_sensor: endpoint {
+				remote-endpoint =3D <&csi2_cam0>;
+				bus-type =3D <4>; /* CSI2 DPHY. */
+				clock-lanes =3D <0>;
+				data-lanes =3D <1 2>;
+			};
+		};
+	};
+};
+
+&dphy0 {
+	status =3D "okay";
+};
+
+&ti_csi2rx0 {
+	status =3D "okay";
+};
=0D
-- =0D
2.42.1=0D
=0D

