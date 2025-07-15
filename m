Return-Path: <devicetree+bounces-196608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D039B0660C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25D555050CF
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 18:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6742BE7CB;
	Tue, 15 Jul 2025 18:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fnJNNirx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D0629B8EF
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 18:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752604212; cv=none; b=PTVdS4JktovE7atiyTfOfQpVbPDEP+JlykjsM0z40rJonlBclrIm4y0H5LR124akmwaUnzBH3p9ZapX/cz+YrwbC2MW/MaXO/ZqyEIRKeJh7SWwHoaGKwUxIrZgsqsrdiGeMlI9qCvM9l5mg7FbaxMXYP8Vdu0CdqbuRQO7qquk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752604212; c=relaxed/simple;
	bh=FzNWUGZftbrMuwHzuM+w0xcycT2JYIJVMEBEM83DEvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CEUY9g65i99sqA0QodRTbqrgoa1fuCD9AS5dC5MWplfVESJQTy0C5K2DFRx82M4BxUpg6fIyOzkRoSrkNdCpg24h8spr2Bin+fVkkIIWj/iBlE8xhqlG5Ys53gHj5mwpjNnoDDfLY5pSHYtON/4B8yr5bDPiuQ2TtUAh90xhypE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fnJNNirx; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a16e5so11040050a12.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1752604209; x=1753209009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=618tBsP8+IuJgTKE3mRpRskhn0ekdTiWo3PqXAUnzZg=;
        b=fnJNNirxXZrtjZgEbF5TG8Fc7B+AWv3RghW98IpmGQ0+0v6CKpTEFaZpGL/Nc3SYYU
         2YrLvIQ6DYT5ru8EFgxCYzufW/Pr3R+X+bBGjX6c8A22o3ik4ekAs+JNIR2Zmf9UDd7y
         UD5uA/0zCXNUWQZmRMuhUPhnD8kDj0v3sVuDlNI9dRzgemR9UXCiIwMPnIevQCHpjFQC
         b8m6OdwvyqY/Lwz9sTJhY4cJ5rMqSWZWp4ownqrrHn+c3KsLudO3irCJgLUObV14wVhQ
         LCx8nbwjDrhj6zPnJ6QETDXl5QCm01pIB9gd7driuit34U1+mcWid68z1qilSJfMLLLb
         pcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752604209; x=1753209009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=618tBsP8+IuJgTKE3mRpRskhn0ekdTiWo3PqXAUnzZg=;
        b=AZqRIQ7JBet6uPZsZlGpNv6QVqN2enAPtZJDFAGasaSWhuKtVPESHk0pNiGfMGPDmW
         fTKIsOI1n1D6NJA/g8c1VgBzTDtXhpZ+tOFRUneyZxsq7pss2TCXNtFE5PPJSDynG34h
         v43L5I316WacWJMAB4UAazY/G0FT000Lm6clNNL401xnLYIqMYuYmqxd2/qywTrrj9n5
         f8dQmddnYhr9iXu2xbv5LlsNN9fv/BSvsby2y1VGJMhxMcrt7EcHfigQ5HhjxtPUbRpn
         XrFT29nRe6ItnQvyO2wzx/TbnqSp+bjcMWwTBAkT703iWZJu6OZu7KklrXsxcXILW8aG
         D5ig==
X-Forwarded-Encrypted: i=1; AJvYcCWVJmau+WNx0FMFtv3xqvwWzAQOHWTZjPm2XlxVFLdmxYO5jcmTRX/h9WegSQbYtb8+sCsaPilGILZZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyCKemyvuocN49i6u9NYtInAiVuMO/dbAYDtTeCGFUko8U/LuQR
	r55BVneYwKBLioqsmROLQYUVUvCnIK+KSbw1xIVscPDmB5uoFXe5rgBYz8Hx/8+hLoM=
X-Gm-Gg: ASbGncv98h/hi+UDexInuGOQ0odCLs2iIrHkA102+Xb+/DKqJ6ScDyIS67/QSfbSykn
	r+TMP16v1P+4jjVC9iASfx0Cwiw7Gp9Cp14cZRWQ6xwSwBh51o2z/hLSAQerrhUQdM8/gZagVat
	/v7hPEW+h2FppnlaGpIoIdYwLKg5fc6JlQY8H+cX0N7hR4SOSKga/MSmOxh/PyQ01swaEZJtcdS
	wq9okd1TYM4yF7L5Ku8VRXvlqOOAzD1/lO5/XDCnfCRWwoURcapnR8LWBBChd6QVYqVkpSvNmSn
	gLLJyhzLtRCSamJvpzAO4LSSlvQi9J+85pfzUBkzWwzD6V0dil5kr8jhG6xw/kQ3qDMVv9GK34w
	PKJgStZ0BtrhAVqqhJCcAw7uRSoAKbsA+piEDruwFBb1DtXu6efPp+d2LHj8fJ6kU970J
