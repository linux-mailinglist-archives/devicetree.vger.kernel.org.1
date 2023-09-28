Return-Path: <devicetree+bounces-4165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A67B1746
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:25:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5985E2822B8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6E8341B1;
	Thu, 28 Sep 2023 09:25:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4DF3419B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:25:22 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42583CF1;
	Thu, 28 Sep 2023 02:25:20 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S9P7Mm017395;
	Thu, 28 Sep 2023 04:25:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695893107;
	bh=THpNGIXD7z+n0ObTIdk4Tqnh5fvfLcLedV5S/VNCL18=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=HyOAUN8BfaIbivr2L/DUVasCSaLM6itpsXOARoYzwhq0iL6L8CEdLwuDOIB4h8NxP
	 aKxF9+1cRGNnHijqy3ZXwZMH28+APJFr6onOrf0gkT1JvbsH60a9EYerd2cL93XQLs
	 t6GmQ2USGrd5nhhl36KrFipjfw6D7xnIzw5D5dxk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S9P7j0012950
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 04:25:07 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 04:25:07 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 04:25:07 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S9P6Wk090442;
	Thu, 28 Sep 2023 04:25:07 -0500
From: Jai Luthra <j-luthra@ti.com>
Date: Thu, 28 Sep 2023 14:54:29 +0530
Subject: [PATCH v2 4/6] arm64: dts: ti: k3-am62a7-sk: Add support for
 TPS6593 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20230928-mcasp_am62a-v2-4-ce9f0e1ba22b@ti.com>
References: <20230928-mcasp_am62a-v2-0-ce9f0e1ba22b@ti.com>
In-Reply-To: <20230928-mcasp_am62a-v2-0-ce9f0e1ba22b@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon
	<will@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <a-bhatia1@ti.com>,
        Jai
 Luthra <j-luthra@ti.com>, Julien Panis <jpanis@baylibre.com>,
        Esteban Blanc
	<eblanc@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3367; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=NG7CqYlIdoR8vAY96Pg9KSVZ+tMqM4J5Aya65nAaIic=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlFUZkkcVOT32WfAo8D1XYHzejxrgOaurlKEs7t
 OBuI9YkuESJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZRVGZAAKCRBD3pH5JJpx
 RdgID/40uEya1aJv/r3tI1H9yzn/1wUf60ejnHkS+/JPs5ok6n2ENC0Vb93sb3ChTmdCglhknWK
 zkc04+jeLOsBJaAOhMxiwnP9bGMrp/af36jAUhpYWIsixBCokQYJADWAk/Y7esPQERYpBAP+qL7
 he18iRC7rYG9JUawVBflh0q/s6aSv5OjUV85Fdy+pmqBoUjLXy87w+ovxsPvwvuc4gQWef7T0At
 wXMS25b+hPbLSSnJSha4kX6taGOQkSM4yfkMnigx67sNnQpqQJxyKlmzCY9VcaHms79g+szFjkZ
 jK7/Lg3dr8Euyh3ugSIZ0wJkj1z81ft8d9jwkGQ95SdGmKTjplY0y3DPOByoct7VJNYedYSRuBz
 0KMkZK9MdgDTuw4dvScN5KxNwULdo0I/M64Fa/wfPzHtisyjxaxA+j/THzKAMExRYKlXyY+v96h
 BYiKtu1sLeTlRAdcdj4iwNYfq8NM8VIpF1siQPfkBOgI14DkZox/GjwMZVtCSxs5gpxarJE+B59
 5g/Zi4A+6o5xZo7D0lAW/6KQ1681VDt4M5IjTJyWFMn0pb2rU0qaydm96NwGUs3UfDEKN21kA6k
 spY/owav335pTCGyDWoSawYN6h3xH18IjJH/CxjW3swhwTlxfTYCJdZ4pKL+/2L5sCwCvKxJo30
 V3iX+xIBPz6iL2Q==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Julien Panis <jpanis@baylibre.com>

This patch adds support for TPS6593 PMIC on main I2C0 bus.
This device provides regulators (bucks and LDOs), but also
GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
which monitors the SoC error output signal, and a PFSM
(Pre-configurable Finite State Machine) which manages the
operational modes of the PMIC.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 95 +++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index 866b2725f775..377ab823bbcc 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -232,6 +232,20 @@ AM62AX_IOPAD(0x12c, PIN_INPUT, 0) /* (W16) RGMII1_TX_CTL */
 	};
 };
 
+&mcu_pmx0 {
+	status = "okay";
+
+	pmic_irq_pins_default: pmic-irq-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x000, PIN_INPUT, 7) /* (E11) MCU_GPIO0_0 */
+		>;
+	};
+};
+
+&mcu_gpio0 {
+	status = "okay";
+};
+
 &main_i2c0 {
 	status = "okay";
 	pinctrl-names = "default";
@@ -255,6 +269,87 @@ usb_con_hs: endpoint {
 			};
 		};
 	};
+
+	tps659312: pmic@48 {
+		compatible = "ti,tps6593-q1";
+		reg = <0x48>;
+		ti,primary-pmic;
+		system-power-controller;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&mcu_gpio0>;
+		interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
+
+		buck123-supply = <&vcc_3v3_sys>;
+		buck4-supply = <&vcc_3v3_sys>;
+		buck5-supply = <&vcc_3v3_sys>;
+		ldo1-supply = <&vcc_3v3_sys>;
+		ldo2-supply = <&vcc_3v3_sys>;
+		ldo3-supply = <&buck5>;
+		ldo4-supply = <&vcc_3v3_sys>;
+
+		regulators {
+			buck123: buck123 {
+				regulator-name = "vcc_core";
+				regulator-min-microvolt = <715000>;
+				regulator-max-microvolt = <895000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4: buck4 {
+				regulator-name = "vcc_1v1";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: buck5 {
+				regulator-name = "vcc_1v8_sys";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: ldo1 {
+				regulator-name = "vddshv5_sdio";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: ldo2 {
+				regulator-name = "vpp_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: ldo3 {
+				regulator-name = "vcc_0v85";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: ldo4 {
+				regulator-name = "vdda_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
 };
 
 &main_i2c1 {

-- 
2.42.0


