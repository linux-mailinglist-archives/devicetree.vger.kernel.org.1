Return-Path: <devicetree+bounces-25327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3074812E7E
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E01E1F21901
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67BC63FB3C;
	Thu, 14 Dec 2023 11:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NyDO9JwY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C00A6B7
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:25:17 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-28b1478d85bso43344a91.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702553117; x=1703157917; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUYPbbRFzCgf9Bgce0RCxootirkBbKi334AEdGS+W6U=;
        b=NyDO9JwY0v3pvWyfrDinNOORmhNLNZ4sQkmgTMbwIHH4xr8B6ndSkP/XunYEUoldbB
         EwrKx8mE3tfpVrJFSceW61Loktg4eL6+R2UnOOWQ8K7edwmt4mTRoPj1CPSHVDCaNBfv
         O6XQGCW6FBpms193O+FjWt5MajxTHvZNwJATG3+mxSA6l0MFhbMGytzkunmaPYWN5HMC
         Jtyy7Ftc5WSTsmLig0fYq2iGaQRDaU5Lse2VDRFEyMNA5f+cXD165NyjV/2suinUP/6J
         h6LnB//yiCzRHAJ0v+LNpRlev0epGuPxB7XaP9T321JuohOqC6jjN+gtLDvnmu1d+C2K
         M4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702553117; x=1703157917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QUYPbbRFzCgf9Bgce0RCxootirkBbKi334AEdGS+W6U=;
        b=AFFO2Iu+exQqM9zXgiukN66aNKFVMAqI4OgEuB1sq0axpiGMcu+wnJpx4cQNlhMasX
         uhviJC3setG+1ovGDhkp+qkSYNHBfAd4YnZSWHOl8JZJ6jaO4RYTXUC6WeDnKf8Oia0p
         /j1lOkOt7OHATO4gI47QuhmjAJA7nPhu4iAX92n7yvw3IcNjhT7m+qAIAm4xktozVqEp
         oeEsx+PjDC7TCbM1d6ZNijPLPPYVH8b6KrAFcY8c2LVdh4ZQ+gmtoqrYzSIkm4UwhbkB
         vvfTwodruip984tXZWDzlUB+TaEQB65bIx/FQtPlU7Xjh5Eq/CdOMhI8N9ZRV9wHbKTU
         ArcA==
X-Gm-Message-State: AOJu0YwrmhKf9lr1hhwVqcjt6DX7aKuyIF1eMdpPxyKrH4sgS8ZAJIrq
	z57n3NoOvO7GLL1SvjO1JiFcbd/aemVgzfOQOLA=
X-Google-Smtp-Source: AGHT+IG0f9xHALvtS6EBln4N4n/tVDxWBttShfImYHfpn1EVgE5kJ1ouTyjbYXaat4kEQ2c1wPmGrbcpqu5tntWNSoo=
X-Received: by 2002:a17:90a:88f:b0:28a:e25d:a9da with SMTP id
 v15-20020a17090a088f00b0028ae25da9damr4346615pjc.3.1702553117063; Thu, 14 Dec
 2023 03:25:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <20231214112442.2412079-4-xu.yang_2@nxp.com>
In-Reply-To: <20231214112442.2412079-4-xu.yang_2@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 14 Dec 2023 08:25:05 -0300
Message-ID: <CAOMZO5AXB8h6+fqPO3aCsa1=-etRzPMZSLn7Kca6egUmUX822Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb and typec nodes
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	linux-imx@nxp.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 8:19=E2=80=AFAM Xu Yang <xu.yang_2@nxp.com> wrote:
>
> There are 2 Type-C ports and 2 USB controllers on i.MX93. Enable them.
>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 108 ++++++++++++++++++
>  1 file changed, 108 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm=
64/boot/dts/freescale/imx93-11x11-evk.dts
> index 2b9d47716f75..42b1ea7d5220 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -5,6 +5,7 @@
>
>  /dts-v1/;
>
> +#include <dt-bindings/usb/pd.h>
>  #include "imx93.dtsi"
>
>  / {
> @@ -103,6 +104,70 @@ &mu2 {
>         status =3D "okay";
>  };
>
> +&lpi2c3 {
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       clock-frequency =3D <400000>;
> +       pinctrl-names =3D "default", "sleep";
> +       pinctrl-0 =3D <&pinctrl_lpi2c3>;
> +       pinctrl-1 =3D <&pinctrl_lpi2c3>;
> +       status =3D "okay";
> +
> +       ptn5110: tcpc@50 {
> +               compatible =3D "nxp,ptn5110";
> +               reg =3D <0x50>;
> +               interrupt-parent =3D <&gpio3>;
> +               interrupts =3D <27 IRQ_TYPE_LEVEL_LOW>;
> +               status =3D "okay";
> +
> +               port {
> +                       typec1_dr_sw: endpoint {
> +                               remote-endpoint =3D <&usb1_drd_sw>;
> +                       };
> +               };
> +
> +               typec1_con: connector {
> +                       compatible =3D "usb-c-connector";
> +                       label =3D "USB-C";
> +                       power-role =3D "dual";
> +                       data-role =3D "dual";
> +                       try-power-role =3D "sink";
> +                       source-pdos =3D <PDO_FIXED(5000, 3000, PDO_FIXED_=
USB_COMM)>;
> +                       sink-pdos =3D <PDO_FIXED(5000, 3000, PDO_FIXED_US=
B_COMM)
> +                                    PDO_VAR(5000, 20000, 3000)>;
> +                       op-sink-microwatt =3D <15000000>;
> +                       self-powered;

Your patch introduce dt-schema warnings.

Port should be placed under connector as per nxp,ptn5110.yaml.

Please check:
https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/commit/?=
h=3Dfor-next&id=3Dde0bae0b75f288381746bb9f6d6fd1b30f397975

