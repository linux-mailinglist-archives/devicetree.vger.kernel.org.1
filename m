Return-Path: <devicetree+bounces-288659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLhzIR8O5mkGrAEAu9opvQ
	(envelope-from <devicetree+bounces-288659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 13:29:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBD3429EBB
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 13:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E250D305045B
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 11:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0DF396577;
	Mon, 20 Apr 2026 11:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="I6Au+Djn"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82054314D18
	for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 11:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776684565; cv=none; b=Yt+XH/AfomGVvCw8fLANFRlrEM+POc3lnDd6LxgFkglaPI7as1yUztyJf/BJabrBJjUwcd14WH46vT9mj3Kr2ITNGJzZZd68TZbhja9A+PxU3QaPMxQfaSw4sDVEBuSxtnf+N8lsqM7kkhAcoDR1L5kvKt5nifWBjqUbSpaEEv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776684565; c=relaxed/simple;
	bh=3gXLrZDsuvdad1Oeu/La1HOjTIyxVsNU/CW/O98x9KQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=h7bmdglIvXkuRRY0YMfKCdDH9yWmDf/pc7yqF31xE79JyUQk/PEXsS4TMIody0cNStqJYDpJe/YJI0Kit3yZLPV0xWvmKFrN6oPNzk5/CTdqTqR+saNscEP+cYJToeXggMuWi8uyAI9rhZ+h+BtBLfmbvId0vjXOm+CpgfCJbj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=I6Au+Djn; arc=none smtp.client-ip=95.215.58.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Date: Mon, 20 Apr 2026 10:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1776684557;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ywrf5g5AerKkuHm35hzEfe78NXKD4YVHkcI057XoQG0=;
	b=I6Au+DjnXkzfExnJXo+ncHa1T67RHXf9FtxP2OSIp3sTkLyn5NBMC0RDw8l3pTL8fHgaYs
	Jp/p4/fLY+XFX+0tSBoR21NgBxbGcCC/CKC5zMZpPppynK134S2GS3iwrFvefOnwnp8tuX
	WSwgQIJZhmJX0vWPkBZ5RAMuwfdsB3tZ43OrQoV4XLTw17htJv8y3HaIqJn2DeMrVL/Vds
	8/QZ+eSm7ZwwMNxldTBpO6EKbuADPDEkaQNyg2n5pjcPJdu4O/DRCX2iHoX3Amia9Frem6
	RFt7FAus3L5Ge2kPhZq0McW+6tfFZc5LpcBxO0sBLXcjBTexd76PjJDhBv3wtA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: linux-amlogic@lists.infradead.org, christian.koever-draxl@student.uibk.ac.at, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, khilman@baylibre.com
Cc: jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, funderscore@postmarketos.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, christian.koever-draxl@student.uibk.ac.at
Subject: Re: [PATCH v2 2/2] arm64: dts: amlogic: add support for X98Q
References: <20260420061854.5421-1-christian.koever-draxl@student.uibk.ac.at> <20260420061854.5421-3-christian.koever-draxl@student.uibk.ac.at>
In-Reply-To: <20260420061854.5421-3-christian.koever-draxl@student.uibk.ac.at>
Message-ID: <tdsikb.3afuzjop9p14v@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8; format=flowed
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,googlemail.com,postmarketos.org,vger.kernel.org,lists.infradead.org,student.uibk.ac.at];
	TAGGED_FROM(0.00)[bounces-288659-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_POLICY_ALLOW(0.00)[postmarketos.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[postmarketos.org:s=key1];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.894];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funderscore@postmarketos.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[uibk.ac.at:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,postmarketos.org:dkim,postmarketos.org:mid,0.76.75.64:email]
X-Rspamd-Queue-Id: 6FBD3429EBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 20 Apr 2026 06:18, christian.koever-draxl@student.uibk.ac.at wrote:
>From: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>
>
>Signed-off-by: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>
>---
> arch/arm64/boot/dts/amlogic/Makefile          |   1 +
> .../boot/dts/amlogic/meson-s4-s905w2-x98q.dts | 250 ++++++++++++++++++
> 2 files changed, 251 insertions(+)
> create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts
>
>diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>index 15f9c817e502..c7752684dea6 100644
>--- a/arch/arm64/boot/dts/amlogic/Makefile
>+++ b/arch/arm64/boot/dts/amlogic/Makefile
>@@ -85,6 +85,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-ugoos-am3.dtb
> dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
> dtb-$(CONFIG_ARCH_MESON) += meson-gxm-wetek-core2.dtb
> dtb-$(CONFIG_ARCH_MESON) += meson-s4-s805x2-aq222.dtb
>+dtb-$(CONFIG_ARCH_MESON) += meson-s4-s905w2-x98q.dtb
> dtb-$(CONFIG_ARCH_MESON) += meson-s4-s905y4-khadas-vim1s.dtb
> dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air-gbit.dtb
> dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air.dtb
>diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts
>new file mode 100644
>index 000000000000..26c60a4c2a43
>--- /dev/null
>+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts
>@@ -0,0 +1,250 @@
>+

nit: Trailing newline

>+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>+/*
>+ * Copyright (c) 2026 Christian Stefan Köver-Draxl
>+ * Based on meson-s4-s905y4-khadas-vim1s.dts:
>+ *  - Copyright (c) 2026 Khadas Technology Co., Ltd.
>+ */
>+
>+/dts-v1/;
>+
>+#include "meson-s4.dtsi"
>+
>+/ {
>+	model = "Shenzhen Amediatech Technology Co., Ltd X98Q";
>+	compatible = "amediatech,x98q", "amlogic,s905w2", "amlogic,s4";
>+	interrupt-parent = <&gic>;
>+	#address-cells = <2>;
>+	#size-cells = <2>;
>+
>+	aliases {
>+		mmc0 = &emmc; /* eMMC */
>+		mmc1 = &sd; /* SD card */
>+		mmc2 = &sdio; /* SDIO */
>+		serial0 = &uart_b;
>+	};
>+
>+	memory@0 {
>+		device_type = "memory";
>+		reg = <0x0 0x0 0x0 0x40000000>;
>+	};
>+
>+	reserved-memory {
>+		#address-cells = <2>;
>+		#size-cells = <2>;
>+		ranges;
>+
>+		/* 52 MiB reserved for ARM Trusted Firmware */
>+		secmon_reserved: secmon@5000000 {
>+			reg = <0x0 0x05000000 0x0 0x3400000>;
>+			no-map;
>+		};
>+	};
>+
>+	emmc_pwrseq: emmc-pwrseq {
>+		compatible = "mmc-pwrseq-emmc";
>+		reset-gpios = <&gpio GPIOB_9 GPIO_ACTIVE_LOW>;
>+	};
>+
>+	sdio_32k: sdio-32k {
>+		compatible = "pwm-clock";
>+		#clock-cells = <0>;
>+		clock-frequency = <32768>;
>+		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
>+	};
>+
>+	sdio_pwrseq: sdio-pwrseq {
>+		compatible = "mmc-pwrseq-simple";
>+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
>+		clocks = <&sdio_32k>;
>+		clock-names = "ext_clock";
>+	};
>+
>+	main_5v: regulator-main-5v {
>+		compatible = "regulator-fixed";
>+		regulator-name = "5V";
>+		regulator-min-microvolt = <5000000>;
>+		regulator-max-microvolt = <5000000>;
>+		regulator-always-on;
>+	};
>+
>+	sd_3v3: regulator-sd-3v3 {
>+		compatible = "regulator-fixed";
>+		regulator-name = "SD_3V3";
>+		regulator-min-microvolt = <3300000>;
>+		regulator-max-microvolt = <3300000>;
>+		gpio = <&gpio GPIOD_4 GPIO_ACTIVE_LOW>;
>+		regulator-always-on;
>+	};
>+
>+	vddio_sd: regulator-vddio-sd {
>+		compatible = "regulator-gpio";
>+		regulator-name = "VDDIO_SD";
>+		regulator-min-microvolt = <1800000>;
>+		regulator-max-microvolt = <3300000>;
>+		gpios = <&gpio GPIOD_9 GPIO_ACTIVE_HIGH>;
>+		gpios-states = <1>;
>+		states = <1800000 1 3300000 0>;
>+	};
>+
>+	vddao_3v3: regulator-vddao-3v3 {
>+		compatible = "regulator-fixed";
>+		regulator-name = "VDDAO_3V3";
>+		regulator-min-microvolt = <3300000>;
>+		regulator-max-microvolt = <3300000>;
>+		vin-supply = <&main_5v>;
>+		regulator-always-on;
>+	};
>+
>+	vddio_ao1v8: regulator-vddio-ao1v8 {
>+		compatible = "regulator-fixed";
>+		regulator-name = "VDDIO_AO1V8";
>+		regulator-min-microvolt = <1800000>;
>+		regulator-max-microvolt = <1800000>;
>+		vin-supply = <&vddao_3v3>;
>+		regulator-always-on;
>+	};
>+
>+	/* SY8120B1ABC DC/DC Regulator. */
>+	vddcpu: regulator-vddcpu {
>+		compatible = "pwm-regulator";
>+
>+		regulator-name = "VDDCPU";
>+		regulator-min-microvolt = <689000>;
>+		regulator-max-microvolt = <1049000>;
>+
>+		vin-supply = <&main_5v>;
>+
>+		pwms = <&pwm_ij 1 1500 0>;
>+		pwm-dutycycle-range = <100 0>;
>+
>+		regulator-boot-on;
>+		regulator-always-on;
>+		/* Voltage Duty-Cycle */
>+		voltage-table = <1049000 0>,
>+				<1039000 3>,
>+				<1029000 6>,
>+				<1019000 9>,
>+				<1009000 12>,
>+				<999000 14>,
>+				<989000 17>,
>+				<979000 20>,
>+				<969000 23>,
>+				<959000 26>,
>+				<949000 29>,
>+				<939000 31>,
>+				<929000 34>,
>+				<919000 37>,
>+				<909000 40>,
>+				<899000 43>,
>+				<889000 45>,
>+				<879000 48>,
>+				<869000 51>,
>+				<859000 54>,
>+				<849000 56>,
>+				<839000 59>,
>+				<829000 62>,
>+				<819000 65>,
>+				<809000 68>,
>+				<799000 70>,
>+				<789000 73>,
>+				<779000 76>,
>+				<769000 79>,
>+				<759000 81>,
>+				<749000 84>,
>+				<739000 87>,
>+				<729000 89>,
>+				<719000 92>,
>+				<709000 95>,
>+				<699000 98>,
>+				<689000 100>;
>+	};
>+};
>+
>+&emmc {
>+	status = "okay";
>+	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
>+	pinctrl-1 = <&emmc_clk_gate_pins>;
>+	pinctrl-names = "default", "clk-gate";
>+
>+	bus-width = <8>;
>+	cap-mmc-highspeed;
>+	mmc-ddr-1_8v;
>+	mmc-hs200-1_8v;
>+	max-frequency = <200000000>;
>+	non-removable;
>+	disable-wp;
>+
>+	mmc-pwrseq = <&emmc_pwrseq>;
>+	vmmc-supply = <&vddao_3v3>;
>+	vqmmc-supply = <&vddio_ao1v8>;
>+};
>+
>+&ethmac {
>+	status = "okay";
>+	phy-handle = <&internal_ephy>;
>+	phy-mode = "rmii";
>+};
>+
>+&ir {
>+	status = "okay";
>+	pinctrl-0 = <&remote_pins>;
>+	pinctrl-names = "default";
>+};
>+
>+&pwm_ef {
>+	status = "okay";
>+	pinctrl-0 = <&pwm_e_pins1>;
>+	pinctrl-names = "default";
>+};
>+
>+&pwm_ij {
>+	status = "okay";
>+};
>+
>+&sd {
>+	status = "okay";
>+	pinctrl-0 = <&sdcard_pins>;
>+	pinctrl-1 = <&sdcard_clk_gate_pins>;
>+	pinctrl-names = "default", "clk-gate";
>+	bus-width = <4>;
>+	cap-sd-highspeed;
>+	max-frequency = <50000000>;
>+	disable-wp;
>+
>+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
>+
>+	vmmc-supply = <&vddao_3v3>;
>+	vqmmc-supply = <&vddao_3v3>;
>+};
>+
>+/*
>+* Wireless SDIO Module (Amlogic W150S1)
>+* Note: There is no driver for this at the moment.
>+*/

Align like this:

	/*
	 * Wireless SDIO Module (Amlogic W150S1)
	 * Note: There is no driver for this at the moment.
	 */

>+
>+&sdio {
>+	status = "okay";
>+	pinctrl-0 = <&sdio_pins>;
>+	pinctrl-1 = <&sdio_clk_gate_pins>;
>+	pinctrl-names = "default", "clk-gate";
>+	#address-cells = <1>;
>+	#size-cells = <0>;
>+	bus-width = <4>;
>+	cap-sd-highspeed;
>+	sd-uhs-sdr50;
>+	sd-uhs-sdr104;
>+	max-frequency = <200000000>;
>+	non-removable;
>+	disable-wp;
>+
>+	no-sd;
>+	no-mmc;
>+	mmc-pwrseq = <&sdio_pwrseq>;
>+	vmmc-supply = <&vddao_3v3>;
>+	vqmmc-supply = <&vddio_ao1v8>;
>+};
>+
>+&uart_b {
>+	status = "okay";
>+};
>-- 
>2.53.0

--
Best regards,
Ferass

