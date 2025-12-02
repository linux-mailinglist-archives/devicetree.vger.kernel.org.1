Return-Path: <devicetree+bounces-243807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E72C9D253
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6853B349A09
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12912FC029;
	Tue,  2 Dec 2025 22:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VKgxTL8w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3572FB632
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713271; cv=none; b=mwxtbfSHIy+8wKTv/AtZgRuRlgQhUIayVPVhOFSimhTY5oIjTGgAAGdYdTwjygWSaSCfQydvA1S7WItdh4+KCOKWbD1zUr2An7pvmlVu4mLD1UgFUa4l5dKGAt+WSkA8rzBIBwcn0a7DxTeY9F8pvX/mBwclFIlj6rVIcrDCsuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713271; c=relaxed/simple;
	bh=eBD4gOrC3LaRB8AsbzyAfhHTBnlgO531KCaqBO5JwiA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AaANuPCGkJdRDv153xIDrNv8Y3WmqHG2JNSNdb2rP4c8kB3JnkmaBGJ/5q+71c/rb3IOr6OOZJqoBmysKYxUidEDdHI0BZie0uSjUxuly1SfLR1bkge85oNz0TRHVjd0cwPmm06avlzoxHbuFfbq0+298cJykHIt/HQOYdNvSgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VKgxTL8w; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b7633027cb2so899268666b.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764713263; x=1765318063; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6N8ENlMp0JtUvDjwpbGXfIGBmY/pHGb1XQuUiLpAW3Q=;
        b=VKgxTL8wxfL1SwBqbDX7RcjiGVzpwP/LLyVSKzAhLLlIsNId5FMYNH4GoFU3/X9GWl
         TA0jfkBV/PHqUHHsjPpPvCuh1bzOu4JgURjNZODwesJLTBuDd9QPN4hpAW920f21OAkH
         KqUVrqwvePMaHxw65M8rKxkVH61LFxmhzAS1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713263; x=1765318063;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6N8ENlMp0JtUvDjwpbGXfIGBmY/pHGb1XQuUiLpAW3Q=;
        b=aorvcU7hWig410Uzu++eUKcEnzAz86qDfCLUDXkxhgpCyKZt7IGoSm6zjF2sF0p5Mv
         AnJvHNUOeJfaujGWLZc7n0DFSbKJPmO4wNNUTuQkRzW2bIVtxaW33Oi8IYodOgXH772G
         ZPlgs//a79u16m4OBuy+eSSUlwDFVbECGwaEvM++YWnPQ5vfNg7AfI6zQrsEQjiZ4lFO
         YXxyoknFu60EHOLdrXlVbJQWtUzCRWCNOUrbubGQgT3D2DQbLnr10wYt9fUNJizTU9mk
         12DTCCwAOqUp+Q6WkW+/xVJpyBnrklJsDeX9ycmbxHAMJtuljczu5S1Au8L31pRqx2Tz
         Y8vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwv1/FPgUefEFmAsQCqbms7MQ+Zw/axXfUX62sPo47tBsdOo6hcJgO2xPxwC0ZnNGJdgwacyeHKm0Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxZHN36D0AMs/Zlf+W39FJQGwBWed7o+2cLIwpgAuYdbMydwe8P
	WnjpaQMl6nyKXP7snXIjG3EMPKcrkKtA4xGmRV36C17nrwNTBV9TJeh5k+6ftcBe2hWoEhw6eOt
	OHqOJtxjU
X-Gm-Gg: ASbGncuIjTsRyAN+RPn0d5nhEBm23KL0qN5eJoZyi1ng4axyURsSpoG94pwr9W0aE/T
	ZRQR/ctz2hPtDZKHsnFYPMOZTdxcxkqt5bFOaW+2ln+h8RkVfvGHys0FZAtEcqdplUIHPxmhMfa
	/b263xcvulhFKfDv0scadu/RxyRH8uj7BY0fisB4ZWvhcCKYDDdFE9LFY/BiM1iHR003/bUX8Vh
	YcJZqyYQ2THLmNekIHOOLWtz+KHEwHydPuzu/EpqhmYtomiPupu8e0++crAHifhc/71z6oqIruc
	L58fh/kn50Pn/e5klRjlPoC43g0jdjHju8c8sN2vz5562QTG6kYx5PxkMqVKxvbXnR9tfwX7Afp
	Tw5d2Mk0dX3Ab9faqIcySZe904mlx0ZPjgVnkvHtRKiXUK/JMJ3wp9923xql5i0yU1JKqrkFCE8
	gk4yloNRKqwWOXGky+HmFsOJURAqoD4XLlIepbTEXiOkJQ6d5TBw==