X-Google-Smtp-Source: AGHT+IHRNkalwwVztrQaJho64YzctIwHuAGK/cCl6dKnZ8rFmjfc9HeuD+awU1Jzf7RXVNYqFjgJlg==
X-Received: by 2002:a17:907:8e8e:b0:ae0:da2d:1a53 with SMTP id a640c23a62f3a-ae9c9b23338mr48885466b.42.1752604208948;
        Tue, 15 Jul 2025 11:30:08 -0700 (PDT)
Received: from localhost (host-79-47-155-191.retail.telecomitalia.it. [79.47.155.191])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82669b5sm1052376566b.77.2025.07.15.11.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 11:30:08 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 5/7] arm64: dts: broadcom: bcm2712: Add second SDHCI controller node
Date: Tue, 15 Jul 2025 20:31:42 +0200
Message-ID: <5eab612fa761a5c936918b64263f2455c4bc91bc.1752584387.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1752584387.git.andrea.porta@suse.com>
References: <cover.1752584387.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Ivan T. Ivanov" <iivanov@suse.de>

Add SDIO2 node. On RPi5 it is connected to WiFi chip.
Add related pin, gpio and regulator definitions and
add WiFi node. With this and firmware already provided by
distributions, at least on openSUSE Tumbleweed, this is
sufficient to make WiFi operational on RPi5 \o/.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
This patch is based on linux-next/master

 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 52 +++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 15 ++++++
 2 files changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index f0883c903527..411b58c1dddf 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -66,6 +66,18 @@ sd_vcc_reg: sd-vcc-reg {
 		enable-active-high;
 		gpios = <&gio_aon 4 GPIO_ACTIVE_HIGH>;
 	};
+
+	wl_on_reg: wl-on-reg {
+		compatible = "regulator-fixed";
+		regulator-name = "wl-on-regulator";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		pinctrl-0 = <&wl_on_default>;
+		pinctrl-names = "default";
+		gpio = <&gio 28 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <150000>;
+		enable-active-high;
+	};
 };
 
 &pinctrl {
@@ -79,6 +91,29 @@ pwr_button_default: pwr-button-default-state {
 		pins = "gpio20";
 		bias-pull-up;
 	};
+
+	sdio2_30_default: sdio2-30-default-state {
+		clk-pins {
+			function = "sd2";
+			pins = "gpio30";
+			bias-disable;
+		};
+		cmd-pins {
+			function = "sd2";
+			pins = "gpio31";
+			bias-pull-up;
+		};
+		dat-pins {
+			function = "sd2";
+			pins = "gpio32", "gpio33", "gpio34", "gpio35";
+			bias-pull-up;
+		};
+	};
+
+	wl_on_default: wl-on-default-state {
+		function = "gpio";
+		pins = "gpio28";
+	};
 };
 
 &pinctrl_aon {
@@ -109,6 +144,23 @@ &sdio1 {
 	cd-gpios = <&gio_aon 5 GPIO_ACTIVE_LOW>;
 };
 
+&sdio2 {
+	pinctrl-0 = <&sdio2_30_default>;
+	pinctrl-names = "default";
+	bus-width = <4>;
+	vmmc-supply = <&wl_on_reg>;
+	sd-uhs-ddr50;
+	non-removable;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	wifi: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
 &soc {
 	firmware: firmware {
 		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index f70ec8d3dc4d..871537366e96 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -285,6 +285,21 @@ gio_aon: gpio@7d517c00 {
 			 */
 		};
 
+		sdio2: mmc@1100000 {
+			compatible = "brcm,bcm2712-sdhci",
+				     "brcm,sdhci-brcmstb";
+			reg = <0x01100000  0x260>,
+			      <0x01100400  0x200>;
+			reg-names = "host", "cfg";
+			interrupts = <GIC_SPI 274 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk_emmc2>;
+			clock-names = "sw_sdio";
+			sdhci-caps-mask = <0x0000C000 0x0>;
+			sdhci-caps = <0x0 0x0>;
+			mmc-ddr-3_3v;
+			status = "disabled";
+		};
+
 		gicv2: interrupt-controller@7fff9000 {
 			compatible = "arm,gic-400";
 			reg = <0x7fff9000 0x1000>,
-- 
2.35.3


