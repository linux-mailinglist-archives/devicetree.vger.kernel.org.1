Return-Path: <devicetree+bounces-62942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF1E8B319F
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 09:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9AB11F21A15
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 07:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A02EF13C802;
	Fri, 26 Apr 2024 07:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="QVI2oCud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCE813C662
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 07:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714117461; cv=none; b=csPdWUxX4R6wET+K8OHWtwXbnzpKycFOx93FNf3hy9uSP8vm3aQ92uB79rI+dhPvJe9sYUDRR5zDCc8jTwGNL8b4dyfYDtB+wHEsPaPzWkZ5//KEw4dsoK75ewXrDc9eY+Sf2GFD2hakCSB1+3IkZ0xpqWvs1BzSmawf8wV1XpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714117461; c=relaxed/simple;
	bh=kAETIBMNfkjMMVDzTDP0XfqqcoI5Um5Dgsrbj6PIY1c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X6ig25RBm93Ir1PGcfTgYZbCu4pKyzPemd4c7rDzmcU/4TYchKGIsi4CLu77qPoLmAkY1RabmA7G98ReS5HKvTkTEegMHerPbjcSHmxg4QLLseg2TqyTko5tATDUVzEIMmH6yY1qt/X5wHpJZnpIov/iZS/YcvmhEVIrqi84504=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=QVI2oCud; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a5224dfa9adso338570266b.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 00:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1714117457; x=1714722257; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Xuoz5ZmNApP6XGjVdgbhbXhnVgGW6px3irQzAYuzi4=;
        b=QVI2oCudd6/zJ0omccN0AsI2/PG6kbJKKU29YL0QZjbLcgw6YRmwaKPY28cnUjjV63
         D+mhTxQzNfjG2M9Kz5sbwQw11G+De9dPOTjQMPYsTFH+i1j2J4+0zmbpl64hzisgT0lb
         h5Qu63rz6+qIaTsZM7ERsX7RZicFvT6LGn5u0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714117457; x=1714722257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Xuoz5ZmNApP6XGjVdgbhbXhnVgGW6px3irQzAYuzi4=;
        b=adLyucwp2V2f2Z0e6S+6Fy015sDrA6y3PMrjOmSqYBujpQ53K6znwkKSEv0gKmkuPa
         75QEhGU11p9lq72x8Zh26D9CpTrJjRyEq8lm3Bfml+/+d6dfggFRe+1jEM3C1kgGYFGu
         CV7zFeyuZXpdsTmmjIukz7k72YYDzFAHwUTcpA5aMr4P/KmndXRyl1jCuXQ3J3Cx5N6H
         i9/6a/p3rOv4yXHdL9dC3ReQtTH4jziK1378y8xode9UyVhVwlyufjfoC1ozyX78NL1k
         b4/u8zMCELFb94tPKXOto0g61NVXbHOfkaEI5MiwH28TcODiwU0sd7rvYc0dHZUm+xgE
         qgXw==
X-Forwarded-Encrypted: i=1; AJvYcCU6SDrHvV5U0qezJE0iVrUmLsxMxzMTCxTDUaaMYlxvL++8l+AavscOTdoTk3MiZaT1YYGaDzZKgM+ykL8Fgzhb00vFE0nfVBOQ8Q==
X-Gm-Message-State: AOJu0YwL748TmVjnnjcNHHoZslHIpqqusHCpydEQw8HOnctMc4qeCfK1
	5G3eK3/UD8EQL8ZI28nkf1KFKrWDVA1LD1qanaI+rm7X3oSJ5H1rL3CZLSi94hLJM9rimu6g1jI
	QaHGLdpuCfcu25bG2h9+NCEE9BXhpWUZZd8mxlg==
X-Google-Smtp-Source: AGHT+IHQYnSPFh1ugdd+IAqNO2C3J5sQYuwrSKCR6rTRFtU/I7AdBLKrZFLTfdjIybrmSkTyOmWZGsJ366E9kIJfXXk=
X-Received: by 2002:a17:906:2b95:b0:a58:cd39:d166 with SMTP id
 m21-20020a1709062b9500b00a58cd39d166mr1041821ejg.9.1714117456497; Fri, 26 Apr
 2024 00:44:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426073820.6466-1-fabio.aiuto@engicam.com> <20240426073820.6466-4-fabio.aiuto@engicam.com>
In-Reply-To: <20240426073820.6466-4-fabio.aiuto@engicam.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 26 Apr 2024 09:44:05 +0200
Message-ID: <CAOf5uwm0sQYe-z36U7C6OOC483bA8V0iJuKAtr6=C+KwAKo2mA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: imx93: Add Engicam i.Core MX93 EDIMM
 2.0 Starter Kit
