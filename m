Return-Path: <devicetree+bounces-106457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D9798A248
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 14:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9A171C225ED
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 12:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F9F18E778;
	Mon, 30 Sep 2024 12:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="Y4Fm/HNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FC618E354
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 12:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727698928; cv=none; b=L7xK78iRrOuMeoVAe0D6wVY3MNFZYJuSFZqFYyiSz8uvV23tqZoozriNgBoG96MF3lhoAea+OgKFJ/B1IP6xBZNIUnvE2XIDmbH3W5IAFBn/eH3j9FBJbHoVGUvrv/V06lvTrsKyCOHUwoTUBrLfPaizEge/J7IuZH+z8vM6ccw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727698928; c=relaxed/simple;
	bh=oVy0k0RRSey0HXyF2tOTq4T5kQb2eUiQ/yuwu9KTSQ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pddlFiLWGZeptagjuSYNNhNr08tB4LtT/FHlxUAEzCA1dcgM0rAuDRyiIQ0ZrRrhdJ1E3bo1oZRHGe/7xI/2ajBv553ZSf+GZDUmHEImjEVVFR/6FyASCI5S35TXWMgqb6LbqJmWlTf5BIo1+10VB75Oo1+LSeo9lZXqasyCA7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=Y4Fm/HNT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a90188ae58eso554829666b.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 05:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1727698925; x=1728303725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVy0k0RRSey0HXyF2tOTq4T5kQb2eUiQ/yuwu9KTSQ0=;
        b=Y4Fm/HNTCF7qDGLnOkFZwJpEfI5aA/NnPik/nhvhkfyVoJLawT1wUmFuSK/UAagTd2
         sGBkoU+7OgVKxjXwvplp+1a9/X3KjQA6TtyCOb5YfFMx/EBT+QQGUMhNzhr67LhqZUnJ
         c3pcoLjNyfJ49BaRheujq5WhyNmA60r32NRyOc/VnY8bm+9QIAmPnQWys577ZzsxZW+7
         L6FpQT498oyMcCOUVeldnNWs6xHJYTmMk7L2NEDBciBV7OMdj34/Z/7gLtrxPRTcmdOS
         M3QlOLPO/8odQG0YG2c67xGtteapHOjZX2PIdD3oaEBpPgY36KwWCyoluyNUwwGk0ybZ
         I0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727698925; x=1728303725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVy0k0RRSey0HXyF2tOTq4T5kQb2eUiQ/yuwu9KTSQ0=;
        b=Er3kbT+1xR75wuL9VD1RKlxIv5xwpmmRxG0Q8Kz44/+LhX+xqpaK/qFXARYeh14/GL
         R5SIY+OCy1RLlNKu0A8bFxtYNaybuMkDVNn7X8Jfo99fsG9vHqHwlunsAPu5JX8XKxdR
         CAiiQ1DSmD9IwO+dHr50+vh0yeCAibin4p3KEoa6hc77sRrnm0RnwJVn508H8wipy/nX
         PCeubGJq84ad+iC7bLrGvzeyxMKwUbb8IMfJI3vI8IyBHjBnjW0TuaedZ9CKeJ7p4MiM
         Qydve30zGj0+59KAb6CGVQatZVly2mVp7p6Fya3EtGgSNTgTBdy7yx8h259fGJVm94Kv
         E5zA==
X-Forwarded-Encrypted: i=1; AJvYcCXFg4VoILY5uW12m/GDYaBOXyLPcPl1L0gtUEiJFTDBBFKrNpS2+5Ec0BL1j9c4ddTKWXE7uZz2FTKr@vger.kernel.org
X-Gm-Message-State: AOJu0YyEf+jmlyGJNu6q0uMpGc3aHTJh5pyIFNN6epeG/j2LAV+Prm0g
	7Obh4qZ+QlrbwMID1/6xgitLOj8gu/8SKSBShWe/BpiYRIfAeh2pmO+pboAqUp/Y5cleagPzllf
	UXwWCpqGOiqg/3TCDWuuCA7PmYHIpJ+dP22UgnA==
X-Google-Smtp-Source: AGHT+IFRR/TqePx6m+P0F9wbjhdBYthJDFoxfhNspbc/S91fiILEYhQubKca8iEPPBq2sCP6d+bbteglymX0AAL2fYc=
X-Received: by 2002:a17:907:7f22:b0:a91:561:e7d8 with SMTP id
 a640c23a62f3a-a93c4c269c9mr1388845366b.61.1727698924559; Mon, 30 Sep 2024
 05:22:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925072945.18757-1-dse@thaumatec.com> <4620941.LvFx2qVVIh@diego>
 <5f73e2cf-cb18-4b65-9e42-cf3192aee706@cherry.de> <2221314.irdbgypaU6@diego>
