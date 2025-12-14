Return-Path: <devicetree+bounces-246300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 064ECCBB9C0
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 12:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9D8030274C8
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 11:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A142D063A;
	Sun, 14 Dec 2025 11:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OoDT6mwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AEF2BEC2D
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 11:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710360; cv=none; b=lM0vNVzeZEkDTI4EfnWYgWfp2lwDp6rpKQSc4/uKdCXBnRCKi/kM39Xn3MSslCuTjqilvVZ8NeoAS6T27MnO1MnjnpZfnYysmHuWdzx5E5bs3GUriOArlNwTpRDEbnvq820Iu++/qTliMG+ch54HyzdGCUBa/vk8mqHZU2+WH9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710360; c=relaxed/simple;
	bh=0vx0G+xvB4rLVv1R2A8zSldA+5rpjG2FAPCN6UsCqTo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fB5c9sc/OkRv+Ye1AKP6U/5XSAgTnkWgC8znhXsZg64Tcdqwl5hFY5J2gV4NgKXhanSSBKt7XtI3wu/mFm2keQqRQeLdPq3QsAIsymHZf6HKjjKmtqDZImNl88ikC/k4cdgFrRQR1qj8ByWkC7Glg1dEjWtT/A0vPf65r/iazVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OoDT6mwL; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47a8195e515so20734835e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 03:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765710356; x=1766315156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KS2inHSkLCkU7sr8x8nyHZWnAt9HgwanjJVsRDuujGk=;
        b=OoDT6mwLBL4fgDapLs09GB0hxAwmMPcr6Eirr+2owiTc9Zi0GDhGzYmXsvyckYxULs
         PTbBNq6tfOcW46TEu/Xpl78vvBgvKtiPJ1X8w7Z4vOJIVq1J2sAm/UCP4s4kaIGyBLeU
         g1BvDj0Q5Wal2Fg2dBl9pUb8YXhj5t25fM8D7ouq5Hg060+ntSSHakTj41xspoi8Lxpf
         IUlAkNHA/0g+FNgnMi7DgHkiTYIEP8PHnmVrGZ7f1HDNY3jW0VAa48kXFlrCB7Rs71fM
         WpnsX6j1UniK1vo7bBnPKiXUL/Qq5jS95DUJeXyoPlu2fjV0Sl2Pwvo9oZ8svzjujP6J
         cHtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765710356; x=1766315156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KS2inHSkLCkU7sr8x8nyHZWnAt9HgwanjJVsRDuujGk=;
        b=sDAItac6Z/6cTOS8tDb5OcMuVl7aixAYv5RsqabhDfLrgXlAczsfK6ugakjmtgVf4Q
         VWVExmPf8cNkbo8t7Rr3WBoiVm9sOeauut/tHswnovXYvUIKNSOOF3QjoJmKaAT5VY8R
         gboC/E3oaNmKRzi+aASyNZRufpt8XV7en3BATMTYkidj5cZ3cslbEC5B1OmYJUHWuQeF
         2KvxsXk5Q2+6/68Eqab8lK6qVGemfubBE/3WNRuw8AVDjgFHIHPmP4LZvV39Y0RseB3e
         g9KnQseFAeU5l15nu4bDtKphSEziRxNDGF33eyOQPlkafLdvFpCldoyRZZjoZJq8bZlW
         UwWA==
X-Gm-Message-State: AOJu0YzdiI7rhlXCFNpexxPcuH3nXhqgsIC89LDEgInodNc0XE0Jy+R7
	8nW9Fw09xRjoHQKGIREGcarlWU+4M+o2PRV6hsMKvnQH/GuB5HSFdaxDAyqDBRZ4