To: Fabio Aiuto <fabio.aiuto@engicam.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Matteo Lisi <matteo.lisi@engicam.com>, Mirko Ardinghi <mirko.ardinghi@engicam.com>, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabio

On Fri, Apr 26, 2024 at 9:38=E2=80=AFAM Fabio Aiuto <fabio.aiuto@engicam.co=
m> wrote:
>
> i.Core MX93 is a NXP i.MX93 based SoM by Enigcam which needs to be
> mounted on top of Engicam baseboards.
>
> Add support for EDIMM 2.0 Starter Kit hosting i.Core MX93.
>
> Starter Kit main features:
>
> 2x LVDS interfaces
> HDMI output
> Audio out
> Mic in
> Micro SD card slot
> USB 3.0 A port
> 3x USB 2.0 A port
> Gb Ethernet
> 2x CAN bus, 3x UART interfaces
> SIM card slot
> M.2 KEY_B slot
>
> Cc: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
> Cc: Matteo Lisi <matteo.lisi@engicam.com>
> Cc: Mirko Ardinghi <mirko.ardinghi@engicam.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Fabio Aiuto <fabio.aiuto@engicam.com>
> ---

Try to insert here the changelog in order people understand what was
changed from V4

>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx93-icore-mx93-edimm2.dts | 343 ++++++++++++++++++
>  2 files changed, 344 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx93-icore-mx93-edimm2=
.dts
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts=
/freescale/Makefile
> index 045250d0a040..d26c0a458a44 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -226,6 +226,7 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx8qxp-mek.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8qxp-tqma8xqp-mba8xx.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8ulp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx93-11x11-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) +=3D imx93-icore-mx93-edimm2.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx93-phyboard-segin.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx93-tqma9352-mba93xxca.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx93-tqma9352-mba93xxla.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx93-icore-mx93-edimm2.dts b/=
arch/arm64/boot/dts/freescale/imx93-icore-mx93-edimm2.dts
> new file mode 100644
> index 000000000000..ff69decb8bd6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx93-icore-mx93-edimm2.dts
> @@ -0,0 +1,343 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2022 NXP
> + * Copyright 2024 Engicam s.r.l.
> + */
> +
> +/dts-v1/;
> +
> +#include "imx93-icore-mx93.dtsi"
> +
> +/ {
> +       model =3D "Engicam i.Core MX93 - EDIMM 2 Starterkit";
> +       compatible =3D "engicam,icore-mx93-edimm2", "engicam,icore-mx93",
> +                    "fsl,imx93";
> +
> +       aliases {
> +               rtc1 =3D &bbnsm_rtc;
> +       };
> +
> +       chosen {
> +               stdout-path =3D &lpuart1;
> +       };
> +
> +       bt_reg_on: regulator-btregon {
> +               compatible =3D "regulator-gpio";
> +               regulator-name =3D "BT_REG_ON";
> +               regulator-min-microvolt =3D <100000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               states =3D <3300000 0x1>, <100000 0x0>;
> +               gpios =3D <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +       };
> +
> +       reg_1v8_sgtl: regulator-1v8-sgtl {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "1v8_sgtl";
> +               regulator-min-microvolt =3D <1800000>;
> +               regulator-max-microvolt =3D <1800000>;
> +               regulator-always-on;
> +       };
> +
> +       reg_3v3_avdd_sgtl: regulator-3v3-avdd-sgtl {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "3v3_avdd_sgtl";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-always-on;
> +       };
> +
> +       reg_3v3_sgtl: regulator-3v3-sgtl {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "3v3_sgtl";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-always-on;
> +       };
> +
> +       reserved-memory {
> +               #address-cells =3D <2>;
> +               #size-cells =3D <2>;
> +               ranges;
> +
> +               linux,cma {
> +                       compatible =3D "shared-dma-pool";
> +                       reusable;
> +                       alloc-ranges =3D <0 0x80000000 0 0x40000000>;
> +                       size =3D <0 0x10000000>;
> +                       linux,cma-default;
> +               };
> +
> +               rsc_table: rsc-table@2021f000 {
> +                       reg =3D <0 0x2021f000 0 0x1000>;
> +                       no-map;
> +               };
> +
> +               vdevbuffer: vdevbuffer@a4020000 {
> +                       compatible =3D "shared-dma-pool";
> +                       reg =3D <0 0xa4020000 0 0x100000>;
> +                       no-map;
> +               };
> +
> +               vdev0vring0: vdev0vring0@a4000000 {
> +                       reg =3D <0 0xa4000000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev0vring1: vdev0vring1@a4008000 {
> +                       reg =3D <0 0xa4008000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev1vring0: vdev1vring0@a4000000 {
> +                       reg =3D <0 0xa4010000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev1vring1: vdev1vring1@a4018000 {
> +                       reg =3D <0 0xa4018000 0 0x8000>;
> +                       no-map;
> +               };
> +       };
> +
> +       sound {
> +               compatible =3D "simple-audio-card";
> +               simple-audio-card,name =3D "imx93-sgtl5000";
> +               simple-audio-card,format =3D "i2s";
> +               simple-audio-card,bitclock-master =3D <&dailink_master>;
> +               simple-audio-card,frame-master =3D <&dailink_master>;
> +               /*simple-audio-card,mclk-fs =3D <1>;*/
> +
> +               simple-audio-card,cpu {
> +                       sound-dai =3D <&sai3>;
> +               };
> +
> +               dailink_master: simple-audio-card,codec {
> +                       sound-dai =3D <&sgtl5000>;
> +                       clocks =3D <&clk IMX93_CLK_SAI3_IPG>;
> +               };
> +       };
> +
> +       usdhc3_pwrseq: usdhc3-pwrseq {
> +               compatible =3D "mmc-pwrseq-simple";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&pinctrl_usdhc3_pwrseq>;
> +               reset-gpios =3D <&gpio2 22 GPIO_ACTIVE_LOW>;
> +       };
> +};
> +
> +&cm33 {
> +       mbox-names =3D "tx", "rx", "rxdb";
> +       mboxes =3D <&mu1 0 1>,
> +                <&mu1 1 1>,
> +                <&mu1 3 1>;
> +       memory-region =3D <&vdevbuffer>, <&vdev0vring0>, <&vdev0vring1>,
> +                       <&vdev1vring0>, <&vdev1vring1>, <&rsc_table>;
> +       status =3D "okay";
> +};
> +
> +&flexcan1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_flexcan1>;
> +       fsl,stop-mode =3D <&aonmix_ns_gpr 0x10 4>;
> +       status =3D "okay";
> +};
> +
> +&flexcan2 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_flexcan2>;
> +       fsl,stop-mode =3D <&aonmix_ns_gpr 0x10 4>;
> +       status =3D "okay";
> +};
> +
> +&lpi2c1 {
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       clock-frequency =3D <400000>;
> +       pinctrl-names =3D "default", "sleep";
> +       pinctrl-0 =3D <&pinctrl_lpi2c1>;
> +       pinctrl-1 =3D <&pinctrl_lpi2c1>;
> +       status =3D "okay";
> +
> +       sgtl5000: audio-codec@a {
> +               compatible =3D "fsl,sgtl5000";
> +               reg =3D <0x0a>;
> +               #sound-dai-cells =3D <0>;
> +               clocks =3D <&clk IMX93_CLK_SAI3_GATE>;
> +               VDDA-supply =3D <&reg_3v3_avdd_sgtl>;
> +               VDDIO-supply =3D <&reg_3v3_sgtl>;
> +               VDDD-supply =3D <&reg_1v8_sgtl>;
> +               status =3D "okay";
> +       };
> +
> +       pcf8523: rtc@68 {
> +               compatible =3D "nxp,pcf8523";
> +               reg =3D <0x68>;
> +       };
> +};
> +
> +&lpuart1 { /* console */
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart1>;
> +       status =3D "okay";
> +};
> +
> +&lpuart5 { /* RS485 */
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart5>;
> +       status =3D "okay";
> +};

Nit but nice to know how transceiver are driven

> +
> +&lpuart8 { /* RS232 */
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart8>;
> +       status =3D "okay";
> +};
> +
> +&micfil {
> +       #sound-dai-cells =3D <0>;
> +       assigned-clocks =3D <&clk IMX93_CLK_PDM>;
> +       assigned-clock-parents =3D <&clk IMX93_CLK_AUDIO_PLL>;
> +       assigned-clock-rates =3D <196608000>;
> +       status =3D "okay";
> +};
> +
> +&mu1 {
> +       status =3D "okay";
> +};
> +
> +&mu2 {
> +       status =3D "okay";
> +};
> +
> +&sai1 {
> +       #sound-dai-cells =3D <0>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_sai1>;
> +       assigned-clocks =3D <&clk IMX93_CLK_SAI1>;
> +       assigned-clock-parents =3D <&clk IMX93_CLK_AUDIO_PLL>;
> +       assigned-clock-rates =3D <12288000>;
> +       status =3D "okay";
> +};
> +

Is this sai in use? If it's connected to the bluetooth then you need
to keep not enable
for now because seems unused and you don't declare a bt-sco sound
device. As far I can see

sai3->sgtl codec

> +&sai3 {
> +       #sound-dai-cells =3D <0>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_sai3>;
> +       assigned-clocks =3D <&clk IMX93_CLK_SAI3>;
> +       assigned-clock-parents =3D <&clk IMX93_CLK_AUDIO_PLL>;
> +       assigned-clock-rates =3D <24576000>;
> +       fsl,sai-mclk-direction-output;
> +       status =3D "okay";
> +};
> +
> +&usdhc3 { /* WiFi */
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> +       pinctrl-0 =3D <&pinctrl_usdhc3>;
> +       pinctrl-1 =3D <&pinctrl_usdhc3>;
> +       pinctrl-2 =3D <&pinctrl_usdhc3>;
> +       mmc-pwrseq =3D <&usdhc3_pwrseq>;
> +       bus-width =3D <4>;
> +       no-1-8-v;
> +       non-removable;
> +       max-frequency =3D <25000000>;
> +       status =3D "okay";
> +
> +       brcmf: bcrmf@1 {
> +               compatible =3D "brcm,bcm4329-fmac";
> +               reg =3D <1>;
> +       };
> +};
> +
> +&wdog3 {
> +       status =3D "okay";
> +};
> +
> +&iomuxc {
> +       pinctrl_bluetooth: bluetoothgrp {
> +               fsl,pins =3D <
> +                       MX93_PAD_GPIO_IO19__GPIO2_IO19          0x31e /* =
BT_REG_ON */
> +               >;
> +       };
> +
> +       pinctrl_flexcan1: flexcan1grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_PDM_CLK__CAN1_TX               0x139e
> +                       MX93_PAD_PDM_BIT_STREAM0__CAN1_RX       0x139e
> +               >;
> +       };
> +
> +       pinctrl_flexcan2: flexcan2grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_GPIO_IO25__CAN2_TX             0x139e
> +                       MX93_PAD_GPIO_IO27__CAN2_RX             0x139e
> +               >;
> +       };
> +
> +       pinctrl_lpi2c1: lpi2c1grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_I2C1_SCL__LPI2C1_SCL           0x40000b9=
e
> +                       MX93_PAD_I2C1_SDA__LPI2C1_SDA           0x40000b9=
e
> +               >;
> +       };
> +
> +       pinctrl_sai1: sai1grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_SAI1_TXC__SAI1_TX_BCLK         0x31e
> +                       MX93_PAD_SAI1_TXFS__SAI1_TX_SYNC        0x31e
> +                       MX93_PAD_SAI1_TXD0__SAI1_TX_DATA00      0x31e
> +                       MX93_PAD_SAI1_RXD0__SAI1_RX_DATA00      0x31e
> +               >;
> +       };
> +
> +       pinctrl_sai3: sai3grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_GPIO_IO26__SAI3_TX_SYNC        0x31e
> +                       MX93_PAD_GPIO_IO16__SAI3_TX_BCLK        0x31e
> +                       MX93_PAD_GPIO_IO17__SAI3_MCLK           0x31e
> +                       MX93_PAD_GPIO_IO21__SAI3_TX_DATA00      0x31e
> +                       MX93_PAD_GPIO_IO20__SAI3_RX_DATA00      0x31e
> +               >;
> +       };
> +
> +       pinctrl_uart1: uart1grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_UART1_RXD__LPUART1_RX          0x31e
> +                       MX93_PAD_UART1_TXD__LPUART1_TX          0x31e
> +               >;
> +       };
> +
> +       pinctrl_uart5: uart5grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_GPIO_IO01__LPUART5_RX          0x31e
> +                       MX93_PAD_GPIO_IO00__LPUART5_TX          0x31e
> +                       MX93_PAD_GPIO_IO02__LPUART5_CTS_B       0x31e
> +                       MX93_PAD_GPIO_IO03__LPUART5_RTS_B       0x31e
> +               >;
> +       };
> +
> +       pinctrl_uart8: uart8grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_GPIO_IO13__LPUART8_RX          0x31e
> +                       MX93_PAD_GPIO_IO12__LPUART8_TX          0x31e
> +               >;
> +       };
> +
> +       pinctrl_usdhc3: usdhc3grp {
> +               fsl,pins =3D <
> +                       MX93_PAD_SD3_CLK__USDHC3_CLK            0x17fe
> +                       MX93_PAD_SD3_CMD__USDHC3_CMD            0x13fe
> +                       MX93_PAD_SD3_DATA0__USDHC3_DATA0        0x13fe
> +                       MX93_PAD_SD3_DATA1__USDHC3_DATA1        0x13fe
> +                       MX93_PAD_SD3_DATA2__USDHC3_DATA2        0x13fe
> +                       MX93_PAD_SD3_DATA3__USDHC3_DATA3        0x13fe
> +               >;
> +       };
> +
> +       pinctrl_usdhc3_pwrseq: usdhc3pwrseqgrp {
> +               fsl,pins =3D <
> +                       MX93_PAD_GPIO_IO22__GPIO2_IO22          0x31e /* =
WL_REG_ON */
> +               >;
> +       };
> +};
> --
> 2.34.1

With this changes:
Reviewed-by: Michael Trimarchi <michael@amarulasolutions.com>

>


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

