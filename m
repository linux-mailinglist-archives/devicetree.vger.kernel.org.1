Return-Path: <devicetree+bounces-64529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACF48B99CC
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 13:10:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E5441C21521
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A225FEE4;
	Thu,  2 May 2024 11:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="lxM35xCt"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9D560263
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 11:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714648248; cv=none; b=u8vE9nzQLsemVZSwArndhar5fmKFY1Ucmbv2MZcDLn55f1qBDGJMpGK+SR+F6HaoNO3E16tYEb+TBRUJs1YRkGynLKMyv2EOCZZ7YQOnDzeJxX8f5nf8UF+neAqIhoPdXefe/gsK2ijtVGaqngNAkKNQDXyHmiRfohLc82drtrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714648248; c=relaxed/simple;
	bh=J41cZsFxG+TX/IIrlQoTk8vIdV3XZeKxL29wrQH7HAc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nfakX7J08Jug9Yk0VuB1cV1Popp184tXIflucGrtXuJsvyo9u9LiyAW2mi0BJ7FIdKYIEER4aKFevF1z6WqawoB43nuT4n8ohu89i36Mg3JVkbe0mSR4u6dpkZOyIz3lcv3OK8XDqBe9+c6bffxuW6gZf5Vbkz1tf+FK3/gmXMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=lxM35xCt; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: by codeconstruct.com.au (Postfix, from userid 10000)
	id B625720179; Thu,  2 May 2024 19:10:42 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1714648242;
	bh=sbiM1wQjQpQwo86xduemsr/EzPiG+23YPkdw/OpPa3g=;
	h=From:To:Cc:Subject:Date;
	b=lxM35xCtgjrf5TmYnBCzPKJIoOnc8ZYkYYqEHqE9fJwDUjL/XkdT2Y0LqXmspFlWG
	 OJyZtRcHDhJ+YTsd/G2ufK6wbYVpzmG95y/MBXuLsDhyn3jCX7fyELU++93z95l7GN
	 Fh0uiAId+QC2yBE4RvvcF0I4rzvgr2QQvzg1KMaUm++t+1pb9LzQVDgkinhDgFbLBh
	 d+hrjFVNE43EwE1wYQpdNt3QiXxgKy0Ee7al9ePBAuQjgxxJ0SD/OACZTuXNVsvIGQ
	 +Lj8Zo8k8xmWyj75Pr5xEf/MESgdBAe/CJncLLsTIFt6Hh/hXk6X4pFJ/XNjWl8WYM
	 b1W3D1T3NfQEw==
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH v2 1/2] arm: dts: aspeed-g6: move i2c controllers directly into apb node
Date: Thu,  2 May 2024 19:10:24 +0800
Message-Id: <9d8c03d742fa9767f30e23d75ddf0baf4296c88e.1714647917.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We currently have the apb's mapping of the i2c controller space as a
labelled mostly-empty node:

  apb {
    i2c: bus@1e78a000 {
      ranges = <...>;
    };
  }

... and then define the contents of the i2c block later:

  i2c: {
    i2c0: i2c-bus@80 {
      reg = <0x80 0x80>;
    };
    i2c1: i2c-bus@100 {
      reg = <0x100 0x80>;
    };
  }

Krzysztof mentions[1] that isn't convention though, with the top-level
simple-bus being empty and linked via the label. So, drop the label
usage and move the i2c bus definition into the simple-bus node directly
under the apb:

  apb {
     bus@1e78a000 {
      ranges = <...>;

      i2c0: i2c-bus@80 {
        reg = <0x80 0x80>;
      };
      i2c1: i2c-bus@100 {
        reg = <0x100 0x80>;
      };
    };
  }

This will allow us to be consistent when we add new definitions for the
i3c nodes, which would require the latter format.

[1]: https://lore.kernel.org/linux-devicetree/c5331cf8-7295-4e6a-ba39-e0751a2c357e@kernel.org/

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

--
v2:
 - new patch: reorganise i2c nodes before adding new-format i3c nodes
---
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 454 ++++++++++++------------
 1 file changed, 227 insertions(+), 227 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index 29f94696d8b1..96ceb08cf0cb 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -859,11 +859,237 @@ uart9: serial@1e790300 {
 				status = "disabled";
 			};
 
