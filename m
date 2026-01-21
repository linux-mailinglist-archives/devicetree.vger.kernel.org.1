Return-Path: <devicetree+bounces-257689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGL3AkcycGkSXAAAu9opvQ
	(envelope-from <devicetree+bounces-257689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:56:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D75F4F69F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44F37B60036
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7347320382;
	Wed, 21 Jan 2026 01:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="Xv8TvlqT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5CC43242BC;
	Wed, 21 Jan 2026 01:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768960529; cv=none; b=QndA1bOKHGBCXX8ZJNp2Xrf63heSIXrmqCJp3S7oYsS8WjGMorWiM4j0NGaoIq+1WQ+1ONXc6HzUPY60f0sYatVC33HT8BFM+CruTcflSB3tFwkkORKFPHMDgd6CVHTuz+yxHQhMg7kCBJvss7E9fYJsnmNsYxNFPtBHpW6QKZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768960529; c=relaxed/simple;
	bh=ZEPov3OEOAIEIcKtxW2lTI7QTtdBS2XqusdZu0XK46c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=LU1nV8hlIfNEHeWG8Bvmy1TmONQhSnn/o5QjXefk7PpRNjiYCNqHTItcOWEceyFYfxbMKVWNDc7WBa34Yg1H6uCO3CQesn3bNGxPeqI9zO+dXXj01E4iSkLnVG2s+Y6mmqEdSryQaCWkN1b5Plq9PIAls+8FihRMCGlsikoFWXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=Xv8TvlqT; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768960464;
	bh=1acwQoDB0/iKDYuarRHbubrmVQsJdfIW/ps/W9sn/ws=;
	h=From:To:Subject:Date:Message-Id;
	b=Xv8TvlqTmKT1xwPVn6sVImJu6pcFsFqk7N0CCg5MGsgmca8sTK9F4hAKt9zslPoaX
	 SEhxH7Co5zshBjTruMl8Rc9Pe77+bqASDn/wJBaxmnnfWoRQ2/4/7IjPoI2ksbYyuu
	 0FfQNAP5Anm6j5ozhQx8ZrfWQS7K/6t1/S6J1OzA=
X-QQ-mid: zesmtpsz3t1768960458tb00cfd3e
X-QQ-Originating-IP: ZWyngSw9Apt1FryXsk4QBHqdle44z411/AJqY+ObtDk=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 09:54:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9640442501041716911
EX-QQ-RecipientCnt: 21
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 21 Jan 2026 09:53:57 +0800
Message-Id: <20260121015357.291-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260121015357.291-1-kernel@airkyi.com>
References: <20260121015357.291-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MsL7hwqo9bYs1d2kbuyKLYb13oRG6o52ZUmd4w8ZDJaylCA9f7nVra9O
	67IQul5l/oG59T/maMLMXtIRslr50jFSbOSTNMPQalcKlap9VdSgOD6ht1//ra3rxNfjMxW
	yKcF6cs/csBlaHnv3lwGV0NhiYfqlGFzTM/ow7PARBygfwLiuAHuZuTTSQywUPjoJIE1vLl
	s5dZReN+bSUJmTAcbbj/PJqfkPnk/NNo0G72fg5S9rytMEjsyR2QnT1byc12bnRBi8+YuAn
	G7C0fhS1OpxLkfbvTf4fEtgNsRwz1GU4PkM0FaAtNHa3cAS26evHtqBVFBca+Cfsx79uMuO
	hsFmlMFBzaRWqb1eThxTVpbuDvAQJ6C57xJ4Hf//rKbAksT9YrLlDMOkJ6LyIYZHDqshFuF
	e680iHrNvzAQXLYU1DKscz059T2EANet3In4/vOPnCa1a6HigcgMs5nxgSNgDSv7UF12mkc
	M2Fe5q5J5SPUC9p3lmda08jgg8zi/rgJXh15YSwDmx5OQ1nardmTcRQcrWYiy5qmQP459GZ
	k+bLncr0puxdlE1Jh/a8DpZT54TGTuwLenHm3SrpR8L3vlXuO7hC6UAhmZt+gVWJseiR6g3
	OjnWYu5v0oWdA5HAXy3yvqUnjWzL4QuFtZWwBGoba6FxtxB3N4ENBG98WDvlKfP0fDTCDK9
	qaY3aVhEIVouCPua0jpjQt8EhdrWOGWw+Iravn2qJfSvlcl1nFwkpIf5gnsXgU4vDNENZrI
	dRhGqC7pqNDFrFJ9vCB0HydJwmaxzXoEYrIydOHAu1dqDP5uT7Rzxp3XjBa/7c42yNjAZkr
	JIztlZ6z4ya78xeZ7Juu+dI1zq+Yt+2PVASsw/ifYnuxqEahQ0oRDMgWEpfomVVcyin9qyh
	jdhr/xdhYKNS03wvHKU7M8QAm3ewY5tJdq3jsHaD1q+ZQ7OM7CMq5R+tWD0VwLDiViGByQn
	mdTs2aQXhkLWE33wEyUHLRjU/47TOt/BLyCWcOr90NGakLCEQek6pMl5ph3Xr8/DuWR0nez
	X2NGEv21lAr0iH7HLplmg6VfIkq3g=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257689-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[airkyi.com,none];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,rock-chips.com:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,0.0.0.51:email,rockchip_vop2_ep_hdmi0:email,airkyi.com:mid,airkyi.com:dkim,0.0.0.23:email]
