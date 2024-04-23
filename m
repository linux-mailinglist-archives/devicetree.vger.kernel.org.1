Return-Path: <devicetree+bounces-61764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D468AE113
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 11:34:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2010E1F21AC1
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 09:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CAF55A11F;
	Tue, 23 Apr 2024 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Na5OUdiG";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="A6zsYeBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F6B5820E;
	Tue, 23 Apr 2024 09:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713864843; cv=none; b=krrhmjjyhK165hySTd+4bTDHLWkGuRUQIw6OnUfskEdSoL5GV49m4n2FpSvScjezGEldpg8Y+wjQrbVpcL/2o7mJqtD49LukD1VX07S7dyVMObYFUNRRdR52KQC1OXmvG1qOu3MNLpSfIQ+9+wLAAbG1gCuFHVv8p7vIMG2nUHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713864843; c=relaxed/simple;
	bh=aykp8mCrsJ20CN+tqS8Isf4+DpYSc1KUuSazY2hgoCk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=A8DSeRsi3A7+NZjO5bZCzT8GN/bbIlRZC/U/aZHFVMGX8iYOzoDX2WnM7wmcAj8dzbkqB4cbfpxn9oYZzqqD6s//xmulxHv2Mg5C7HPbYKiVr4QkxycQGbOZb8ASUy9pkRDvYsMAYhjvgdM8UZyKJwCKkkxWFCu+HPKbk5Kkyyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=Na5OUdiG; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=A6zsYeBo reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1713864841; x=1745400841;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=C8ObYiQbVBMAjGykb0ue88J5nuKE1CbAPzk6NZyXx7I=;
  b=Na5OUdiG1OXtGV5mrGD2R9O1prfeYIsIX1PT1Dp8d1BkFkJlMSQ5GN0+
   59fortMIFKaJH51HF41/3ZN/NmWEbj8fowMTbBwhPPz9UOvtcwcxmjQnR
   842VcpiTkIvbP3xu+lU/qJxlaVKsXzDH2TfUgrYcny8tGnpMI5yEP//0O
   Ho7hMeZorHCt0rpO+AY5Wi3fPVQ9fAzR4hh2A/s3v0v271uCN39AlMEux
   H4GovSfxdGtyGOcTu4WK4/xGo3oRUf9DZdC9eabml1G18JjMgvIv9XLNF
   /yXPgmHkYerBwKrvnOyAxdzIjrMZBo+Kar5F04g0+gxAKnUSdFhDW0xlt
   g==;
X-IronPort-AV: E=Sophos;i="6.07,222,1708383600"; 
   d="scan'208";a="36562133"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 23 Apr 2024 11:33:58 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 41CEF175371;
	Tue, 23 Apr 2024 11:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1713864834; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=C8ObYiQbVBMAjGykb0ue88J5nuKE1CbAPzk6NZyXx7I=;
	b=A6zsYeBoYspOEHGVHkxHB6fDcjbfmktDpF433HD1eYWI0NqpYKIQSDn75ybb6/6dVwHAzP
	cDnQUOhHG9BZyPxs+p+Pk0c7PtaIVtmQDLtfWaCqDyNGcdff1A5xZOLnWkcRvdnEBdNDnz
	k619P+tP/OQsg6YaXNoxMzUmfDEi1CLBW8n7R2enN8KzwgftXcwvHCdEAnrkmK4k7p4esb
	sii+j+YudT8fCu/kmWTliuZd9uXmnqUvWzcPDMAHQqvOoPBsC0c7jv5FkIow/2rNjjPxqC
	7rfXUB5xO2i9ZOYQf72tmSkZ7gAjjJNrGrfbNRUD8/FSLT1lkPSYwWwlKAs2uA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: mba93xxca: Add USB support
Date: Tue, 23 Apr 2024 11:33:41 +0200
Message-Id: <20240423093341.1927592-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240423093341.1927592-1-alexander.stein@ew.tq-group.com>
References: <20240423093341.1927592-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

This adds support for both USB host and USB Type-C ports. This includes
the on-board USB hub. Remove the gpio-hog for USB_RESET# as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx93-tqma9352-mba93xxca.dts    | 73 ++++++++++++++++---
 1 file changed, 61 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
index af795ecf678b7..852dd3d2eac74 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
@@ -303,6 +303,32 @@ temperature-sensor@1c {
 		reg = <0x1c>;
 	};
 
+	ptn5110: usb-typec@50 {
+		compatible = "nxp,ptn5110", "tcpci";
+		reg = <0x50>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_typec>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "X17";
+			power-role = "dual";
+			data-role = "dual";
+			try-power-role = "sink";
+			typec-power-opmode = "default";
+			pd-disable;
+			self-powered;
+
+			port {
+				typec_con_hs: endpoint {
+					remote-endpoint = <&typec_hs>;
+				};
+			};
+		};
+	};
+
 	eeprom2: eeprom@54 {
 		compatible = "nxp,se97b", "atmel,24c02";
 		reg = <0x54>;
@@ -370,18 +396,6 @@ expander1: gpio@71 {
 				  "WLAN_PD#", "WLAN_W_DISABLE#",
 				  "WLAN_PERST#", "12V_EN";
 
-		/*
-		 * Controls the on board USB Hub reset which is low
-		 * active as reset signal. The output-low states, the
-		 * signal is inactive, e.g. no reset
-		 */
-		usb-reset-hog {
-			gpio-hog;
-			gpios = <2 GPIO_ACTIVE_LOW>;
-			output-low;
-			line-name = "USB_RESET#";
-		};
-
 		/*
 		 * Controls the WiFi card PD pin which is low active
 		 * as power down signal. The output-high states, the signal
@@ -492,6 +506,41 @@ &tpm6 {
 	status = "okay";
 };
 
+&usbotg1 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	disable-over-current;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	status = "okay";
+
+	port {
+		typec_hs: endpoint {
+			remote-endpoint = <&typec_con_hs>;
+		};
+	};
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	disable-over-current;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	status = "okay";
+
+	hub_2_0: hub@1 {
+		compatible = "usb424,2517";
+		reg = <1>;
+		reset-gpios = <&expander1 2 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_3v3>;
+	};
+};
+
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2_hs>, <&pinctrl_usdhc2_gpio>;
-- 
2.34.1


