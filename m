Return-Path: <devicetree+bounces-9810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C07CE902
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D629283595
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4982781A;
	Wed, 18 Oct 2023 20:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD15D3FE42
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:32:44 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA25F137
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:32:12 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtDD1-0005Tl-TF; Wed, 18 Oct 2023 22:32:03 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtDD0-002dOC-Mr; Wed, 18 Oct 2023 22:32:02 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtDD0-001EZa-DB; Wed, 18 Oct 2023 22:32:02 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>
Subject: [PATCH] ARM: dts: stm32: lxa-tac: drive powerboard lines as open-drain
Date: Wed, 18 Oct 2023 22:31:55 +0200
Message-ID: <20231018203154.1681457-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1581; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=bXJUo/z+u9bBLY/DopIaV2gKwAAC4QUnYIlb8+3X6ZM=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlMEC6mjP3aOiWQlYYkVs8185sPrHHRxRV+WacH LXgAKdjbvuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZTBAugAKCRCPgPtYfRL+ Tt+qCACjOC3q/D8r3OPxiaPFQOU37yCyq6KNUzn+eR5RuNkHMpvJ0yqrXZEDib+3tLVJjNw0rx8 XnRQu7OvZ56gWCMIoCScjRf2A+JArgBMJdZ0+0Z4EEOHAA8qMbNiKpTkyrlOESTgHicoa7OzgVk UUKE7QOy10emOheXcaqlzWlop1/i8O8gkZrWsT5SzCfGEwXyfElP2sQRVfl96+J+x5yNO8/9xA8 BRCe64NPvJTVz2VFZkxL3+n6V/i3yFrhW7EOWtrVkGPt3OmdHMRHhJvnchtU2uV9T61T7mJwuy5 iAoYrpHKpXF5e1sSV9a+kKlzMrAVcuKmuScPp3RvCqpYVWwS
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Leonard Göhrs <l.goehrs@pengutronix.de>

This results in a slight improvement in EMI performance due to the lines
no longer being driven by the somewhat noisy VDD_IO supply of the SoM.

Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts b/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
index 8a34d15e9005..4cc177031661 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
@@ -148,7 +148,7 @@ adc@0 {
 		compatible = "ti,lmp92064";
 		reg = <0>;
 
-		reset-gpios = <&gpioa 4 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpioa 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		shunt-resistor-micro-ohms = <15000>;
 		spi-max-frequency = <5000000>;
 		vdd-supply = <&reg_pb_3v3>;
diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
index f09b7c384bd9..188c9cfc7102 100644
--- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
@@ -409,7 +409,7 @@ &sdmmc2 {
 &spi2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi2_pins_c>;
-	cs-gpios = <&gpiof 12 GPIO_ACTIVE_LOW>;
+	cs-gpios = <&gpiof 12 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 };
 

base-commit: 4d5ab2376ec576af173e5eac3887ed0b51bd8566
-- 
2.42.0