X-Google-Smtp-Source: AGHT+IFGxmbBCy9p8Jxpr/OFjSVwaCACF1i2GJNYOAz0rLi38hKchxdFaK8y0ZpcA6mxNu4eepD5Gg==
X-Received: by 2002:a17:907:948e:b0:b73:70c9:1780 with SMTP id a640c23a62f3a-b767183c122mr5447097466b.41.1764713263372;
        Tue, 02 Dec 2025 14:07:43 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aea78sm1555279566b.36.2025.12.02.14.07.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 14:07:42 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b38de7940so2984820f8f.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:07:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUCnhuUsVqPMvqHmsaB9rSa8+se2ZXmCktvCAi0W1QGWebrmLTCpGnvLV0huD+9lNp+kvUZclurNTdD@vger.kernel.org
X-Received: by 2002:a05:6000:4383:b0:42b:2eb3:c909 with SMTP id
 ffacd0b85a97d-42cc1ac98a9mr45463866f8f.20.1764713260943; Tue, 02 Dec 2025
 14:07:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAFLszTiVT9rHwympUJSehxaDR7ks9Bs2FVjYEuN6=j1e_-289Q@mail.gmail.com>
In-Reply-To: <CAFLszTiVT9rHwympUJSehxaDR7ks9Bs2FVjYEuN6=j1e_-289Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Dec 2025 14:07:29 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vrit=N6L30dA3X6uV95e5E1bVoLph55_=ihqSTBy52FQ@mail.gmail.com>
X-Gm-Features: AWmQ_blcEODuHNOTfASjHIB_XmBuUPaulzfzl56_GN_PjmcKkVckIKFg3FzvIbw
Message-ID: <CAD=FV=Vrit=N6L30dA3X6uV95e5E1bVoLph55_=ihqSTBy52FQ@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Simon Glass <sjg@chromium.org>
Cc: devicetree-spec@vger.kernel.org, boot-architecture@lists.linaro.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon!

On Tue, Dec 2, 2025 at 12:07=E2=80=AFPM Simon Glass <sjg@chromium.org> wrot=
e:
>
> > 1. Allow the top-level compatible string of an "incomplete" device
> > tree to be documented so it can be validated on its own by tools. It's
> > understood that this SoC is not a board by itself and we'd never boot
> > a full OS with this device tree without adding an overlay that changes
> > the top-level compatible. Add a top-level property to the device tree
> > (perhaps "incomplete-compatible;") to indicate that the tree is not
> > complete without an overlay.
>
> or be more description, e.g.: compatible-scope =3D "soc"  - or just scope=
 =3D "soc"
>
> In other words, I don't think we should be frightened to define some
> levels (soc, som, carrier, exxpansion, chassis?)

Sure, I'd be OK with this if this is what DT folks want. I don't have
any strong opinions here. NOTE: something like this would only make
sense if we're going to introduce new variants on how we apply
overlays (like merging compatible strings).


> > 2. If it turns out to be needed (hopefully it's not), allow some type
> > of syntax in yaml files that allows a property to be marked as
> > "required" in a "complete" device tree but not in an "incomplete"
> > device tree. Alternatively, we could discourage marking properties as
> > "required" if they're expected to be filled in by a board.
>
> Another option would be to validate the soc DT with a chosen board,
> just as a workaround. It would probably be good enough.

Sure, though I think Rob and Krzysztof are pretty interested in being
able to validate the SoC DTB by itself. I'd like to at least set that
as a goal. If we find some reason why we _truly_ can't achieve that
then we can talk about relaxing it, but I'd like to start with the
more aggressive goal.


> We don't need to worry about old bootloaders since they presumably are
> not installed on new hardware. Assuming Linux adopts this proposal, I
> am sure people will implement it in bootloaders when they need to.

Right. IMO if we have to make changes to the way overlays are applied
and we can do it in a simple and backward compatible way, it should be
OK. Only new bootloaders would be able to take advantage of it, but
presumably we'll have to modify bootloaders a little anyway when we
standardize on ways to pick the right overlays to apply...

