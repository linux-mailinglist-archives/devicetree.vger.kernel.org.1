Return-Path: <devicetree+bounces-188909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8261EAE603A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CA3F4C1903
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA59F27A906;
	Tue, 24 Jun 2025 09:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vRx2hDm4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8041251792
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750756051; cv=none; b=KbmoGswdhYndejueu9/szEqyTVyYpev0cum4gk44emJMuuJbjn9St6ipA4odJF+As2Z7bbTB1ALR8tGd4hIVWACSAdZpXL525OpkZoqRGNi2WKWluiBWQCicczxv+Fo1NFJkfniqAPWfFuLX74Ol4bSwERlDcMI7T2gc3YDc0Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750756051; c=relaxed/simple;
	bh=/+oFva9BAMPIUaaePpc0bX11cPgvD5Vr0m/U5RUCT7k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CDQ00m1vFCNeWTaHHOgoDXqjoxII0zku/ISM6Zr/yuxA7/kp1Hxz/SiVG52XeeAxbR6QmNnqezc5nuZa9ojdsxOBY3V5YiA4Cos4u088GdXtL8p77sZPFjFiRUOmsamBYHCT6y5p7gnN7uJCKJbSeVZn28dTOKe04gN3TmDTJbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vRx2hDm4; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-32b31afa781so40517991fa.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750756048; x=1751360848; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEkjORmLKCGHcTPv1I+arAaNEGLpp2uwOI99NBj0S1k=;
        b=vRx2hDm42aRkhp3WfnExlng6M15Pb/z0CSMkvXnNYiE/Of0ZSX4S1bDxkiFnwivhXz
         +CHf8CKbe4eN0OKNejaU8RXENzGrt+u+PSaU85WWr2ntDbD7sOiQpNawCkEYLco/Hq3c
         IXmZwoMNpcP7syxmgIGgMBcIlFIVoVxLaCrUI8NUY2R2NUY5TOEmQaWuAJiRmVvHG3N+
         kE6ohM89AeRYvUjddqVI0nIacweaeW21l2I8g/Htvm2aQlkKXfpQPJhFiE3Tkf9AZ9ad
         8uFTyPCUPR41M3LJvPYHOX3wigbSkrteCDkAO+mbzaugIuuispiSUfzWcRUXHHm9ATqs
         f68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750756048; x=1751360848;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QEkjORmLKCGHcTPv1I+arAaNEGLpp2uwOI99NBj0S1k=;
        b=dZITuw2FI697MaNCbi4857LC9cGwZ30ShHq+QOsHZuiMY37x86fVLBTjw9P5bOIM2i
         O0bznVd4QiAksh2XzjS5yvzP6+hEdJCFRMuMtbqYUI9l8kbbyXYUPFSCBglIoOEITv4P
         1VEnDaWQ0dOvCmi6KVagv6wbhgZF77ap2jGNSu/ma1zJwxbM0c5mw8Q+gBV1LChgtDP0
         C4g310X0Im54WU1wGwh/GJPooICGjcfBrQuYcHPJvRBwMnBq+jvW32eiR3CwQFkgsBGt
         3kwj5MMde2Kk6ruAtlRHf6rqSfdigieUz+Zk1du35Ozn76Q8hHy5x/wjjnpFk3gcWeLb
         MtKg==
X-Forwarded-Encrypted: i=1; AJvYcCU6plmry1+JJwsONY3JvVcf9LcnMLZ9f6l3dvPaV2bKCi1+YA29nzxJWcM08WzZ4lVfqFlA4UuoVwMK@vger.kernel.org
X-Gm-Message-State: AOJu0YwY9rkUd7ok9f0OChHEn5QxUYds25NEPvPfU1qEzhe3uZA4xyMx
	qCkniTax4SmdRJM+yXPUhXkghjUtBfemxmx8nKWBly8yV5+5S48+DXwdar0b3wtHBYlQzFoqfIa
	RybyqoXDpXd1eCD0Z9PGPXE1QtGwKDKG3dipXBnToTw==
X-Gm-Gg: ASbGncvhzmqUmINVh9NtXl2A1FFU8hdRG29hYjpser8OSN4IOPOy9tlx1PAfd6IHW2z
	WkV1SXrKkiDYfY8atyS3GO9T5S8Mdj5U/wxbnWYW5WtTaJv0Kn0QQ35fw0aVeP7FJHA+YD7M1QJ
	y5U8HB/wCUfasFUf6IdyaKN2AHG0qhP11hhZQrTWBK5k8=