X-Rspamd-Queue-Id: 6D75F4F69F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

General features for rk3576 evb2 board:
    - Rockchip RK3576
    - LPDDR4/4X
    - eMMC5.1
    - RK806-2x2pcs + DiscretePower
    - 1x HDMI2.1 TX / HDMI2.0 RX
    - 1x full size DP1.4 TX (Only 2 Lanes)
    - 2x 10/100/1000M Ethernet
    - 5x SATA3.0 7Pin Slot
    - 2x USB3.2 Gen1 Host
    - 3x USB2.0 Host
    - WIFI/BT
    - ...

Tested with eMMC/SDMMC/HDMI/USB/Ethernet/WIFI/BT module.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v4:
- Fix supply and reset for usb hub.
- Add cd-gpios for sdmmc.

Changes in v3:
- Add alias for mmc.
- Rename some usb vbus regulator.
- Add DP regulator.
- Change gmac phy-mode to rgmii-id.
- Add target-supply for sata.
- Change vcc-supply for ufshc.
- Add usb hub.
- ...

Changes in v2:
- Enable hdmi_sound and sai6.
- Add more cpu-supply.
- Use regulator to control sata power.
- Remove "cap-mmc-highspeed" prop in sdmmc.
- Add regulator supply for ufshc.
- Add the missing vcc3v3_hubreset regulator.
- Add otg capability for usb_drd0_dwc3.
---
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 1004 +++++++++++++++++
 2 files changed, 1005 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index c7617e06e1c1..cff95657d406 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -153,6 +153,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb2-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-luckfox-omni3576.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-nanopi-m5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-roc-pc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
