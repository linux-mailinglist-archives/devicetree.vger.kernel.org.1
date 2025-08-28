Return-Path: <devicetree+bounces-210169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5774DB3A9C3
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 20:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 166E217E177
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 18:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD9D2701CB;
	Thu, 28 Aug 2025 18:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sV3S9goY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439FE26CE26
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 18:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756405163; cv=none; b=DwvVCfskMIS9CstxvT/SIps6GVowS+AxcPm4G23gZtDZO7pDPEQvzlOf89Jl0wF/7GSWTp/wWWXkVsUj9V7Jg1mHMUl1UeCsHuQaBGmsuruo3op24fALcW5/Tw9kbx8fb/jhQmZek/3USY83qRsYmHRA1IoLCwzjcp8vRLYM4No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756405163; c=relaxed/simple;
	bh=jSRAPGlaacLCN8IweNZh4ovq/ER2fHwcytIyHUy6LpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pElgJaz8DNDDW+ItpOvLYIU0v46O3glBIpyMr+pFxCKAZrF8sk71rL9erHn8hr3RUEejCzY3MhfLXRtEmqMenV4EUWkLDbJJ7spETse4oH/xzF76BvD/iuM6fltfSjDU5N/d/esrGAFB0cTPrL51V7PdYCl4Gy8BObNTmMlXP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sV3S9goY; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-3366f102680so10805881fa.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 11:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756405158; x=1757009958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z8WCzP5XruJZcY+aCROX20DDrThlC8LXbUjIf1UiM2s=;
        b=sV3S9goY3NPAf5ctpK7jz0PvMJ5CZF+mdIgh/lZbNZTdmuxyIjxQWmKkd6mH2z48bh
         8t4LlF2hKGblupZPWyhKD5ZB00sDHXHWvLkt5kT1IODEB4wBC4mOThflyKB0SRQhjquQ
         JO9iwRWImL7WdLxae73B+vTYVVz2HI0rN7L7tVyuzQXCgDy1mOGhrBkaXHlJBMPrLrVn
         zTHuY3nnSfUfIPPSMTkJxNnVXwgt8PhwihTeoGwNd70zJJjWoE4E3B/o4cLNuoj8pCJw
         8EZgp4ZoioWvjcwmIkEpPXW9mTFSC49IJO5QVSX80wVn8dva9fAVBGV6GD0f6nPX7XXL
         eCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756405158; x=1757009958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8WCzP5XruJZcY+aCROX20DDrThlC8LXbUjIf1UiM2s=;
        b=dUyoz1qpAk0GSNH3ZWl50/gf+fz19/ohQ2CiMQFlB+/u5PGEA6iGpZqvOBwCzpf4/X
         jUREuE7pJ7FaPE9lqTiQ0StwTdK1cErA8h9K5L+lGQsRmtjIVFI1dpD9DVP4N/Vsb40v
         I9s4qf/0JDssOMPnb7ifz6hhr+kxKRNM6sgyrtiF2umCrCkIKOLpZzovTLw2GdCqSC8h
         BCsQPei98VhBkiM6Qao6fqB++8impGDp3eDFJGQBC0SdfxDFz8ah+5Nk1LEpnOL3JRxg
         pUnUjFYuMfpchavrMNhNNeDP+3B9GUUidB60mFyQLJ2HnrVnQZorIxozpkrS1OKHF21t
         JJ5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWs3DCekpaB/kcZoHP8QN8payck9ySxbYnsgoeszc6j/LHn7nrv4G+YLDoLmeM3A0zVuln4IOwJtkxJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNOQrUyDdiDbG04CuFzwJfZF52V/lSAUx2yfnoWVwNCG4KDTiq
	hyDIWlFy7Bl6lIo3LNQj+4PyDS8fj+oV3VRJnyBkP1ss3vie41SFA+/WRgIPu8gn2Qjjer8miXs
	q6A/u682CJTdFYl1x3jhW4ePMs/74by9PKkDTso4ZQg==
X-Gm-Gg: ASbGncu2mNDohDXBoJjVOrN7M30BGGSWVLZTrhIiB8QZJga0OF3BSF/ABbx+HpURLqx
	L6jzwxhk1CcPQZjTiis2qgn9se1U+B559wJsrWTXbTe31rQ5zFrVO2ue1kQ9DF7vIET9lIEmX4W
	ac0fRDDpjB5at4rNxgSKCfMcIdctZ14h62CUROyQ8uIn7wqQrR3/XWhFMH7LDf+EgTxD57zw2gf
	w29fn0=
