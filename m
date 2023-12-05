Return-Path: <devicetree+bounces-21962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F47805DFA
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F85FB2108E
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22610675B2;
	Tue,  5 Dec 2023 18:46:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34FE31A1;
	Tue,  5 Dec 2023 10:46:17 -0800 (PST)
Received: from francesco-nb.corp.toradex.com (31-10-206-125.static.upc.ch [31.10.206.125])
	by mail11.truemail.it (Postfix) with ESMTPA id 28A0E20284;
	Tue,  5 Dec 2023 19:46:13 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v3 1/3] arm64: dts: ti: verdin-am62: improve spi1 chip-select pinctrl
Date: Tue,  5 Dec 2023 19:46:03 +0100
Message-Id: <20231205184605.35225-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231205184605.35225-1-francesco@dolcini.it>
References: <20231205184605.35225-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joao Paulo Goncalves <joao.goncalves@toradex.com>

Verdin SPI_1 interface has a dedicated hardware controlled chip select
that is currently configured in the same pinctrl group as MISO/MOSI/CLK,
however it is possible that it can be used only as a standard GPIO be it
a chip select or not.

To maximize flexibility and avoid duplication in the carrier board dts
files move the SPI_1 CS in a dedicated pinctrl and also adds an
additional pinctrl to simplify using SPI_1 CS as a GPIO.

Signed-off-by: Joao Paulo Goncalves <joao.goncalves@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
index 5db52f237253..6a06724b6d16 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
@@ -233,6 +233,13 @@ AM62X_IOPAD(0x0018, PIN_INPUT, 7) /* (F24) OSPI0_D3.GPIO0_6 */ /* SODIMM 62 */
 		>;
 	};
 
+	/* Verdin SPI_1 CS as GPIO */
+	pinctrl_qspi1_io4_gpio: main-gpio0-7-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x001c, PIN_INPUT, 7) /* (J23) OSPI0_D4.GPIO0_7 */ /* SODIMM 202 */
+		>;
+	};
+
 	/* Verdin QSPI_1_CS# as GPIO (conflict with Verdin QSPI_1 interface) */
 	pinctrl_qspi1_cs_gpio: main-gpio0-11-default-pins {
 		pinctrl-single,pins = <
@@ -599,12 +606,18 @@ AM62X_IOPAD(0x164, PIN_OUTPUT, 0) /* (AA19) RGMII2_TX_CTL */ /* SODIMM 211 */
 	pinctrl_spi1: main-spi1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0020, PIN_INPUT, 1) /* (J25) OSPI0_D5.SPI1_CLK */ /* SODIMM 196 */
-			AM62X_IOPAD(0x001c, PIN_INPUT, 1) /* (J23) OSPI0_D4.SPI1_CS0 */ /* SODIMM 202 */
 			AM62X_IOPAD(0x0024, PIN_INPUT, 1) /* (H25) OSPI0_D6.SPI1_D0  */ /* SODIMM 200 */
 			AM62X_IOPAD(0x0028, PIN_INPUT, 1) /* (J22) OSPI0_D7.SPI1_D1  */ /* SODIMM 198 */
 		>;
 	};
 
+	/* Verdin SPI_1 CS */
+	pinctrl_spi1_cs0: main-spi1-cs0-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x001c, PIN_INPUT, 1) /* (J23) OSPI0_D4.SPI1_CS0 */ /* SODIMM 202 */
+		>;
+	};
+
 	/* ETH_25MHz_CLK */
 	pinctrl_eth_clock: main-system-clkout0-default-pins {
 		pinctrl-single,pins = <
@@ -1278,7 +1291,7 @@ &main_mcan0 {
 /* Verdin SPI_1 */
 &main_spi1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_spi1>;
+	pinctrl-0 = <&pinctrl_spi1>, <&pinctrl_spi1_cs0>;
 	ti,pindir-d0-out-d1-in;
 	status = "disabled";
 };
-- 
2.25.1


