Return-Path: <devicetree+bounces-16516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5647EEEB6
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:32:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F0971F26862
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B381548D;
	Fri, 17 Nov 2023 09:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ozmkj2Br"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8FC19AC;
	Fri, 17 Nov 2023 01:32:07 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9Ti0Y011205;
	Fri, 17 Nov 2023 03:29:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700213384;
	bh=CdYehB85qz+VazHlhe5ZsKCvZa2lCLts/qjl19Qebi8=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=ozmkj2BrNwRp3BlR3d8OzzECb9QhwL7a7FF9JaUPcfs2GCBtmyu1wcbSqpjvFYdoK
	 8SKgThVokTC+FS5SAQs4alElbj0GX7MzQofsKelSf0OuutQWcl+770+eg9ELY/LaP0
	 oMDdu87bToUqLBFiZv8vEQelE2Q2fOQ0LsyMzjHQ=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AH9TiVU023889
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 03:29:44 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 03:29:44 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 03:29:44 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9ThBW000553;
	Fri, 17 Nov 2023 03:29:43 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Fri, 17 Nov 2023 14:58:16 +0530
Subject: [PATCH v2 8/9] arm64: dts: ti: k3-am62x: Add overlay for IMX219
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231117-csi_dts-v2-8-bf4312194a6b@ti.com>
References: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
In-Reply-To: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3858; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=iXVMzPUomin7Bo7+dqj4cRTRBovP3k+BJ2yUHJwzELc=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVzJyj/zVVi0nZL0pDNKndVB8H3LriQbdMbMgH
 mMEp8HGc5+JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVcycgAKCRBD3pH5JJpx
 RaOwEACIvwsVspNg8XpS2+nG8gAc+IFQVnURbNeqUUyAbEvmDAfxCxZxmxMbF9yscbku4DwRZG5
 8KydHvim5Vl1EUgchCjJxYjIVqeCn1QKk42a1/3GQmY2Vp7FjXxNzSOc/649sxmZ4SSfRE/sKog
 jShwXH/LWypPWVhAL0b8AEQuTr+v+roAEcJsvEE5uhPQjdA7t4ltwHZ8nrA0lJvmil8wwe/79yr
 QeR3PDVTM5snNSEcY4SGKbCdYFF1SlRqc66Te9F5ETgF0DbWXn2iXcvJi+w/Wd94/v6qQNe4FDc
 1RajbE9sdbH85xitwt3Zzq65vxVDu+AapArqqNIqBwOsTEDPR5de6WGzvwceK5OPnhNNFxaA5Am
 sNXW0cL7YmkwVjDkuYrLyC7XIAcZzlrrGodmdC8CRtrWr2On+Sk4iu1X89/SDrPiIBsZA8RnXBg
 ALz3hgCy5QfKGffaIrsxCnI/CQFs8oI+p+c6GyY9V/iotPkV0kuFRXvbsRiOFQT6IWtSDqoytmt
 VpbJ58dLR7LIvvobWFWhEBSain6gic4U3tVKiOYKs1mSeuo+3tvZwkrFgI8L2jADrU6dLWGF9Sl
 fa2ci8M4R4PWm4bOWDpYIksQU5dGXnvMmizw7XR9d1rVInnxnDPXO+vq7fq0m5sHoKsv/eUhERi
 66sWuITtFY1VLVQ==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

RPi v2 Camera (IMX219) is an 8MP camera that can be used with SK-AM62A
through the 22-pin CSI-RX connector.

Same overlay can be used across SK-AM62* boards that have a 15/22-pin
FFC connector, so we name it with the k3-am62x- prefix.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile                    |  7 ++
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso | 76 ++++++++++++++++++++++
 2 files changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index f957b5f741ff..fd9166497c32 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -35,6 +35,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
 # Common overlays for SK-AM62* family of boards
 dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-tevi-ov5640.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-imx219.dtbo
 
 # Boards with AM64x SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
@@ -91,18 +92,24 @@ k3-am625-beagleplay-csi2-ov5640-dtbs := k3-am625-beagleplay.dtb \
 	k3-am625-beagleplay-csi2-ov5640.dtbo
 k3-am625-beagleplay-csi2-tevi-ov5640-dtbs := k3-am625-beagleplay.dtb \
 	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
+k3-am625-sk-csi2-imx219-dtbs := k3-am625-sk.dtb \
+	k3-am62x-sk-csi2-imx219.dtbo
 k3-am625-sk-csi2-ov5640-dtbs := k3-am625-sk.dtb \
 	k3-am62x-sk-csi2-ov5640.dtbo
 k3-am625-sk-csi2-tevi-ov5640-dtbs := k3-am625-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
+k3-am62a7-sk-csi2-imx219-dtbs := k3-am62a7-sk.dtb \
+	k3-am62x-sk-csi2-imx219.dtbo
 k3-am62a7-sk-csi2-ov5640-dtbs := k3-am62a7-sk.dtb \
 	k3-am62x-sk-csi2-ov5640.dtbo
 k3-am62a7-sk-csi2-tevi-ov5640-dtbs := k3-am62a7-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
 dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am625-beagleplay-csi2-tevi-ov5640.dtb \
+	k3-am625-sk-csi2-imx219.dtb \
 	k3-am625-sk-csi2-ov5640.dtb \
 	k3-am625-sk-csi2-tevi-ov5640.dtb \
+	k3-am62a7-sk-csi2-imx219.dtb \
 	k3-am62a7-sk-csi2-ov5640.dtb \
 	k3-am62a7-sk-csi2-tevi-ov5640.dtb
 
diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso b/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso
new file mode 100644
index 000000000000..84d08bfda469
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * IMX219 (RPi v2) Camera Module
+ * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	clk_imx219_fixed: imx219-xclk {
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
+			ov5640: camera@10 {
+				compatible = "sony,imx219";
+				reg = <0x10>;
+
+				clocks = <&clk_imx219_fixed>;
+				clock-names = "xclk";
+
+				reset-gpios = <&exp1 13 GPIO_ACTIVE_HIGH>;
+
+				port {
+					csi2_cam0: endpoint {
+						remote-endpoint = <&csi2rx0_in_sensor>;
+						link-frequencies = /bits/ 64 <456000000>;
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

-- 
2.42.1