new file mode 100644
index 000000000000..078298717850
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
@@ -0,0 +1,1004 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2026 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3576.dtsi"
+
+/ {
+	model = "Rockchip RK3576 EVB2 V10 Board";
+	compatible = "rockchip,rk3576-evb2-v10", "rockchip,rk3576";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-back {
+			label = "back";
+			linux,code = <KEY_BACK>;
+			press-threshold-microvolt = <1235000>;
+		};
+
+		button-menu {
+			label = "menu";
+			linux,code = <KEY_MENU>;
+			press-threshold-microvolt = <890000>;
+		};
+
+		button-vol-down {
+			label = "volume down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <417000>;
+		};
+
+		button-vol-up {
+			label = "volume up";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <17000>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		work_led: led-0 {
+			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_pwren>;
+
+		/*
+		 * On the module itself this is one of these (depending
+		 * on the actual card populated):
+		 * - SDIO_RESET_L_WL_REG_ON
+		 * - PDN (power down when low)
+		 */
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	};
+
+	vbus5v0_usb0: regulator-vbus5v0-usb0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb3_host0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc5v0_device>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_otg0_pwren>;
+	};
+
+	vbus5v0_usb1: regulator-vcc5v0-usb1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb3_host1";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc5v0_device>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_pwren>;
+	};
+
+	vcc12v_dcin: regulator-vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc1v2_ufs_vccq_s0: regulator-vcc1v2-ufs-vccq-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v2_ufs_vccq_s0";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc1v8_ufs_vccq2_s0: regulator-vcc1v8-ufs-vccq2-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_ufs_vccq2_s0";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8_s3>;
+	};
+
+	vcc3v3_dp_port: regulator-vcc3v3-dp-port {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_dp_port";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc_3v3_s3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&image_pwren>;
+	};
+
+	vcc3v3_pcie1: regulator-vcc3v3-pcie1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc3v3_rtc_s5: regulator-vcc3v3-rtc-s5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_rtc_s5";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc3v3_sata_pwren: vcc3v3-sata-pwren {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_satapm";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&satapm_pwren>;
+	};
+
+	vcc5v0_device: regulator-vcc5v0-device {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_device";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v1_nldo_s3";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_1v8_s0: regulator-vcc-1v8-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8_s0";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8_s3>;
+	};
+
+	vcc_2v0_pldo_s3: regulator-vcc-2v0-pldo-s3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_2v0_pldo_s3";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <2000000>;
+		regulator-max-microvolt = <2000000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_3v3_s0: regulator-vcc-3v3-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_s0";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc_ufs_s0: regulator-vcc-ufs-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ufs_s0";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+	};
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&combphy1_psu {
+	status = "okay";
+};
+
+&gmac0 {
+	clock_in_out = "output";
+	phy-mode = "rgmii-id";
+	phy-handle = <&rgmii_phy0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth0m1_miim
+		     &eth0m1_tx_bus2
+		     &eth0m1_rx_bus2
+		     &eth0m1_rgmii_clk
+		     &eth0m1_rgmii_bus>;
+	status = "okay";
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth1m0_miim
+		     &eth1m0_tx_bus2
+		     &eth1m0_rx_bus2
+		     &eth1m0_rgmii_clk
+		     &eth1m0_rgmii_bus>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&hdptxphy {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	rk806: pmic@23 {
+		compatible = "rockchip,rk806";
+		reg = <0x23>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
+		system-power-controller;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
+		vcc8-supply = <&vcc_sys>;
+		vcc9-supply = <&vcc_sys>;
+		vcc10-supply = <&vcc_sys>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc_sys>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc_sys>;
+
+		rk806_dvs1_null: dvs1-null-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs2_null: dvs2-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs3_null: dvs3-null-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs1_slp: dvs1-slp-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun1";
+		};
+
+		rk806_dvs1_pwrdn: dvs1-pwrdn-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun2";
+		};
+
+		rk806_dvs1_rst: dvs1-rst-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun3";
+		};
+
+		rk806_dvs2_slp: dvs2-slp-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun1";
+		};
+
+		rk806_dvs2_pwrdn: dvs2-pwrdn-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun2";
+		};
+
+		rk806_dvs2_rst: dvs2-rst-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun3";
+		};
+
+		rk806_dvs2_dvs: dvs2-dvs-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun4";
+		};
+
+		rk806_dvs2_gpio: dvs2-gpio-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun5";
+		};
+
+		rk806_dvs3_slp: dvs3-slp-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun1";
+		};
+
+		rk806_dvs3_pwrdn: dvs3-pwrdn-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun2";
+		};
+
+		rk806_dvs3_rst: dvs3-rst-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun3";
+		};
+
+		rk806_dvs3_dvs: dvs3-dvs-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun4";
+		};
+
+		rk806_dvs3_gpio: dvs3-gpio-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun5";
+		};
+
+		regulators {
+			vdd_cpu_big_s0: dcdc-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_cpu_big_s0";
+				regulator-enable-ramp-delay = <400>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_npu_s0: dcdc-reg2 {
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_npu_s0";
+				regulator-enable-ramp-delay = <400>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: dcdc-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_cpu_lit_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vcc_3v3_s3: dcdc-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_3v3_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vdd_gpu_s0: dcdc-reg5 {
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_gpu_s0";
+				regulator-enable-ramp-delay = <400>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vddq_ddr_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_logic_s0: dcdc-reg7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vdd_logic_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vdd2_ddr_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg10 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vdd_ddr_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_1v8_s0: pldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pldo2_s0: pldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pldo2_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vdda_1v2_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcca_3v3_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pldo6_s3: pldo-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pldo6_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdda_ddr_pll_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v75_hdmi_s0: nldo-reg3 {
+				regulator-boot-on;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
+				regulator-name = "vdda0v75_hdmi_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdda_0v85_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v75_s0: nldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdda_0v75_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		clock-output-names = "hym8563";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_int>;
+		wakeup-source;
+		#clock-cells = <0>;
+	};
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rgmii_phy0_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PD3 GPIO_ACTIVE_LOW>;
+		tx-internal-delay-ps = <1900>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rgmii_phy1_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PD6 GPIO_ACTIVE_LOW>;
+		tx-internal-delay-ps = <1900>;
+	};
+};
+
+&pinctrl {
+	bluetooth {
+		bt_reg_on: bt-reg-on {
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		host_wake_bt: host-wake-bt {
+			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	dp {
+		image_pwren: image-pwren {
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hym8563 {
+		rtc_int: rtc-int {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	network {
+		rgmii_phy0_rst: rgmii-phy0-rst {
+			rockchip,pins = <3 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		rgmii_phy1_rst: rgmii-phy1-rst {
+			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie1 {
+		pcie1_rst: pcie1-rst {
+			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sata {
+		satapm_pwren: satapm-pwren {
+			rockchip,pins = <4 RK_PC7 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+	};
+
+	usb {
+		usb_host_pwren: usb-host-pwren {
+			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_hub_reset: usb-hub-reset {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_otg0_pwren: usb-otg0-pwren {
+			rockchip,pins = <0 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_host_wake: wifi-host-wake {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		wifi_pwren: wifi-pwren {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&sai6 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
+&sata0 {
+	target-supply = <&vcc3v3_sata_pwren>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	max-frequency = <150000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-sd;
+	no-mmc;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1m0_bus4 &sdmmc1m0_clk &sdmmc1m0_cmd>;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	full-pwr-cycle-in-suspend;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	no-sdio;
+	no-sd;
+	non-removable;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vbus5v0_usb0>;
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vbus5v0_usb1>;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-0 = <&uart4m1_xfer &uart4m1_ctsn &uart4m1_rtsn>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&hym8563>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-0 = <&bt_reg_on &bt_wake_host &host_wake_bt>;
+		pinctrl-names = "default";
+		shutdown-gpios = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
+		vbat-supply = <&vcc_3v3_s3>;
+		vddio-supply = <&vcc_1v8_s3>;
+	};
+};
+
+&ufshc {
+	vcc-supply = <&vcc_ufs_s0>;
+	vccq-supply = <&vcc1v2_ufs_vccq_s0>;
+	vccq2-supply = <&vcc1v8_ufs_vccq2_s0>;
+	status = "okay";
+};
+
+&usbdp_phy {
+	rockchip,dp-lane-mux = <2 3>;
+	status = "okay";
+};
+
+&usb_drd0_dwc3 {
+	dr_mode = "otg";
+	extcon = <&u2phy0>;
+	status = "okay";
+};
+
+&usb_drd1_dwc3 {
+	dr_mode = "host";
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb_hub_reset>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_2_0: hub@1 {
+		compatible = "usb1a86,8091";
+		reg = <1>;
+		reset-gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
+		v5-supply = <&vcc_3v3_s0>;
+		vdd33-supply = <&vcc_3v3_s0>;
+	};
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
--
2.51.1


