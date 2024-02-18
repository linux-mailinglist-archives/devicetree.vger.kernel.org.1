Return-Path: <devicetree+bounces-43134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F54859583
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 09:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8435E1C20D81
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 08:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B32F9D6;
	Sun, 18 Feb 2024 08:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HjCzW61k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92771CA78;
	Sun, 18 Feb 2024 08:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708243644; cv=none; b=HzgG3H6VJojPUKrFOdYKWKQuuH9mklJOlr1DVuL7Xubfyf1mOEiJN+MzCgThoFWHrfD+8PAcgrdwGfGUALqLpZMYDhc76Ep8B9R6tmU33fne39GOVkLK9/xLt3WGx/420NaayGpV2LX9GZFVjligDI+J+MvkPU//wLYIQmVfNr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708243644; c=relaxed/simple;
	bh=qBeVKzb72J1xobvuoXrXCUE855yvOtPpmPkLSwbzaYw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QXg+MPuGzJNhBaWIGv0RHu+avURqwdMG9eQzir9UJHC1MsCjtO3sb7Ij2uqcgUGG912P/Z3CoQ2L4kTySFWHaJ2wj9PXEvlV4CvnV2oew+3MYfPDN0MRPhgL+nWGGGA6mOnUyhMoEhIjMwLauJegwm7JBrbmnaEYHffycznIZVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HjCzW61k; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-563f675be29so2169799a12.0;
        Sun, 18 Feb 2024 00:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708243640; x=1708848440; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPd2Ozs1UFSW3dfR30Gq70n3L3wHsM8hGINffyFot20=;
        b=HjCzW61kjHXv8YarQXADeU/kB95tmOoY7wS3ul5HOlbtkd0JRJrWdF5tmH5bcTWqOO
         3CYwnVvMmh3XxqBXVlC21UeqXRXcpWk29Rr8OF/HC4gKlkAcxK9u+qjoGzG5SpaErPTE
         evRqbPC6CfOpMDqHMAG1lcBTN9mKrEbq9jaefGoDhv1rCxuHR/CEkBbGlWQ3mc2U2wb6
         vOOMev0e/ZzWShE9SuXkdkhAFkM8Owhj7sWT9mjKDWgirvqpsf9/e2Yy73kxIm79nOIK
         jI6pB7vWBIo+y5PHMC2T0ce8BJCRMBF5WUkcielQckDtdWNftiViZVrPAmLbIWrAnIaT
         E76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708243640; x=1708848440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPd2Ozs1UFSW3dfR30Gq70n3L3wHsM8hGINffyFot20=;
        b=HMpaUmDapVgyVWEMFs3biiHN7LfmHE7y6wH+Kq5AAbLq31ltvl7Z1iQ1ywQTiClZgP
         wIGc+4Milfiwp9qkPSDsu8xvWbZ+Kv3q7PruaVaKd1DCPQZ/Sd3gMldOzIoOZIkVlIaL
         BGMj2uPcFOsHV2hFs3Bj5kQsuQ+JFL09N6zAMGM4nKP3y5U1MN3YtBKVcZ8Lklw6GWEa
         QxhENnoe1/5Jrv5nQPL4CoxR0LXD9g+7R617eleR9k5tLVE3kdnA+ezcXNIXooS9Xjn+
         WVdf3qQnKq29L1sd+eFINMzcg04zmBEJfSt2ZXRSmyqpZ701n7ZwgCv2BL08k6j7O4EW
         WMmw==
X-Forwarded-Encrypted: i=1; AJvYcCW5iu1dG3FxksJtC5pYjdpZk4iEewroZtjyHU3t6h9K4imXmfNZPcli8hkeunaQfnPPfXJQUVWn37KA5T6iyT8wHTqWicl0iWtuXGexAK0z5UJt0NtakoFJuVAci2qLGRJXBlM8ZM5HMw==
X-Gm-Message-State: AOJu0YwCojhh9lo5vGa3yUriE4Hbw4+ZweUowsfGx9SwNTQWduVcI9fl
	w1ZY4Va4jQlOZNKwdzZgBJdsN3gF4jtBN7EEovQfHGgKiwToPI7zbPwhGyem7f0g0yu0K7l8Y/f
	7siN5SqJO6SctNsJ1aoWBcuMgX2Y=
X-Google-Smtp-Source: AGHT+IGC6yQExWCZnxucJaGQPlEbsayihGwvBao0t+rL7IPB/OWHYUqB0tHffs0OsyhqSKLN/xjeN/F1N8HMgqEfmRA=
X-Received: by 2002:a05:6402:2d2:b0:564:3854:f466 with SMTP id
 b18-20020a05640202d200b005643854f466mr1304921edx.34.1708243639444; Sun, 18
 Feb 2024 00:07:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240218065407.652213-1-zhangzj@rock-chips.com>
