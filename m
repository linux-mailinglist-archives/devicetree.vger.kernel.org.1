Return-Path: <devicetree+bounces-266256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKF7Nmu3lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:46:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7E014F4FB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:46:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 586A2307BDAB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A1337417B;
	Tue, 17 Feb 2026 18:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ghEX6WwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5700437472B
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353817; cv=none; b=OrxTgQC+8ZXCDv0/oVMqiIWA9fvF0YoTqYWAA9Z55zB8xGfPAPpBAakGk2rEqXrDC72+tJf0n5cMW00EqnNvrzQt1vKUGN8oX3Ybfz+ZsefVhw9DWlmesc2tLZ1XxgGGWlJZ7WYiIvtzHKwe7nukzPMSwYzRG2fmKBdclvn/T/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353817; c=relaxed/simple;
	bh=Owa7PrRToVgwjZN9MxDUgGkCItTmxwXIVvAy0R1x134=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l7aL5FuYbccys88x28BVrqzR+yxmwUc6rdT4ujBubO2G9pDKpOBLdyddlZNALHN3r7tj/RscvAwh0vXChCDLB62wf0aUUZZFZ8rAIKBNmyewCTITxinD0YgskB6x4kHVR5aTAn7FuEMC2PAAAUAj8csNgrTNQ0Xl2vnKWXuORRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ghEX6WwX; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso34765385e9.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353813; x=1771958613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zfWFh33aOMYuO7yfeXL/PtQsXgAkQdOamwxvw84QZ9g=;
        b=ghEX6WwX0IONkDm8/EYzJq91c6W4g7oR81LetuHTRlJZgnqdS9AuZ9AGnRvxkff80S
         faDAQHo88xCcJABHQRr8XZN5Cb68VPwAxohrIG2Vb2S0Uc0RNCRbzImC25di7eOI1g2J
         BMbSkvtwTTq3SOG1sgMUgKpaiYoum7cQo4kUooivcnQKmJ2PhnpDFVzQRkRFh6zPxJsf
         BBHCl9qz/ewqRQBpEOT0XYj500nJqjb5ByLk5zWjTEy+sNcYpxT78EdRN+5jLWhE7A4Y
         oxx8LHkyNECd5lXvD+9xm2ONw+UvNUjlb4UAje2bn/VImPxUM75aKSQ9X9uDiALIV7Nk
         czRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353813; x=1771958613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zfWFh33aOMYuO7yfeXL/PtQsXgAkQdOamwxvw84QZ9g=;
        b=DCehsJ5vAR6C2tpLNwAclpdA+IuQc9UqU/uF4iaMsiMqIQ3cONIb8GCNeMFNMaRwLl
         xHD4+mtWYBIvgkFgp0d+9Vl0ZbY5raSzufPmUYc218LJpFMEWqz2Ncx6HdWbkEbXakj0
         jFX0SAeTkIZ6WcCsbE1kmNhEC2cJNNRm10nC/AOaQruQUOuFo0BscmPuOz0q0BYue6RL
         LO96AMi90G12uQnDa2x5+kKQ9jz/ziY9Y3FkJO8pS74Y5zJiYmViI4IoHmcs8CLGBUYu
         oG5P2SK3CrNi5JhXEvGaV14qIWts5baxtRN7dmEOnd+C6wldzeurhk2nqbvLDulsGwwA
         jixQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiuhdgChien3fxCN+L1tiW3iJb/L9PVBSVgYFzCfF9Fe655uXAq52e18ILlhTDgSdHn+m4eeh6w9vt@vger.kernel.org
X-Gm-Message-State: AOJu0YwnO1vOstIl/Ehnu42nKblhnQxCzq76f7s88EBnl5Fi/Aw/9SwA
	7d5n6Vwla7DKe1lZNsDK/yz4Bpz2cxWQX4KmVquLOUYC89MifL5sXx6m
