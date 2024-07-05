Return-Path: <devicetree+bounces-83367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DC0928358
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 10:00:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 202E61C2504E
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 08:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FBF314533C;
	Fri,  5 Jul 2024 07:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="JZcAVWx0"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B51143C7B
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 07:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720166378; cv=none; b=Y7uwqEjvcPn6iV5rONj/yim+7uW0O2RQLqMFeQXByeOmmGaUIb0BbFPokPXixi2qBFsqNTjF7Yoggh4rf6FiIgerc8yX6RgPGzmPbXcnlHIXOCjfVYKoe+CoEnld9N+A4+WtKU91baV/vvnMNkv9VgmS5N0DYV94aatabr/GT+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720166378; c=relaxed/simple;
	bh=1kbLCf7/xjA5Yf7bffcrDxJCrP0s1O3S6XovGyJUeS8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YWXDtGg7Ug979bUTFYYahhAsgBvh4kd6cAzDiKjAnXOloS3Rynl/l9IPYDFWkBQOOMvmfpdRyB23fpzkp9CL/2R76m6KI0TIAH8gNXz9g2kyMx3+Tan5KH3SX5yUQzHRLPMqeCbR6mEkF9U7fY3a1isV6sRXe1JYqTlW4p21BBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=JZcAVWx0; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5AB7488582;
	Fri,  5 Jul 2024 09:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720166374;
	bh=LUMN2EorVK9ZKjl3nYk8pUQwq1AjgjHL4pNrj0IYSJw=;
	h=From:To:Cc:Subject:Date:From;
	b=JZcAVWx0EAJd042yS0KXafKStaPIkXd11HVdsa+14pkHeP0Mgx+nkkGu4gf8x95I2
	 VByYH7+UQriML715NLCPSbOVlSji1cKmujUYFzu0k3QrQJWiGyfdksMp80LTgxvabu
	 OEBobzv/5MINoNxVYmg324G5/Ikhtr3argMQ6t5tTUNNosfSTuIrtryfiR0vkGYBsh
	 qQUJTeHITexGPp0nyFcmNEl5upHXL9/nReHQoeuiqimD+5jN4TNpXKq2b8EZJ9uerF
	 e4X1NRGoag6GfLIm/acYymsC/xVAqfEph2TaXfNG98mTTbSXLzrUZ0E69A6rUbcNsD
	 4qGNfH+IGQkKA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2] ARM: dts: stm32: Keep MDIO bus in AF across suspend DH STM32MP13xx DHCOR DHSBC board
Date: Fri,  5 Jul 2024 09:59:10 +0200
Message-ID: <20240705075918.41213-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The RTL8211F PHY gets confused when the MDIO bus lines get switched
to ANALOG during suspend/resume cycle. Keep the MDIO and MDC lines
in AF during suspend/resume to avoid confusing the PHY. The PHY can
be brought out of the confused state by restarting auto-negotiation
too, but that seems like an odd workaround and shouldn't be in the
PHY driver.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christophe Roullier <christophe.roullier@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
V2: Fixup the eth2_rgmii_sleep_pins_a into AF as well
---
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index ca19c8c6b6771..62c64e9c2b9f0 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -94,14 +94,20 @@ pins2 {
 	/omit-if-no-ref/
 	eth1_rgmii_sleep_pins_a: eth1-rgmii-sleep-0 {
 		pins1 {
+			pinmux = <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 2, AF11)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+
+		pins2 {
 			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
 				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
 				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
 				 <STM32_PINMUX('E', 5, ANALOG)>, /* ETH_RGMII_TXD3 */
 				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
 				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_RGMII_GTX_CLK */
-				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
-				 <STM32_PINMUX('G', 2, ANALOG)>, /* ETH_MDC */
 				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
 				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
 				 <STM32_PINMUX('B', 0, ANALOG)>, /* ETH_RGMII_RXD1 */
@@ -178,14 +184,20 @@ pins2 {
 	/omit-if-no-ref/
 	eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
 		pins1 {
+			pinmux = <STM32_PINMUX('B', 6, AF11)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 5, AF10)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+
+		pins2 {
 			pinmux = <STM32_PINMUX('F', 7, ANALOG)>, /* ETH_RGMII_TXD0 */
 				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD1 */
 				 <STM32_PINMUX('G', 1, ANALOG)>, /* ETH_RGMII_TXD2 */
 				 <STM32_PINMUX('E', 6, ANALOG)>, /* ETH_RGMII_TXD3 */
 				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_TX_CTL */
 				 <STM32_PINMUX('G', 3, ANALOG)>, /* ETH_RGMII_GTX_CLK */
-				 <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
-				 <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_MDC */
 				 <STM32_PINMUX('F', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
 				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD1 */
 				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
-- 
2.43.0


