Return-Path: <devicetree+bounces-16515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D838C7EEEB5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B4FCB20B0C
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFA414AAC;
	Fri, 17 Nov 2023 09:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ZXBIwdFo"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 817B719AD;
	Fri, 17 Nov 2023 01:32:07 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9ThWD011200;
	Fri, 17 Nov 2023 03:29:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700213383;
	bh=PNUVApjVYaIGK9JiiY4OVOF3nsNslR6FLMX8Zywxucg=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=ZXBIwdFoJtfgt3bhe36896aspiZcKbxNF/2yioin9d9YbkAfj/n+qoSC1GrCSiSuV
	 eDOcOoKZ7s60XTeW5ZKi3PSplyYoe/J+HKBk0zCljaVO37NWL3XZTjIVk3xAqid3V0
	 xWc7NaOK+3o7t1AXN9ZTp2+DEl/2qroBNyp0bW6k=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AH9TgpI075701
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 03:29:42 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 03:29:43 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 03:29:42 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9Tf01105823;
	Fri, 17 Nov 2023 03:29:42 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Fri, 17 Nov 2023 14:58:15 +0530
Subject: [PATCH v2 7/9] arm64: dts: ti: k3-am62a7-sk: Enable camera
 peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231117-csi_dts-v2-7-bf4312194a6b@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1496; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=gz9E1SzSNspg9BAAZhjLumqrDg19fknMHvxVHY3oO+E=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVzJxBwKLMn4PTXxF7q/i3pD1JZIlfpJYCrLSU
 KkLwMG6/N6JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVcycQAKCRBD3pH5JJpx
 RXQuEACZgAgcJj7Xx1yIuGYgCHEetyQeMhhYO4vooWB1PZ64Z4LNMZr/97MGgux1nr+jQAjAxtO
 v9MMJIjZmZLAlKBsJzPV1FE4tzNMuvGNIhKc9v1ioEiVfxsyErqO/0Fb6SHEYlQFjCBCHS4fD9K
 1c5p8y0eDNSpXWWc8T1B/hKnkjglL/t/MwP4WXzOKxgtb/7zCpEUcPienBfK5X0scvSg8sKPSH5
 BnwFtRuk0CvvwuNjAhDXW8sWUwCB3HCi7OpQzCH79MOHQvQyMXpCg26LmoqAS5HDb5f1qlH/dO1
 uvqa81rDuv1N/+alx+6ZOgFgFfRo83Lx4GY8vOh+Ou8p3xEAHH4g1L85ySuQuKloV57vVQrAcYw
 LDZHvmOWpUhwqzlLfr1ux4Q0LTc3xVXCBdaiNEhP4RT3i8UKlAZZWfn95ZIN5FJvycpZsHFoZH6
 a2lk4y4qbS3VccVMmzWBjhg1fjm1+dnjb97Q16X+aV111qId3sejpMhFBGf3Dpdsrv7GEX4pqDL
 Ew/EdCywLti8rO9WqcKAOngErLNUf2TAceE1Or7ACn4q6LWum2fMTxXHyqOw08C2WWY1uwNoi5G
 BUUvTmyQ3tfHyJVvM2Aapzy5CqpJtGMm/Ryp0rLwowWXwBTB53zyWFJQEC9cRFjUDfj8IzI1+B5
 xafCA1tnTVhsUug==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Enable the nodes for CSI-RX, DPHY-RX and I2C-2 as it is used to control
CSI based sensors. Also enable IO-EXP-2 as it controls the mux between
different CSI-2 connectors.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 35 +++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index 8f64ac2c7568..20ec07a5237c 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -434,6 +434,33 @@ tlv320aic3106: audio-codec@1b {
 		DRVDD-supply = <&vcc_3v3_sys>;
 		DVDD-supply = <&buck5>;
 	};
+
+	exp2: gpio@23 {
+		compatible = "ti,tca6424";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names = "", "",
+				  "", "",
+				  "", "",
+				  "", "",
+				  "WL_LT_EN", "CSI_RSTz",
+				  "", "",
+				  "", "",
+				  "", "",
+				  "SPI0_FET_SEL", "SPI0_FET_OE",
+				  "RGMII2_BRD_CONN_DET", "CSI_SEL2",
+				  "CSI_EN", "AUTO_100M_1000M_CONFIG",
+				  "CSI_VLDO_SEL", "SoC_WLAN_SDIO_RST";
+	};
+};
+
+&main_i2c2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c2_pins_default>;
+	clock-frequency = <400000>;
 };
 
 &sdhci1 {
@@ -544,3 +571,11 @@ &mcasp1 {
 	tx-num-evt = <32>;
 	rx-num-evt = <32>;
 };
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