X-Google-Smtp-Source: AGHT+IH1DSJZGXknSzW6wH3w+Axy81DzZxfZ0orRS3bzF7NdL/MqGTEERDxVjp0WltcO4vKqnpq+IlyPKB7YEvEtM8Q=
X-Received: by 2002:a05:651c:f04:b0:332:4528:c0e0 with SMTP id
 38308e7fff4ca-33650f40230mr73400651fa.32.1756405158218; Thu, 28 Aug 2025
 11:19:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250827024222.588082-1-gary.yang@cixtech.com>
 <20250827024222.588082-3-gary.yang@cixtech.com> <0fa7e2cb-fa0b-4f9e-84d6-a4b2b3d8a4cf@kernel.org>
 <PUZPR06MB5887D9A879D16DC6A8C8ED58EF3BA@PUZPR06MB5887.apcprd06.prod.outlook.com>
 <25283b66-4cbb-4db9-9b1e-7a4e6e3db2a1@kernel.org> <PUZPR06MB5887887C93BFF42BC8417D96EF3BA@PUZPR06MB5887.apcprd06.prod.outlook.com>
In-Reply-To: <PUZPR06MB5887887C93BFF42BC8417D96EF3BA@PUZPR06MB5887.apcprd06.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Aug 2025 20:19:07 +0200
X-Gm-Features: Ac12FXwRlxWLxClpU7dqWEVAoO6fz9nruFt5m8l0uHGvpyxmXFRxpd6jlKHnWxY
Message-ID: <CACRpkdYC-3qybKW7VH5MVfBc3oqSrOa2RTt1Q=p=HHsi5drGOQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW1BBVENIIDIvM10gZHQtYmluZGluZ3M6IHBpbmN0cmw6IEFkZCBjaQ==?=
	=?UTF-8?B?eCxza3kxLXBpbmN0cmw=?=
To: Gary Yang <gary.yang@cixtech.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

thanks for your patch!

On Thu, Aug 28, 2025 at 10:58=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> =
wrote:
> > On 28/08/2025 07:37, Gary Yang wrote:

> > >> Whats the difference between? You have entire description field to
> > >> explain this but instead you said something obvious there.
> > >>
> > > Cix sky1 has three power states. S0 means work state. S3 means STR st=
ate.
> > S5 means SD state.
> > >
> > > The pin-controller on sky1 has two power states. They are S0 and S5.
> >
> >
> > State !=3D device. Please create bindings for devices, not states.
> >
>
> Sorry, maybe I didn't explain it correctly before, and then make you misu=
nderstand
>
> There are two pin-controller on sky1. One is used under s0 state, other i=
s used under s5 state.
>
> They are two devices

Just explain this in the description: and everyone will understand what
is going on. Since "S0" and "S5" can be easy to confuse for "states"
it is extra helpful with some extended descriptions.

> > >>> +    properties:
> > >>> +      cix,pins:
> > >>
> > >> No, use generic properties from pinmux schema.
> > >>
> > >> You should also reference it.
> > >
> > > Did you suggest us to refer to
> > Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml?
> > >
> > > Make us support drive-strength, bias-pull-down properties?
> >
> > and pinmux. There is a standard pins property.
>
> Ok, I see, try our best to support standard

Unfortunately many pin controllers have forged ahead
with custom foo,pins =3D <....>; settings where they set up
mux and electrical config by OR:in together different bits,
and then they just poke this into some registers.

This isn't very helpful for users.

I initially wanted all functions and groups to be strings
and then to associate groups with functions using
strings in the device tree.

But I have realized (though much pain) that many developers
don't like this. They want a magic number to write to
a register to configure a pin, because their hardware
has one (or several) register for each pin.

So nowadays the most common is to use a compromise.

A magic number in the pinmux property to set up the muxing.

For example:

arch/arm/boot/dts/mediatek/mt7623.dtsi:
pinmux =3D <MT7623_PIN_75_SDA0_FUNC_SDA0>,
               <MT7623_PIN_76_SCL0_FUNC_SCL0>;

Then the electric properties like bias-pull-down; to set
these on the state:

        i2c0_pins_a: i2c0-default {
                pins-i2c0 {
                        pinmux =3D <MT7623_PIN_75_SDA0_FUNC_SDA0>,
                                 <MT7623_PIN_76_SCL0_FUNC_SCL0>;
                        bias-disable;
                };
        };

This is a good compromis becaus it looks similar on all
SoCs and you see immediately what is going on: we enable
SDA0 And SCL0 and disable bias, so there must be external
pull-up resistors on this bus since I2C is open drain. Very
easy for an electronics engineer to grasp, they don't need
to be computer engineers or device tree experts.

Yours,
Linus Walleij

