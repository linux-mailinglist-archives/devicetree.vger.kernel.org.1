Return-Path: <devicetree+bounces-79941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3B09176A1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 05:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA0891F22C51
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 03:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB71F175BE;
	Wed, 26 Jun 2024 03:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="CpTr0UaI"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028A83FE4A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719371270; cv=none; b=jmxHl0l1QEB/r2FOEH4UcAaP/+TSeWueHui/Wl62sZoHNNWtHJDi2FT0xrV85Leq4qI+Li1w/y9Hy3Xq1yiU+nL3+rkRmfcb3cCrzG86mdmmoZObAiGYZoM0OpW2BkAzbjzK0uoDwQz3S4uzDEH/3+QGBHk3zOPkt9C2hCmRqt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719371270; c=relaxed/simple;
	bh=GjkXRutzKxvxVoCBcIYWoXLsm07Ow0Iq4VTJnZjMudY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CeyPEWHugE7zd6ClO2qEJXaz9lsCW3hxQS6YmcMgzrQOQBy2i1EroWhxZnTCxbyYLfMGG3vNRUrSxb442cURGR+pf8CSpY6HmVfvSqX89ZiMcDzv70ZK5Pd47IuL8OLc3t4CNR6inLm/gTdechlGGq1B5gp1ISX6BcIoKkQ53Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=CpTr0UaI; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D89F288216;
	Wed, 26 Jun 2024 05:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719371267;
	bh=iquN++Ww3GpiBGPHe/kSaalmOfIFnAzuVWpKNxOGuYQ=;
	h=From:To:Cc:Subject:Date:From;
	b=CpTr0UaIgmDq0b/VX7kyrfakp4EMsO/IMzBRsVd4db5r26sEPSKGLeKTlgFkvuFRA
	 Fz2hhbogAUTH/4W2NdXDT7CSIsY7rc9P/ZvIBlgJMPZKNfs10TTLapNoX4GfdgPRjf
	 cIdKHKqK1LBWCf8PGhGa8nezKk5aQ8w2vM+g57iCsp3YcfxtO+D6Qwy6pU/7OaIt1R
	 DRe+iaW+FGFgLhPDBdEifJZSzplx0D1vcExBni4dvUaNYmGo7f+tag41qbXNp58PQN
	 SfDJGN34rcXce+cSjS7Icld7YXOZ8JzrtNLemto7HMQq3vbcMpHvvpLSizjOnLOnx5
	 V4oojDcgbH5Cg==
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
Subject: [PATCH] ARM: dts: stm32: Fix STM32MP13xx pinmux node eth2-rgmii-sleep-0 copy-paste error
Date: Wed, 26 Jun 2024 05:07:21 +0200
Message-ID: <20240626030736.512113-1-marex@denx.de>
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

Fix pin copy-paste error in STM32MP13xx eth2-rgmii-sleep-0 pinmux
node. Clearly the pins like PG11 are not supposed to be duplicated
in the node pinmux property, fix them up to match the hardware pin
assignment.

Fixes: d1193e65647e ("ARM: dts: stm32: Add pinmux nodes for DH electronics STM32MP13xx DHCOR SoM and DHSBC board")
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index 42995a8f5034c..9c7cf8f3c3e8b 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -157,16 +157,16 @@ eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 7, ANALOG)>, /* ETH_RGMII_TXD0 */
 				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD1 */
-				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD2 */
-				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD3 */
-				 <STM32_PINMUX('G', 8, ANALOG)>, /* ETH_RGMII_TX_CTL */
-				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_GTX_CLK */
-				 <STM32_PINMUX('B', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 1, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 6, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('G', 3, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
 				 <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_MDC */
 				 <STM32_PINMUX('F', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
 				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD1 */
-				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD2 */
-				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('A', 8, ANALOG)>, /* ETH_RGMII_RXD3 */
 				 <STM32_PINMUX('A', 12, ANALOG)>, /* ETH_RGMII_RX_CTL */
 				 <STM32_PINMUX('H', 11, ANALOG)>; /* ETH_RGMII_RX_CLK */
 		};
-- 
2.43.0


