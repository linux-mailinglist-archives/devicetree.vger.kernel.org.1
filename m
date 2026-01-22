Return-Path: <devicetree+bounces-258405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLXZJtwscmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:57:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BE2679CE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:57:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2FD90961BE3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC4740756C;
	Thu, 22 Jan 2026 12:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="IEfhFXMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832E33C1FCE
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769086302; cv=none; b=TSd2v1meZJ5OfZ7iOkeZNPMNRN4vOfXLAL4lN5h6DZyD3iBelf/gkdbcIdd/NLALJdvqH5Nkutq4yReAJNCI21qL/Ugm0nVcpKkyFPCYgUfUO+/C2H0yRgK17DFDrT6CzEIXjoAsGjcSdsQr1jgykoX5H3Q4iZnbipwweVo4Jeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769086302; c=relaxed/simple;
	bh=CnnXymbrGRT3V83nY1QVU7QG5QZ1k7N+tOMBfIOkrt0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=WiAKxzsUzCJsKpTqw98qL45CRnA2A2rPpNVekxlcoV6Ot+jRSFrDFQPO6KPU8HSqVNub+FxToC2cD4I18/zImToY9OkAugNLwC3fC6w0a44r9wOjZdKM4C+Ihlo1/xCVZp/8C2Z3HcLx6VpjjqZalmRXZdBWiOoPIevAb1gwedo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=IEfhFXMQ; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20260122125136epoutp01d27d926900eab8c5aec3d2734268caa4~NDp0Zq76n0409004090epoutp01n
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:51:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20260122125136epoutp01d27d926900eab8c5aec3d2734268caa4~NDp0Zq76n0409004090epoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1769086296;
	bh=eqqqBR9sIrPPiLooRmVHGEoq/jEmm2fgDXa+UvCsZgg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IEfhFXMQEG+/e7hWwPytiLk1wfLM52tVgZVeOa4Pla+Vqp2N7P7hBO6U4hOO/rUsg
	 pHUTQL30OJrcqbHHs3dYaseFTwrKKJ4QCFD9t3vJC9UCA0BbW2d9Lx9DgmOiG9FlNR
	 jEa+EjlODHCA1Vqq1KYPN3AoWlmTDBZAYyIKMb58=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20260122125136epcas5p445cb6799dca47e130e8e4763f7671a18~NDpz9MGGu1352113521epcas5p4m;
	Thu, 22 Jan 2026 12:51:36 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.93]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4dxgtH0gd8z6B9m9; Thu, 22 Jan
	2026 12:51:35 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20260122125134epcas5p36625b7ac70b8dfba9430831a11955682~NDpynkwiU1556515565epcas5p3K;
	Thu, 22 Jan 2026 12:51:34 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260122125132epsmtip1e50006feabe8a79c690c5e08e5b397b4~NDpwzYlNb0713007130epsmtip1T;
	Thu, 22 Jan 2026 12:51:32 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	rosa.pila@samsung.com, dev.tailor@samsung.com, faraz.ata@samsung.com,
	muhammed.ali@samsung.com, selvarasu.g@samsung.com, pritam.sutar@samsung.com
Subject: [PATCH v2 2/3] arm64: dts: exynos: ExynosAutov920: Add regulators
 for the USB
