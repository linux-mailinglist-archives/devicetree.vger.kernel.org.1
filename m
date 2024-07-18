Return-Path: <devicetree+bounces-86579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 169E7934CC7
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 13:51:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A357FB22834
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 11:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9731113A25F;
	Thu, 18 Jul 2024 11:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zevrOBOT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BBA59164
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 11:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721303463; cv=none; b=nd5garLJXfMU2ZelxX2/TGRdwxgg0wVYtUN1N5588the2weMkxR7/msQ5dUQ8HKSaVdM665sa26+Yw2cFLi6JDC+jGCIYOSE9cqj8s9l5OGdIflT0gojveFo/O2087q1UcTobrR6d1kcpq45U7j/a339zVPYdl9IUwhXP8bkz88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721303463; c=relaxed/simple;
	bh=vD3tfVsWGs13fLKirLM+QMolfsmQJwO7QPEf2sxf1ks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z3OMFr6t1A2K0MPJ0wJblClv5GF+f3mLZcbhrfJUkv6IrG1PGg8+80RQMsAr/yudfYmh8nrxqRfWTPe5GowMNR9/Ey/ddt/bmUE/oORLA5KPjm4h1Yos5EAzWyR9pCHOPO7XYspYQUP4AeRric9blwo4Ntu9rYGYKVwWLkYxyJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zevrOBOT; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a77e5929033so78298966b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 04:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721303460; x=1721908260; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vD3tfVsWGs13fLKirLM+QMolfsmQJwO7QPEf2sxf1ks=;
        b=zevrOBOTfQssDP8/bbpgUa7VXzjUA4xtdvNvDjTAgv/DXuA1vgzp5ttbWK1A8W0Bk+
         Vc1zI+OlqZ5lDw5A0ruRlYDnb/xSyY5ae1o1+h/WlULR+RdbJdMrY346jCljROlRt/Bu
         jevaQnKIIUkDqeUx9xwQ1etZFJvCx8+a1K/Y8WMidGDggRB12KTkOOwe738THxJKb/sd
         py2mjEe8r+/3p5EuM2sK3ZpCOoj7kmDsWxc+40uH9pnsuVnmt4WQQZP6K55UhasZlWcY
         OlZTF+D3RBez9TIg18vPZjlApp9YVhrygrly2Xvo4mrxrAQTlxIAZEmtkZVaqgy5C6W/
         66cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721303460; x=1721908260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vD3tfVsWGs13fLKirLM+QMolfsmQJwO7QPEf2sxf1ks=;
        b=ojhAgovtK7WxFTBwp6pPlww5sJp7UlDxjdMjPmwSwydVdII3vJhLZQrSSfJFFsiEwH
         TjlI5f1Xs+Q/Xw1t8Lz/JZ59XJtIey5WFF5xLAYvvLL6JlQylWXN6dQ+Ss11nJaOarfT
         z0GhA7QkgxeRV+VL3FhjApY63IyMkeLaRALWBlymJZmnqSCr2qmvrH7eUqwf0YyuS22o
         MwBBr/pHzwK4eHjnXK4jHtS+twXNN5gmhf2K8s+cC50qzLEQ42CmrTxYjVmvJXZdqkUN
         dvGR3Hhk6zpqwVPap0cBezJAs7fqF/vI7E1oubOGo6K2psw/5nsTEYYe5SdBQ3gUc2hU
         YC/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7S2POq4PZb89OZq3h3OL0eko2Yuo8HwOJmASUIVoO3tQGEHLdP6KGE/lxSy6bpPrEWRJKjsbI0FQtYphDR9g/kzLCXns13seSXw==
X-Gm-Message-State: AOJu0Yy4Hd89K9imNUsoXXLVZ38xXXM0pdCzyEdaeQ8w1LrVWn7fsEdN
	iY0YDY1EGYzdCxilgsDvA4sMbzC75GxhvRF6g+bv5slXtatV92yRk+0jUa/WC/k=
X-Google-Smtp-Source: AGHT+IFwXIStMSuamLLszfwue44fiFsyS5r1vkhJKc/V6fjTvStINXv3htkE7bc+brSBhJS1PmJGBQ==
X-Received: by 2002:a17:906:e0d5:b0:a77:c26c:a56f with SMTP id a640c23a62f3a-a7a01130925mr304316966b.3.1721303459640;
        Thu, 18 Jul 2024 04:50:59 -0700 (PDT)
Received: from localhost ([193.197.128.38])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a79bc820d2fsm546971466b.200.2024.07.18.04.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 04:50:59 -0700 (PDT)
Date: Thu, 18 Jul 2024 13:50:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Farouk Bouabid <farouk.bouabid@cherry.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] pwm: add mule pwm-over-i2c driver
Message-ID: <fgpb3aswlk25kkziiwe62cjk5ajwx6xy6xvyfzlx35uc7quzwh@cov5otcowkgv>
References: <20240529-buzzer_support-v1-0-fd3eb0a24442@cherry.de>
 <20240529-buzzer_support-v1-2-fd3eb0a24442@cherry.de>
 <5hd7fndgivgusx76wq6mbvgefngd3tllqsfsk6pppbphchczte@ujagkep4miet>
 <25d71c19-6e94-477d-8d04-758015ca4b2c@cherry.de>
 <e7b3bfpvtrvt5g637yy7qxsbvfiylyzrjvwsro4hzp5t6cmeux@eqafx3k7oaks>
 <33d93798-459b-4d33-ac59-623a68ea48cf@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ddsoalw7wih372qx"
Content-Disposition: inline
In-Reply-To: <33d93798-459b-4d33-ac59-623a68ea48cf@cherry.de>


--ddsoalw7wih372qx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Quentin,

On Wed, Jul 17, 2024 at 10:48:52AM +0200, Quentin Schulz wrote:
> On 7/15/24 5:09 PM, Uwe Kleine-K=F6nig wrote:
> > On Mon, Jul 15, 2024 at 02:16:15PM +0200, Quentin Schulz wrote:
> > > To give a bit more info on this, there are two possible flavors of th=
e MCU,
> > > ATtiny 816 (datasheet: https://ww1.microchip.com/downloads/en/DeviceD=
oc/ATtiny416-816-DataSheet-DS40001913B.pdf)
> > > and STM32F072CB (datasheet: https://www.st.com/content/ccc/resource/t=
echnical/document/reference_manual/c2/f8/8a/f2/18/e6/43/96/DM00031936.pdf/f=
iles/DM00031936.pdf/jcr:content/translations/en.DM00031936.pdf).
> > >=20
> > > FYI, on ATtiny, we use TCA in single-slope PWM generation mode and PE=
RBUF
> > > and CMP2BUF as period and duty-cycle registers. On STM32, we use TIM1=
5 in
> > > PWM mode and ARR and CCR1 as period and duty-cycle registers.
> >=20
> > Wouldn't it be more natural with these to have duty in a base-2 register
> > for duty, in the assumption that your MCUs habe this, too?
>=20
> Not sure to understand what you meant by base-2 register here? I am guess=
ing
> you rather wanted to suggest a different unit/representation of the duty
> cycle in the register in the FW API?

For humans 100 as maximal value for a register is natural, but hardware
usually uses binary representation ("base-2") for values and usually a
register (or bit field) is used completely. That is, valid values range
beween 0 and 2^n (or 2^n - 1) for some n.

Note this discussion isn't really relevant to the driver. Just me
wondering about the hardware design. So if you don't want to follow up,
that's fine for me.

Best regards
Uwe

--ddsoalw7wih372qx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaZAYsACgkQj4D7WH0S
/k4txQgAm2WzqXl0JXzy98Aebusbt2VhAwr2jKTv4YxBaue6sXmXUxAWnguTQCxy
nLoe42a8AStJHRpj8fo1gZe2/2cBr+/0gr6+/VnMvSl4mcMeU6Djur4GTUrMLq52
q73wDi1ujB/D3EqSiBv9lDQazE3HE27hiEIl3DtftfHURQcXW6Lcv34Px2opdkK5
6hwJdNw9orw6h15+QblnBv4SCDNgzf8F3qPR9YNZneGIBkkLPInBSEeRYuGZpOX6
FdAcYHdocdWg7b80RVgEWiDsupOOhEM/UWvxypLeA3/5GnZokkuEli0w8DaYBvl4
E59r+LLHZgfIgeWdZhBw31y8J0G83w==
=3jTY
-----END PGP SIGNATURE-----

--ddsoalw7wih372qx--

