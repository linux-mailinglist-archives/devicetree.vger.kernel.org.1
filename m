Return-Path: <devicetree+bounces-155582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6D4A5784F
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 05:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BCD13B4C2E
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 04:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04BC15E5DC;
	Sat,  8 Mar 2025 04:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nIDufbhI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55DCDDAD
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 04:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741408503; cv=none; b=k9gyxqohggbFH9LC+zpT5mrV7ZUzbmsDiEVZ+qThX4vJO/JtL87+/RCp0SUC7E2NvJNE+1wpkbjKvJm4o8KlHlpX6J7bvpPtl8EhQB7z7e0cRtYuWqPV8qLMhQ9FLl9tuA7Iw+6S9ETDNkCmsr6+r15lrqx+fDcn/OIn9z1HpnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741408503; c=relaxed/simple;
	bh=JcJycqjhfNq4zOJ/kVIeFgYhDj+zw0yIFg/sf+bSQ1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=h31rW3yc8tyu6lPZ7a/+ffPkD+XkPmPOiQ+KBa/DvNYn6M4eAGDXWS8kUnjwVKJNrCnDSviCdq+iEBbwadpGl53S3l1hqjOBDdxhDsgfJxPIqC0xY3/aF56d7ZwQbms4M2gw6AMywks7qG9pOkFAR4l+pQ7BBOmoc1ep6wmOjlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nIDufbhI; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso103765e9.3
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 20:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741408500; x=1742013300; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S92lWIfKVIn+dIfxP3BSAW+MFQMr9+wTt9Aqjone+IQ=;
        b=nIDufbhIu5FQ0IRL5x1WlOA10ctXVwjfpicRp9hTtVSU0n54QWPEPWL21lhkIRVzCa
         WOiBTFE/hsV3WXeu5/9VFaPbTYBNzTQjVO1iorpbWbr3SRXyM7gbr1c2GrvZlkNEzNzV
         WyF5kMddbnNUzZmmD0rnkDulpH5MGyiBZOt1Hq1FCyW1FCWN7YUjZQx47+BKA3yDmjHB
         SOB4OM9VFY/IVlGRvp5AdXpkbzCfVAcbZ36nTq1ApFCxTX+4aipxVt57fgEUTzEyfSU5
         Hw+TT65ToEEfRj3ExHblrmxLc+9B8Lbm1pXwItKYd0xs/6LPYPDUGinRimW89AkbtqkQ
         QERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741408500; x=1742013300;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S92lWIfKVIn+dIfxP3BSAW+MFQMr9+wTt9Aqjone+IQ=;
        b=hZpZoTJC0MDVy2jkd9IcWG8In76ZeKflMfug1Ch9lzdwxulxLkUs+PPbF4H0WSiDAh
         rU6Gf5GotX3vkMEp92L+lrt3fB4FFxh4ozABbh8BH3tZHuftEQC6+y4DAKbQvK+8JdW6
         AkIxJ2VSsJpPKAo5BWXLJE269+vLGlJU3ZXq2nc3URiTH4kVas82Asv+Q6V2mcwt4qOA
         1bxq0bZBkUhcoB1AklT5gkyk5HITk2ZGrrrzcbYNTgebnUrAO+aspQjcyJ8EJwFjgO5V
         oRCKMStrKivlUPQz0hxaAhwoPpwK9BhEkiUQo1UEuxeyCmiJ7lRgWRA83XAMXs2tZwbD
         fD0w==
X-Forwarded-Encrypted: i=1; AJvYcCVzMffO2MRFjdYnPE5vMcg6OlZsFUOxjU8Ri//HQSpApPFbsLv+wodOyK0S6bBLD9wvGkaNnRxlRcjK@vger.kernel.org
X-Gm-Message-State: AOJu0YyCiiMkpBFwbuHzASFiSYWOeVEkx0x8koNMFjW03Sb06gyejB5I
	C81rBLjRX85xtYP+dFOxfSHV/bUq/jKBu51BY+Fvz5jZhr9ApG1A02BAtSFiJ8NWfa7nt7mThPq
	o3y9KORsnIPsZ6EFMA7NnzlX5jgY=