X-Gm-Gg: AY/fxX6NluxIelc3PsXW02O6fml9M4wQgngYB/oxdm5GKSa7leQatdBiUdN0EpQO2Dj
	lYgRovBkXKR3i7nKO4zbaflX/oLXHsYG0DdfLNHH0nVIVZh8rbcQ0Boj2OxVr2T6OBUBkSwoKNE
	NLa/8qBh4L86StPRcu9ULoIyTnNDz+C96nxEVWxD5RovbVVd6iCZixFnR+D32L61r34rnAvtzLL
	SlFPpdR/wsSEg2J8/Lm5BGSbrBWPpzdqX/dDKk6nzHF6g7w+wVDWPYhpelVpFMdBuzI7ohPaVRU
	5ByUhRu6EOrxYx5d1tsha3fWEsFBWFQFpr/r0x57uevuy+9n9Qkdpe8P02jEqnGS7QgDYXKmWky
	QWgICPMYrIlEriRitaJar7/Kl9t206aRUK5M3NzgSqZLCDPXpat6U+RF4ALr/fkJjAJ8ckVpsPI
	tOTtb2neTaZRFPibI4OWQEojkq68RdKji2kU7GfLUHyYzweWkONc/+Mid7ykHu0SBGljmTD+Dhh
	/d/Ld+IkZ5pqwM=
X-Google-Smtp-Source: AGHT+IGcS0RwgGVBlNe8lVebHczMSiBY6IRZ2F343Ze4Z7S+9GdrqUIDHIw2U32XGAlYd+RgQfN1pw==
X-Received: by 2002:a05:600c:4f14:b0:475:dcbb:7903 with SMTP id 5b1f17b1804b1-47a8f8bd9a7mr81322325e9.9.1765710355640;
        Sun, 14 Dec 2025 03:05:55 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f36b6a19sm7823660f8f.38.2025.12.14.03.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 03:05:55 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 6/6] arm64: dts: imx8mp-var-som: Add support for ADS7846 touchscreen
Date: Sun, 14 Dec 2025 12:05:29 +0100
Message-ID: <20251214110531.9475-7-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214110531.9475-1-stefano.r@variscite.com>
References: <20251214110531.9475-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX8MP integrates an ADS7846 resistive touchscreen controller.
The controller is physically located on the SOM, and its signals are
routed to the SOM pins, allowing carrier boards to make use of it.

This patch adds the ADS7846 node and the appropriate SPI controller.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 6da5df11c44a..8ab0e32879cc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -100,6 +100,37 @@ &A53_3 {
 	cpu-supply = <&buck2>;
 };
 
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 17 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	/* Resistive touch controller */
+	ads7846: touchscreen@0 {
+		compatible = "ti,ads7846";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_restouch>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <12 IRQ_TYPE_EDGE_FALLING>;
+		spi-max-frequency = <1500000>;
+		pendown-gpio = <&gpio1 12 GPIO_ACTIVE_LOW>;
+		ti,x-min = /bits/ 16 <125>;
+		ti,x-max = /bits/ 16 <4008>;
+		ti,y-min = /bits/ 16 <282>;
+		ti,y-max = /bits/ 16 <3864>;
+		ti,x-plate-ohms = /bits/ 16 <180>;
+		ti,pressure-max = /bits/ 16 <255>;
+		ti,debounce-max = /bits/ 16 <10>;
+		ti,debounce-tol = /bits/ 16 <3>;
+		ti,debounce-rep = /bits/ 16 <1>;
+		ti,settle-delay-usec = /bits/ 16 <150>;
+		ti,keep-vref-on;
+		wakeup-source;
+	};
+};
+
 &eqos {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_eqos>;
@@ -347,6 +378,15 @@ MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10                            0xc0
 		>;
 	};
 
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__ECSPI1_SCLK                              0x12
+			MX8MP_IOMUXC_I2C1_SDA__ECSPI1_MOSI                              0x12
+			MX8MP_IOMUXC_I2C2_SCL__ECSPI1_MISO                              0x12
+			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17                               0x12
+		>;
+	};
+
 	pinctrl_eqos: eqosgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
@@ -381,6 +421,12 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
+	pinctrl_restouch: restouchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12                             0xc0
+		>;
+	};
+
 	pinctrl_sai3: sai3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC                   0xd6
-- 
2.47.3