In-Reply-To: <20240218065407.652213-1-zhangzj@rock-chips.com>
From: Weizhao Ouyang <o451686892@gmail.com>
Date: Sun, 18 Feb 2024 16:07:08 +0800
Message-ID: <CAHk0Hov1dryZmwxo40wnzExtHPSRxHOmU_0T3BPDXVZ8k75JZw@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: Add devicetree support for
 TB-RK3588X board
To: Elon Zhang <zhangzj@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, weizhao.ouyang@arm.com, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Elon,

On Sun, Feb 18, 2024 at 2:54=E2=80=AFPM Elon Zhang <zhangzj@rock-chips.com>=
 wrote:
>
> Add board file for Rockchip Toybrick TB-RK3588X board.
>
> Specification:
>         Rockchip Rk3588 SoC
>         4x ARM Cortex-A76, 4x ARM Cortex-A55
>         8/16GB Memory LPDDR4x
>         Mali G610MC4 GPU
>         2=C3=97 MIPI-CSI0 Connector
>         1x 2Lanes PCIe3.0 Connector
>         1x SATA3.0 Connector
>         32GB eMMC Module
>         2x USB 2.0, 2x USB 3.0
>         1x HDMI Output, 1x HDMI Input
>         2x Ethernet Port
>
> Functions work normally:
>         [1] USB2.0 Host
>         [2] Ethernet0 with PHY RTL8211F
>
> More information can be obtained from the following websites:
>         [1] https://t.rock-chips.com/en/wiki/EN/tb-rk3588x_en/index.html
>         [2] http://t.rock-chips.com/
>
> Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-toybrick-x0.dts  | 672 ++++++++++++++++++
>  2 files changed, 673 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index a7b30e11beaf..e0722b6e2d99 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -110,6 +110,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-nanopc-t6.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-orangepi-5-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-quartzpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-rock-5b.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-toybrick-x0.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-turing-rk1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-coolpi-4b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-indiedroid-nova.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/a=
rm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> new file mode 100644
> index 000000000000..ef7e5ee75021
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> @@ -0,0 +1,672 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.

Do we need to update the copyright?

> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3588.dtsi"
> +
> +/ {
> +       model =3D "Rockchip Toybrick TB-RK3588X Board";
> +       compatible =3D "rockchip,rk3588-toybrick-x0", "rockchip,rk3588";

"rockchip,rk3588-toybrick-x0" needs to be synchronized in
"Documentation/devicetree/bindings/arm/rockchip.yaml".

> +
> +       aliases {
> +               mmc0 =3D &sdhci;
> +               serial2 =3D &uart2;
> +       };
> +
> +       chosen {
> +               stdout-path =3D "serial2:1500000n8";
> +       };
> +
> +       adc-keys {
> +               compatible =3D "adc-keys";
> +               io-channels =3D <&saradc 1>;
> +               io-channel-names =3D "buttons";
> +               keyup-threshold-microvolt =3D <1800000>;
> +               poll-interval =3D <100>;
> +
> +               button-vol-up {
> +                       label =3D "Volume Up";
> +                       linux,code =3D <KEY_VOLUMEUP>;
> +                       press-threshold-microvolt =3D <17000>;
> +               };
> +
> +               button-vol-down {
> +                       label =3D "Volume Down";
> +                       linux,code =3D <KEY_VOLUMEDOWN>;
> +                       press-threshold-microvolt =3D <417000>;
> +               };
> +
> +               button-menu {
> +                       label =3D "Menu";
> +                       linux,code =3D <KEY_MENU>;
> +                       press-threshold-microvolt =3D <890000>;
> +               };
> +
> +               button-escape {
> +                       label =3D "Escape";
> +                       linux,code =3D <KEY_ESC>;
> +                       press-threshold-microvolt =3D <1235000>;
> +               };
> +       };
> +
> +       backlight: backlight {
> +               compatible =3D "pwm-backlight";
> +               power-supply =3D <&vcc12v_dcin>;
> +               pwms =3D <&pwm2 0 25000 0>;
> +       };
> +
> +       pcie20_avdd0v85: pcie20-avdd0v85-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pcie20_avdd0v85";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <850000>;
> +               regulator-max-microvolt =3D <850000>;
> +               vin-supply =3D <&vdd_0v85_s0>;
> +       };
> +
> +       pcie20_avdd1v8: pcie20-avdd1v8-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pcie20_avdd1v8";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <1800000>;
> +               regulator-max-microvolt =3D <1800000>;
> +               vin-supply =3D <&avcc_1v8_s0>;
> +       };
> +
> +       pcie30_avdd0v75: pcie30-avdd0v75-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pcie30_avdd0v75";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <750000>;
> +               regulator-max-microvolt =3D <750000>;
> +               vin-supply =3D <&avdd_0v75_s0>;
> +       };
> +
> +       pcie30_avdd1v8: pcie30-avdd1v8-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pcie30_avdd1v8";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <1800000>;
> +               regulator-max-microvolt =3D <1800000>;
> +               vin-supply =3D <&avcc_1v8_s0>;
> +       };
> +
> +       vcc12v_dcin: vcc12v-dcin-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc12v_dcin";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <12000000>;
> +               regulator-max-microvolt =3D <12000000>;
> +       };
> +
> +       vcc5v0_host: vcc5v0-host-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc5v0_host";
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               enable-active-high;
> +               gpio =3D <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&vcc5v0_host_en>;
> +               vin-supply =3D <&vcc5v0_usb>;
> +       };
> +
> +       vcc5v0_sys: vcc5v0-sys-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc5v0_sys";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               vin-supply =3D <&vcc12v_dcin>;
> +       };
> +
> +       vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc5v0_usbdcin";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               vin-supply =3D <&vcc12v_dcin>;
> +       };
> +
> +       vcc5v0_usb: vcc5v0-usb-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc5v0_usb";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               vin-supply =3D <&vcc5v0_usbdcin>;
> +       };
> +
> +       vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc_1v1_nldo_s3";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <1100000>;
> +               regulator-max-microvolt =3D <1100000>;
> +               vin-supply =3D <&vcc5v0_sys>;
> +       };
> +};
> +
> +&combphy0_ps {
> +       status =3D "okay";
> +};
> +
> +&combphy2_psu {
> +       status =3D "okay";
> +};
> +
> +&cpu_b0 {
> +       cpu-supply =3D <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b1 {
> +       cpu-supply =3D <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b2 {
> +       cpu-supply =3D <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_b3 {
> +       cpu-supply =3D <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_l0 {
> +       cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l1 {
> +       cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l2 {
> +       cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l3 {
> +       cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
> +&gmac0 {
> +       clock_in_out =3D "output";
> +       phy-handle =3D <&rgmii_phy>;
> +       phy-mode =3D "rgmii-rxid";
> +       pinctrl-0 =3D <&gmac0_miim
> +                    &gmac0_tx_bus2
> +                    &gmac0_rx_bus2
> +                    &gmac0_rgmii_clk
> +                    &gmac0_rgmii_bus>;
> +       pinctrl-names =3D "default";
> +       rx_delay =3D <0x00>;
> +       tx_delay =3D <0x43>;
> +       status =3D "okay";
> +};
> +
> +&i2c0 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&i2c0m2_xfer>;
> +       status =3D "okay";
> +
> +       vdd_cpu_big0_s0: regulator@42 {
> +               compatible =3D "rockchip,rk8602";
> +               reg =3D <0x42>;
> +               fcs,suspend-voltage-selector =3D <1>;
> +               regulator-name =3D "vdd_cpu_big0_s0";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <550000>;
> +               regulator-max-microvolt =3D <1050000>;
> +               regulator-ramp-delay =3D <2300>;
> +               vin-supply =3D <&vcc5v0_sys>;
> +
> +               regulator-state-mem {
> +                       regulator-off-in-suspend;
> +               };
> +       };
> +
> +       vdd_cpu_big1_s0: regulator@43 {
> +               compatible =3D "rockchip,rk8603", "rockchip,rk8602";
> +               reg =3D <0x43>;
> +               fcs,suspend-voltage-selector =3D <1>;
> +               regulator-name =3D "vdd_cpu_big1_s0";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <550000>;
> +               regulator-max-microvolt =3D <1050000>;
> +               regulator-ramp-delay =3D <2300>;
> +               vin-supply =3D <&vcc5v0_sys>;
> +
> +               regulator-state-mem {
> +                       regulator-off-in-suspend;
> +               };
> +       };
> +};
> +
> +&i2c2 {
> +       status =3D "okay";
> +
> +       hym8563: rtc@51 {
> +               compatible =3D "haoyu,hym8563";
> +               reg =3D <0x51>;
> +               #clock-cells =3D <0>;
> +               clock-output-names =3D "hym8563";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&hym8563_int>;
> +               interrupt-parent =3D <&gpio0>;
> +               interrupts =3D <RK_PD4 IRQ_TYPE_LEVEL_LOW>;
> +               wakeup-source;
> +       };
> +};
> +
> +&mdio0 {
> +       rgmii_phy: ethernet-phy@1 {
> +               /* RTL8211F */
> +               compatible =3D "ethernet-phy-id001c.c916";
> +               reg =3D <0x1>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&rtl8211f_rst>;
> +               reset-assert-us =3D <20000>;
> +               reset-deassert-us =3D <100000>;
> +               reset-gpios =3D <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
> +       };
> +};
> +
> +&pinctrl {
> +       rtl8211f {
> +               rtl8211f_rst: rtl8211f-rst {
> +                       rockchip,pins =3D <4 RK_PB3 RK_FUNC_GPIO &pcfg_pu=
ll_none>;
> +               };
> +
> +       };
> +
> +       hym8563 {
> +               hym8563_int: hym8563-int {
> +                       rockchip,pins =3D <0 RK_PD4 RK_FUNC_GPIO &pcfg_pu=
ll_up>;
> +               };
> +       };
> +
> +       usb {
> +               vcc5v0_host_en: vcc5v0-host-en {
> +                       rockchip,pins =3D <4 RK_PB0 RK_FUNC_GPIO &pcfg_pu=
ll_none>;
> +               };
> +       };
> +};
> +
> +&pwm2 {
> +       status =3D "okay";
> +};
> +
> +&saradc {
> +       vref-supply =3D <&vcc_1v8_s0>;
> +       status =3D "okay";
> +};
> +
> +&sdhci {
> +       bus-width =3D <8>;
> +       no-sdio;
> +       no-sd;
> +       non-removable;
> +       mmc-hs400-1_8v;
> +       mmc-hs400-enhanced-strobe;
> +       status =3D "okay";
> +};
> +
> +&spi2 {
> +       status =3D "okay";
> +       assigned-clocks =3D <&cru CLK_SPI2>;
> +       assigned-clock-rates =3D <200000000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&spi2m2_cs0 &spi2m2_pins>;
> +       num-cs =3D <1>;
> +
> +       pmic@0 {
> +               compatible =3D "rockchip,rk806";
> +               spi-max-frequency =3D <1000000>;
> +               reg =3D <0x0>;
> +
> +               interrupt-parent =3D <&gpio0>;
> +               interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
> +
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&pmic_pins>, <&rk806_dvs1_null>,
> +                           <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> +
> +               system-power-controller;
> +
> +               vcc1-supply =3D <&vcc5v0_sys>;
> +               vcc2-supply =3D <&vcc5v0_sys>;
> +               vcc3-supply =3D <&vcc5v0_sys>;
> +               vcc4-supply =3D <&vcc5v0_sys>;
> +               vcc5-supply =3D <&vcc5v0_sys>;
> +               vcc6-supply =3D <&vcc5v0_sys>;
> +               vcc7-supply =3D <&vcc5v0_sys>;
> +               vcc8-supply =3D <&vcc5v0_sys>;
> +               vcc9-supply =3D <&vcc5v0_sys>;
> +               vcc10-supply =3D <&vcc5v0_sys>;
> +               vcc11-supply =3D <&vcc_2v0_pldo_s3>;
> +               vcc12-supply =3D <&vcc5v0_sys>;
> +               vcc13-supply =3D <&vcc_1v1_nldo_s3>;
> +               vcc14-supply =3D <&vcc_1v1_nldo_s3>;
> +               vcca-supply =3D <&vcc5v0_sys>;
> +
> +               gpio-controller;
> +               #gpio-cells =3D <2>;
> +
> +               rk806_dvs1_null: dvs1-null-pins {
> +                       pins =3D "gpio_pwrctrl1";
> +                       function =3D "pin_fun0";
> +               };
> +
> +               rk806_dvs2_null: dvs2-null-pins {
> +                       pins =3D "gpio_pwrctrl2";
> +                       function =3D "pin_fun0";
> +               };
> +
> +               rk806_dvs3_null: dvs3-null-pins {
> +                       pins =3D "gpio_pwrctrl3";
> +                       function =3D "pin_fun0";
> +               };
> +
> +               regulators {
> +                       vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <550000>;
> +                               regulator-max-microvolt =3D <950000>;
> +                               regulator-ramp-delay =3D <12500>;
> +                               regulator-name =3D "vdd_gpu_s0";
> +                               regulator-enable-ramp-delay =3D <400>;
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <550000>;
> +                               regulator-max-microvolt =3D <950000>;
> +                               regulator-ramp-delay =3D <12500>;
> +                               regulator-name =3D "vdd_cpu_lit_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vdd_log_s0: dcdc-reg3 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <675000>;
> +                               regulator-max-microvolt =3D <750000>;
> +                               regulator-ramp-delay =3D <12500>;
> +                               regulator-name =3D "vdd_log_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
750000>;
> +                               };
> +                       };
> +
> +                       vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <550000>;
> +                               regulator-max-microvolt =3D <950000>;
> +                               regulator-init-microvolt =3D <750000>;
> +                               regulator-ramp-delay =3D <12500>;
> +                               regulator-name =3D "vdd_vdenc_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vdd_ddr_s0: dcdc-reg5 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <675000>;
> +                               regulator-max-microvolt =3D <900000>;
> +                               regulator-ramp-delay =3D <12500>;
> +                               regulator-name =3D "vdd_ddr_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
850000>;
> +                               };
> +                       };
> +
> +                       vdd2_ddr_s3: dcdc-reg6 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-name =3D "vdd2_ddr_s3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc_2v0_pldo_s3: dcdc-reg7 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <2000000>;
> +                               regulator-max-microvolt =3D <2000000>;
> +                               regulator-name =3D "vdd_2v0_pldo_s3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
2000000>;
> +                               };
> +                       };
> +
> +                       vcc_3v3_s3: dcdc-reg8 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <3300000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vcc_3v3_s3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
3300000>;
> +                               };
> +                       };
> +
> +                       vddq_ddr_s0: dcdc-reg9 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-name =3D "vddq_ddr_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc_1v8_s3: dcdc-reg10 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-name =3D "vcc_1v8_s3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
1800000>;
> +                               };
> +                       };
> +
> +                       avcc_1v8_s0: pldo-reg1 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-name =3D "avcc_1v8_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc_1v8_s0: pldo-reg2 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-name =3D "vcc_1v8_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
1800000>;
> +                               };
> +                       };
> +
> +                       avdd_1v2_s0: pldo-reg3 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1200000>;
> +                               regulator-max-microvolt =3D <1200000>;
> +                               regulator-name =3D "avdd_1v2_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc_3v3_s0: pldo-reg4 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <3300000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vcc_3v3_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vccio_sd_s0: pldo-reg5 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vccio_sd_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       pldo6_s3: pldo-reg6 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-name =3D "pldo6_s3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
1800000>;
> +                               };
> +                       };
> +
> +                       vdd_0v75_s3: nldo-reg1 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <750000>;
> +                               regulator-max-microvolt =3D <750000>;
> +                               regulator-name =3D "vdd_0v75_s3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
750000>;
> +                               };
> +                       };
> +
> +                       vdd_ddr_pll_s0: nldo-reg2 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <850000>;
> +                               regulator-max-microvolt =3D <850000>;
> +                               regulator-name =3D "vdd_ddr_pll_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
850000>;
> +                               };
> +                       };
> +
> +                       avdd_0v75_s0: nldo-reg3 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <837500>;
> +                               regulator-max-microvolt =3D <837500>;
> +                               regulator-name =3D "avdd_0v75_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vdd_0v85_s0: nldo-reg4 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <850000>;
> +                               regulator-max-microvolt =3D <850000>;
> +                               regulator-name =3D "vdd_0v85_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vdd_0v75_s0: nldo-reg5 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <750000>;
> +                               regulator-max-microvolt =3D <750000>;
> +                               regulator-name =3D "vdd_0v75_s0";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +               };
> +       };
> +};
> +
> +&u2phy2 {
> +       status =3D "okay";
> +};
> +
> +&u2phy2_host {
> +       phy-supply =3D <&vcc5v0_host>;
> +       status =3D "okay";
> +};
> +
> +&u2phy3 {
> +       status =3D "okay";
> +};
> +
> +&u2phy3_host {
> +       phy-supply =3D <&vcc5v0_host>;
> +       status =3D "okay";
> +};
> +
> +&uart2 {
> +       pinctrl-0 =3D <&uart2m0_xfer>;
> +       status =3D "okay";
> +};
> +
> +&usb_host0_ehci {
> +       status =3D "okay";
> +};
> +
> +&usb_host0_ohci {
> +       status =3D "okay";
> +};
> +
> +&usb_host1_ehci {
> +       status =3D "okay";
> +};
> +
> +&usb_host1_ohci {
> +       status =3D "okay";
> +};
> --
> 2.34.1
>

BR,
Weizhao

