Return-Path: <devicetree+bounces-80670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DFB91A2AB
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC66E1F23774
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4E177101;
	Thu, 27 Jun 2024 09:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CsydLIIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B501386C6
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 09:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719480687; cv=none; b=HI5sRXawHtJcQYhK/LVqjc4T3AnlDWyD4tNUWIk3KH0umgk8hFvFWINivu/mXX0YphmPvaeo5QnHMAuMwqqB30krz3FMFUn3/8PEvRT57gAQm/TqnmCGd+0L9bpOIL4H6v92BqiFut6d2n26nZHWnOXv4RzxPguXyeuvAGmS0CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719480687; c=relaxed/simple;
	bh=G7dXTgOLwg97DfBAF+E4oEgRd7i282YwpCqHaca9eQE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FptGtehk5+FgA4M5xJFp5ErEHX6B8rB1B90dErLzicN1g3lO0JPKgVdInRjErtJcQLkMEtTEIuy2uwaS6cm4EsWRKLE6d62nRPx71iJvKUxhG/lo5z9/6SgFgwETy+g1QUNvGs4bWTNbIRSQOPL7CUtZCB9kEgtjYeYwg0ZydQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CsydLIIA; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so1019021266b.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 02:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719480683; x=1720085483; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=81uADl9gzx1pZQLnpmU4eqBtf4JckqOzqIE2g/EMDAM=;
        b=CsydLIIAWF/8ZSAxIWjgAdTDDhDVWDvBy7cXEB7Ub1765bAM8pwYGyc34uuVrUui+V
         JdDlH6T14vsrE+Kj3o4/alVSaAqqwdx4DfzOLY0GSeozTgRVauowwMqU16Xvd4hI53eC
         UlpYkad8gMVgNo0hp7D7J4jq4cM0xWQksocobzdUOGPsTIMWmSWNr93PK/Uzi793wCuD
         pfNxVNNFDwf3y+Zcct9ka1Z0OnByJ8uX3gOk1Uz9KDpSIMjGd//9qEfCvfCN40c/nmu1
         pqilGfEFeSxSuYEKOYEglgfxFspMYf0PyphDniq6l7bJZZtujpU2eyKgjLNspqur+dTM
         vkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719480683; x=1720085483;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81uADl9gzx1pZQLnpmU4eqBtf4JckqOzqIE2g/EMDAM=;
        b=DxVRYR0bdysrNYEsrl1xtac6kZG5KB31N0ZM560z/FuW2My9HQK1CNg2dv8NvYaVYk
         H4tGY6AjifvFx2C0SJqsOMoVzeF1DUxpFH7VbM0/xJFfsotNijguRQH10cqF95UNoqvM
         9X0hGdYwClLsTFk0GIEycaugj50PaW7PSduDpyN/9/WnUVFl9ssvtP5Beikv/z4b2zN7
         IwCABcnD6FAOzzSNapxaSQxgQA6KfAWJ98YND9M1u+sFByCSrbJWZi06G0RkmCzGU4P+
         VwQ931HBeteY78NJTTPkFM6jaFDKO4ICDS80VHzam4gURjmPS3do4EdyAYfqBMrvWSgC
         Hv7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdTKwvOGNTgZoHXX6GF0w16bT52huyUN7uC9+uz2UAQ77bz3GsFqDCMm/HnvffF+yXVMlLpiw4N1vdxdCbYEunMWWXyhDfB2vOig==
X-Gm-Message-State: AOJu0Yz4qxsLTjttlidywavxuAF1hg3luQ94Fipn0/O8kFRcP3v7Y4mJ
	QsYTa5cdlBASVKHpbX6ThybYB7pLANefdNbIEHuRee2LzprVAPZRLw+BupubK3U=
X-Google-Smtp-Source: AGHT+IEZEakJrYlLWf81n+uR0SMouaD32H88SYgYSsBDf+TYDg+dUPUwNlB2qE6bsFfB8sg9nImaXw==
X-Received: by 2002:a17:907:a70d:b0:a72:8b89:f878 with SMTP id a640c23a62f3a-a728b8a01d0mr319543266b.76.1719480683323;
        Thu, 27 Jun 2024 02:31:23 -0700 (PDT)