X-Gm-Gg: AZuq6aIHIlyX4GjHzIBdpztl0DH+r0/cjqeRRvOTySUAxM2XAsxjEIJw3ZPtxcCk40z
	aWB5MFerpvfFSzyd/IPxXBCnnVLxg8NheugOJGwFNWLA0u6yQdcJydNF5ABtBjqqnUcOQXWxzqQ
	KvQyyIMym4ZB9FidDPcyi821R6IiMtj9grzyK5X1UIBTRury2+lboKrzrOQ7vG0gUjoJzP3tyKi
	504ailYuJAUupOHKpgtuPJ7lY0UVaBy4GfyvxOVHO52HIrBIDTZB/jdwmzVbYRnKqQZ1P4vTZgi
	Ckw/CFtYHxwcI4lW1rTpKkTBS2gyTcAE3LRxhA06iYHiEOIAwczrzo5xNcE4ozEx6SMqhhoaNiN
	yGweiaUaYD6ndkRyFuU3k5+WxataRm/SCZtPoYmO21WpiwBPFs3qCKaTf5YD86a+nLpbrBfIR2i
	GY9MWBA6TtxxBgd6QWqZs18waWbHNkFi+jFtGfRd7wJJnCEDHPrzLxnEVwfQ3ZaXawPdoJaDO7x
	bNuDOEk2xUZxPZkTjGD9UpiqvHSF8E9cPFw1nWF
X-Received: by 2002:a05:600c:34c3:b0:483:3d42:d04f with SMTP id 5b1f17b1804b1-48373a7b7bcmr244811265e9.37.1771353812423;
        Tue, 17 Feb 2026 10:43:32 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:32 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 06/11] arm64: dts: freescale: imx8mm-var-som: Update WiFi/BT configuration
Date: Tue, 17 Feb 2026 19:42:40 +0100
Message-ID: <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266256-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email,0.0.0.1:email]
X-Rspamd-Queue-Id: DC7E014F4FB
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Update the WiFi and Bluetooth configuration on the i.MX8MM VAR-SOM
to match the latest SOM hardware revision.

The SOM now integrates an NXP IW61x wireless module. WiFi is connected
via SDIO and Bluetooth via UART.

This patch:
- Adds an mmc-pwrseq node to handle module reset and power sequencing.
- Updates the USDHC1 node to use the new power sequence and required
  pinctrl configuration.
- Adds the Bluetooth child node under UART2.
- Removes the legacy Broadcom WiFi device node.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 41 ++++++++++++++-----
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index cdcd8faad65e..e2b1919d7188 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -22,6 +22,14 @@ clk40m: oscillator {
 		clock-output-names = "can_osc";
 	};
 
+	iw61x_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <10000>;
+		reset-gpios = <&gpio2 10 GPIO_ACTIVE_LOW>, /* WIFI_RESET */
+			      <&gpio2 20 GPIO_ACTIVE_LOW>; /* WIFI_PWR_EN */
+	};
+
 	reg_audio_supply: regulator-3p3v {
 		compatible = "regulator-fixed";
 		regulator-name = "wm8904-supply";
@@ -392,11 +400,15 @@ &snvs_pwrkey {
 /* Bluetooth */
 &uart2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
+	pinctrl-0 = <&pinctrl_uart2>, <&pinctrl_bt>;
 	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
 	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
 	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth_iw61x: bluetooth {
+		compatible = "nxp,88w8987-bt";
+	};
 };
 
 &usbotg1 {
@@ -413,21 +425,15 @@ &usbotg2 {
 
 /* WIFI */
 &usdhc1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wifi>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
 	bus-width = <4>;
 	non-removable;
 	keep-power-in-suspend;
+	mmc-pwrseq = <&iw61x_pwrseq>;
 	status = "okay";
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
 };
 
 /* SD */
@@ -465,6 +471,12 @@ &wdog1 {
 };
 
 &iomuxc {
+	pinctrl_bt: bluetoothgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_DATA4_GPIO2_IO6		0xc1
+		>;
+	};
+
 	pinctrl_can: cangrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO05_GPIO1_IO5		0x16
@@ -710,4 +722,11 @@ pinctrl_wdog: wdoggrp {
 			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0x166
 		>;
 	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_WP_GPIO2_IO20			0x140
+			MX8MM_IOMUXC_SD1_RESET_B_GPIO2_IO10		0xc1
+		>;
+	};
 };
-- 
2.47.3


