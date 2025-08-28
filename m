Return-Path: <devicetree+bounces-210019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 713F0B39E7C
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:16:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48D913B8612
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D92E311951;
	Thu, 28 Aug 2025 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="N80ITG+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BE7311977
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756386934; cv=none; b=Tz8EWiS3hSf2tdRe/EN+GN0yQJt11nRi9ELyx2fgEv32Tz6Ln6UPfX2PWIBc4RApEA4hL+qVdqlvfQpysE2i4HShm6A3+ul4IcEX9do2NS6dJQYDkYrtKeMl2bW56MrCi77BkAh1xUzU/2bsu8D5ID3RrtXTFDfDuKpfCMHeJkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756386934; c=relaxed/simple;
	bh=1keMc57+QR2CICrcPlWaiGj5bDJ4SG5s8RArDpJq+tI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y43yjbucmnudgNVf8ae/z/+HIrlGHwNFy4ZIlEspD1WePKfsbnOd7ftag5sCqYW7yugvHYrFfGuKv/WL/GbTGUXRu1zWIp5qTJpJmIgjdGu/OiZUyqij7+2wXKGK1w/LzNlJ7O6foWTtCCunW/ptqBAx2+qcB4e5GIkOOCcofAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=N80ITG+6; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7ae31caso163539966b.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756386930; x=1756991730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukdxjc5DrhlQ7eBdrlN9f+Y4/ViYX/zBdRo4k+wcLt4=;
        b=N80ITG+6x2Tn5bfvb81vUxELGuDHJx4Ucooqu8aTY6Fp4idr3Yifp7Fl+Tg2gPLWcV
         yu37Pf7EqDy3c6z1b07B3EgWf6ZCAO6JG8DtYTtK68SLVK14NlfrWwHrQ7+tYcbRP7oT
         6pPWhYNrDAh4Px9nbvn/rZDfR465Pzezpr/Td0O9Ipby+tP6r9ixNU8h7g+eLWjjxr+D
         rzCIifCF+WWRCZqkB7RE42cMGNGR5w+QOgykTL0txSFpIlnRkMJZu8qO0uINIg3p8vg/
         TecaQGRqE3efQ/jZ1/pqow/nkc+lpwwkgfENq7b4DEg+1ZmLMfnDYnR8Bs2h+0r1NfgE
         zt+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756386930; x=1756991730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ukdxjc5DrhlQ7eBdrlN9f+Y4/ViYX/zBdRo4k+wcLt4=;
        b=A3bT3/frtFaktxYWo+cEzI5F+DITE6o/ENaabf/b/0UjkJTlIQ8pZ/TxxMkGlKtiA3
         5GaYJTxd2nzuSR+IMeAUWwPaqXNr1D+BPZ8SXOjUqoa5S62MhuScH68nnYxRycOgWjEc
         EbqXa+3MmFfJ5laqgYvYruKkwguiXXD6AhmiT7pjAl+uo1R006hHujANfoAM1yq3Rgi1
         S2kOh/cwRrj/1VP9/owzKVk3Tqq3Vbrbfu0pvtvOoNbkoHp5hDCc0ctL59rRFONOxIsN
         Qp3HFLQg1Cl+yvyJ+tv/k497y6r0QNZOSUoJspOMCGyTnNkG0FYBbJZPHZgBiS3ZetL1
         daUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUg+DurXcQOEwdCs+6DXBbR7MTK11plzYI2Ik0xxd2aoVmz0CmGXh6OhchRzbEChr4CRrQdoKtbtYRH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6P/P1sm7Nroo862iGswbRok5BPIbhgSpYn2/4mPVsLGO8BuNt
	dju1ruKfi0sfJTtZysGqe0krKJPEDID6664iW1rb8ukilCfbISwvlAnTH4BuI1ENevk=
X-Gm-Gg: ASbGncsOW8zNiF5VN5ee+H24pxdQMFMEeByUkTT6sFYXIlvFJ/fme6h9XBOi8XvxRoM
	5Oo8N6lpx1wZgila5s9HLa/inI5YCFUkpKkHxP6tBKZ4k2tMIKgpyy3ZIDYAQlJFKFhTtEVlzyf
	OBtXMMctqp1PYIf37YFwGTUvdo3gSZovWK3tCKxUStH5fyP2wWwoDD2+sqVIOZcWRCpV8pmeFfL
	jej2+N4C4Xwz2uJop8NQh3sz0i69DZ9w/vyra4Z3iqKoh28ovoXkCo3mMAP67+taecVKcxao3yB
	QMMIguOnqvv5zyE2BrfE6qkVh44oz2ct/sBQ1fdd1c4IhWqwdE6ErUNaGW8vW6HL5IKAR/5AoF1
	QxwEIwjpRKi1fROftYbj40T3yYgHIKjtkotB6OduhwaLLesSgrlIozkdat4aR3qJ3utGSIj6kkq
	USOXNZo7Y6wvInmICbRx1YzQFGFQY=
X-Google-Smtp-Source: AGHT+IFH1vLiPwLLOjWdncMu9CzzMSagWLiPnUFX55dhZYQCF06QAZ/tGnpnN+tm8vZ99g4CY7S5og==
X-Received: by 2002:a17:907:a47:b0:afe:ec74:2e2a with SMTP id a640c23a62f3a-afeec747f62mr156302566b.5.1756386930209;
        Thu, 28 Aug 2025 06:15:30 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe48fae316sm1222206166b.28.2025.08.28.06.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:15:28 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
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
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 4/5] arm64: dts: broadcom: bcm2712: Add second SDHCI controller node
Date: Thu, 28 Aug 2025 15:17:13 +0200
Message-ID: <4ff3a58e98d90a43deb2448b23754808afc7153b.1756386531.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1756386531.git.andrea.porta@suse.com>
References: <cover.1756386531.git.andrea.porta@suse.com>
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


