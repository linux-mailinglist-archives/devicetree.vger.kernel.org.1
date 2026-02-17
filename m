Return-Path: <devicetree+bounces-266255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFzgKyu3lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA3114F4E2
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DED953064EA4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A70D374721;
	Tue, 17 Feb 2026 18:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RDiu95n8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4790336F409
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353814; cv=none; b=PWjq0wvviYsn20WCmzLotvj4MPK1gm+lg8f6mkINhfdD24/s0qoA7ykFfO/pkIQBbmjJ2vI0WwS6sO2YUvxSxxCrp+jLsD+pt5w3v1LC2Zt/vaCPK7wGUlDbitYT84e6b12DV3OEtuX0gGBrgqsLE3mN69BMwgmUAGwjhIfuB60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353814; c=relaxed/simple;
	bh=vXp12MaiMUk/AV7KuF3/VcyXGOS1IoRyLnl1b6VArho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gUGQ9RnJbfSK1hFNlS3x+oBc/cG0pS+GiA+l7o1aRGmWfZEMPvo0Qa9LXWhz7z3fDaHkfYiPxfOMe3iiS9Cn9g2zX8sdfsKfVbjDbIiXmU3qWf1OoGaOpC2IOF8mpRnxlijAqsfFtpLJu1cdHEuXocJ0IRgt3J5jY8Wxsz3f8rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RDiu95n8; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4837907f535so32358425e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353811; x=1771958611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYM6F+d+/mCJYfEA1rFS4pjBPoaqEPWbC++lwSRhFEk=;
        b=RDiu95n85ZOXkrM70ZFUl+plKr/dmPhQw27dgplyTnuPjQ/I0iAf6jpZrtI1haiE33
         BKI3BOLIJVsvR2bc509w0HtASAZH4jw3zmZTslcy7tYezW7A2KoHmHxHMjPocNTWLdqu
         dgWpP0CXVlJW3+KfY7woS77OI2A3DyrlsKkLSVEKasRzX1NvxSAZ34GPvCestECT+Dyk
         jvJGJgl/f9Jjr9UfEhYQXccCcAcff9AxS9LJxvKptNkLr+kkR9JkDfc6oCENO7U4jE6Z
         Fcz0ejKP+/s1yqjmRCiTRRKJkX5nktLtupFKZTOB4xa+deB9Sh0cQgtgYpnRMkfDZOcl
         5gyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353811; x=1771958611;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IYM6F+d+/mCJYfEA1rFS4pjBPoaqEPWbC++lwSRhFEk=;
        b=L5/4+gM8N6FVPZLMLBBHMXidVacKGLCcp48J1IR9b00b9gL+jGoOgbTReENMW72+I7
         u1+ehZncRCqSqiXz0cTRE/Fj84IVMLiTX9jNpSWQgG0VOhp3ucjq4AiVRo44Lwtz+qaG
         yBd7cNg3LhZumGrKmrq8YBJ+ojCHgDK4FP5YdU5CSPCYPO0lKW/N8tYcN15udoKfkBkZ
         HrumnEIvPJIBIVlInRFPbhLuqiE/rzNfiXacI2Y2rh02J+ka3Q2ngPmevv18HZ7/PvUX
         +KvQyW7pkJi4e2b5TXmcAMJ6VM13Y0odEgS/f3kVXqt+bSryX0vk6sLEnosZNMr3R+S8
         zQqw==
X-Forwarded-Encrypted: i=1; AJvYcCUXRgxKNNNuG3imMYp8PwAigbOfqW7NBj0mk26DBUi5yW3yG3soV4JoXOhp/cOQ7qC7NkUigY0E751s@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8a1pPOVsLulboczKQkB2TtCcbJXm3YdHlBHDfuPmdArSv3y48
	AdJf97GJsFXBa3vUIt6BAL8eBOqeIIi+r0WX3w9z6/D+G5rttLFPym3T
X-Gm-Gg: AZuq6aJnXhmPpsVZzWQZRZFu/6YNAUAppLtJEcRhzLZ2zlrj5oJuc1oQYSLcnlwEiEH
	amc7iSVyjfNTp8ch0BgkSGJIeRi85D1CeEpX0OwAYE5a0BhKmm493l5RlX4S9irEeihopQsHVaE
	V8mTZulS/XCJ/SSze2xJ/XFFbLBH5H+31KWDImvGh3M0gAzv4M+ajFYPqr1adV/FzZkDBQP5i+t
	S41EFeYAcIfm3ZGoth/IS9NfrNTLCugtYe1l3+E5WnGPa0EMT4cS1iafbPXCQ2kHVEgd3ZwpauN
	F1iKtHdMUDP5w/PPEMkbGQ97VO8jWJ9t8mf0UQWb+csDKRDNiQEyyaNNbzhOvoxYuPbfsxrDmLD
	T6/84gLqJkJDaZsjIoFcbSVfjGf70/SGi0c0wXYoCNtUYBK4vDiuzRt747sXq2SnCXUuXlO4UsE
	a3wDLE++8mjgS20EGASk+lInzSdeszJi9P4Ood6WkvafQJxnBraY1nPIz0XZVp7nbsBJGTwIQ8c
	dHXMFAWg8tFwC0Tx0AGHmJx0yI/Bf5EMsj/FqTL
X-Received: by 2002:a05:600c:45c8:b0:480:1b65:b741 with SMTP id 5b1f17b1804b1-48379b9913cmr205411905e9.15.1771353810630;
        Tue, 17 Feb 2026 10:43:30 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:30 -0800 (PST)
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
Subject: [PATCH v1 05/11] arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
Date: Tue, 17 Feb 2026 19:42:39 +0100
Message-ID: <0c3be1139d98e7ba9dab12aaf33112545760f9bc.1771353301.git.stefano.r@variscite.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266255-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email,2.98.90.0:email]
X-Rspamd-Queue-Id: 0DA3114F4E2
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the Microchip MCP251xFD CAN-FD controller connected
to the SPI bus on the i.MX8MM VAR-SOM.

The controller uses a 40 MHz external oscillator and requires an
interrupt line and a dedicated RX interrupt GPIO.

This patch adds the fixed clock, the MCP251xFD device node with the
required properties, and the corresponding pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index e52080490ddf..cdcd8faad65e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -15,6 +15,13 @@ memory@40000000 {
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
@@ -140,6 +147,19 @@ touchscreen@0 {
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
@@ -445,6 +465,13 @@ &wdog1 {
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