X-Google-Smtp-Source: AGHT+IH7NkkqE0u1Pl2ganomiNqMqAhRg3C9WLn7TyJZFZs+q4IPIwIOvcAx25Ana4p0OU4o4Gq4cJf2y3C5mcoaVGc=
X-Received: by 2002:a05:651c:2203:b0:32a:8086:cf7 with SMTP id
 38308e7fff4ca-32b98f93a35mr55314771fa.29.1750756048004; Tue, 24 Jun 2025
 02:07:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624-ks8995-dsa-bindings-v1-0-71a8b4f63315@linaro.org>
 <20250624-ks8995-dsa-bindings-v1-2-71a8b4f63315@linaro.org> <08531445-a27d-413f-96de-81087d6f61e1@lunn.ch>
In-Reply-To: <08531445-a27d-413f-96de-81087d6f61e1@lunn.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Jun 2025 11:07:16 +0200
X-Gm-Features: AX0GCFu4xk6sV-XT4-gtoBmw_KE6a5a_5-qZmVHj_0_F3IuNErxg7GOMvfHwbPw
Message-ID: <CACRpkdbr8-0=bZ0mRkZ9DnWrKZbQM3AuNdzbxyWTX1qiEAgJjw@mail.gmail.com>
Subject: Re: [PATCH net-next 2/2] ARM: dts: Fix up wrv54g device tree
To: Andrew Lunn <andrew@lunn.ch>
Cc: Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Imre Kaloz <kaloz@openwrt.org>, Frederic Lambert <frdrc66@gmail.com>, Gabor Juhos <juhosg@openwrt.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 24, 2025 at 10:16=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> wrote=
:
> On Tue, Jun 24, 2025 at 09:41:12AM +0200, Linus Walleij wrote:

> > +                             ethernet-port@0 {
> > +                                     reg =3D <0>;
> > +                                     label =3D "1";
> > +                                     phy-mode =3D "rgmii";
>
> If this is an internal PHY, it would be better to use 'internal'. I
> would like to avoid all the issues around 'rgmii' vs 'rgmii-id'.

OK you're right, I'll rewrite this and the example in the binding
to use "internal", as this is what it is.

The fifth PHY is inside the switch, yet "external" in a way.
They are all managed by external MDIO though, see below.

> > +                             ethernet-port@4 {
> > +                                     reg =3D <4>;
> > +                                     ethernet =3D <&ethb>;
> > +                                     phy-mode =3D "rgmii-id";
> > +                                     fixed-link {
> > +                                             speed =3D <100>;
> > +                                             full-duplex;
> > +                                     };
>
> That is a bit odd, rgmii-id, yet speed limited to 100. It would be
> good to add a comment about this.

Copy/paste error when working with old code :(

It's good old "mii"

> This is all confusing. Do you have the board, or a schematic for it?

I was confused because I managed to find phonto of thePCB
for the board in question:
https://real.phj.hu/wrv54g/

If you look on the bottom of the image, there is a component
to the LAN ports, chip tag reads: "SWAP net NS604009" (made 0421)
but I think it's just one of these isolation transformers so the
PHYs are indeed internal (the KS8995 is the component above
with the heat sink mounted on top).

> >                       mdio {
> >                               #address-cells =3D <1>;
> >                               #size-cells =3D <0>;
> >
> > -                             /* Should be ports 1-4 on the KS8995 swit=
ch */
> > +                             /* Should be LAN ports 1-4 on the KS8995 =
switch */
> > +                             phy1: ethernet-phy@1 {
> > +                                     reg =3D <1>;
> > +                             };
> > +                             phy2: ethernet-phy@2 {
> > +                                     reg =3D <2>;
> > +                             };
> > +                             phy3: ethernet-phy@3 {
> > +                                     reg =3D <3>;
> > +                             };
> >                               phy4: ethernet-phy@4 {
> >                                       reg =3D <4>;
> >                               };
>
> This node is the SoC interface MDIO bus. Why would the internal PHYs
> of switch bus on the SoC MDIO bus? I would expect the switch to have
> its own MDIO bus and place its PHYs there.

This switch is so old that in difference from other DSA switches it does
not have its own internal MDIO bus... I know for sure because I'm working
on another device and I can access all PHY:s over MDIO. It depends
on an external MDIO connection.

Here is a datasheet:
https://docs.rs-online.com/0889/0900766b81385414.pdf

On page 45 it says:
"A standard MIIM interface is provided for all five PHY devices in the
 KS8995MA/FQ. An external device with MDC/MDIO capability is able
 to read PHY status or to configure PHY settings."

I'll update and repost so it makes more sense!

Yours,
Linus Walleij