Date: Thu, 22 Jan 2026 18:37:20 +0530
Message-Id: <20260122130721.205664-3-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260122130721.205664-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260122125134epcas5p36625b7ac70b8dfba9430831a11955682
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260122125134epcas5p36625b7ac70b8dfba9430831a11955682
References: <20260122130721.205664-1-pritam.sutar@samsung.com>
	<CGME20260122125134epcas5p36625b7ac70b8dfba9430831a11955682@epcas5p3.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[samsung.com,none];
	TAGGED_FROM(0.00)[bounces-258405-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[samsung.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pritam.sutar@samsung.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 68BE2679CE
X-Rspamd-Action: no action

Add dummy regulator for USB and PHY supplies.

Add vbus regulator that is enabled by GPIO pin.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../boot/dts/exynos/exynosautov920-sadk.dts   | 139 ++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
index a397f068ed53..f90f7704597c 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
+++ b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
@@ -52,6 +52,76 @@ memory@80000000 {
 		      <0x8 0x80000000 0x1 0xfba00000>,
 		      <0xa 0x00000000 0x2 0x00000000>;
 	};
+
+	/* TODO: Remove this once PMIC is implemented  */
+	dummy_regulator: regulator-0 {
+		 compatible = "regulator-fixed";
+		 regulator-name = "dummy_regulator";
+	};
+
+	usbdrd31_dwc3_vbus: usbdrd31_dwc3-vbus {
+	       compatible = "regulator-fixed";
+	       regulator-name = "usbdrd31_dwc3-vbus";
+	       regulator-min-microvolt = <5000000>;
+	       regulator-max-microvolt = <5000000>;
+	       enable-active-high;
+	       regulator-always-on;
+	       gpio = <&gpp2 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* Use gpio for enabling vbus regulator */
+	usb_phy0: usb-phy0 {
+		compatible = "usb-nop-xceiv";
+		vbus-supply = <&usbdrd31_dwc3_vbus>;
+	};
+
+	usbdrd20_dwc3_0_vbus: usbdrd20_dwc3_0-vbus {
+	       compatible = "regulator-fixed";
+	       regulator-name = "usbdrd20_dwc3_0-vbus";
+	       regulator-min-microvolt = <5000000>;
+	       regulator-max-microvolt = <5000000>;
+	       enable-active-high;
+	       regulator-always-on;
+	       gpio = <&gpp2 1 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* Use gpio for enabling vbus regulator */
+	usb_phy1: usb-phy1 {
+		compatible = "usb-nop-xceiv";
+		vbus-supply = <&usbdrd20_dwc3_0_vbus>;
+	};
+
+	usbdrd20_dwc3_1_vbus: usbdrd20_dwc3_1-vbus {
+	       compatible = "regulator-fixed";
+	       regulator-name = "usbdrd20_dwc3_1-vbus";
+	       regulator-min-microvolt = <5000000>;
+	       regulator-max-microvolt = <5000000>;
+	       enable-active-high;
+	       regulator-always-on;
+	       gpio = <&gpp2 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* Use gpio for enabling vbus regulator */
+	usb_phy2: usb-phy2 {
+		compatible = "usb-nop-xceiv";
+		vbus-supply = <&usbdrd20_dwc3_1_vbus>;
+	};
+
+	usbdrd20_dwc3_2_vbus: usbdrd20_dwc3_2-vbus {
+	       compatible = "regulator-fixed";
+	       regulator-name = "usbdrd20_dwc3_2-vbus";
+	       regulator-min-microvolt = <5000000>;
+	       regulator-max-microvolt = <5000000>;
+	       enable-active-high;
+	       regulator-always-on;
+	       gpio = <&gpp2 3 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* Use gpio for enabling vbus regulator */
+	usb_phy3: usb-phy3 {
+		compatible = "usb-nop-xceiv";
+		vbus-supply = <&usbdrd20_dwc3_2_vbus>;
+	};
 };
 
 &pinctrl_alive {
@@ -86,3 +156,72 @@ &usi_0 {
 &xtcxo {
 	clock-frequency = <38400000>;
 };
+
+&usbdrd31_ssphy {
+	dvdd-supply = <&dummy_regulator>;
+	vdd18-supply = <&dummy_regulator>;
+};
+
+&usbdrd31_hsphy {
+	dvdd-supply = <&dummy_regulator>;
+	vdd18-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd31_dwc3 {
+	maximum-speed = "super-speed-plus";
+	usb-phy = <&usb_phy0>;
+};
+
+&usbdrd31 {
+	vdd10-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd20_phy0 {
+	dvdd-supply = <&dummy_regulator>;
+	vdd18-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd20_dwc3_0 {
+	maximum-speed = "high-speed";
+	usb-phy = <&usb_phy1>;
+};
+
+&usbdrd20_0 {
+	vdd10-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd20_phy1 {
+	dvdd-supply = <&dummy_regulator>;
+	vdd18-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd20_dwc3_1 {
+	maximum-speed = "high-speed";
+	usb-phy = <&usb_phy2>;
+};
+
+&usbdrd20_1 {
+	vdd10-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd20_phy2 {
+	dvdd-supply = <&dummy_regulator>;
+	vdd18-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
+
+&usbdrd20_dwc3_2 {
+	maximum-speed = "high-speed";
+	usb-phy = <&usb_phy3>;
+};
+
+&usbdrd20_2 {
+	vdd10-supply = <&dummy_regulator>;
+	vdd33-supply = <&dummy_regulator>;
+};
-- 
2.34.1