X-Gm-Gg: ASbGnctPG/oCU+yKWhjd18wKTzy36oV+TXY6TnZ3hhkf+RHt2by8Dx+qiL6LVUK/JlW
	6nLzZePx/kpYuF/N47qJnxChSYg5u6ZJZR6KH3bzb7V4KqJClENRvAYxEL497QXEymlgdYTxzwY
	DXfk/iOPH2E5zyhC8QieL6q9atCzHJoSb3h1/wXG5x0BETQx+09OLKgBCQhw==
X-Google-Smtp-Source: AGHT+IHAfzw5XZrxzz41zgMCfkMjKfpkf7QBQ6PlsSgwZXw3Uw/YaCNH673ZsxlButmZYr+AA4ocdp1HOEtWSPIb7r8=
X-Received: by 2002:a05:600c:3502:b0:43b:cd15:2eb0 with SMTP id
 5b1f17b1804b1-43ce17f6952mr18183765e9.25.1741408499618; Fri, 07 Mar 2025
 20:34:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227235623.1624-1-honyuenkwun@gmail.com> <20250227235623.1624-4-honyuenkwun@gmail.com>
 <5qi24bxuamu3agtldyxhrnlefao6zy2mw2qmx62ycsdg3v6sbz@2jeawstukcyd>
In-Reply-To: <5qi24bxuamu3agtldyxhrnlefao6zy2mw2qmx62ycsdg3v6sbz@2jeawstukcyd>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 7 Mar 2025 22:34:48 -0600
X-Gm-Features: AQ5f1JoI5m6n5697WKDKj8u5pVOu_T48foDQrrZDPAuJnh6Ijn2qNDM1LR15lvU
Message-ID: <CALWfF7LcUUFUnESrGTE10VS7S1+G=sXWkD7iZjbufpgGWQnFbg@mail.gmail.com>
Subject: Re: [PATCH UNTESTED 3/4] arm64: dts: rockchip: Enable HDMI1 on Orange
 Pi 5 Plus
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Cenk Uluisik <cenk.uluisik@googlemail.com>, Chen-Yu Tsai <wens@csie.org>, 
	Florian Klink <flokli@flokli.de>, Muhammed Efe Cetin <efectn@protonmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 28, 2025 at 5:15=E2=80=AFAM Ond=C5=99ej Jirman <megi@xff.cz> wr=
ote:
>
> Hello Jimmy,
>
> On Thu, Feb 27, 2025 at 05:56:22PM -0600, Jimmy Hon wrote:
> > Enable the second HDMI output port on the Orange Pi 5 Plus
>
> RK3588 hardware design guide states that:
>
>   - When working in HDMI2.1 mode, HDMI0_TX_ON_H is configured as low leve=
l,
>     Q1700, Q1701, Q1702, and Q1703 are not turned on.
>
>   - When working in HDMI2.0 and below modes, HDMI0_TX_ON_H is configured =
as high
>     level, Q5007, Q5004, Q5005, and Q5006 are turned on, and the 499ohm r=
esistor
>     to ground and the 50ohm pull-up resistor at the Sink end form a DC bi=
as of
>     about 3V.
>
>   If you only need to support HDMI2.0 and below modes, Q5007, Q5004, Q500=
5, and
>   Q5006 cannot be omitted. It is necessary to ensure that the tube is not=
 turned
>   on when the machine is not turned on, because the HDMI CTS Test ID 7-3 =
TMDS
>   Voff test item requires that the Voff voltage must be within AVcc+-10mV=
 when
>   the DUT is not powered on, otherwise this test item cannot pass. 2: The=
 Coss