Received: from localhost (p50915e7b.dip0.t-ipconnect.de. [80.145.94.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a729d71f764sm41499566b.78.2024.06.27.02.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 02:31:22 -0700 (PDT)
Date: Thu, 27 Jun 2024 11:31:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: stm32mp135f-dk: Document output pins for PWMs
Message-ID: <rrj2srkxpsomywut67sfmziuvi7w2vmbcrhtxxmr5tp376tdm7@6fce2i47xeus>
References: <20240613080229.2292413-2-u.kleine-koenig@baylibre.com>
 <b2796be8-d372-44e6-959c-e212097e99e8@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3t24treeavhrh5t"
Content-Disposition: inline
In-Reply-To: <b2796be8-d372-44e6-959c-e212097e99e8@foss.st.com>


--g3t24treeavhrh5t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alexandre,

On Thu, Jun 27, 2024 at 10:38:34AM +0200, Alexandre TORGUE wrote:
> On 6/13/24 10:02, Uwe Kleine-K=F6nig wrote:
> > To simplify identifying the pins where the PWM output is routed to,
> > add a comment to each PWM device about the respective pin on the
> > expansion connector.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> > ---
> >   arch/arm/boot/dts/st/stm32mp135f-dk.dts | 4 ++++
> >   1 file changed, 4 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/st/stm32mp135f-dk.dts b/arch/arm/boot/dt=
s/st/stm32mp135f-dk.dts
> > index 567e53ad285f..f1b50e4c1059 100644
> > --- a/arch/arm/boot/dts/st/stm32mp135f-dk.dts
> > +++ b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
> > @@ -273,6 +273,7 @@ &timers3 {
> >   	/delete-property/dma-names;
> >   	status =3D "disabled";
> >   	pwm {
> > +		/* PWM output on pin 7 of the expansion connector (CN8.7) using TIM3=
_CH4 function */
> >   		pinctrl-0 =3D <&pwm3_pins_a>;
> >   		pinctrl-1 =3D <&pwm3_sleep_pins_a>;
> >   		pinctrl-names =3D "default", "sleep";
> > @@ -288,6 +289,7 @@ &timers4 {
> >   	/delete-property/dma-names;
> >   	status =3D "disabled";
> >   	pwm {
> > +		/* PWM output on pin 31 of the expansion connector (CN8.31) using TI=
M4_CH2 function */
> >   		pinctrl-0 =3D <&pwm4_pins_a>;
> >   		pinctrl-1 =3D <&pwm4_sleep_pins_a>;
> >   		pinctrl-names =3D "default", "sleep";
> > @@ -303,6 +305,7 @@ &timers8 {
> >   	/delete-property/dma-names;
> >   	status =3D "disabled";
> >   	pwm {
> > +		/* PWM output on pin 32 of the expansion connector (CN8.32) using TI=
M8_CH3 function */
> >   		pinctrl-0 =3D <&pwm8_pins_a>;
> >   		pinctrl-1 =3D <&pwm8_sleep_pins_a>;
> >   		pinctrl-names =3D "default", "sleep";
> > @@ -316,6 +319,7 @@ timer@7 {
> >   &timers14 {
> >   	status =3D "disabled";
> >   	pwm {
> > +		/* PWM output on pin 33 of the expansion connector (CN8.33) using TI=
M14_CH1 function */
> >   		pinctrl-0 =3D <&pwm14_pins_a>;
> >   		pinctrl-1 =3D <&pwm14_sleep_pins_a>;
> >   		pinctrl-names =3D "default", "sleep";
> >=20
> > base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
>=20
> Good idea. Some lines exceed the 100 char. I could remove "function" or o=
nly
> keep "func" instead. What do u think ?

I don't care much and would have expected that the line length isn't
that critical. Anyhow, shorten it to func if you prefer.
=20
> Note also that commit should be: "ARM: dts: stm32: ....". i can fix it by
> myself.

Ack. I considered using

	ARM: dts: stm32: stm32mp135f-dk: ...

but that felt like duplicating so I dropped the "stm32" part. Feel free
to add it.

Best regards
Uwe

--g3t24treeavhrh5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZ9MWYACgkQj4D7WH0S
/k5YgggAqvxKivSI3go5p4Kxakm/mRziyxTsR3IHJtpF/DxHnLNEsfDAKT7jTIwi
MCsbYDIt02wKebImeoA0oUkDhdrNxzdJr2e2v9DMZxu/aEQcyZUiO4zwHblDExQQ
VcFZVrJYQ5yE7XiQYJ82gpqzzLlv+a45Co5NYTcgYRJMUAZGqeKpD9plHCJcqo1W
HPsqLhGUjuaRjpgjKKjCFNHjn74Cc27Qp0UJ+XcQV7oTVAo7u4VvirSeInOb7qvZ
3BLs+KE1OxT93cc8hKtndD0KpoIE/RLhAUKl3HtxB2bdcqOPr9cg+fyGYwhl5jfm
59c/2GOMAb4LiHWot1tRQc/mXj5mZA==
=xp7e
-----END PGP SIGNATURE-----

--g3t24treeavhrh5t--

