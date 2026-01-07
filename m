Return-Path: <devicetree+bounces-252210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 838C4CFC783
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 08:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6FBE13015E35
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 07:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65197285419;
	Wed,  7 Jan 2026 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jPc5rBrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8361028151C
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 07:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767772578; cv=none; b=fKOB2E8Gwp5B6EM5Pm1zO/KCca6VG8c/qmKCxHwutw57VsWwd+iLFrJapn4EaDSQXcb1sa5yFvgeCDYtAi0WZr3xvaDttNHpeArmKPOCE0tSeyy8KE2YJFHNY5AAEPkS3T5ts4kFpNzOoJtPvnl819+IkFeMW41syGJdedmOdq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767772578; c=relaxed/simple;
	bh=yA09F6BwTe1bn8EjIecHwopjUQMzEOHQlcCDX2lgyHw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FSWm4th6+60rZcP/7h7SZdna0LoFenuKGZVE/vBvZd7fIK/7T3Y55eJvZcqDLVQkEc6pwlLnykm1OvVSbfIJLadwsF3VMEgeEI/wICNhhdwzY28NT8zRpukcQPEPnNDmWRNa/iVQzb+UN8bgiKUC295WcfncWxLPr6Eje9PVBhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jPc5rBrm; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4f822b2df7aso22639791cf.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 23:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767772575; x=1768377375; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3DTASrcB9a3DtGhsTNpuRZ4W40+TvLvMMvh2+yPKPS4=;
        b=jPc5rBrm/Qu9OHCZfDcdmn+3Ft2odAxiByrYIuMb/jRIhWlF8a0pvawdM5fNuwaKbf
         paQMZxf3qww24ktphiDXGDQNJtASyG1OHlI9B1iOH9IOpQ5rKsXOaQ691ejjuNGyqdJ0
         R+aranDj7hFLPUQOEp+YsQXsyZpWol5lT1mfohTQwBa1sJI7WKdaw7oHJ8T5FciC/8QE
         Xk8FoOUcx8BrIepHh506eCxzRgL5FqD5+U5js7/EehixoOJPcxV9YRb58sBZXhf5rctI
         pOyrLdsZIOLuXhD6AB22BoCzBNSfMoJaH9/AZHpqWXpQClUn4xWXzclELp7MLyg2qKJD
         M0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767772575; x=1768377375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3DTASrcB9a3DtGhsTNpuRZ4W40+TvLvMMvh2+yPKPS4=;
        b=R69lSgalfzav5O8dZX5j3qyUHvkPBTLEU1it5IMFeoyNGJIcIn7QxK8dgbV+V/dHRa
         CaIAmhaonARNRzliwnUPn9P7YYWkAxJa57iO375jI7EeCBuEwEtQjRUllcKCdrortAek
         D4obL6ilSaHSdIOxmyXXjnIcVeDfIByhHWf74UX1MUDWNeW1uP0e7BU9E2abrfDOxE4w
         Qe+9w1AuLbGYyVsjHPNu7RGec+boERA4E9c5433LDmyebYngxNI7huVnWoWBRXFK9J8C
         U2VG1znwLM8RtsEVnNg28qn3KS0pe/DtPskPAnt82IlsbLg15zZRjby0uxHVPONv5yrh
         gSJw==
X-Forwarded-Encrypted: i=1; AJvYcCVIk308aONdxE7qxFE0FFq1ba1KSE+S1RzSrRhU/pUjmuAMK4AoOF6x8Rb8Ib9ajwszzR96Dn9iOut5@vger.kernel.org
X-Gm-Message-State: AOJu0YzOptzshrDWezI9ApIyVOQuZwbZAt/4ECdsf6hkHg7uWl6IY54U
	cA0PjMAAS7PnbRav6vKTez6c2yOVPzlA+YKOgwnGSdp8m+s5ZqEdXUHR3PjiODLwI12W9mL7TRe
	jYw07Elw6y2UhjMn0bp4e6K9uX6uh4Hg=
