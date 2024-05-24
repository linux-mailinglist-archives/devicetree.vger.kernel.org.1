Return-Path: <devicetree+bounces-68984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC908CE3E1
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:49:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75ED028275E
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 09:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8CF85C44;
	Fri, 24 May 2024 09:47:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B89885C43;
	Fri, 24 May 2024 09:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716544047; cv=none; b=LxDsbfP+x/sazp5hOxkIOWayD0EDLA8kikKjm4yzhcTlOxNxVyrnPUl4YbDqPgSITRp2nTX7RlzpXWl7GJ72nO40fAGwVgVZ5lwr9DcubEyH+VL5hXD9KXrXzBvqLSq5TxyNKV93/GPnwEjgWp+BSpApBm0n/ZWbr9Zt/WEiQ4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716544047; c=relaxed/simple;
	bh=Fs0QcavU4AhMW5fvMh3QVxyj8Xo9/QNHu+yqJeDCf+8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NuXGKs07/msMQx9J9M0eby1qozu6cJD/wUdIAtYdOpXwxyJVft4Z0ArO31fz1D8O0JrT4kNCB8tO2DbfolpcliR4hXp0mXgMGfBBKXSzB738R7Yu1j7X6FRRYPBzpp3jZxW+bFA/82NQXAusnh+xbyRP3Dez3rwgM788TwAp9ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-IronPort-AV: E=Sophos;i="6.08,185,1712588400"; 
   d="scan'208";a="205579852"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 24 May 2024 18:47:25 +0900
Received: from renesas-deb12.cephei.uk (unknown [10.226.93.196])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 3F9BC400720C;
	Fri, 24 May 2024 18:47:20 +0900 (JST)
From: Paul Barker <paul.barker.ct@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Paul Barker <paul.barker.ct@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 9/9] arm64: dts: renesas: rzg2ul: Set Ethernet PVDD to 1.8V
Date: Fri, 24 May 2024 10:46:03 +0100
Message-Id: <20240524094603.988-10-paul.barker.ct@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240524094603.988-1-paul.barker.ct@bp.renesas.com>
References: <20240524094603.988-1-paul.barker.ct@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On the RZ/G2UL & RZ/Five SMARC SOMs, the RGMII interface between the SoC
and the Ethernet PHY operates at 1.8V.

The power supply for this interface may be correctly configured in
u-boot, but the kernel should not be relying on this. Now that the
RZ/G2L pinctrl driver supports configuring the Ethernet power supply
voltage, we can simply specify the desired voltage in the device tree.

Signed-off-by: Paul Barker <paul.barker.ct@bp.renesas.com>
---
 .../boot/dts/renesas/rzg2ul-smarc-som.dtsi     | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg2ul-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg2ul-smarc-som.dtsi
index 417f49090b15..79443fb3f581 100644
--- a/arch/arm64/boot/dts/renesas/rzg2ul-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg2ul-smarc-som.dtsi
@@ -144,6 +144,7 @@ adc_pins: adc {
 	eth0_pins: eth0 {
 		txc {
 			pinmux = <RZG2L_PORT_PINMUX(1, 0, 1)>; /* ET0_TXC */
+			power-source = <1800>;
 			output-enable;
 		};
 
@@ -161,14 +162,19 @@ mux {
 				 <RZG2L_PORT_PINMUX(3, 2, 1)>, /* ET0_RXD0 */
 				 <RZG2L_PORT_PINMUX(3, 3, 1)>, /* ET0_RXD1 */
 				 <RZG2L_PORT_PINMUX(4, 0, 1)>, /* ET0_RXD2 */
-				 <RZG2L_PORT_PINMUX(4, 1, 1)>, /* ET0_RXD3 */
-				 <RZG2L_PORT_PINMUX(5, 1, 7)>; /* IRQ2 */
+				 <RZG2L_PORT_PINMUX(4, 1, 1)>; /* ET0_RXD3 */
+			power-source = <1800>;
+		};
+
+		irq {
+			pinmux = <RZG2L_PORT_PINMUX(5, 1, 7)>; /* IRQ2 */
 		};
 	};
 
 	eth1_pins: eth1 {
 		txc {
 			pinmux = <RZG2L_PORT_PINMUX(7, 0, 1)>; /* ET1_TXC */
+			power-source = <1800>;
 			output-enable;
 		};
 
@@ -186,8 +192,12 @@ mux {
 				 <RZG2L_PORT_PINMUX(9, 1, 1)>, /* ET1_RXD0 */
 				 <RZG2L_PORT_PINMUX(9, 2, 1)>, /* ET1_RXD1 */
 				 <RZG2L_PORT_PINMUX(9, 3, 1)>, /* ET1_RXD2 */
-				 <RZG2L_PORT_PINMUX(10, 0, 1)>, /* ET1_RXD3 */
-				 <RZG2L_PORT_PINMUX(18, 5, 1)>; /* IRQ7 */
+				 <RZG2L_PORT_PINMUX(10, 0, 1)>; /* ET1_RXD3 */
+			power-source = <1800>;
+		};
+
+		irq {
+			pinmux = <RZG2L_PORT_PINMUX(18, 5, 1)>; /* IRQ7 */
 		};
 	};
 
-- 
2.39.2


