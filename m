Return-Path: <devicetree+bounces-81655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D55F791CF05
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 22:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47EF12825FD
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 20:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1777013BC3F;
	Sat, 29 Jun 2024 20:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="YohQ/Igd"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5736B3C36
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 20:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719692949; cv=none; b=fSY34oWZIFdxtaHhJhWDQf3NsDB4vpZFXNCv0yZ1CeHCzVPfC/idfwJe++1hQlRtuq3PmdPL7b6iEokctwoX4y/+Esq2fJClDYpzwDiQWSlTWXxHXyUP3owha+K4n2D90b9HBiQvwshheNskMMSEen9NP/0m8CW8R4sgCAEXnvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719692949; c=relaxed/simple;
	bh=7+APUSAjYKR289pv7EcSN0jUi+Rjae4GIgJoKokjKyg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=abKvoELf6o/KEH+ge5RWCAgQdfnMC0pOKACVEwzJxdxslxAa/2IEppjvbFmuIsSr1YpLVa1LhNTlw3d51agdHdjcIG6fWWBtNPWyuxFExgeOTBvjqsCh9+/ItVR00FQiEgaKQHkUO17Z6GsfYXfHX5laoHlSNkomjT7ZZy0rKXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=YohQ/Igd; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id EEB1887DC7;
	Sat, 29 Jun 2024 22:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719692944;
	bh=g6ZGg6AJR7TK10wveq4SKcbkt2J+EBtrC7Modkd9kPY=;
	h=From:To:Cc:Subject:Date:From;
	b=YohQ/IgdWmheu7vZJfLg1EV2NlgSL8elW9v+CUoDpOjiyTz1hQQvNHCMtqTIETWMl
	 k00Nrf32xRo47jTeHK70mhYBIf1Ig1KsUhdjz02SyLrlkv6MPS8FxYJ1jQTzpqVfMb
	 SUakiJMn1ZbRDoE2apSlwXOhXMkdh1h0kydSoW8pO6+Qf9/J48/5s2XPLG+8qInIks
	 XTILbluGw5w8Kiu2oJg31pevJo6YfSAJo9otJ187D3BiLKZYc8mvxfG/Mq2oUTnfNA
	 YU83FiP22WwjOIt/nvv0sIEwCb0cm+WTuyAMvgjfLIw+552g4u81sf+a1KU+j3k8oz
	 fPDJaX2iFZzqA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Keep MDIO bus in AF across suspend DH STM32MP13xx DHCOR DHSBC board
Date: Sat, 29 Jun 2024 22:28:41 +0200
Message-ID: <20240629202847.90693-1-marex@denx.de>
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index d3deec602ae7a..e6c0dceee9866 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -88,14 +88,20 @@ pins2 {
 
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
@@ -169,14 +175,20 @@ pins2 {
 
 	eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
 		pins1 {
+			pinmux = <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 5, ANALOG)>; /* ETH_MDC */
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


