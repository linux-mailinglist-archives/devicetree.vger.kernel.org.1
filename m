Return-Path: <devicetree+bounces-321605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RCt0MIYuTGqNhQEAu9opvQ
	(envelope-from <devicetree+bounces-321605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:39:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B68C7160CF
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:39:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cyberchaos.dev header.s=mail header.b=ogXyt1qe;
	dmarc=pass (policy=reject) header.from=cyberchaos.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321605-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321605-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29D0E302C4B0
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57BE143B6C5;
	Mon,  6 Jul 2026 22:38:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cyberchaos.dev (mail.cyberchaos.dev [195.39.247.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A0C436BCD;
	Mon,  6 Jul 2026 22:38:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783377531; cv=none; b=c5nwcyUlUn+qYBetT7OvtbKLHgpGoGC4cxRMVQZX4TCvbR5MCpu8V4IpyGXd4ldsxDMlIYiFT8akjxerZfSfdO9frKmVCiklb2lsUFdEBLVv3ajBA6eEj99iWJPK5/xKPlpUZOPuXR7AGZD25ZuJylVsAjfJvc5no9JxKerqgvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783377531; c=relaxed/simple;
	bh=bRgfs9ShIxfVOO8/0MKdtw0wiqFFApzCj5xKPcw+2F4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WZQeR91YPGYm+g9EaHocqHR9gjYKaRCvSWkKF+XWTMbUHdiUFNZQistdqzrOuE+fy7XuWeC5MC0hF1ZkSPed1lwB5yTIOOlI4k4z7MVv2oZRqhv/XIqNVmGS427t13Xx07lKE5DEkPbHhwf9bJ5zxOi/543MekfoURb+3UdYdYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyberchaos.dev; spf=pass smtp.mailfrom=cyberchaos.dev; dkim=pass (1024-bit key) header.d=cyberchaos.dev header.i=@cyberchaos.dev header.b=ogXyt1qe; arc=none smtp.client-ip=195.39.247.168
From: Yureka Lilian <yureka@cyberchaos.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberchaos.dev;
	s=mail; t=1783377522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2MYdzoSewcFcQWVr1xi0SARyuuH/Y7lXURwUtog43pY=;
	b=ogXyt1qeaC0mL0e/L8Uq+VzkHdS7iKaPeWOctmTgKN4+XG+0TRitSM359QiWNzhBDfA9Td
	IoaXjAe+NJ04ZV2xVxK0VRqaexmDFiPis0Le4g7gAd8qhfuatgVL5ICvRJm387y/gzh1pi
	9l+NQxDg9U984Yh6P4dDezjV5bDJXCY=
Date: Tue, 07 Jul 2026 00:38:28 +0200
Subject: [PATCH 2/2] arm64: dts: apple: t600x: Add PCIe pwren gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-apple-pcie-pwren-v1-2-5a281b182fe2@cyberchaos.dev>
References: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
In-Reply-To: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Marc Zyngier <maz@kernel.org>, 
 Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, Yureka Lilian <yureka@cyberchaos.dev>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyberchaos.dev,reject];
	R_DKIM_ALLOW(-0.20)[cyberchaos.dev:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321605-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:maz@kernel.org,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:yureka@cyberchaos.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cyberchaos.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cyberchaos.dev:from_mime,cyberchaos.dev:email,cyberchaos.dev:mid,cyberchaos.dev:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B68C7160CF

For the MacBook Pro and Mac Studio devices using the M1 Pro/Max/Ultra
SoCs, add the appropriate fixed regulators for enabling the peripherals
connected to the PCIe ports (WiFi, SD card reader and USB xHCI), which
are controlled by GPIOs connected to the SMC.
Set the regulators as the power-supply of the respective PCIe port, so
that the endpoints are powered on before probing the ports.

Add the 'pciclass,0604' compatible string to the PCIe bridge nodes in
the SoC to allow the pci-pwrctrl-generic driver to bind to them.

Signed-off-by: Yureka Lilian <yureka@cyberchaos.dev>
---
 arch/arm64/boot/dts/apple/t600x-die0.dtsi      |  4 ++++
 arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi | 16 +++++++++++++++
 arch/arm64/boot/dts/apple/t600x-j375.dtsi      | 27 ++++++++++++++++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t600x-die0.dtsi b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
index f715b19efd16..53a633a3c652 100644
--- a/arch/arm64/boot/dts/apple/t600x-die0.dtsi
+++ b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
@@ -449,6 +449,7 @@ pcie0: pcie@590000000 {
 		pinctrl-names = "default";
 
 		port00: pci@0,0 {
+			compatible = "pciclass,0604";
 			device_type = "pci";
 			reg = <0x0 0x0 0x0 0x0 0x0>;
 			reset-gpios = <&pinctrl_ap 4 GPIO_ACTIVE_LOW>;
@@ -468,6 +469,7 @@ port00: pci@0,0 {
 		};
 
 		port01: pci@1,0 {
+			compatible = "pciclass,0604";
 			device_type = "pci";
 			reg = <0x800 0x0 0x0 0x0 0x0>;
 			reset-gpios = <&pinctrl_ap 5 GPIO_ACTIVE_LOW>;
@@ -487,6 +489,7 @@ port01: pci@1,0 {
 		};
 
 		port02: pci@2,0 {
+			compatible = "pciclass,0604";
 			device_type = "pci";
 			reg = <0x1000 0x0 0x0 0x0 0x0>;
 			reset-gpios = <&pinctrl_ap 6 GPIO_ACTIVE_LOW>;
@@ -507,6 +510,7 @@ port02: pci@2,0 {
 		};
 
 		port03: pci@3,0 {
+			compatible = "pciclass,0604";
 			device_type = "pci";
 			reg = <0x1800 0x0 0x0 0x0 0x0>;
 			reset-gpios = <&pinctrl_ap 7 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi b/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
index fee84f809a9c..7954cbbe4514 100644
--- a/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
+++ b/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
@@ -55,6 +55,20 @@ led-0 {
 			default-state = "keep";
 		};
 	};
+
+	vreg_pcie0_port0: regulator-pcie0-port0 {
+		compatible = "regulator-fixed";
+		regulator-name = "pwren-pcie0-port0";
+		gpio = <&smc_gpio 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	vreg_pcie0_port1: regulator-pcie0-port1 {
+		compatible = "regulator-fixed";
+		regulator-name = "pwren-pcie0-port1";
+		gpio = <&smc_gpio 26 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &serial0 {
@@ -176,6 +190,7 @@ &nco_clkref {
 /* PCIe devices */
 &port00 {
 	/* WLAN */
+	power-supply = <&vreg_pcie0_port0>;
 	bus-range = <1 1>;
 	wifi0: wifi@0,0 {
 		compatible = "pci14e4,4433";
@@ -195,6 +210,7 @@ bluetooth0: bluetooth@0,1 {
 
 &port01 {
 	/* SD card reader */
+	power-supply = <&vreg_pcie0_port1>;
 	bus-range = <2 2>;
 	sdhci0: mmc@0,0 {
 		compatible = "pci17a0,9755";
diff --git a/arch/arm64/boot/dts/apple/t600x-j375.dtsi b/arch/arm64/boot/dts/apple/t600x-j375.dtsi
index 8a1494949e4c..412b2fe109be 100644
--- a/arch/arm64/boot/dts/apple/t600x-j375.dtsi
+++ b/arch/arm64/boot/dts/apple/t600x-j375.dtsi
@@ -42,6 +42,30 @@ memory@10000000000 {
 		device_type = "memory";
 		reg = <0x100 0 0x2 0>; /* To be filled by loader */
 	};
+
+	/* WLAN/BT */
+	vreg_pcie0_port0: regulator-pcie0-port0 {
+		compatible = "regulator-fixed";
+		regulator-name = "pwren-pcie0-port0";
+		gpio = <&smc_gpio 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	/* SD card reader */
+	vreg_pcie0_port1: regulator-pcie0-port1 {
+		compatible = "regulator-fixed";
+		regulator-name = "pwren-pcie0-port1";
+		gpio = <&smc_gpio 26 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	/* USB xHCI */
+	vreg_pcie0_port3: regulator-pcie0-port3 {
+		compatible = "regulator-fixed";
+		regulator-name = "pwren-pcie0-port3";
+		gpio = <&smc_gpio 20 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &serial0 {
@@ -356,6 +380,7 @@ &nco_clkref {
 /* PCIe devices */
 &port00 {
 	/* WLAN */
+	power-supply = <&vreg_pcie0_port0>;
 	bus-range = <1 1>;
 	wifi0: wifi@0,0 {
 		compatible = "pci14e4,4433";
@@ -375,6 +400,7 @@ bluetooth0: bluetooth@0,1 {
 
 &port01 {
 	/* SD card reader */
+	power-supply = <&vreg_pcie0_port1>;
 	bus-range = <2 2>;
 	sdhci0: mmc@0,0 {
 		compatible = "pci17a0,9755";
@@ -397,6 +423,7 @@ ethernet0: ethernet@0,0 {
 
 &port03 {
 	/* USB xHCI */
+	power-supply = <&vreg_pcie0_port3>;
 	bus-range = <4 4>;
 	status = "okay";
 };

-- 
2.54.0


