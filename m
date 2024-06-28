Return-Path: <devicetree+bounces-81089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25491B452
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 02:57:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 912CF1C20F5D
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 00:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0371FA38;
	Fri, 28 Jun 2024 00:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="uaEcSaB+"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020E17EF
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 00:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719536263; cv=none; b=VtqMeoncFGLkmItBWCULqTNK16V/Ixj6pzDw/Kxarv+hrul76ddsLJFAm2n7nG69x/QGwMpU4hBqbmKoaRYU5/KYyzUMwDGF1kJj9mQB8TyhY/vdhDKPNqlyIuvc1DXFXghUgD/R9T9SdMYFAQGqN4agV181X2uZx+Fh+rTdzd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719536263; c=relaxed/simple;
	bh=amqQWhBstrSqd1iKKeC/Ae7IdwYSXgx9wG67R5WL6Wc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gl43IGAoJeXhl/LMTbl0k6Lko3l8RDhfJoLLmQN3nyv6GPFOUGonHMswm+9ej3XMq0/Drc8zQHE+ZlJKSXKEAddNXxPzgJFPfMpK7lc17aDMH0vUC+c9n4STKQAeOGSOo8uTbOCz2mJn7ZYkdtdTkaBTLEAmD1sLdp+9o0DpHXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=uaEcSaB+; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 843AB884F9;
	Fri, 28 Jun 2024 02:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719536260;
	bh=PZz//gSejG57W5kXE/lXb1K2go7QD43XoavVNKZunYk=;
	h=From:To:Cc:Subject:Date:From;
	b=uaEcSaB+xa08y9aEQtSsDdHqZGXCWECF9kO0yro+9QIjg0JiGd2q0C7N+1yL6Hq6n
	 cjcjHlsDSMTS9VvNpJGJhbKsGPca6+khAhJ2W6OyD/Lo985gOLk9+uGYYXgOB/Cz3a
	 pWN5+59SepRf0dytV2TPK2rTAbLDqQKdGyfq4hp+hqi9gwyqRWixcjrsvnfzyCGdwX
	 jYaUu6hy6e1w3jyWJtJfRFfpNdOtJZPzm7x2T87ZdHr7wzDXPvxPfGEirMDhQFcMfi
	 a8qCmzLU1wCq40fnIV34c5gMNwcqnQa3/98kASkoDghUXhV0I+lHA2xWqlzk4/qcGs
	 LlLHiDn0KAUBA==
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
Subject: [PATCH v2] ARM: dts: stm32: Add ethernet support for DH STM32MP13xx DHCOR DHSBC board
Date: Fri, 28 Jun 2024 02:57:04 +0200
Message-ID: <20240628005729.119871-1-marex@denx.de>
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
V2: Fold ARM: dts: stm32: Add phandle to nvmem efuse into STM32MP13xx ethernet
    DT node into this patch and make the nvmem-cells/nvmem-cell-names specific
    to this board
---
 .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
index 5f4f6b6e427a5..3cc9ad88d61bc 100644
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
@@ -72,6 +74,64 @@ channel@12 {
 	};
 };
 
+&ethernet1 {
+	nvmem-cell-names = "mac-address";
+	nvmem-cells = <&ethernet_mac1_address>;
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
+	nvmem-cell-names = "mac-address";
+	nvmem-cells = <&ethernet_mac2_address>;
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


