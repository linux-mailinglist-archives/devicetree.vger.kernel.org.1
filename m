Return-Path: <devicetree+bounces-83551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FD0928F01
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 23:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E094284777
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 21:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 251C5145A1E;
	Fri,  5 Jul 2024 21:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="FFIQp4hI"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7D21C693
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 21:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720216458; cv=none; b=MWM6dGSHf8YhFaZpgHbTJ5V9MgyqVDAg52UDHCPFnWuLwvutrFwJdx4Xnw2j65LMGcfNb3VzCxvuURIczTRheeaP4AHuk67NscEOyK9wYDh8jBzk01yOVMt8WS85EIaq313vBk0yAU37CbxTrKY3gEfRnRCknakvQyU0mI4LcaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720216458; c=relaxed/simple;
	bh=mvGO5+L8NVPRI123CvvN3+O/z9m3rRB2q4EXwrlx1ro=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V6UebH0wp+P08Da3+wxhZkHaOZT+ngsQuKfg0E9ESdBfRkJScr1c3hP28h3HIAneQQpQ6JVFREJOGKcVKluPsiEFKgntlNY5aKTFdOADXgp0uLTdUzYTyEiD5JY/6pmiof2fj0Xmvi72Lu53f6LeZsNvwnfkB+2jElQzwTFlbjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=FFIQp4hI; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 6D1C1881AD;
	Fri,  5 Jul 2024 23:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720216454;
	bh=sI2KNZ5kzxkVHD9MHvnScZHh0Hc1IXE5TYPHvTMq8Oc=;
	h=From:To:Cc:Subject:Date:From;
	b=FFIQp4hIdo3P0YbeKbePAxwiT6fvuU8gmHZ4fPgpQWVI0vYbLMRW1tMUTqWKdc0Ac
	 4S8SyiHMcGGtjVsCPBUjkTYNcX3R+ZGGSCBtmBA6e0N6aDUlCwuuc5sWNgcyO9UON5
	 VF3PytyghkUSuOm+tZjXeN0a54VcVTzrLyZ287B0M5Gzc5cPPk4GLUIiBV8+QGzHZm
	 VwyTFT0EhCO6VSIpCbneXAiPubIYItUByvZyLNNWZOubkfal4dz557oc6tNUBUzKA6
	 UncqC8o2SXKKQwAIhRNVylFx/C6SoQpKf8Lu71uPU/FAg48NoaJ9lo5WQEwuyNkabv
	 UsYKTN/jdXcrg==
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
Subject: [PATCH] ARM: dts: stm32: Describe PHY LEDs in DH STM32MP13xx DHCOR DHSBC board DT
Date: Fri,  5 Jul 2024 23:53:50 +0200
Message-ID: <20240705215402.257070-1-marex@denx.de>
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

The RTL8211 PHY on DH STM32MP13xx DHCOR DHSBC carrier board supports HW
LED offload, the LEDs can be configured on link at 10/100/1000 line rate
and on RXTX activity. There are two PHYs on this board, each only has two
out of three LEDs connected to the PHY LED outputs. Describe this hardware
configuration in DT.

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
 .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
index 1b916c419e8e2..c80a6ecdb47a6 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
@@ -100,6 +100,25 @@ ethphy1: ethernet-phy@1 {
 			reset-assert-us = <15000>;
 			reset-deassert-us = <55000>;
 			reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					color = <LED_COLOR_ID_GREEN>;
+					function = LED_FUNCTION_WAN;
+					linux,default-trigger = "netdev";
+				};
+
+				led@1 {
+					reg = <1>;
+					color = <LED_COLOR_ID_YELLOW>;
+					function = LED_FUNCTION_WAN;
+					linux,default-trigger = "netdev";
+				};
+			};
 		};
 	};
 };
@@ -130,6 +149,25 @@ ethphy2: ethernet-phy@1 {
 			reset-assert-us = <15000>;
 			reset-deassert-us = <55000>;
 			reset-gpios = <&gpiog 8 GPIO_ACTIVE_LOW>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					color = <LED_COLOR_ID_GREEN>;
+					function = LED_FUNCTION_LAN;
+					linux,default-trigger = "netdev";
+				};
+
+				led@1 {
+					reg = <1>;
+					color = <LED_COLOR_ID_YELLOW>;
+					function = LED_FUNCTION_LAN;
+					linux,default-trigger = "netdev";
+				};
+			};
 		};
 	};
 };
-- 
2.43.0


