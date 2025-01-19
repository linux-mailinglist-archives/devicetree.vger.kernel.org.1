Return-Path: <devicetree+bounces-139570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4E1A1638B
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 19:35:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A523A3A5BA6
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 18:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1361DFD9F;
	Sun, 19 Jan 2025 18:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="uPfzVbkz"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D9C1DF754
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 18:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737311702; cv=none; b=G/KFYsIjEtzUyVwStwpcle8LPLtEEN+7m7hqftWddY6Env8qRgY7Og3VLFZreynoecvMX0+ywjB/uTgehDm+Qt3fpkNuNC2X6tU+q5BHCyBQWd6XSbuJ/bs1oZ8St78Fp0kB+ryBd7bQkLw/ktTyIrf4MJEy9esBqLUxUSDNbK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737311702; c=relaxed/simple;
	bh=ujPlZqSf5aQadi3yA2LhUrX1DVPJPMfBX7D3Thc5OP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KF2jjG8PhCa/OANk3yPXL+hOVyhxosvJZ+UdIq1qHKOR6kKb5Ch3e8bthtkcVmx2JMUoV1bQJG+Awp0MhS2bmjHEiq0K3G1odKWqPPuvH5hH+z+C96HinBGMyhgyciThVsGjObUQykf2OPX5M4347YMVpp9s50YPjB8iGpitF/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=uPfzVbkz; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from terra.vega.svanheule.net (unknown [94.110.49.146])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 017695A7E54;
	Sun, 19 Jan 2025 19:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1737311694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XGeRpsWSaI43r0iXcM3eTZdyHwA9+Y4qH9XwLcGUe7Q=;
	b=uPfzVbkzgCkFQrDPNiv/mACIRzuW3YclsI3/gbl8PMTKa6sVDLtCHpLPlkkT93nX2sqUhd
	w6FdO2Nfrk4v7Hm12YteKuYQXoLDHbwGjfsk3U7DrjKvY8EE5pztoJ06LkX/UFbNbLNJjV
	xpOlS8Q1b9YRgkl9NakMIcDSQqaADjVqn5azaWI+byU/OmuEYMwBQR2Tl0ieEL/oUSky2v
	nTc8B+arZ5ZKdXcMjgNR2Gq6B54yW86SNFDWHthk0oAoHiDrx2Ig6HTyZ36YPIJtG/lh9T
	NXBbY7za4zz5osH1cT9X7v0TN9mYs2OYbT9KOD8Io/ZOrG6cbQEkPxyWrQ0gKA==
From: Sander Vanheule <sander@svanheule.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Sander Vanheule <sander@svanheule.net>
Subject: [PATCH 8/9] mips: dts: realtek: Add RTL838x SoC peripherals
Date: Sun, 19 Jan 2025 19:34:23 +0100
Message-ID: <20250119183424.259353-9-sander@svanheule.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250119183424.259353-1-sander@svanheule.net>
References: <20250119183424.259353-1-sander@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add some of the SoC's CPU peripherals currently supported:
  - GPIO controller with support for 24 GPIO lines, although not all
    lines are brought out to pads on the SoC package. These lines can
    generate interrupts from external sources.
  - Watchdog which can be used to restart the SoC if no external restart
    logic is present.
  - SPI controller, primarily used to access NOR flash

Signed-off-by: Sander Vanheule <sander@svanheule.net>
---
 arch/mips/boot/dts/realtek/rtl838x.dtsi | 36 +++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/mips/boot/dts/realtek/rtl838x.dtsi b/arch/mips/boot/dts/realtek/rtl838x.dtsi
index 246f4f607128..ce522a6af262 100644
--- a/arch/mips/boot/dts/realtek/rtl838x.dtsi
+++ b/arch/mips/boot/dts/realtek/rtl838x.dtsi
@@ -46,6 +46,14 @@ soc@18000000 {
 		#size-cells = <1>;
 		ranges = <0x0 0x18000000 0x10000>;
 
+		spi0: spi@1200 {
+			compatible = "realtek,rtl8380-spi";
+			reg = <0x1200 0x100>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		uart0: serial@2000 {
 			compatible = "ns16550a";
 			reg = <0x2000 0x100>;
@@ -89,5 +97,33 @@ intc: interrupt-controller@3000 {
 			interrupt-parent = <&cpuintc>;
 			interrupts = <2>, <3>, <4>, <5>, <6>;
 		};
+
+		watchdog: watchdog@3150 {
+			compatible = "realtek,rtl8380-wdt";
+			reg = <0x3150 0xc>;
+
+			realtek,reset-mode = "soc";
+
+			clocks = <&lx_clk>;
+			timeout-sec = <20>;
+
+			interrupt-parent = <&intc>;
+			interrupt-names = "phase1", "phase2";
+			interrupts = <19>, <18>;
+		};
+
+		gpio0: gpio@3500 {
+			compatible = "realtek,rtl8380-gpio", "realtek,otto-gpio";
+			reg = <0x3500 0x1c>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			ngpios = <24>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&intc>;
+			interrupts = <23>;
+		};
 	};
 };
-- 
2.48.1