In-Reply-To: <2221314.irdbgypaU6@diego>
From: Daniel Semkowicz <dse@thaumatec.com>
Date: Mon, 30 Sep 2024 14:21:53 +0200
Message-ID: <CAHgnY3nmx=jpg-+OTmQ4ovgWOPCsX5LrYXJQqzpDeb67ZoVsMw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Dragan Simic <dsimic@manjaro.org>, Farouk Bouabid <farouk.bouabid@theobroma-systems.com>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2024 at 11:21=E2=80=AFAM Heiko St=C3=BCbner <heiko@sntech.d=
e> wrote:
>
> Am Montag, 30. September 2024, 11:11:56 CEST schrieb Quentin Schulz:
> > Hi Heiko,
> >
> > On 9/30/24 10:49 AM, Heiko St=C3=BCbner wrote:
> > > Hey Quentin, Daniel,
> > >

Hello Heiko, Hello Quentin,

> > > Am Donnerstag, 26. September 2024, 14:34:30 CEST schrieb Quentin Schu=
lz:
> > >> On 9/25/24 9:28 AM, Daniel Semkowicz wrote:
> > >>> There is a PWRBTN# input pin exposed on a Q7 connector. The pin
> > >>> is routed to a GPIO0_A1 through a diode. Q7 specification describes
> > >>> the PWRBTN# pin as a Power Button signal.
> > >>> Configure the pin as KEY_POWER, so it can function as power button =
and
> > >>> trigger device shutdown.
> > >>> Add the pin definition to RK3399 Puma dts, so it can be reused
> > >>> by derived platforms, but keep it disabled by default.
> > >>>
> > >>> Enable the power button input on Haikou development board.
> > >>>
> > >>> Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>
> > >>
> > >> This works, thanks.
> > >>
> > >> Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
> > >>
> > >> Now I have some questions I wasn't able to answer myself, maybe some=
one
> > >> can provide some feedback on those :)
> > >>
> > >> We already have a gpio-keys for buttons on Haikou, c.f.
> > >> https://elixir.bootlin.com/linux/v6.11/source/arch/arm64/boot/dts/ro=
ckchip/rk3399-puma-haikou.dts#L22.
> > >> Those signals are directly routed to the SoM and follow the Qseven s=
tandard.
> > >>
> > >> The same applies to PWRBTN# signal.
> > >>
> > >> However, here we have one gpio-keys for PWRBTN# in Puma DTSI and one
> > >> gpio-keys for the buttons and sliders on Haikou devkit in Haikou DTS=
.
> > >>
> > >> I'm a bit undecided on where this should go.
> > >>
> > >> Having all button/slider signals following the Qseven standard in Pu=
ma
> > >> DTSI and enable the gpio-keys only in the devkit would make sense to=
 me,
> > >> so that other baseboards could easily make use of it. However, thing=
s
> > >> get complicated if the baseboard manufacturer decides to only implem=
ent
> > >> **some** of the signals, for which we then need to remove some nodes
> > >> from gpio-keys (and pinctrl entries) since gpio-keys doesn't check t=
he
> > >> "status" property in its child nodes (though that could be fixed). A=
t
> > >> which point, it's not entirely clear if having it in Puma DTSI is
> > >> actually beneficial.
> > >>
> > >> Someone has an opinion/recommendation on that?
> > >
> > > I guess from a platform perspective nobody really cares, so as that i=
s
> > > "your" board, it comes down to a policy decision on your part ;-) .
> > >
> > > While pins follow the q7 standard, there may very well be some lax
> > > handling of that standard in some places, and I guess gpio lines coul=
d
> > > be re-used for something else if needed, as something like the lid-sw=
itch
> > > is probably non-essential.
> > >
> > > Also a gpio-key input does not create that much code-overhead if
> > > replicated, so personally I'd just stick the power-button with the ot=
her
> > > buttons in the haikou dts.
> > >
> > > Which is also a way better thing than having multiple gpio-keys insta=
nces
> > > that userspace then has to handle.
> > >
> >
> > Yes, but this also means "code" duplication for whoever needs this for
> > their baseboard, instead of just having to add a &gpio_keys { status =
=3D
> > "okay"; }.
>
> Yes :-) .
>
> gpio-keys is special in a way in that you could end up with a different s=
et
> of enabled keys per baseboard - dependent on how closely it follows the
> standard.
>
> So if someone repurposed the lid-switch only, you'd start changing the
> core node again. Hence for the gpio-keys it's probably easier to define
> the set of keys in the baseboard.
>
> It's of course different for regulator-infrastructure and such.
>
> > I don't think there's a good solution here, so I would suggest we go
> > with everything in Haikou's gpio-keys as Heiko suggested then, @Daniel
> > if you agree can you send a v2 for that?

I'm fine with that. I will prepare v2 with such change.

>
> I'll wait for v2 then.
>
> Heiko
>
>

Kind regards
Daniel

