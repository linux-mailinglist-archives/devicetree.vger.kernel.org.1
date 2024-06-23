Return-Path: <devicetree+bounces-78999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C91E0913DCB
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 21:52:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6296BB2122A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 19:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FBA183087;
	Sun, 23 Jun 2024 19:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="KADIVKLT"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EBC3BBE2
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 19:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719172370; cv=none; b=t1XPawDfE9kCR4mZKcYi2iC3XwETPF8KSmkVb2VrSPJbtyOuLHeT3rmpjPVqC3A25w/LuBmk8i3A9WbnZ6UrDpYwcUX8m7KWfClNDmPIXQE6kD7StSo/ybfmdD94aXW+0tt9ORNQEII6H7D9g3+Z2gDIdf2ne/MY1ZR6GU6tUWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719172370; c=relaxed/simple;
	bh=wf+oLV903XVkXtYd/AK+GxriCxYie/91rVwCWMetSPc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LYEWC6/1atPCp4Ct+X7pFh3TURz8Ew0H17fXcSqT30qhZM7nJuYrAxOJpmfO+o5Nil8R4RMHE00ewc8jeJeNNMWzxHK5yt+kg/ScJbMiaNFUTLzdoh28zyaCRjrKZ9DfakvJSN+7hAZa4YGIIV2Yn7meBDCdlgmzcxti5GHOG7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=KADIVKLT; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id DDB09866F6;
	Sun, 23 Jun 2024 21:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719172367;
	bh=XALLwSMwLcHJcTRX6dGhf2yozSIuQndpw7MNCg30264=;
	h=From:To:Cc:Subject:Date:From;
	b=KADIVKLTbNsLKcxr7J7wteQwem77OZdAR1IRUkidugSa2H7YHeO1ilCqKCqzriqs9
	 nN41YiG5DVCKhBGT1jgzQl7Av3DG79zaJxj9gRGx/ZI89UTGvKiQZXKNBHYMvEZwjL
	 iuzpbP/j1WRZELATVvj/Bv+SDk6eAuujCoyy1GAwIoxb/7kROUfgl7BQvmmzUipmpi
	 zsgR/U3r7+zhj+ZnuG6Tj778hY7a7Zn4VfQbseVjCYp/cNWd+JjDJZKJTVoFM2H70f
	 2XBTTSecDmq5YTyffgZIldgcNwGc+hNaFhbuqyMS218QRoh2uwTw8aBoOcoPzBNPik
	 NaGHopIg0lHzg==
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
Subject: [PATCH] ARM: dts: stm32: Add ethernet support for DH STM32MP13xx DHCOR DHSBC board
Date: Sun, 23 Jun 2024 21:51:56 +0200
Message-ID: <20240623195233.81550-1-marex@denx.de>
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

Add ethernet support for the DH STM32MP13xx DHCOR DHSBC carrier board.
This carrier board is populated with two gigabit ethernet ports and two
Realtek RTL8211F PHYs, both are described in this DT patch.

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
 .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
index 5f4f6b6e427a5..bacb70b4256bc 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
@@ -22,6 +22,8 @@ / {
 		     "st,stm32mp135";
 
 	aliases {
+		ethernet0 = &ethernet1;
+		ethernet1 = &ethernet2;
 		serial2 = &usart1;
 		serial3 = &usart2;
 	};
@@ -72,6 +74,60 @@ channel@12 {
 	};
 };
 
+&ethernet1 {
+	phy-handle = <&ethphy1>;
+	phy-mode = "rgmii-id";
+	pinctrl-0 = <&eth1_rgmii_pins_a>;
+	pinctrl-1 = <&eth1_rgmii_sleep_pins_a>;
+	pinctrl-names = "default", "sleep";
+	st,ext-phyclk;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		ethphy1: ethernet-phy@1 {
+			/* RTL8211F */
+			compatible = "ethernet-phy-id001c.c916";
+			interrupt-parent = <&gpiog>;
+			interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+			reg = <1>;
+			reset-assert-us = <15000>;
+			reset-deassert-us = <55000>;
+			reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&ethernet2 {
+	phy-handle = <&ethphy2>;
+	phy-mode = "rgmii-id";
+	pinctrl-0 = <&eth2_rgmii_pins_a>;
+	pinctrl-1 = <&eth2_rgmii_sleep_pins_a>;
+	pinctrl-names = "default", "sleep";
+	st,ext-phyclk;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		ethphy2: ethernet-phy@1 {
+			/* RTL8211F */
+			compatible = "ethernet-phy-id001c.c916";
+			interrupt-parent = <&gpiog>;
+			interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+			reg = <1>;
+			reset-assert-us = <15000>;
+			reset-deassert-us = <55000>;
+			reset-gpios = <&gpiog 8 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
 &gpioa {
 	gpio-line-names = "", "", "", "",
 			  "", "DHSBC_USB_PWR_CC1", "", "",
-- 
2.43.0


