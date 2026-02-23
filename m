Return-Path: <devicetree+bounces-267378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL2fFF46nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:30:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9FF17589F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E72803025132
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63DEB361642;
	Mon, 23 Feb 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IoskW6U9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B918353EE3
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771846234; cv=pass; b=pD9PLiiIGo2cVkhMb8hv3le7cB3ojtuIBXph52PJHKwcva31m6Jppqm1S9W6JD6cDe5pcvbcMkrkhARl3EzrjpR4ATBye9MhoJLt6CwPnndG0qNAmT9XFtUmsOFITFtfX95/+DR2ddmxgOf8QqXspS2GGnjZxb4ZvY0l3gclQyE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771846234; c=relaxed/simple;
	bh=CsYhks1fMzPsRGfrKzdAL3YYF9tfv18DzRdQVtXGLQ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bw8Opb4pWXwAZe/7iRcT069UwDv55I7X8VXwnNzXJo3iX5+WqZlLCj/OgvxgJE4amOeaj6QTXGarwFD9iQeJOBzdNa3FPfh96N8UcafvC2G7Jk+1WP4puYJGalJitJ7OUNVE3HNRivKIV3ET8yyDr+UE5N0O2UJ87VNQcSW/Vo8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IoskW6U9; arc=pass smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2ab39b111b9so17863815ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:30:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771846232; cv=none;
        d=google.com; s=arc-20240605;
        b=FtgfoZc6/MPQOUsnRrx/v9bOimUAAYAh3H/E+IDXhskeZ9ZynhkCJJlBUy0m50/+jP
         GAU+Agqyo0wmgUxQZHONrZAhV3PHlf6uSbTlSsIcKpFx130pXwcxnMle3SNIC+32d5m8
         +l358TRhWTRYIpElVX+oeoyn7l7GL2dQcTqzc+TeLTuBiyCgepEDaTXuaLCO3PCkMVD7
         g+E0vZw3iJWpNn9LOkWIkNpcfTcJm6vajNZUhnTNeEbVgSwANq5v7z9cvV/LD4ZNq/a2
         5Tqpw0CKEcCEVtaQbqq8Kk/ySHj8Y9DXlPAEMN6XCuQTilA7aAlitlrNEsPwVdsOW/sT
         qzHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Br5siVwmXHkLMmqx3d4sgf29fX12Q6bdQRYt3PwHjas=;
        fh=YWn9QL6ZqgaMqFbvfXf0GaoaX20WCsVM8XzC+H2hq0w=;
        b=HFi6PFsbjS2o1RE8+9GD6S7CncA8MTam1B/Meuo/WLNuOp0cfargI4DZQaR+kM9IwT
         WZ5Js6LzwEInEYyDneSfpQngA7BV5WtKW/Dru5kmctQnyQRYXaZO8zZQPAAw6481fHiD
         5git0HDDIQBe13eqZL6eSKLTNUHjIoa7kjSbFWh8XyupA/JvzOjMGd+b0xHk0aaPJiBc
         TtjNMd+Mwoax3gaUs2QIr/4ixcja82WVnayzDFFvQUucKhTJQ0WzErNxLBsKuHT4KvOm
         YNnp6/EkHlIm2kxB033vCMfzNf32MwsO7XX+j6sWs9j/3iZNs060d0kaeWXdpnz12PCk
         AErw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771846232; x=1772451032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Br5siVwmXHkLMmqx3d4sgf29fX12Q6bdQRYt3PwHjas=;
        b=IoskW6U9XZv4M5sB5t70XKFnzYNcSYEELrQcqwZRWlMsNmwsVjb5tinbgp6/N59mYg
         iDjeSwbX58PeYVtEyGWlRFb5JFBqsseC8pfEU1zVRBuajG+ahfMTkFcVtI/NIGJ6XNK9
         OmlWRaRDAxoo3dElUyJS1no2Z+vnT9BkYdmeol+XVsVVcNsyp5Z4RglzGg3GZOyg3Ld9
         6kA+6rdcon4UmWmkIP/5UR2JJRRicsscw4yuc+o2Fcbq8XWppawdssm/NC6s9j/fCSv6
         8fDV/2t09+13MkGG2t+DEFkh0okO3hd5zt2h103qXOa5KsCCQGo/MzJSs72NkfULtuKk
         QE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771846232; x=1772451032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Br5siVwmXHkLMmqx3d4sgf29fX12Q6bdQRYt3PwHjas=;
        b=Tfm6C6y8gy7gjOAzAyQqe5K/iA9Fl/n0u12yFOApctAAf6Ihfwn5mUkyLlZ4L2OxDX
         3QhmezgvPgy9pfwXdCW6oQaAH5v7YfqEEP9YdA13iCzxkMIjR7iEv70QJ/oXAialze1m
         zAGIVJDAR69BfPrKcmK65xQfbi5zwmgrvSU0fRVUGMatDmv6Va1j5qmJ37FoCZ1xMn7y
         ETdt5Au2llatusGrEWih/djMWv/XTPTHXKt1c2FZ+cHDsEFyh7dvoS/XdV0S3O0x/6ql
         wyrx+6gt5I2UXE6vh0K2vouquAHdwe0YFmSVmk1rh26Oliki2UgaR0l2vdALmcUMJA+m
         +SWA==
