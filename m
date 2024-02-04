Return-Path: <devicetree+bounces-38374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C38848C7E
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:33:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6E20B21F76
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6C5D18AF4;
	Sun,  4 Feb 2024 09:33:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0964018E06
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707039194; cv=none; b=hgbZMEQ597eTxN17oVfRFRfcYrXbOh3QHBWmy4P/4p14bHb0v32T1bR74WMns3ALwHVP9jkBYMhpSRQYCb6HX87Jj/5m8IAP9hlI03qv9/BeRi8HcRGEekG7C0SD15loSflYwYTFaTgl404DaQk33a2K9E12Hu1uXIFHqBVug6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707039194; c=relaxed/simple;
	bh=+BGZ3f/1JDK+HMAeBLUm/2ID9Bp5DnPK9JpR1FqymRE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sIDUEO0EIh9nkyVOvJt2LutkuuHZumv5uDckvVMV1OnfZuyecU6nuyR6bXI8assj9VLjoQC9fD6EVTcJFClW96k6P1VK7Mjhng2CrcLDOw3kP0jKXjHhdNJDd0pcyOQWn9bna3lHIsy7+ua4S6bnxUlpaYjAWbzK5zBMffkaKcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88BFE113E;
	Sun,  4 Feb 2024 01:33:54 -0800 (PST)
Received: from e110479.fosdem.net (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B8153F738;
	Sun,  4 Feb 2024 01:33:09 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH 2/2] arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
Date: Sun,  4 Feb 2024 10:32:55 +0100
Message-Id: <20240204093255.148972-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204093255.148972-1-andre.przywara@arm.com>
References: <20240204093255.148972-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In contrast to other devices using Allwinner SoCs, the Transpeed 8K618-T
TV box uses a mainline supported WiFi chip: it's a Broadcom 4335
compatible, packaged by a company called Murata.
It works nicely with the Linux driver, when providing the respective
firmware files.

Add the required DT nodes to let the kernel find the SDIO device.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
index 8ea1fd41aeba..7ec4098e707b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
@@ -16,6 +16,7 @@ / {
 
 	aliases {
 		serial0 = &uart0;
+		ethernet1 = &sdio_wifi;
 	};
 
 	chosen {
@@ -39,6 +40,15 @@ reg_vcc3v3: vcc3v3 {
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
 	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rtc CLK_OSC32K_FANOUT>;
+		clock-names = "ext_clock";
+		pinctrl-0 = <&x32clk_fanout_pin>;
+		pinctrl-names = "default";
+		reset-gpios = <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
+	};
 };
 
 &ehci0 {
@@ -60,6 +70,19 @@ &mmc0 {
 	status = "okay";
 };
 
+&mmc1 {
+	vmmc-supply = <&reg_dldo1>;
+	vqmmc-supply = <&reg_aldo1>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+	};
+};
+
 &mmc2 {
 	vmmc-supply = <&reg_dldo1>;
 	vqmmc-supply = <&reg_aldo1>;
-- 
2.25.1


