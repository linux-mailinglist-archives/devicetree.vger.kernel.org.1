Return-Path: <devicetree+bounces-273204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFC9M4OEr2lvaAIAu9opvQ
	(envelope-from <devicetree+bounces-273204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:40:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA28244446
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:40:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF8AD3013FF7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B553A256B;
	Tue, 10 Mar 2026 02:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="UHP/p6ev"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5EE285419
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773110398; cv=pass; b=R2z8fIcdox0lmFyl4cY0a+UHPcrvIquYD/oWZQkeFZOhuS1surH2+i77PucFzXheFerztnZPcRfRUa0yK+NqD8oiEAp/Q14ALFHc14cwR5rVGokScTQ+nXHLVVoDkmVOVujn3qre9Wv++ZcmGsTdIVK6XoDdzEQ5LCnF01eRdws=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773110398; c=relaxed/simple;
	bh=6Yepj28HI3Z5qfPzDzc8wrCRL+zQ6r71Hdev/vZc7Nw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kz2XwfAPy2StlEsZjvHqCbjkq53Pya/aHRccBLQylUv77/ybIuYn96moEfbK44WcKgJrNCo/jvayrK0URLcbuzJYmm9kZl5r1X6UvOo3O/9af9KG5g8NO/idemk77jyUaa36L1sDvPBXiXoUIB8WbQ3i0g5a4NkOR5BHgCqkjjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=gilmore.net.au; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=UHP/p6ev; arc=pass smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gilmore.net.au
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-50917e02472so20050781cf.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:39:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773110395; cv=none;
        d=google.com; s=arc-20240605;
        b=EoXKoxGnjKr9hp8pIxFlQYB5DoRhqbdEnAuR7fEE3rcd0yPqArA1uqjRmhx9uwKXxg
         rtNFNsp5mNpnU2MWTADWXfnSlo+m7q0pzVw8RlGgJt+aZPaSCeb/SFPe0PgOomg6yw7M
         CNguqLGlBG+uH+U2lHS0FBS7ZTpyEjuEL4f6KikXDlVOKnmZihbjE+QF4+64FTluoLO8
         3yjWrDpEiJeUdW38B2E56gsmUPIbMub1BsjTDgeVVwfc4gK/buNe0TBVHh4ChjskX/5J
         1nwaGtaI1faa3NbHL3WFOpu6fHqOayKPqQ2sNGj0y/amP4HBUplamhiNEPcdkGhsdIzv
         f6Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=44y8wtn+EpnOpSpvTMpt4sK2sGiI+rNWg9pt6T/Db48=;
        fh=Dl4XMyi0RQyuALF9aXbqTkV40VG1BdPXiw7gz5EoY70=;
        b=W4kjqBsDUyjcQZ+l/dnMUft6wu2MeQ9T6ESzLE4elat7ExNo9xECVtOcwZ3iSws80D
         2n21YX5uMAxzsH/tW0CfQ1jyizBXeEpfzxeqHxw9mRM5t2OJQHCQGCkNVIjOkgcHboK5
         ZD8oZsGAUyrLq2kandXlfGlQ2D2wapTGOPkyp7JbxhhsFpwW1NNP9hWA3xmhKqg2mH25
         fJ3bNYqyyZVN9Ov7kAGj6IZ/8htuZQwTI+tQFeD6TTIEgq98dwiaO5GPfqWiteneQrBS
         0idL83csLAldrcFHKqIPyHhZ8aq7G2gPKJP6dik9SpsODi1hHPFhcHwOYvR03J7L6os0
         W4dA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773110395; x=1773715195; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44y8wtn+EpnOpSpvTMpt4sK2sGiI+rNWg9pt6T/Db48=;
        b=UHP/p6evFBa0gZfuXPL1We+RZy0eqLs7nXhJyMAAkvcIUztvrhcRgZBHKLgpDW37rk
         kFwVb1U1KlS+aNNUfvs+A/y82Tu8EyTOckIbXkywHwwj0x6ZGEuxICtGoCP2kNuIVe4r
         Qt6PJChU4+jzZcG8mubOEjlz2hUjCVzgOl3P+wczv3PQa25OO+apDEeWiDHxPz8jrHGD
         xtYGiEMazNr0BN+DfAY/7FXTvIGdQ7qcky+Hc+wm9xrtEBFKERa5bciGincwY/b4qvmX
         ijvZH21wD3yguNxdHUidEKevhwIJCdAQtkOli5oxYdTDYogCtjOMlRJx9CFs9Fi8pNm8
         2Z+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773110395; x=1773715195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=44y8wtn+EpnOpSpvTMpt4sK2sGiI+rNWg9pt6T/Db48=;
        b=wTHE3u+i/AuQwdvRS/MqT6aiwe516wfcHjRDsoju8oVYBTT/DaOQKmaiv2VR++8Emc
         wsXM3r8X0FKttw+gAJQwTWujjmRG8Y2qH4xZjw5eVzRFBPCw5BgLvRKfM3iy7vwFyTnu
         qruJhvnO5oe8meyUghhKilUQAxp/GGR8qqGpIBQSuKeVBzn/r67+YpHI8qHirMetXupN
         LnKDs/LQsE/N/v+dVuYNqEDJbdjF4JYwAyXsYjFhJGPPxrRwEJxI0r+bAYsAJdv0eswu
         cuweQhkFoNokk62RgtLeMkEMaC+t/BnpzxaBMZh+uhzcNL99ZLqIhMCXfjSDa/GiLKsN
         rexA==
X-Forwarded-Encrypted: i=1; AJvYcCWfBVyR/Ko090F1cLbHuUS8i6zVrYvZIADxJlsR2eWKFU7nPz+xq8JyGL16uZOYJKEZPs50xopK9Hb/@vger.kernel.org
X-Gm-Message-State: AOJu0YyhjKPiQ1pGuljHHHKpEZu6U2h/406Kc31n9y9KjEva/YD3z7bV
	H/60sKuGMN2dSyXJkpzwyJePyOV9Xiif9JY2E/e6DU1LjNg0KNVLpX7ZltUjjJj0ljTKBkM71Kz
	Wa+Ho2DUANJYZcQ6B9uaiOxmex22IeSS6C25ttifSCw==
X-Gm-Gg: ATEYQzxItw/gJPBHa/Us6nr8HjkdwnI5K2OZfu6BQnuZkCoFW6GyzIA1gBB1F5crrTa
	ZOvdi6opeas+TvqLvwLEbwJ0rRDqSLKsE2FiFFcMh6/mClrS74WQ29815B9lWSfPi2aS8JYx6F7
	bK5N7++jbXq7cRdG/WvIDQI8uQAQT2tvOLbtD+BX+gSXPjawKWDBPQ086w8TQz/kEWVL5mRp/Td
	fuhoGJjO/YViP830heE2QgdDat7gaf65MdPL/1GEFoUFYYl+TgePYNO9P86gXkBTNHWhewBO2Wl
	QGUjiJvEKCLvZE/s9OCHeDdtvYWfODDIwXnhKTKrcp6uRuRNFWUkP5+RcclDCU1iKNFeAEg=
X-Received: by 2002:a05:622a:46c7:b0:509:dcf:74e8 with SMTP id
 d75a77b69052e-5090dcf7858mr86575301cf.49.1773110394877; Mon, 09 Mar 2026
 19:39:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306024634.239614-1-dennis@ausil.us> <20260306024634.239614-4-dennis@ausil.us>
 <CALWfF7JNy6_eD2f0okzMPaLqJVHV9rZUokh9nFNT5CDsYO0Qxg@mail.gmail.com>
In-Reply-To: <CALWfF7JNy6_eD2f0okzMPaLqJVHV9rZUokh9nFNT5CDsYO0Qxg@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Mon, 9 Mar 2026 21:39:43 -0500
X-Gm-Features: AaiRm52umy9c6SzujmKxzTwTJbhy9WwM315J2-lyDSlORlUQDDjebc6a-Yx4rpQ
Message-ID: <CAABkxwuxpBRRNcAqTSjV1_zfzd_CQDdX0cBWuhqbCkqrqGhBiw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Mykola Kvach <xakep.amatop@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: CCA28244446
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	TAGGED_FROM(0.00)[bounces-273204-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,collabora.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 9:29=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> wr=
ote:
>
> On Thu, Mar 5, 2026 at 8:46=E2=80=AFPM <dennis@ausil.us> wrote:
> >
> > From: Dennis Gilmore <dennis@ausil.us>
> >
> > Add device tree for the Xunlong Orange Pi 5 Pro (RK3588S).
> >
> > - eMMC module, you can optionally solder a SPI NOR in place and turn
> >  off the eMMC
> > - PCIe-attached NIC (pcie2x1l1)
> > - PCIe NVMe slot (pcie2x1l2)
> > - AP6256 WiFi (BCM43456) via SDIO with mmc-pwrseq
> > - BCM4345C5 Bluetooth
> > - es8388 audio
> > - USB 2.0 and USB 3.0
> >
> > Vendors description and links to schematics available:
> > http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/detai=
ls/Orange-Pi-5-Pro.html
> >
> > Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 311 ++++++++++++++++++
> >  2 files changed, 312 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro=
.dts
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 4d384f153c13..c99dca2ae9e7 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -214,6 +214,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-nanopi-r6c=
.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-odroid-m2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5b.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5-pro.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-cm5-base.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-radxa-cm5-io.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-roc-pc.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/=
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> > new file mode 100644
> > index 000000000000..d848891e09be
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> > @@ -0,0 +1,311 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3588s-orangepi-5.dtsi"
> > +
> > +/ {
> > +       model =3D "Xunlong Orange Pi 5 Pro";
> > +       compatible =3D "xunlong,orangepi-5-pro", "rockchip,rk3588s";
> > +
> > +       aliases {
> > +               mmc0 =3D &sdhci;
> > +               mmc1 =3D &sdmmc;
> > +               mmc2 =3D &sdio;
> > +       };
> > +
> > +       analog-sound {
> > +               compatible =3D "simple-audio-card";
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&hp_detect>;
> > +               simple-audio-card,bitclock-master =3D <&masterdai>;
> > +               simple-audio-card,format =3D "i2s";
> > +               simple-audio-card,frame-master =3D <&masterdai>;
> > +               simple-audio-card,hp-det-gpios =3D <&gpio1 RK_PD5 GPIO_=
ACTIVE_HIGH>;
> > +               simple-audio-card,mclk-fs =3D <256>;
> > +               simple-audio-card,name =3D "rockchip,es8388";
> > +               simple-audio-card,routing =3D
> > +                       "Headphones", "LOUT1",
> > +                       "Headphones", "ROUT1",
> > +                       "LINPUT1", "Microphone Jack",
> > +                       "RINPUT1", "Microphone Jack",
> > +                       "LINPUT2", "Onboard Microphone",
> > +                       "RINPUT2", "Onboard Microphone";
> > +               simple-audio-card,widgets =3D
> > +                       "Microphone", "Microphone Jack",
> > +                       "Microphone", "Onboard Microphone",
> > +                       "Headphone", "Headphones";
> > +
> > +               simple-audio-card,cpu {
> > +                       sound-dai =3D <&i2s2_2ch>;
> > +               };
> > +
> > +               masterdai: simple-audio-card,codec {
> > +                       sound-dai =3D <&es8388>;
> > +                       system-clock-frequency =3D <12288000>;
> > +               };
> > +       };
> > +
> > +       pwm-leds {
> > +               compatible =3D "pwm-leds";
> > +
> > +               led-0 {
> > +                       color =3D <LED_COLOR_ID_BLUE>;
> > +                       function =3D LED_FUNCTION_STATUS;
> > +                       linux,default-trigger =3D "heartbeat";
> > +                       max-brightness =3D <255>;
> > +                       pwms =3D <&pwm15 0 1000000 0>;
> > +               };
> > +
> > +               led-1 {
> > +                       color =3D <LED_COLOR_ID_GREEN>;
> > +                       function =3D LED_FUNCTION_ACTIVITY;
> > +                       linux,default-trigger =3D "heartbeat";
> > +                       max-brightness =3D <255>;
> > +                       pwms =3D <&pwm3 0 1000000 0>;
> > +               };
> > +       };
> > +
> > +       fan: pwm-fan {
> > +               compatible =3D "pwm-fan";
> > +               #cooling-cells =3D <2>;
> > +               cooling-levels =3D <0 50 100 150 200 255>;
> > +               fan-supply =3D <&vcc5v0_sys>;
> > +               pwms =3D <&pwm2 0 20000000 0>;
> > +       };
> > +
> > +       vcc3v3_pcie_m2: regulator-vcc3v3-pcie-m2 {
> > +               compatible =3D "regulator-fixed";
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               regulator-max-microvolt =3D <3300000>;
> > +               regulator-min-microvolt =3D <3300000>;
> > +               regulator-name =3D "vcc3v3_pcie_m2";
> > +               vin-supply =3D <&vcc5v0_sys>;
> > +       };
> > +
> > +       vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
> > +               compatible =3D "regulator-fixed";
> > +               enable-active-high;
> > +               gpios =3D <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
> > +               regulator-boot-on;
> > +               regulator-max-microvolt =3D <3300000>;
> > +               regulator-min-microvolt =3D <3300000>;
> > +               regulator-name =3D "vcc3v3_pcie20";
> Is this vcc3v3_phy1 in the schematic?
>
> > +               startup-delay-us =3D <50000>;
> > +               vin-supply =3D <&vcc5v0_sys>;
> according to the schematic, this is fed by vcc_3v3_s3

Thanks for the review, Jimmy.

You're right on the vin-supply point =E2=80=94 this should be vcc_3v3_s3, n=
ot
vcc5v0_sys. I'll fix it

Regarding "Is this vcc3v3_phy1?", that is the source. vcc3v3_pcie20
came from copying from rk3588s-orangepi-5.dts I will rename it to
match the label in the schematic

> > +       };
> > +
> > +       vcc5v0_otg: regulator-vcc5v0-otg {
> > +               compatible =3D "regulator-fixed";
> > +               enable-active-high;
> > +               gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&vcc5v0_otg_en>;
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               regulator-max-microvolt =3D <5000000>;
> > +               regulator-min-microvolt =3D <5000000>;
> > +               regulator-name =3D "vcc5v0_otg";
> > +               vin-supply =3D <&vcc5v0_sys>;
> > +       };
> > +
> > +       sdio_pwrseq: sdio-pwrseq {
> > +               compatible =3D "mmc-pwrseq-simple";
> > +               clocks =3D <&hym8563>;
> > +               clock-names =3D "ext_clock";
> > +               post-power-on-delay-ms =3D <200>;
> > +               reset-gpios =3D <&gpio0 RK_PD0 GPIO_ACTIVE_LOW>;
> > +       };
> > +};
> > +
> > +&i2c1 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&i2c1m4_xfer>;
> > +       status =3D "okay";
> > +};
> > +
> > +&i2c3 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&i2c3m0_xfer>;
> > +       status =3D "okay";
> > +
> > +       es8388: audio-codec@11 {
> > +               compatible =3D "everest,es8388", "everest,es8328";
> > +               reg =3D <0x11>;
> > +               #sound-dai-cells =3D <0>;
> > +               AVDD-supply =3D <&vcc_3v3_s0>;
> > +               DVDD-supply =3D <&vcc_1v8_s0>;
> > +               HPVDD-supply =3D <&vcc_3v3_s0>;
> > +               PVDD-supply =3D <&vcc_3v3_s0>;
> > +               assigned-clock-rates =3D <12288000>;
> > +               assigned-clocks =3D <&cru I2S2_2CH_MCLKOUT>;
> > +               clocks =3D <&cru I2S2_2CH_MCLKOUT>;
> > +       };
> > +};
> > +
> > +&i2c4 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&i2c4m3_xfer>;
> > +       status =3D "okay";
> > +};
> > +
> > +&i2s2_2ch {
> > +       pinctrl-0 =3D <&i2s2m1_lrck &i2s2m1_mclk &i2s2m1_sclk
> > +                    &i2s2m1_sdi &i2s2m1_sdo>;
> > +       status =3D "okay";
> > +};
> > +
> > +&package_thermal {
> > +       polling-delay =3D <1000>;
> > +
> > +       cooling-maps {
> > +               map0 {
> > +                       trip =3D <&package_fan0>;
> > +                       cooling-device =3D <&fan THERMAL_NO_LIMIT 1>;
> > +               };
> > +
> > +               map1 {
> > +                       trip =3D <&package_fan1>;
> > +                       cooling-device =3D <&fan 2 THERMAL_NO_LIMIT>;
> > +               };
> > +       };
> > +
> > +       trips {
> > +               package_fan0: package-fan0 {
> > +                       hysteresis =3D <2000>;
> > +                       temperature =3D <55000>;
> > +                       type =3D "active";
> > +               };
> > +
> > +               package_fan1: package-fan1 {
> > +                       hysteresis =3D <2000>;
> > +                       temperature =3D <65000>;
> > +                       type =3D "active";
> > +               };
> > +       };
> > +};
> > +
> > +/* NVMe */
> > +&pcie2x1l1 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&pcie30x1m1_1_clkreqn &pcie30x1m1_1_waken>;
> > +       reset-gpios =3D <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
> > +       supports-clkreq;
> > +       vpcie3v3-supply =3D <&vcc3v3_pcie_m2>;
> Is this real? In the schematic, the supply looks like vcc_3v3_s3.