X-Forwarded-Encrypted: i=1; AJvYcCWmsmikeCYb0ukkJwfPSKmHcWexvrG1VvqmfO0FynrdGBlMiY3pkTljA8zQW5n/RoLdJsC7ziOAwSyG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy78+UkIQrNBxVSRNg1QBG5ResdhNoHwYh6XLjh2P03GJIHPUcf
	5x/hLAcW5I9reuFdSJGGzG9kCSH9gTKqQIPDCIIbFg3PRdAok9e5OQ2OeitFAgziGDj/Zn/HpH4
	oAnvaImvV5YmYE4Eamez2z6Swz+bD8ig=
X-Gm-Gg: ATEYQzz8jxZOJRKYidJ52nDEsxAcOsLZz8iD10Qz2gt1MxyjbbkWH00Q2iE8oDejPZL
	1G6FRu2f5+9tfEnC+MKIw7JZHXbYEhiwHWVXkos5rqCmmXuX2iNIN+9dy/Hsoc8zmdb8vkEQzVf
	91GdPj617oHQ6dxC55LBE8XXaS39s0db3DwAwNPNwDUIt3bg3y59IQ136hHWcizF3Dg+EBpG3OG
	6K0EuarRYzryHjxFfv1KGHfpXVJ8KfyoIWKMOgZDG5yirVnqyYTQQXB/XKLL3qbOrZaWLvSg1u+
	PNU3B8UEJLKtgQYJP/E=
X-Received: by 2002:a17:902:d508:b0:2a7:95d0:d77d with SMTP id
 d9443c01a7336-2ad7453d949mr77681755ad.30.1771846232419; Mon, 23 Feb 2026
 03:30:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
 <20260130-yv5_revise_dts-v4-5-4d924455f3a7@gmail.com> <73c63bc2f5eaae2c931a4ced1462024bd5a24237.camel@codeconstruct.com.au>
