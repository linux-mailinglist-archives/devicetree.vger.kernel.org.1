Return-Path: <devicetree+bounces-153054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1749A4B299
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 16:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11D3816C823
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 15:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD1B1E5B99;
	Sun,  2 Mar 2025 15:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="RDKwCd0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E71E5B72
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 15:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740929199; cv=none; b=q73PqpEjxgoLh7mE7jlWsBQcy9Hc9LEgDnNcSMZvAaECMFH5/9sJi2r7p/gRJK7RQPgNTX/s4LqxQUBZUwFe+uMEs46NgYtOkh/yoQhOKNx3XlenMKkdf1XWlxAbCK9y4JWEW7SfJI8QS11Vilcg3Qrws0XEWiYxvu2raqCmEjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740929199; c=relaxed/simple;
	bh=CxY29t1UN+j7Hz4GUlGAf94Ubr4nCAuExeITk0nr6NU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cwFeL0qTBIbJ2Fe3U7QYdLgA49lqV0ZBjW0h1udz0rcY9D0SMUsUWQJcJ5C72/JssROSxI7FEqjCpM693vICBfYw0zqQZi1jJL9S21RKed+ot7UT/6qLSWtOtjMbqpx0k6GkJFII9PVLCol2Un7ZfFpkbbp5nvbgISdRYO7uagI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=RDKwCd0a; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E020610382D03;
	Sun,  2 Mar 2025 16:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1740929186;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8Bh6bLjv98EA8P8H9SQlLoMe1/qkXz4wmKjkYzXqTxY=;
	b=RDKwCd0anT/sAu/zkYm8sX7eP1ka+sonUhm6e1+GdVn6NGjZOqCZ7LeUhWAQUGAjxgye8v
	sacKqGGvueFEptvu+Iu3l45yJIeMMEy1JdCSRCBllNpl3X3hPudOMZiHWk204hQqZq65pq
	oQsDY3u57Kj1bStUlns2DQOVNAPF+/UV+KQP44lSbkwuOUawUqIK00Wyl8ewQxkCBEZWA3
	o/a4iiToy/JZtABdK8qD5Mg9CrfwF37IMaNOqozClg76H49ADFbtLxtWQbzj5l46KYmKbo
	nH25XteLnY5OaxnPbKebp0ac6x3jMqqTETmEds9gLGLAQVWH2hemAU/njZhNfw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Add support for STM32MP13xx DHCOR SoM and DHSBC rev.200 board
Date: Sun,  2 Mar 2025 16:25:14 +0100
Message-ID: <20250302152605.54792-1-marex@denx.de>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

LDO2 is expansion connector supply on STM32MP13xx DHCOR DHSBC rev.200.
LDO5 is carrier board supply on STM32MP13xx DHCOR DHSBC rev.200. Keep
both regulators always enabled to make sure both the carrier board and
the expansion connector is always powered on and supplied with correct
voltage.

Describe ST33TPHF2XSPI TPM 2.0 chip interrupt and reset lines.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 30 +++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
index 853dc21449d99..9902849ed0406 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
@@ -176,7 +176,7 @@ &gpioa {
 	gpio-line-names = "", "", "", "",
 			  "", "DHSBC_USB_PWR_CC1", "", "",
 			  "", "", "", "DHSBC_nETH1_RST",
-			  "", "DHCOR_HW-CODING_0", "", "";
+			  "", "DHCOR_HW-CODING_0", "", "DHSBC_HW-CODE_2";
 };
 
 &gpiob {
@@ -197,7 +197,7 @@ &gpiod {
 	gpio-line-names = "", "", "", "",
 			  "", "DHCOR_RAM-CODING_0", "", "",
 			  "", "DHCOR_RAM-CODING_1", "", "",
-			  "", "", "", "";
+			  "", "DHSBC_HW-CODE_1", "", "";
 };
 
 &gpioe {
@@ -221,6 +221,13 @@ &gpiog {
 			  "DHSBC_ETH1_INTB", "", "", "DHSBC_ETH2_INTB";
 };
 
+&gpioh {
+	gpio-line-names = "", "", "", "DHSBC_HW-CODE_0",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
 &gpioi {
 	gpio-line-names = "DHCOR_RTC_nINT", "DHCOR_HW-CODING_1",
 			  "DHCOR_BT_REG_ON", "DHCOR_PMIC_nINT",
@@ -296,6 +303,9 @@ &spi2 {
 	st33htph: tpm@0 {
 		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
 		reg = <0>;
+		interrupt-parent = <&gpioe>;
+		interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioe 12 GPIO_ACTIVE_LOW>;
 		spi-max-frequency = <24000000>;
 	};
 };
@@ -419,3 +429,19 @@ connector {
 		type = "micro";
 	};
 };
+
+/* LDO2 is expansion connector 3V3 supply on STM32MP13xx DHCOR DHSBC rev.200 */
+&vdd_ldo2 {
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+};
+
+/* LDO5 is carrier board 3V3 supply on STM32MP13xx DHCOR DHSBC rev.200 */
+&vdd_sd {
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+};
-- 
2.47.2