It is not real, since there's no discrete regulator (VCC_3V3_S3 feeds
the M.2 slot directly), I'll drop that node and have pcie2x1l1
reference vcc_3v3_s3 directly.

Dennis

> > +       status =3D "okay";
> > +};
> > +
> > +/* NIC */
> > +&pcie2x1l2 {
> > +       reset-gpios =3D <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> > +       vpcie3v3-supply =3D <&vcc3v3_pcie20>;
> > +       status =3D "okay";
> > +};
> > +
> > +&pinctrl {
> > +       bluetooth {
> > +               bt_wake_gpio: bt-wake-pin {
> > +                       rockchip,pins =3D <0 RK_PC6 RK_FUNC_GPIO &pcfg_=
pull_none>;
> > +               };
> > +
> > +               bt_wake_host_irq: bt-wake-host-irq {
> > +                       rockchip,pins =3D <0 RK_PC5 RK_FUNC_GPIO &pcfg_=
pull_down>;
> > +               };
> > +       };
> > +
> > +       usb {
> > +               vcc5v0_otg_en: vcc5v0-otg-en {
> > +                       rockchip,pins =3D <0 RK_PC4 RK_FUNC_GPIO &pcfg_=
pull_none>;
> > +               };
> > +       };
> > +
> > +       wlan {
> > +               wifi_host_wake_irq: wifi-host-wake-irq {
> > +                       rockchip,pins =3D <0 RK_PA0 RK_FUNC_GPIO &pcfg_=
pull_down>;
> > +               };
> > +       };
> > +};
> > +
> > +&pwm15 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&pwm15m2_pins>;
> > +       status =3D "okay";
> > +};
> > +
> > +&pwm2 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&pwm2m1_pins>;
> > +       status =3D "okay";
> > +};
> > +
> > +&pwm3 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&pwm3m2_pins>;
> > +       status =3D "okay";
> > +};
> > +
> > +&sdhci {
> > +       status =3D "okay";
> > +};
> > +
> > +&sdio {
> > +       #address-cells =3D <1>;
> > +       #size-cells =3D <0>;
> > +       bus-width =3D <4>;
> > +       cap-sd-highspeed;
> > +       cap-sdio-irq;
> > +       keep-power-in-suspend;
> > +       max-frequency =3D <150000000>;
> > +       mmc-pwrseq =3D <&sdio_pwrseq>;
> > +       no-mmc;
> > +       no-sd;
> > +       non-removable;
> > +       sd-uhs-sdr104;
> > +       status =3D "okay";
> > +
> > +       ap6256: wifi@1 {
> > +               compatible =3D "brcm,bcm43456-fmac", "brcm,bcm4329-fmac=
";
> > +               reg =3D <1>;
> > +               interrupt-names =3D "host-wake";
> > +               interrupt-parent =3D <&gpio0>;
> > +               interrupts =3D <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&wifi_host_wake_irq>;
> > +       };
> > +};
> > +
> > +&u2phy0_otg {
> > +       phy-supply =3D <&vcc5v0_otg>;
> > +};
> > +
> > +&uart9 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&uart9m2_xfer &uart9m2_ctsn &uart9m2_rtsn>;
> > +       uart-has-rtscts;
> > +       status =3D "okay";
> > +
> > +       bluetooth {
> > +               compatible =3D "brcm,bcm4345c5";
> > +               clocks =3D <&hym8563>;
> > +               clock-names =3D "lpo";
> > +               device-wakeup-gpios =3D <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH=
>;
> > +               interrupt-names =3D "host-wakeup";
> > +               interrupt-parent =3D <&gpio0>;
> > +               interrupts =3D <RK_PC5 IRQ_TYPE_LEVEL_HIGH>;
> > +               max-speed =3D <1500000>;
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&bt_wake_host_irq &bt_wake_gpio>;
> > +               shutdown-gpios =3D <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> > +               vbat-supply =3D <&vcc_3v3_s3>;
> > +               vddio-supply =3D <&vcc_1v8_s3>;
> > +       };
> > +};
> > +
> > +&usb_host0_xhci {
> > +       dr_mode =3D "host";
> > +};
> > +
> > +&usbdp_phy0 {
> > +       rockchip,dp-lane-mux =3D <0 1>;
> > +};
> > --
> > 2.53.0
> >