-			i2c: bus@1e78a000 {
+			/* i2c mapping, containing global & per-controller
+			 * register sets */
+			bus@1e78a000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges = <0 0x1e78a000 0x1000>;
+
+				i2c0: i2c-bus@80 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x80 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c1_default>;
+					status = "disabled";
+				};
+
+				i2c1: i2c-bus@100 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x100 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c2_default>;
+					status = "disabled";
+				};
+
+				i2c2: i2c-bus@180 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x180 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c3_default>;
+					status = "disabled";
+				};
+
+				i2c3: i2c-bus@200 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x200 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c4_default>;
+					status = "disabled";
+				};
+
+				i2c4: i2c-bus@280 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x280 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c5_default>;
+					status = "disabled";
+				};
+
+				i2c5: i2c-bus@300 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x300 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c6_default>;
+					status = "disabled";
+				};
+
+				i2c6: i2c-bus@380 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x380 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c7_default>;
+					status = "disabled";
+				};
+
+				i2c7: i2c-bus@400 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x400 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c8_default>;
+					status = "disabled";
+				};
+
+				i2c8: i2c-bus@480 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x480 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c9_default>;
+					status = "disabled";
+				};
+
+				i2c9: i2c-bus@500 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x500 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c10_default>;
+					status = "disabled";
+				};
+
+				i2c10: i2c-bus@580 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x580 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c11_default>;
+					status = "disabled";
+				};
+
+				i2c11: i2c-bus@600 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x600 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c12_default>;
+					status = "disabled";
+				};
+
+				i2c12: i2c-bus@680 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x680 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c13_default>;
+					status = "disabled";
+				};
+
+				i2c13: i2c-bus@700 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x700 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c14_default>;
+					status = "disabled";
+				};
+
+				i2c14: i2c-bus@780 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x780 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c15_default>;
+					status = "disabled";
+				};
+
+				i2c15: i2c-bus@800 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0x800 0x80>;
+					compatible = "aspeed,ast2600-i2c-bus";
+					clocks = <&syscon ASPEED_CLK_APB2>;
+					resets = <&syscon ASPEED_RESET_I2C>;
+					interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+					bus-frequency = <100000>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_i2c16_default>;
+					status = "disabled";
+				};
 			};
 
 			fsim0: fsi@1e79b000 {
@@ -899,229 +1125,3 @@ udma: dma-controller@1e79e000 {
 };
 
 #include "aspeed-g6-pinctrl.dtsi"
-
-&i2c {
-	i2c0: i2c-bus@80 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x80 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c1_default>;
-		status = "disabled";
-	};
-
-	i2c1: i2c-bus@100 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x100 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c2_default>;
-		status = "disabled";
-	};
-
-	i2c2: i2c-bus@180 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x180 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c3_default>;
-		status = "disabled";
-	};
-
-	i2c3: i2c-bus@200 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x200 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c4_default>;
-		status = "disabled";
-	};
-
-	i2c4: i2c-bus@280 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x280 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c5_default>;
-		status = "disabled";
-	};
-
-	i2c5: i2c-bus@300 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x300 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c6_default>;
-		status = "disabled";
-	};
-
-	i2c6: i2c-bus@380 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x380 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c7_default>;
-		status = "disabled";
-	};
-
-	i2c7: i2c-bus@400 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x400 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c8_default>;
-		status = "disabled";
-	};
-
-	i2c8: i2c-bus@480 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x480 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c9_default>;
-		status = "disabled";
-	};
-
-	i2c9: i2c-bus@500 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x500 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c10_default>;
-		status = "disabled";
-	};
-
-	i2c10: i2c-bus@580 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x580 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c11_default>;
-		status = "disabled";
-	};
-
-	i2c11: i2c-bus@600 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x600 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c12_default>;
-		status = "disabled";
-	};
-
-	i2c12: i2c-bus@680 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x680 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c13_default>;
-		status = "disabled";
-	};
-
-	i2c13: i2c-bus@700 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x700 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c14_default>;
-		status = "disabled";
-	};
-
-	i2c14: i2c-bus@780 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x780 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c15_default>;
-		status = "disabled";
-	};
-
-	i2c15: i2c-bus@800 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x800 0x80>;
-		compatible = "aspeed,ast2600-i2c-bus";
-		clocks = <&syscon ASPEED_CLK_APB2>;
-		resets = <&syscon ASPEED_RESET_I2C>;
-		interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
-		bus-frequency = <100000>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c16_default>;
-		status = "disabled";
-	};
-};
-- 
2.39.2


