Return-Path: <devicetree+bounces-256781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DD9D3A523
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BFA4F30028A1
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5EED3093BF;
	Mon, 19 Jan 2026 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="QAgxHRju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059E92FFF8F;
	Mon, 19 Jan 2026 10:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768818863; cv=none; b=jG9jdWGL5AoFG9PpdUs0xWeDPsGkyidz8agxHA5XE3y6Ewa0n0GZzqNgPcim4kG+5PfuTCV4Z/LXW+vK2EFjSvSvmbH8JuZ/FdWBRFwke5PvMfPMUkZN5488HMqr3NFPXwZlJDk/i1g7Kbe0gFOOB7dTFWK1s7VcWHC4W/Y6vCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768818863; c=relaxed/simple;
	bh=fj232GmAoHu7V5lmyciqNRwAZDZPTG+mhI5rguahGEo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EvPQ5+/FpRVM35FFxkFEk1JbzeMhpG8+Z4+wEuc7bxMjLUnTZq89LUID9aCXsoqASv3wfhaIPovhTxsXb66gLbCD5aqv/aAYly96YdMW2iW1UNJ/qsMQsvHWWnFPJGJYpQLdMWXgoAJpyOi+2YA7cHUOomf3Lvn5BXnbuRAaG8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=QAgxHRju; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 973101FB96;
	Mon, 19 Jan 2026 11:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1768818859;
	bh=wHYYYEHkaavFzc9JB6CtumJUwbAhau1BEoORQW5BAZ0=; h=From:To:Subject;
	b=QAgxHRjuUsjwozQGL0H3ogk6wYVKNXePVQLKLYDqUnqi6ArDN1f2azQ/c8AgoLiF2
	 7OfASJKoFmIntgAiUPUO+uSGlTRaPUdz//OOY8TNjtWQVzzgmhXVcaoCbvNeHvC5/v
	 MT320Wj+UDq2+arC+OxldskKwOtMMitL8b2yEQh6bxLaI/784h1RglievMVKg1mTSB
	 Rz/4MyHTfrgEbjdfZ7sxTcVqEfTFZNBwmbGSVv46Dq/U9NYXoYgDWExJUoca55Q/xr
	 MFwSGm+sHGiuuHW6gSnLq5hh+ZAaxlDmpq3e4bWsaK3gRufio1J6CBN4w3hE4NRXX1
	 +PHrEoHhq1fRw==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: imx8-apalis: Fix LEDs name collision
Date: Mon, 19 Jan 2026 11:34:09 +0100
Message-ID: <20260119103411.50397-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Ixora boards have multiple instances of status leds, to avoid a name
collision add the function-enumerator property.

This fixes the following Linux kernel warnings:

  leds-gpio leds: Led green:status renamed to green:status_1 due to name collision
  leds-gpio leds: Led red:status renamed to red:status_1 due to name collision

Fixes: c083131c9021 ("arm64: dts: freescale: add apalis imx8 aka quadmax carrier board support")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
index 7022de46b8bf..abb131d247c3 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
@@ -21,6 +21,7 @@ led-1 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
 			gpios = <&lsio_gpio5 27 GPIO_ACTIVE_HIGH>;
 		};
 
@@ -29,6 +30,7 @@ led-2 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
 			gpios = <&lsio_gpio5 29 GPIO_ACTIVE_HIGH>;
 		};
 
@@ -37,6 +39,7 @@ led-3 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
 			gpios = <&lsio_gpio5 20 GPIO_ACTIVE_HIGH>;
 		};
 
@@ -45,6 +48,7 @@ led-4 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
 			gpios = <&lsio_gpio5 21 GPIO_ACTIVE_HIGH>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
index 12732ed7f811..a0b452b92b3e 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
@@ -21,6 +21,7 @@ led-1 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
 			gpios = <&lsio_gpio5 27 GPIO_ACTIVE_HIGH>;
 		};
 
@@ -29,6 +30,7 @@ led-2 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
 			gpios = <&lsio_gpio5 29 GPIO_ACTIVE_HIGH>;
 		};
 
@@ -37,6 +39,7 @@ led-3 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
 			gpios = <&lsio_gpio5 20 GPIO_ACTIVE_HIGH>;
 		};
 
@@ -45,6 +48,7 @@ led-4 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
 			gpios = <&lsio_gpio5 21 GPIO_ACTIVE_HIGH>;
 		};
 	};
-- 
2.47.3


