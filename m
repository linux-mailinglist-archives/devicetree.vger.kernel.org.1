Return-Path: <devicetree+bounces-277987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMmnBJxEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:46:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 659E92D1436
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B669325CE59
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF0F3F7AAD;
	Thu, 19 Mar 2026 18:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UGXI/K/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178203F20F4
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945720; cv=none; b=GtuL0GMa/bW3minGr33nNk1IVXCvm5hTLdNqCursq3ioXlNh4XA0LBur0DDeM63u4sXN1jXagBj0Bv6C/qaeAJbvXECBjgcNShN7bSwPSgO4mv4r1/U8gNupo4Ezl1Uz8ZCBDwGTWUOhaNRMLSn/rzDgHWVFS4KptSO+JQq0tqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945720; c=relaxed/simple;
	bh=fXWd+8nqbS8G10mImlkOZb66wJSrWdKLh/J3OueEbeY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fvbGKuIj1IlB6Tx38nH0gEz/Vs2GZoja4ZIAYtJ3xHsJOYwN6bBAuPnOjCK7FLT1qrELTKGudoSiZ3a7pjFl742QfmEsR13v4kj+g1qxJMtBfND7geO6fBvhUpCuiDe/aWqcUPLODbkH+4W8gsSIA9x/D+Y5tONJuJ6ixISWODc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UGXI/K/z; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-482f454be5bso23347635e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945715; x=1774550515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ym91XLgRLRXjLiChYg+mfli7NOG6LGBLaybiV2T541s=;
        b=UGXI/K/z9/42hOzqT7ryfQ2QeP5iuO4vxT88ndjLkc4htvkIthDtgJn34eZSNwIjQK
         m2rqukaheyIIA4XKD05980kSQ1T8PFhYG2Xa8CsxB6WdC9Cpn4WQ2XIGyWoUn1OLPWXn
         3LwsAPOrrbOHnT27l5EnFfjIiWzDhqKv3MZg7Sz0d/4dxCUmi+GLT2C9ntZPIzc8u6ON
         0gNapWfGgDd42QtPgZyvBFjaGLrMm4atNXF/D5U1c9wWnhPO2zsxUfAijVRNsz6P+LsU
         c/4V+0Fm7zxoeZjrM5IB8P07GUoDEEeRZZakxSOhVDd1pXIV8teJJeCRlK9+JgMUQUNz
         574A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945715; x=1774550515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ym91XLgRLRXjLiChYg+mfli7NOG6LGBLaybiV2T541s=;
        b=Bj231GKN73F5mt3F/G5KF2YWDvAPIoK7xQwFT9kDL9JbSVtYKNFGqZS/4UI52JLTlO
         Q1nKQ6ImB+tnYONqOnbu5YWRlChv2ljTaMh0SnWHnNk2QWbE/d4a6V7gq7cUqlKoXbUS
         +reDmNzecUxGl2JwsxK9xDo8NUlCRsH9WlMgb6TH6K93L98V/DoOLi6+t4O16yBFK/g5
         OX+3LtSCe3r88G9uxfyten+wdFmA9hp/7lExJQUSGxrZYHevVh5JEBdWgffFCvwRdxon
         af2Lg559nyY4e4IzTEWNfeL0M7+3qKo2ugTZC7fTKHz6MuPCA6pdJDMjAkJeyF7Ceb2K
         wExQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPI4Ewt0P2U0UnFd8DKbCTIPVz+DV/PD2QcYPIeXlzMy4n8DuOsvzjrdZuhnyHUudaDhyXc4650GGl@vger.kernel.org
X-Gm-Message-State: AOJu0YzDn3EEE23xG2QcT4mHuGvSwKZ9ovv1kohtaUUNRnMMjyFpi6Tp
	UNK5HanOFK24wXtJ/l8aq9Wi+NTaucptT89hZxwMCvqYKWvORqIUTyzv
X-Gm-Gg: ATEYQzw5UVojnIUGAwgKem528axnB4IHVLt128lT32nlX4UWiVfmDOHgzoMZConDVV5
	SyQMVTeESVswV5YHXyxNZTKnBzvFE2+vkh95R1VUbCNrzl9jdSAcTnRXXqyHKHFAbrz6TYn7HKI
	twDw+/++mP/WLyhdYZaPPSP67EvVNwtxyHaXGl1nWw3bJF1J691B0ERF+HOmSCt5APoBddThUav
	8R06gl9gT47fb0sS7J2NJ0tGqdrEiZmjRY6beAbGGrGiwqkBEggmX/Ck+cd8Wm3ZqjmAfLeOlef
	1fV9m6m+/Qau//H9NmP9nbDtmNaBgSgYYn10Dj3+SnAnBXVgLUqWc4zSTU3D+IIbfMAoYcmB1sp
	tcBk+JQ19V1UrHKDHnwY5ik+fstWPJTYCbxmUpTCM4wut1ea/bX2kxYuKBa5wObryoaxpipyjq8
	Du2gt35IE+0F6MV8T4wmrI2okO5brvaxUyjomxjPaTnsxcxehTMB8NycPLq+m95fyS2aMjukcx1
	tfmOFeAc9v8pHEIdJLBXG1gE/Ye00BvPc6gh8FpxxYI6w2ulQ==
X-Received: by 2002:a05:600c:1e0d:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-486fe8efb0amr6997545e9.13.1773945715151;
        Thu, 19 Mar 2026 11:41:55 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:54 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 05/11] arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
Date: Thu, 19 Mar 2026 19:40:25 +0100
Message-ID: <bdc61f427a129f36c12dc270895e5d202bafa450.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773944896.git.stefano.r@variscite.com>
References: <cover.1773944896.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277987-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
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
	NEURAL_HAM(-0.00)[-0.812];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:email,variscite.com:mid,2.98.90.0:email,0.0.0.1:email]
X-Rspamd-Queue-Id: 659E92D1436
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the Microchip MCP251xFD CAN-FD controller connected
to the SPI bus on the i.MX8MM VAR-SOM.

The controller uses a 40 MHz external oscillator and requires an
interrupt line and a dedicated RX interrupt GPIO.

Add the fixed clock, the MCP251xFD device node with the required
properties, and the corresponding pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - Remove "This patch" from commit messages

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