X-Gm-Gg: AY/fxX7OWioYKswfxzMUgmyiITn4WWqkeyxG3n1DXWvS5zYlPE/k6MfGyoxExvl1lFj
	1kSyMdKbN+DyaGCMcGt6A02nFrRsE2URN3eGqX+IWIHwhctUKXAM7K42CUI+MZ9AjDn7RsD5OIc
	kWlaDHNg0AR+zL7MywsLtoOOpsK50pPnOSDjxDAAXuVvMHlWuw2fjEZtPtyNc3sMbedTW8jeMG3
	r67cwYcR5m8n274uZ5itgAgmOR6bbPXJiSMVBCio6CucUTMngbbs1MZOCd8v+lbN59I3PAKYvKO
	kiY0oDdiJXxOXI+Gg/3NYCiqMM++
X-Google-Smtp-Source: AGHT+IHFjV7kLM1AiPWQgyoWq7uzV4cDoyZWDBntrvU7I8gWA/YGDgMa+xWIQA+sod3Jk8qpYeR1jqdWdafYaaPwS9s=
X-Received: by 2002:a05:622a:2505:b0:4ec:f452:4ec0 with SMTP id
 d75a77b69052e-4ffb4a5857amr21112681cf.69.1767772575278; Tue, 06 Jan 2026
 23:56:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
In-Reply-To: <20260107070322.323-3-kernel@airkyi.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 7 Jan 2026 11:56:04 +0400
X-Gm-Features: AQt7F2pb6U4UIptyLijHrQWFaH6FXNXWfSGKkmab3Sdn6tukcH2624J-11Az_XM
Message-ID: <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>, 
	John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Michael Riesch <michael.riesch@collabora.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chaoyi,

