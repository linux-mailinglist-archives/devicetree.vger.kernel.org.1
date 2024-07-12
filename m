Return-Path: <devicetree+bounces-85202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFE792F4C3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 06:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA9CB1F21D19
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 04:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3EC17548;
	Fri, 12 Jul 2024 04:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hewittfamily.org.uk header.i=@hewittfamily.org.uk header.b="ruqxmagm"
X-Original-To: devicetree@vger.kernel.org
Received: from m239-7.eu.mailgun.net (m239-7.eu.mailgun.net [185.250.239.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2575815E83
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 04:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.250.239.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720760172; cv=none; b=UJvqH8YtM3Zr9Yn6eYLq1JbF/RJ/p91ZBQANWhDNKX9CD6qXDYb7gC+IIprURf10htVWXpBOg94DwuT127qOjws0rbfbqz+gTcZiO4XtK/sO0rlLQq2xeTmL4FI6ndGSIjAKQyuB3/wrcad0UKZEyUsIFHao+BdEpbjwGnUusYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720760172; c=relaxed/simple;
	bh=pEKAlPTlEicKHQkOUstQZ5bl7j1Bh+21crYUJ0nlv1c=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ZAY5ug5Uwg+NyeFQDF1RrXcVi5rbC50nk8S7ZuRYAoLAeEO6WkbOzdpfO2YzuQcD5fnKCnB1EUsPeMTT42PcBtccz8UGL1czE8BkxM5Buax3N1Cf/d+hL1soEcciLXwl4UrkDBn559BVgGDq/d3JrtkJCfgh0KAbPZpLh7VAijI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=hewittfamily.org.uk; spf=pass smtp.mailfrom=hewittfamily.org.uk; dkim=pass (2048-bit key) header.d=hewittfamily.org.uk header.i=@hewittfamily.org.uk header.b=ruqxmagm; arc=none smtp.client-ip=185.250.239.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=hewittfamily.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hewittfamily.org.uk
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=hewittfamily.org.uk; q=dns/txt; s=s1; t=1720760168; x=1720767368;
 h=To: To: References: Message-Id: Content-Transfer-Encoding: Cc: Date: In-Reply-To: From: From: Subject: Subject: Mime-Version: Content-Type: Sender: Sender;
 bh=zKBoC89EQJ8MDhaNurSHmuaStVRo0sNbZg4NnnOgI8o=;
 b=ruqxmagmLG+ZBqXmM1/TfZ/1vyzCscj8FCnbgP23MqcSPONzCzsNR65a7XIEVxlKmImsWQloewJfOSVj8eoqOWSMIsmF9wHPUG7yGlizXFXLCJJWzT2A1F0AM+kPY5OzK+A+RPKLVal/8T2XggVkzoRAc59QSY6/Lkv/Cf8doZAzTtN40Gtmj8333Kd9sIwyfpeHhdVzK4JLPhSaKC2LCrGhx2ocY9alb9Egz4X8VT0y1049+NR/HDU0Jg1crlxuEfjP79UIqxkVhuuB5lIR6oda7KUIykCOt94S9oSXh7OHQXozlboXQf4RZ3FCKxXOb6x3PK/y2g5/ZQxeCf+7Lg==
X-Mailgun-Sending-Ip: 185.250.239.7
X-Mailgun-Sid: WyIzZDI1OSIsImRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnIiwiZTM3MjAiXQ==
Received: from mail.hewittfamily.org.uk (<unknown> [87.200.95.144]) by ce645b469c32 with
 SMTP id 6690b7688e2989dbb079cef2 (version=TLS1.3,
 cipher=TLS_AES_128_GCM_SHA256); Fri, 12 Jul 2024 04:56:08 GMT
Sender: christian@hewittfamily.org.uk
Received: from smtpclient.apple (unknown [167.99.200.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.hewittfamily.org.uk (Postfix) with ESMTPSA id 4WKznZ2vm8z29SWf;
	Fri, 12 Jul 2024 08:56:02 +0400 (+04)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH v2 2/2] arm64: dts: amlogic: add support for Radxa ZERO 2
 Pro
From: Christian Hewitt <christian@hewittfamily.org.uk>
In-Reply-To: <20240711202013.26573-2-naoki@radxa.com>
Date: Fri, 12 Jul 2024 08:55:42 +0400
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree <devicetree@vger.kernel.org>,
 AML <linux-amlogic@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D60FBED7-C930-41F6-A2C6-12C2CAC62F5D@hewittfamily.org.uk>
References: <20240711202013.26573-1-naoki@radxa.com>
 <20240711202013.26573-2-naoki@radxa.com>
To: FUKAUMI Naoki <naoki@radxa.com>
X-Mailer: Apple Mail (2.3774.600.62)
X-Synology-Spam-Status: score=-0.091, required 5, MV_CASE 0.5, __THREADED 0, __INR_AND_NO_REF 0, TO_DN_ALL 0, RCPT_COUNT_SEVEN 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, __BODY_URI_ONLY 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, ARC_NA 0, BAYES_HAM -3, FROM_HAS_DN 0, FREEMAIL_ENVRCPT 0, TO_MATCH_ENVRCPT_ALL 0, TAGGED_RCPT 0, MIME_GOOD -0.1, DBL_PROHIBIT 0, FREEMAIL_CC 0, __HDRS_LCASE_KNOWN 0, SUSPICIOUS_RECIPS 2.51
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no

> On 12 Jul 2024, at 12:20=E2=80=AFAM, FUKAUMI Naoki <naoki@radxa.com> =
wrote:
>=20
> Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
> Amlogic A311D chip that ships in a number of eMMC configurations:
>=20
> - Amlogic A311D SoC
> - Quad A73 + Dual A53 CPU
> - Mali G52-MP4 GPU
> - NPU (5 TOPs)
> - 4GB LPDDR4 RAM
> - 32/64/128GB eMMC
> - micro SD Card slot
> - Wi-Fi 5 and BT 5.0
> - 1x USB 2.0 Type-C port (OTG)
> - 1x USB 3.0 Type-C port (Host)
> - Micro HDMI 2.0
> - MIPI DSI
> - MIPI CSI
> - 40 Pin GPIO header
>=20
> [1] https://radxa.com/products/zeros/zero2pro

                                         ^^^
The Radxa website team uses this :)

>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>=20
> Changes in v2:
> - fix dtb build error
> ---
> arch/arm64/boot/dts/amlogic/Makefile          |   1 +
> .../amlogic/meson-g12b-radxa-zero-2pro.dts    |  14 +

If it=E2=80=99s a Radxa Zero 2 =E2=80=98Pro=E2=80=99 then =
meson-g12b-zero2-pro.dts
or meson-g12b-zero2pro.dts would be appropriate. The Zero
=E2=80=982pro=E2=80=99 filename is giving me OCD twitches.

CH.

> .../dts/amlogic/meson-g12b-radxa-zero2.dts    | 527 +-----------------
> ...-zero2.dts =3D> meson-g12b-radxa-zero2.dtsi} |   6 +-
> 4 files changed, 30 insertions(+), 518 deletions(-)
> create mode 100644 =
arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
> rewrite arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts (98%)
> copy arch/arm64/boot/dts/amlogic/{meson-g12b-radxa-zero2.dts =3D> =
meson-g12b-radxa-zero2.dtsi} (98%)
>=20
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile =
b/arch/arm64/boot/dts/amlogic/Makefile
> index 29417f04f886..4f95721698d0 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -31,6 +31,7 @@ dtb-$(CONFIG_ARCH_MESON) +=3D =
meson-g12b-odroid-go-ultra.dtb
> dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2-plus.dtb
> dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2.dtb
> dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2l.dtb
> +dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-radxa-zero-2pro.dtb
> dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-radxa-zero2.dtb
> dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-s922x-bananapi-m2s.dtb
> dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-s922x-khadas-vim3.dtb
> diff --git =
a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts =
b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
> new file mode 100644
> index 000000000000..62e44de9a550
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "meson-g12b-radxa-zero2.dtsi"
> +
> +/ {
> + compatible =3D "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";
> + model =3D "Radxa ZERO 2 Pro";
> +};
> +
> +&sound {
> + model =3D "RADXA-ZERO-2PRO";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts =
b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> dissimilarity index 98%
> index 8445701100d0..b4734cb63aaa 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> @@ -1,513 +1,14 @@
> -// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -/*
> - * Copyright (c) 2019 BayLibre, SAS
> - * Author: Neil Armstrong <narmstrong@baylibre.com>
> - * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
> - * Copyright (c) 2022 Radxa Limited
> - * Author: Yuntian Zhang <yt@radxa.com>
> - */
> -
> -/dts-v1/;
> -
> -#include "meson-g12b-a311d.dtsi"
> -#include <dt-bindings/input/input.h>
> -#include <dt-bindings/leds/common.h>
> -#include <dt-bindings/gpio/meson-g12a-gpio.h>
> -#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> -
> -/ {
> - compatible =3D "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
> - model =3D "Radxa Zero2";
> -
> - aliases {
> - serial0 =3D &uart_AO;
> - serial2 =3D &uart_A;
> - };
> -
> - chosen {
> - stdout-path =3D "serial0:115200n8";
> - };
> -
> - memory@0 {
> - device_type =3D "memory";
> - reg =3D <0x0 0x0 0x0 0x80000000>;
> - };
> -
> - fan0: pwm-fan {
> - compatible =3D "pwm-fan";
> - #cooling-cells =3D <2>;
> - cooling-levels =3D <0 64 128 192 255>;
> - pwms =3D <&pwm_AO_ab 0 40000 0>;
> - };
> -
> - gpio-keys-polled {
> - compatible =3D "gpio-keys-polled";
> - poll-interval =3D <100>;
> - power-button {
> - label =3D "power";
> - linux,code =3D <KEY_POWER>;
> - gpios =3D <&gpio_ao GPIOAO_3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> - };
> - };
> -
> - leds {
> - compatible =3D "gpio-leds";
> -
> - led-green {
> - color =3D <LED_COLOR_ID_GREEN>;
> - function =3D LED_FUNCTION_STATUS;
> - gpios =3D <&gpio GPIOA_12 GPIO_ACTIVE_HIGH>;
> - linux,default-trigger =3D "heartbeat";
> - };
> - };
> -
> - hdmi-connector {
> - compatible =3D "hdmi-connector";
> - type =3D "a";
> -
> - port {
> - hdmi_connector_in: endpoint {
> - remote-endpoint =3D <&hdmi_tx_tmds_out>;
> - };
> - };
> - };
> -
> - emmc_pwrseq: emmc-pwrseq {
> - compatible =3D "mmc-pwrseq-emmc";
> - reset-gpios =3D <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
> - };
> -
> - sdio_pwrseq: sdio-pwrseq {
> - compatible =3D "mmc-pwrseq-simple";
> - reset-gpios =3D <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
> - clocks =3D <&wifi32k>;
> - clock-names =3D "ext_clock";
> - };
> -
> - ao_5v: regulator-ao-5v {
> - compatible =3D "regulator-fixed";
> - regulator-name =3D "AO_5V";
> - regulator-min-microvolt =3D <5000000>;
> - regulator-max-microvolt =3D <5000000>;
> - regulator-always-on;
> - };
> -
> - vcc_1v8: regulator-vcc-1v8 {
> - compatible =3D "regulator-fixed";
> - regulator-name =3D "VCC_1V8";
> - regulator-min-microvolt =3D <1800000>;
> - regulator-max-microvolt =3D <1800000>;
> - vin-supply =3D <&vcc_3v3>;
> - regulator-always-on;
> - };
> -
> - vcc_3v3: regulator-vcc-3v3 {
> - compatible =3D "regulator-fixed";
> - regulator-name =3D "VCC_3V3";
> - regulator-min-microvolt =3D <3300000>;
> - regulator-max-microvolt =3D <3300000>;
> - vin-supply =3D <&vddao_3v3>;
> - regulator-always-on;
> - /* FIXME: actually controlled by VDDCPU_B_EN */
> - };
> -
> - vddao_1v8: regulator-vddao-1v8 {
> - compatible =3D "regulator-fixed";
> - regulator-name =3D "VDDIO_AO1V8";
> - regulator-min-microvolt =3D <1800000>;
> - regulator-max-microvolt =3D <1800000>;
> - vin-supply =3D <&vddao_3v3>;
> - regulator-always-on;
> - };
> -
> - vddao_3v3: regulator-vddao-3v3 {
> - compatible =3D "regulator-fixed";
> - regulator-name =3D "VDDAO_3V3";
> - regulator-min-microvolt =3D <3300000>;
> - regulator-max-microvolt =3D <3300000>;
> - vin-supply =3D <&ao_5v>;
> - regulator-always-on;
> - };
> -
> - vddcpu_a: regulator-vddcpu-a {
> - /*
> - * MP8756GD Regulator.
> - */
> - compatible =3D "pwm-regulator";
> -
> - regulator-name =3D "VDDCPU_A";
> - regulator-min-microvolt =3D <730000>;
> - regulator-max-microvolt =3D <1022000>;
> -
> - pwm-supply =3D <&ao_5v>;
> -
> - pwms =3D <&pwm_ab 0 1250 0>;
> - pwm-dutycycle-range =3D <100 0>;
> -
> - regulator-boot-on;
> - regulator-always-on;
> - };
> -
> - vddcpu_b: regulator-vddcpu-b {
> - /*
> - * Silergy SY8120B1ABC Regulator.
> - */
> - compatible =3D "pwm-regulator";
> -
> - regulator-name =3D "VDDCPU_B";
> - regulator-min-microvolt =3D <730000>;
> - regulator-max-microvolt =3D <1022000>;
> -
> - pwm-supply =3D <&ao_5v>;
> -
> - pwms =3D <&pwm_AO_cd 1 1250 0>;
> - pwm-dutycycle-range =3D <100 0>;
> -
> - regulator-boot-on;
> - regulator-always-on;
> - };
> -
> - sound {
> - compatible =3D "amlogic,axg-sound-card";
> - model =3D "RADXA-ZERO2";
> - audio-aux-devs =3D <&tdmout_b>;
> - audio-routing =3D "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> - "TDMOUT_B IN 1", "FRDDR_B OUT 1",
> - "TDMOUT_B IN 2", "FRDDR_C OUT 1",
> - "TDM_B Playback", "TDMOUT_B OUT";
> -
> - assigned-clocks =3D <&clkc CLKID_MPLL2>,
> -  <&clkc CLKID_MPLL0>,
> -  <&clkc CLKID_MPLL1>;
> - assigned-clock-parents =3D <0>, <0>, <0>;
> - assigned-clock-rates =3D <294912000>,
> -       <270950400>,
> -       <393216000>;
> -
> - dai-link-0 {
> - sound-dai =3D <&frddr_a>;
> - };
> -
> - dai-link-1 {
> - sound-dai =3D <&frddr_b>;
> - };
> -
> - dai-link-2 {
> - sound-dai =3D <&frddr_c>;
> - };
> -
> - /* 8ch hdmi interface */
> - dai-link-3 {
> - sound-dai =3D <&tdmif_b>;
> - dai-format =3D "i2s";
> - dai-tdm-slot-tx-mask-0 =3D <1 1>;
> - dai-tdm-slot-tx-mask-1 =3D <1 1>;
> - dai-tdm-slot-tx-mask-2 =3D <1 1>;
> - dai-tdm-slot-tx-mask-3 =3D <1 1>;
> - mclk-fs =3D <256>;
> -
> - codec {
> - sound-dai =3D <&tohdmitx TOHDMITX_I2S_IN_B>;
> - };
> - };
> -
> - /* hdmi glue */
> - dai-link-4 {
> - sound-dai =3D <&tohdmitx TOHDMITX_I2S_OUT>;
> -
> - codec {
> - sound-dai =3D <&hdmi_tx>;
> - };
> - };
> - };
> -
> - wifi32k: clock-0 {
> - compatible =3D "pwm-clock";
> - #clock-cells =3D <0>;
> - clock-frequency =3D <32768>;
> - pwms =3D <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
> - };
> -};
> -
> -&arb {
> - status =3D "okay";
> -};
> -
> -&cec_AO {
> - pinctrl-0 =3D <&cec_ao_a_h_pins>;
> - pinctrl-names =3D "default";
> - status =3D "disabled";
> - hdmi-phandle =3D <&hdmi_tx>;
> -};
> -
> -&cecb_AO {
> - pinctrl-0 =3D <&cec_ao_b_h_pins>;
> - pinctrl-names =3D "default";
> - status =3D "okay";
> - hdmi-phandle =3D <&hdmi_tx>;
> -};
> -
> -&clkc_audio {
> - status =3D "okay";
> -};
> -
> -&cpu0 {
> - cpu-supply =3D <&vddcpu_b>;
> - operating-points-v2 =3D <&cpu_opp_table_0>;
> - clocks =3D <&clkc CLKID_CPU_CLK>;
> - clock-latency =3D <50000>;
> -};
> -
> -&cpu1 {
> - cpu-supply =3D <&vddcpu_b>;
> - operating-points-v2 =3D <&cpu_opp_table_0>;
> - clocks =3D <&clkc CLKID_CPU_CLK>;
> - clock-latency =3D <50000>;
> -};
> -
> -&cpu100 {
> - cpu-supply =3D <&vddcpu_a>;
> - operating-points-v2 =3D <&cpub_opp_table_1>;
> - clocks =3D <&clkc CLKID_CPUB_CLK>;
> - clock-latency =3D <50000>;
> -};
> -
> -&cpu101 {
> - cpu-supply =3D <&vddcpu_a>;
> - operating-points-v2 =3D <&cpub_opp_table_1>;
> - clocks =3D <&clkc CLKID_CPUB_CLK>;
> - clock-latency =3D <50000>;
> -};
> -
> -&cpu102 {
> - cpu-supply =3D <&vddcpu_a>;
> - operating-points-v2 =3D <&cpub_opp_table_1>;
> - clocks =3D <&clkc CLKID_CPUB_CLK>;
> - clock-latency =3D <50000>;
> -};
> -
> -&cpu103 {
> - cpu-supply =3D <&vddcpu_a>;
> - operating-points-v2 =3D <&cpub_opp_table_1>;
> - clocks =3D <&clkc CLKID_CPUB_CLK>;
> - clock-latency =3D <50000>;
> -};
> -
> -&cpu_thermal {
> - trips {
> - cpu_active: cpu-active {
> - temperature =3D <70000>; /* millicelsius */
> - hysteresis =3D <2000>; /* millicelsius */
> - type =3D "active";
> - };
> - };
> -
> - cooling-maps {
> - map2 {
> - trip =3D <&cpu_active>;
> - cooling-device =3D <&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> - };
> - };
> -};
> -
> -&frddr_a {
> - status =3D "okay";
> -};
> -
> -&frddr_b {
> - status =3D "okay";
> -};
> -
> -&frddr_c {
> - status =3D "okay";
> -};
> -
> -&gpio {
> - gpio-line-names =3D
> - /* GPIOZ */
> - "PIN_27", "PIN_28", "PIN_7", "PIN_11", "PIN_13", "PIN_15", "PIN_18", =
"PIN_40",
> - "", "", "", "", "", "", "", "",
> - /* GPIOH */
> - "", "", "", "", "PIN_19", "PIN_21", "PIN_24", "PIN_23",
> - "",
> - /* BOOT */
> - "", "", "", "", "", "", "", "",
> - "", "", "", "", "EMMC_PWRSEQ", "", "", "",
> - /* GPIOC */
> - "", "", "", "", "", "", "SD_CD", "PIN_36",
> - /* GPIOA */
> - "PIN_32", "PIN_12", "PIN_35", "", "", "PIN_38", "", "",
> - "", "", "", "", "LED_GREEN", "PIN_31", "PIN_3", "PIN_5",
> - /* GPIOX */
> - "", "", "", "", "", "", "SDIO_PWRSEQ", "",
> - "", "", "", "", "", "", "", "",
> - "", "BT_SHUTDOWN", "", "";
> -};
> -
> -&gpio_ao {
> - gpio-line-names =3D
> - /* GPIOAO */
> - "PIN_8", "PIN_10", "", "BTN_POWER", "", "", "", "PIN_29",
> - "PIN_33", "PIN_37", "FAN", "",
> - /* GPIOE */
> - "", "", "";
> -};
> -
> -&hdmi_tx {
> - status =3D "okay";
> - pinctrl-0 =3D <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
> - pinctrl-names =3D "default";
> - hdmi-supply =3D <&ao_5v>;
> -};
> -
> -&hdmi_tx_tmds_port {
> - hdmi_tx_tmds_out: endpoint {
> - remote-endpoint =3D <&hdmi_connector_in>;
> - };
> -};
> -
> -&ir {
> - status =3D "disabled";
> - pinctrl-0 =3D <&remote_input_ao_pins>;
> - pinctrl-names =3D "default";
> -};
> -
> -&pwm_ab {
> - pinctrl-0 =3D <&pwm_a_e_pins>;
> - pinctrl-names =3D "default";
> - clocks =3D <&xtal>;
> - clock-names =3D "clkin0";
> - status =3D "okay";
> -};
> -
> -&pwm_ef {
> - pinctrl-0 =3D <&pwm_e_pins>;
> - pinctrl-names =3D "default";
> - clocks =3D <&xtal>;
> - clock-names =3D "clkin0";
> - status =3D "okay";
> -};
> -
> -&pwm_AO_ab {
> - pinctrl-0 =3D <&pwm_ao_a_pins>;
> - pinctrl-names =3D "default";
> - clocks =3D <&xtal>;
> - clock-names =3D "clkin0";
> - status =3D "okay";
> -};
> -
> -&pwm_AO_cd {
> - pinctrl-0 =3D <&pwm_ao_d_e_pins>;
> - pinctrl-names =3D "default";
> - clocks =3D <&xtal>;
> - clock-names =3D "clkin1";
> - status =3D "okay";
> -};
> -
> -&saradc {
> - status =3D "okay";
> - vref-supply =3D <&vddao_1v8>;
> -};
> -
> -/* SDIO */
> -&sd_emmc_a {
> - status =3D "okay";
> - pinctrl-0 =3D <&sdio_pins>;
> - pinctrl-1 =3D <&sdio_clk_gate_pins>;
> - pinctrl-names =3D "default", "clk-gate";
> - #address-cells =3D <1>;
> - #size-cells =3D <0>;
> -
> - bus-width =3D <4>;
> - cap-sd-highspeed;
> - max-frequency =3D <100000000>;
> -
> - non-removable;
> - disable-wp;
> -
> - /* WiFi firmware requires power to be kept while in suspend */
> - keep-power-in-suspend;
> -
> - mmc-pwrseq =3D <&sdio_pwrseq>;
> -
> - vmmc-supply =3D <&vddao_3v3>;
> - vqmmc-supply =3D <&vddao_1v8>;
> -
> - brcmf: wifi@1 {
> - reg =3D <1>;
> - compatible =3D "brcm,bcm4329-fmac";
> - };
> -};
> -
> -/* SD card */
> -&sd_emmc_b {
> - status =3D "okay";
> - pinctrl-0 =3D <&sdcard_c_pins>;
> - pinctrl-1 =3D <&sdcard_clk_gate_c_pins>;
> - pinctrl-names =3D "default", "clk-gate";
> -
> - bus-width =3D <4>;
> - cap-sd-highspeed;
> - max-frequency =3D <50000000>;
> - disable-wp;
> -
> - cd-gpios =3D <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
> - vmmc-supply =3D <&vddao_3v3>;
> - vqmmc-supply =3D <&vddao_3v3>;
> -};
> -
> -/* eMMC */
> -&sd_emmc_c {
> - status =3D "okay";
> - pinctrl-0 =3D <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, =
<&emmc_ds_pins>;
> - pinctrl-1 =3D <&emmc_clk_gate_pins>;
> - pinctrl-names =3D "default", "clk-gate";
> -
> - bus-width =3D <8>;
> - cap-mmc-highspeed;
> - mmc-ddr-1_8v;
> - mmc-hs200-1_8v;
> - max-frequency =3D <200000000>;
> - disable-wp;
> -
> - mmc-pwrseq =3D <&emmc_pwrseq>;
> - vmmc-supply =3D <&vcc_3v3>;
> - vqmmc-supply =3D <&vcc_1v8>;
> -};
> -
> -&tdmif_b {
> - status =3D "okay";
> -};
> -
> -&tdmout_b {
> - status =3D "okay";
> -};
> -
> -&tohdmitx {
> - status =3D "okay";
> -};
> -
> -&uart_A {
> - status =3D "okay";
> - pinctrl-0 =3D <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> - pinctrl-names =3D "default";
> - uart-has-rtscts;
> -
> - bluetooth {
> - compatible =3D "brcm,bcm43438-bt";
> - shutdown-gpios =3D <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
> - max-speed =3D <2000000>;
> - clocks =3D <&wifi32k>;
> - clock-names =3D "lpo";
> - };
> -};
> -
> -&uart_AO {
> - status =3D "okay";
> - pinctrl-0 =3D <&uart_ao_a_pins>;
> - pinctrl-names =3D "default";
> -};
> -
> -&usb {
> - status =3D "okay";
> -};
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "meson-g12b-radxa-zero2.dtsi"
> +
> +/ {
> + compatible =3D "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
> + model =3D "Radxa ZERO2";
> +};
> +
> +&sound {
> + model =3D "RADXA-ZERO2";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts =
b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
> similarity index 98%
> copy from arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> copy to arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
> index 8445701100d0..b73c4a423dfd 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
> @@ -16,9 +16,6 @@
> #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>=20
> / {
> - compatible =3D "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
> - model =3D "Radxa Zero2";
> -
> aliases {
> serial0 =3D &uart_AO;
> serial2 =3D &uart_A;
> @@ -167,9 +164,8 @@ vddcpu_b: regulator-vddcpu-b {
> regulator-always-on;
> };
>=20
> - sound {
> + sound: sound {
> compatible =3D "amlogic,axg-sound-card";
> - model =3D "RADXA-ZERO2";
> audio-aux-devs =3D <&tdmout_b>;
> audio-routing =3D "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> "TDMOUT_B IN 1", "FRDDR_B OUT 1",
> --=20
> 2.43.0
>=20
>=20
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic


