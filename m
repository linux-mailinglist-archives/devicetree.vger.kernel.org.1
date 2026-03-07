Return-Path: <devicetree+bounces-272480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCxeBq5KrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:56:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 788C522C94C
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52F6330515FE
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06673A63E6;
	Sat,  7 Mar 2026 15:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bDSrLaEz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BBB1D618A
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898919; cv=none; b=OtZ/oYnkFlkopdnzBuYShg7Nq5HDWxnNfQXdvKpAVmVLc6zDGVcqoaD2HmBS8L2nNoCRZvxP21QuZIbQytswgRTkM+HZqsPVitKqcCFVrzv/EyFCOZPRFYy2KLd9n8/KJ7K7cAUMR6qMWR/XT9iV82oHLsDzxwCq/UKAZwz+600=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898919; c=relaxed/simple;
	bh=BTJzcrSbOXECPNSBC4urHDhW8V3ovg9WH6R7wvKaVYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VBummmqcD/THT8JNBULQdwvtBp9NGzXCDYCuEAhPIa2HCTVLFHN6Vzj+7u1VPaBhzfTV5olLEuVFiK6vXv1e8UbGGNP6WaYJS7o06ANgCCzQpwIphHhl32SH27GxFpo1Yz07iqQ8p9KG1OIBBgQheCFy53MaWaRf2CyeAQh978A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bDSrLaEz; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4836e3288cdso69679635e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898917; x=1773503717; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ppGBOS/6/w1brOm93Ryd65a8gDz63BqR/Ri6xgwGtY=;
        b=bDSrLaEz1it6HxsSsgS+ZlkcP8Ubao1rLm7OzkB8/37XsUEqjSaBKgKsTaPp7FgPTL
         QpukdfrVXe8VBAeSjuP9DonBRrBhIJYLReau/nrQlZrdIQgNR1oD9GXqedGuZyQXrBSv
         GDrOxuJzCi6g/PsH6v9uAXzhp0V69ABHByVsSHzKd/ASyl+aGme8d+QmyLesI/zBll4J
         5m09hkEh2qRVWc0Ky3zfo+7w77GZjThQXJTlAozEZB/aH35b02btH220t//HSi5/7n+P
         8mKlP93y0WMSEbBr2xinCrdG+yCEzjnrPyvasoTeBZtVRr1NxtEB2aZLu1an8fk2ATA0
         QKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898917; x=1773503717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1ppGBOS/6/w1brOm93Ryd65a8gDz63BqR/Ri6xgwGtY=;
        b=j5+EH263RqHG4Mh/PxEyscLg5xZH4759d0rY8nvu7dLIqpK4ubJVu1MW7f9T5hnQxg
         khcpVWJQg7X53Ug83LO8TpzaMWvuONtDEup0Oc6OXHzLjuvEwswCT0bJWP97l8OW7V66
         KI2dZ/DddXiAEUA0l+oXleFgWBvaLJRSAk0WqyTlNs2oObbrF/TPIszk0ZyD+lQVBDeo
         FhyYXbVKoA1PlSebU1OQR+b5shPIxDsqlnHSSjDTyrAgJcCMr7vWZz4TAJQSZmvXMZq3
         4huK25oTI9k4cAS4yIbECOKmWAgLXDTSxOjcfOgVQm+vQnua2Twryfczy9+nJEDFxK39
         IORQ==
X-Gm-Message-State: AOJu0YwUG+7W9Zy6bkhk9HzueB90cBVgOgs89ju2V8+/Zpq6fUL+rypR
	9YoIrsAm+P7ftvsW7/EGWiLysYy1Lh5by0VTh2AjbqygR9OKCxB/uERrGijK8w==
X-Gm-Gg: ATEYQzxGjzY4f2jPYw73ZnZt7ngIpxDDI2DsXS8LOw9KLgjl9KxisIhNaaUWGIvMGDC
	Hkp1hWkHnC19v3n/kPoNaeDVaBLuGINMCiy2o6TYWfcMKxRIVL/eijLU5vk/eCbWRSKncycYHln
	+0fN8lJD2X9j4M8yDP/NGV0rEPyZXddYgKpT1S3dBq7e60rHHtuSmsh0dzwV1+JkVx7VA9XL9/O
	tbIDKad4yuLNXKQGt1yXDvlMzpGaWeGEdghOi8fxzwFhLCo0Pjq0B+ocvln/B6bIUBdWVXt2RXK
	a3miLIyioQ8Phi2zNGNEdR38CLQEZb8a3hw8dUxTJtZImmPifSiiTglULJb9cRun35U7kje1BQV
	n8fXJ2IGqVs86x2Mmp5SuGVlI32gyh4Bjbsl9qkdGVPEKrWG2xJwgCuHNBkZ2lmnYqnUoXRiLeR
	vqZzX2yY24s2vz0b7Y8gPxilHKlpTWdcXswJecYwIcHdRorgsHhB8k8QFU06OhLfbbhqLJdBVbP
	EFBVLtdznj9eE7FN0kBoqvWrA==
X-Received: by 2002:a05:600c:198a:b0:483:a352:b4e4 with SMTP id 5b1f17b1804b1-4852671c9b1mr93300675e9.6.1772898916828;
        Sat, 07 Mar 2026 07:55:16 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:16 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 05/11] arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
Date: Sat,  7 Mar 2026 16:54:41 +0100
Message-ID: <d007d05d5927820aa06389c07dad55357d5f8d4e.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 788C522C94C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272480-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,2.98.90.0:email,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the Microchip MCP251xFD CAN-FD controller connected
to the SPI bus on the i.MX8MM VAR-SOM.

The controller uses a 40 MHz external oscillator and requires an
interrupt line and a dedicated RX interrupt GPIO.

This patch adds the fixed clock, the MCP251xFD device node with the
required properties, and the corresponding pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 7cedef8add32..21a4d87c0e26 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -14,6 +14,13 @@ memory@40000000 {
 		reg = <0x0 0x40000000 0 0x80000000>;
 	};
 
+	clk40m: oscillator {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <40000000>;
+		clock-output-names = "can_osc";
+	};
+
 	reg_audio_supply: regulator-3p3v {
 		compatible = "regulator-fixed";
 		regulator-name = "wm8904-supply";
@@ -139,6 +146,19 @@ touchscreen@0 {
 		ti,keep-vref-on;
 		wakeup-source;
 	};
+
+	/* CAN controller */
+	can0: can@1 {
+		compatible = "microchip,mcp251xfd";
+		reg = <1>;
+		clocks = <&clk40m>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_can>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
+		microchip,rx-int-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+		spi-max-frequency = <20000000>;
+	};
 };
 
 &fec1 {
@@ -424,6 +444,13 @@ &wdog1 {
 };
 
 &iomuxc {
+	pinctrl_can: cangrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO05_GPIO1_IO5		0x16
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x16
+		>;
+	};
+
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK		0x13
-- 
2.47.3