On Wed, Jan 7, 2026 at 11:04=E2=80=AFAM Chaoyi Chen <kernel@airkyi.com> wro=
te:
>
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>
> General features for rk3576 evb2 board:
>     - Rockchip RK3576
>     - LPDDR4/4X
>     - eMMC5.1
>     - RK806-2x2pcs + DiscretePower
>     - 1x HDMI2.1 TX / HDMI2.0 RX
>     - 1x full size DP1.4 TX (Only 2 Lanes)
>     - 2x 10/100/1000M Ethernet
>     - 5x SATA3.0 7Pin Slot
>     - 2x USB3.2 Gen1 Host
>     - 3x USB2.0 Host
>     - WIFI/BT
>     - ...
>
> Tested with eMMC/SDMMC/HDMI/USB/Ethernet/WIFI/BT module.
>
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>
> Changes in v2:
> - Enable hdmi_sound and sai6.
> - Add more cpu-supply.
> - Use regulator to control sata power.
> - Remove "cap-mmc-highspeed" prop in sdmmc.
> - Add regulator supply for ufshc.
> - Add the missing vcc3v3_hubreset regulator.
> - Add otg capability for usb_drd0_dwc3.
>
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 997 ++++++++++++++++++
>  2 files changed, 998 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index c7617e06e1c1..cff95657d406 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -153,6 +153,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-wolfvision-pf=
5-io-expander.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-armsom-sige5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-armsom-sige5-v1.2-wifibt.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-evb2-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-luckfox-omni3576.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-nanopi-m5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-roc-pc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts b/arch/arm6=
4/boot/dts/rockchip/rk3576-evb2-v10.dts
> new file mode 100644
> index 000000000000..52788c514ec0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
> @@ -0,0 +1,997 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2025 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3576.dtsi"
> +
> +/ {
> +       model =3D "Rockchip RK3576 EVB2 V10 Board";
> +       compatible =3D "rockchip,rk3576-evb2-v10", "rockchip,rk3576";
> +
> +       aliases {
> +               ethernet0 =3D &gmac0;
> +               ethernet1 =3D &gmac1;
> +       };
> +
> +       chosen: chosen {
> +               stdout-path =3D "serial0:1500000n8";
> +       };
> +
> +       adc_keys: adc-keys {
> +               compatible =3D "adc-keys";
> +               io-channels =3D <&saradc 1>;
> +               io-channel-names =3D "buttons";
> +               keyup-threshold-microvolt =3D <1800000>;
> +               poll-interval =3D <100>;
> +
> +               button-back {
> +                       label =3D "back";
> +                       linux,code =3D <KEY_BACK>;
> +                       press-threshold-microvolt =3D <1235000>;
> +               };
> +
> +               button-menu {
> +                       label =3D "menu";
> +                       linux,code =3D <KEY_MENU>;
> +                       press-threshold-microvolt =3D <890000>;
> +               };
> +
> +               button-vol-down {
> +                       label =3D "volume down";
> +                       linux,code =3D <KEY_VOLUMEDOWN>;
> +                       press-threshold-microvolt =3D <417000>;
> +               };
> +
> +               button-vol-up {
> +                       label =3D "volume up";
> +                       linux,code =3D <KEY_VOLUMEUP>;
> +                       press-threshold-microvolt =3D <17000>;
> +               };
> +       };
> +
> +       hdmi-con {
> +               compatible =3D "hdmi-connector";
> +               type =3D "a";
> +
> +               port {
> +                       hdmi_con_in: endpoint {
> +                               remote-endpoint =3D <&hdmi_out_con>;
> +                       };
> +               };
> +       };
> +
> +       leds: leds {
> +               compatible =3D "gpio-leds";
> +
> +               work_led: led-0 {
> +                       gpios =3D <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger =3D "heartbeat";
> +               };
> +       };
> +
> +       sdio_pwrseq: sdio-pwrseq {
> +               compatible =3D "mmc-pwrseq-simple";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&wifi_pwren>;
> +
> +               /*
> +                * On the module itself this is one of these (depending
> +                * on the actual card populated):
> +                * - SDIO_RESET_L_WL_REG_ON
> +                * - PDN (power down when low)
> +                */
> +               post-power-on-delay-ms =3D <200>;
> +               reset-gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       vbus5v0_typec: regulator-vbus5v0-typec {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vbus5v0_typec";

This might better be renamed, given that last time you mentioned this
board doesn't have a Type-C connector. Perhaps regulator-vbus5v0-otg?

> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               enable-active-high;
> +               gpio =3D <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
> +               vin-supply =3D <&vcc5v0_device>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&usb_otg0_pwren>;
> +       };
> +
> +       vcc12v_dcin: regulator-vcc12v-dcin {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc12v_dcin";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <12000000>;
> +               regulator-max-microvolt =3D <12000000>;
> +       };
> +
> +       vcc1v2_ufs_vccq_s0: regulator-vcc1v2-ufs-vccq-s0 {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc1v2_ufs_vccq_s0";
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-min-microvolt =3D <1200000>;
> +               regulator-max-microvolt =3D <1200000>;
> +               vin-supply =3D <&vcc_sys>;
> +       };
> +
> +       vcc1v8_ufs_vccq2_s0: regulator-vcc1v8-ufs-vccq2-s0 {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc1v8_ufs_vccq2_s0";
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-min-microvolt =3D <1800000>;
> +               regulator-max-microvolt =3D <1800000>;
> +               vin-supply =3D <&vcc_1v8_s3>;
> +       };
> +
> +       vcc3v3_hubreset: vcc3v3-hubreset {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc3v3_hubreset";
> +               regulator-boot-on;
> +               regulator-always-on;

If this regulator supplies a soldered-on discrete hub and is required
to power it up, won't it be better to describe the hub in the device
tree (see binding at [1]), make the regulator its supply, and perhaps
drop the "regulator-boot-on/regulator-always-on" annotation here,
letting the regulator core deal with its enabling instead?

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/usb/usb-device.yaml

[snip]

Other than these, LGTM - thanks for addressing my comments from v1!
Feel free to include my:

Reviewed-by: Alexey Charkov <alchark@gmail.com>

Best regards,
Alexey