In-Reply-To: <73c63bc2f5eaae2c931a4ced1462024bd5a24237.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:30:21 +0800
X-Gm-Features: AaiRm525snvy4mZcI-Gd7f7l6WX-PGaNQoSq0zz-Wk8sNwF6B9itjJFnA30z6ik
Message-ID: <CABh9gBfuacGFHqSFT-fvE78bx7Q9vZGYzz=4frP2MTM0J0yNWA@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] ARM: dts: aspeed: yosemite5: Correct power monitor
 shunt resistor
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>, Jackson Liu <Jackson.Liu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267378-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF9FF17589F
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 2:21=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Kevin,
>
> On Fri, 2026-01-30 at 16:20 +0800, Kevin Tung wrote:
> > The shunt resistor value defined in the DTS was incorrect and did not
> > reflect the resistor value populated on the board. As a result, power
> > and current readings derived from this value were inaccurate.
>
> Okay, but how did it come to be incorrect in the devicetree? Was the
> documentation wrong and so someone entered the wrong value? Was the
> documentation correct but there was a misunderstanding? Did the
> hardware design change and the devicetree is now just inappropriate for
> your needs?
>
> Essentially, what's preventing this from happening again?
>

Hi Andrew,

The root cause is a hardware design change, which made the previous
devicetree configuration is inappropriate for our needs.
I have updated the commit message to reflect this.

The changes have been confirmed by our power team, verifying that the
power readings now match the latest hardware design.

> >
> > This change
> >
>
> I'd rather you rephrase this to avoid using "This change ...".
> Hopefully the commit message always refers to its change.
>
> Generally, please write in the imperative mood (see [1])
>
> [1]: https://docs.kernel.org/process/submitting-patches.html#describe-you=
r-changes
>

Updated commit message to use imperative mood, thanks for the reference.

Kevin

> > updates the DTS to use the correct shunt resistor value
> > according to the hardware design, restoring accurate power and current
> > measurements.
> >
> > Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> > ---
> >  arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 ++++++=
+-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > index 84d3731b17f7c7c87338672bbcc859de2b89b722..524597a81365ef10cd03b67=
d35eeb88a965cbe0a 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > @@ -415,7 +415,7 @@ power-sensor@42 {
> >       power-monitor@43 {
> >               compatible =3D "lltc,ltc4287";
> >               reg =3D <0x43>;
> > -             shunt-resistor-micro-ohms =3D <250>;
> > +             shunt-resistor-micro-ohms =3D <100>;
> >       };
> >
> >       power-sensor@44 {
> > @@ -461,25 +461,25 @@ eeprom@57 {
> >       power-monitor@58 {
> >               compatible =3D "renesas,isl28022";
> >               reg =3D <0x58>;
> > -             shunt-resistor-micro-ohms =3D <1000>;
> > +             shunt-resistor-micro-ohms =3D <10000>;
> >       };
> >
> >       power-monitor@59 {
> >               compatible =3D "renesas,isl28022";
> >               reg =3D <0x59>;
> > -             shunt-resistor-micro-ohms =3D <1000>;
> > +             shunt-resistor-micro-ohms =3D <10000>;
> >       };
> >
> >       power-monitor@5a {
> >               compatible =3D "renesas,isl28022";
> >               reg =3D <0x5a>;
> > -             shunt-resistor-micro-ohms =3D <1000>;
> > +             shunt-resistor-micro-ohms =3D <10000>;
> >       };
> >
> >       power-monitor@5b {
> >               compatible =3D "renesas,isl28022";
> >               reg =3D <0x5b>;
> > -             shunt-resistor-micro-ohms =3D <1000>;
> > +             shunt-resistor-micro-ohms =3D <10000>;
> >       };
> >
> >       psu@5c {
> > @@ -723,13 +723,13 @@ gpio-expander@21 {
> >       power-sensor@40 {
> >               compatible =3D "ti,ina230";
> >               reg =3D <0x40>;
> > -             shunt-resistor =3D <2000>;
> > +             shunt-resistor =3D <1000>;
> >       };
> >
> >       power-sensor@41 {
> >               compatible =3D "ti,ina230";
> >               reg =3D <0x41>;
> > -             shunt-resistor =3D <2000>;
> > +             shunt-resistor =3D <1000>;
> >       };
> >
> >       power-sensor@42 {
>
> The way the commit message is written suggests it was just one shunt
> resistor, but that's clearly not the case.
>
> Andrew