>   of the control MOS tube cannot be too large, otherwise it will affect t=
he
>   signal quality. It is recommended to follow the reference figure model =
or the
>   corresponding Coss value.
>
> And Orange Pi 5 schematic (which has almost the same circuit as Plus vari=
ant)
> states this explicitely too:
>
>   https://megous.com/dl/tmp/5dc98e91dfee3b5a.png
>
> The same applies to HDMI1.
>
> Maybe it would be better to pull up HDMI1_TX_ON_H more explicitely for no=
w via:
>
> &hdmi1 {
> + pinctrl-0 =3D <&hdmim2_tx1_cec &hdmim0_tx1_hpd
> +              &hdmim1_tx1_scl &hdmim1_tx1_sda
> +              &hdmi1_tx_on_h>;
> };
>
> &pinctrl {
> ...
> + hdmi {
> +         hdmi1_tx_on_h: hdmi1-tx-on-h {
> +                 rockchip,pins =3D <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>=
;
> +         };
> + };
> ...
> };
>
> AFAIK FRL is not supported, yet, so this may be a better default for HDMI=
1_TX_ON_H.
I am going to defer adding a temporary workaround and keep hdmi1
behavior the same as hdmi0. [1] I don't want to introduce something
that will hinder the upcoming FRL development when it tries to support
an old DTB. I'm hoping Cristian could start adding the HDMI0_TX_ON_H
to the dt-bindings, even before the full FRL support is added, so at
least all the DTS could have "enable-gpios" property defined [2], and
then the DTSs be ready to go when FRL support is ready. That way the
HDMI0_TX_ON_H will be pulled correctly depending what mode is being
used.

[1] https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts?h=3Dv6.14-rc1#=
n113
[2] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr4.1/arch/arm64/b=
oot/dts/rockchip/rk3588-rock-5b.dts#L564

>
> In any case,
>
> Reviewed-by: Ondrej Jirman <megi@xff.cz>
>
>
> And I've also tested and used identical patch for a few weeks already on =
my
> Orange Pi 5+. :)
>
> Kind regards,
>         o.
>
> > Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> > ---
> >  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 38 +++++++++++++++++++
> >  1 file changed, 38 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/=
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> > index 0f874b87b47e..53797f633d3a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> > @@ -26,6 +26,17 @@ hdmi0_con_in: endpoint {
> >               };
> >       };
> >
> > +     hdmi1-con {
> > +             compatible =3D "hdmi-connector";
> > +             type =3D "a";
> > +
> > +             port {
> > +                     hdmi1_con_in: endpoint {
> > +                             remote-endpoint =3D <&hdmi1_out_con>;
> > +                     };
> > +             };
> > +     };
> > +
> >       ir-receiver {
> >               compatible =3D "gpio-ir-receiver";
> >               gpios =3D <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
> > @@ -125,10 +136,30 @@ hdmi0_out_con: endpoint {
> >       };
> >  };
> >
> > +&hdmi1 {
> > +     status =3D "okay";
> > +};
> > +
> > +&hdmi1_in {
> > +     hdmi1_in_vp1: endpoint {
> > +             remote-endpoint =3D <&vp1_out_hdmi1>;
> > +     };
> > +};
> > +
> > +&hdmi1_out {
> > +     hdmi1_out_con: endpoint {
> > +             remote-endpoint =3D <&hdmi1_con_in>;
> > +     };
> > +};
> > +
> >  &hdptxphy0 {
> >       status =3D "okay";
> >  };
> >
> > +&hdptxphy1 {
> > +     status =3D "okay";
> > +};
> > +
> >  &hym8563 {
> >       interrupt-parent =3D <&gpio0>;
> >       interrupts =3D <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> > @@ -342,3 +373,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> >               remote-endpoint =3D <&hdmi0_in_vp0>;
> >       };
> >  };
> > +
> > +&vp1 {
> > +     vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
> > +             reg =3D <ROCKCHIP_VOP2_EP_HDMI1>;
> > +             remote-endpoint =3D <&hdmi1_in_vp1>;
> > +     };
> > +};
> > --
> > 2.48.1
> >

