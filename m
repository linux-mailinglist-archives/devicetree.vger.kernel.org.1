Return-Path: <devicetree+bounces-90434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD1694561D
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 03:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8B9E281AE0
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 01:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4787415AC4;
	Fri,  2 Aug 2024 01:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cZnoZJdE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B603A8814
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 01:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722563659; cv=none; b=T9pJyW9YHuEKW5Bh+m3nfCzke+OFZ2EPooAWeN72/Qkf8iAyiX0VVRiA11yXqowFK+laBjMTB8nYJB08QKfBsuXxHENx0A/kkFHDQJuPR9tEcNa3zDbLr8sSxaxbPd9qCMU+QwEf7BvwTDD5qC/ULnd81gGyc1yNu6VyXBIwfPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722563659; c=relaxed/simple;
	bh=7ydCdfaKMGfVp/rdGV0UGfSiuhgPNsZj7UoJ8IOqCK4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ypt25s0PbOeoGsGx4aXs+FSSyoueeTlmtB66eSY8J96yb6nawvj9FRUpFPohZPtlLe2Ku7Nng5Cg/0H3uvPgWfEnmsIRjh5DwlRWsHRPVgWpNOXElfDLpW+iHJhOgfkrqtM6PHB6rhk4g+LhY068KzHgurfu9z9KNN+2SYNugZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cZnoZJdE; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4266f3e0df8so48696775e9.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 18:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722563655; x=1723168455; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AHz4zbF+OAn7WCu3OcAlZ1crFNbQVcisuL4LzL4ZtJ4=;
        b=cZnoZJdEDmvIVB0R6kRNUgZhJ1gWsdTtiO6jhF2KWNCXEnrJYb9rdhRXaVGtH30cEJ
         Wzs8lzQnrzF3tt6Odv+BR9UyzuXoeNTplGOlAzJISjmGilrhneVq5jl8NMdnqAkqvXtN
         glFAbwPtYkDB+SGmR72mmwkHZuTMyXRe5v+NGOMlGEBQPF7r6MxYHbcb5jpWe8IrlnJU
         ODqkEsC+r1QBSPw6PtYkP4mXnyzIh8y3B5mmVbzoDXbv0DNV3/yRVmTuRHwh9+TNVR5Z
         TFgVvx+KWQUZEJm9sFSfM4qX8cbwq2FCnnVR2q6uZ61UrcAyNglR8FoT1N14z2NEQesc
         rHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722563655; x=1723168455;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AHz4zbF+OAn7WCu3OcAlZ1crFNbQVcisuL4LzL4ZtJ4=;
        b=I0lbiGPEcnglWiSIC6YOkqgBE0u5O+qGqx9HJrBUVLBg58vAkpjhi+4CczbHn09QJN
         3OMKr/2GimLfbFC1V6Pf/iPeofm8OgZtSZBCzO4xyUjv+BrHEU1MfSapl7v8jS/peAeR
         qc1a/CeshZ2B6MOD6uOXn1/VcysmWaH6jX4AcCJ+a0foeRh4RZ5Ck0PfRmsxvwiFWHx9
         lzXQsn9ySd6Rxb3DXxP9cPVBoRkUSevtyZU84uD1nS6EKrXaJgAmXL1lcsTRB1z21JRn
         TUa2wo1hcA14me+RzmzlTTVdts7QwgOqpW/f9M5igASciBIfkb7CK1OZQJ+MvcoqgpCB
         CknA==
X-Forwarded-Encrypted: i=1; AJvYcCXkEhYjvP9wZiJkK2pWqFD7gBrV28qzu5AvDrWyZev6y75w6Ygt/QQHNubRwAgSeF2szZldNCW6eZE4vX+nCRpK6inOlRhP+FubDg==
X-Gm-Message-State: AOJu0YxRBLKCFC2VpRaGeW69x1GLuy7HA6q7NulL56bP4T90ZMynxgJq
	nuYNQMTn6XFSPZqncXdBxbvq2lBZLa/Ct17jJyanC/8tfYOoqKw+4INVwCf4G5c=
X-Google-Smtp-Source: AGHT+IFPKqTQItpFef5Ablsww2UYpG8aidMvacF5FvaDF10hxOywrJPTm3nna6NFAsHNcR8g4fo3nQ==
X-Received: by 2002:a05:600c:5102:b0:427:d72a:6c26 with SMTP id 5b1f17b1804b1-428e6af2e18mr11943535e9.6.1722563654338;
        Thu, 01 Aug 2024 18:54:14 -0700 (PDT)
Received: from localhost ([193.196.194.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428e6e4f5b6sm14476105e9.25.2024.08.01.18.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 18:54:13 -0700 (PDT)
Date: Fri, 2 Aug 2024 03:54:11 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pwm: add support for NXPs high-side switch
 MC33XS2410
Message-ID: <f7imhfnhxt4mtasim7upuupyh2czt73coaa57aucswkzk4aflf@iiiymg422tj4>
References: <20240515112034.298116-1-dima.fedrau@gmail.com>
 <20240515112034.298116-3-dima.fedrau@gmail.com>
 <aczpsiqyh4qsbvnqhqdnvkj2j3fihkltafop5ajkxm57sehbx5@mn4vp7avpeac>
 <20240731084648.GA18584@debian>
 <bokad5wa2vw5qwdrrqpkkyrxgmxco2ix76wdaxlqv6usi5rdck@46bp6ywqteo2>
 <20240801142802.GA212266@debian>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lutjv44n75uxmgq4"
Content-Disposition: inline
In-Reply-To: <20240801142802.GA212266@debian>


--lutjv44n75uxmgq4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Dimitri,

On Thu, Aug 01, 2024 at 04:28:02PM +0200, Dimitri Fedrau wrote:
> Am Thu, Aug 01, 2024 at 12:24:28AM +0200 schrieb Uwe Kleine-K=F6nig:
> > > > > +	state->polarity =3D (val[2] & MC33XS2410_PWM_CTRL1_POL_INV(pwm-=
>hwpwm)) ?
> > > > > +			  PWM_POLARITY_INVERSED : PWM_POLARITY_NORMAL;
> > > > > +
> > > > > +	state->enabled =3D !!(val[3] & MC33XS2410_PWM_CTRL3_EN(pwm->hwp=
wm));
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > [...]
> > > > > +static int mc33xs2410_probe(struct spi_device *spi)
> > > > > +{
> > > > > [...]
> > > > > +	/* Disable watchdog */
> > > > > +	ret =3D mc33xs2410_write_reg(spi, MC33XS2410_WDT, 0x0);
> > > > > +	if (ret < 0)
> > > > > +		return dev_err_probe(dev, ret, "Failed to disable watchdog\n");
> > > >=20
> > > > Wouldn't the watchdog functionality better be handled by a dedicated
> > > > watchdog driver? Disabling it here unconditionally looks wrong.
> > >=20
> > > Yes, would be better. I planned this after this patchset is accepted.
> > > Without disabling the watchdog, the device is not able to operate. So=
 I
> > > would stick to it for now and come up with a patch later on.
> >=20
> > How long is the default timeout? Don't you need to disable the watchdog
> > in the bootloader anyhow?
>=20
> Default and also maximum timeout is 256ms. My hardware is configured to
> let the device stay in reset until the driver puts it out of reset by
> setting the associated GPIO. Datasheet refers to it as "Disable mode".
> Outputs are turned off.
> Without having such reset logic, the device would need to have the
> watchdog disabled in the bootloader and continue in "Normal mode" or it
> would go into "Safe mode" while booting the kernel almost sure violating
> the timeout. Outputs are then controlled by the INx input logic signals.
> I think there is no single solution but rather depends on the use case.
> There are three modes which the device can be in when the driver is probe=
d:
> "Disable", "Safe" and "Normal". All three are handled by this driver,
> assuming the watchdog should be disabled.
>=20
> [...]
> > Should this better be a mfd driver then?
> >=20
>=20
> I don't thinks so, the watchdog and the outputs belong somehow together.

Ah, so the watchdog doesn't trigger a reboot of the machine, just resets
the I/O lines to input? If yes, that's not what a watchdog driver is
about and so this isn't a hint to create an mfd driver.

Best regards
Uwe

--lutjv44n75uxmgq4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmasPEEACgkQj4D7WH0S
/k4hAwf/YRfijdWk09a3zclVfSN4jt2iwQ/mhmhVUqhBInOQuQsXnYvhUIQnanX4
gyn51CJrxJPoL+OR+cgpHCshNTq1LjK5a0MDBUfZPqyo5lDCDb/gffWEIrflLPBX
Y+ny19+wvx9UWxLMQQD7zR714WUJ89AZOsDfJto5Le7Kk/oHPhtiVxbyNT+OZzPN
RuPSr0YiCH94jzE/kMt8mLdWgKOjLgbgqOYdnnbIMkwWTfwPOSXSpCTMsa3lRtOD
AQS4FT11VOz3xKzfSsZQ5EMcCCirqERPDNYLDtD6ElDaSOSW0t9y+NOIFGxCgd3E
4pVOQ4S8W9h6f0qHmFEhch/rpg3QHg==
=FTlT
-----END PGP SIGNATURE-----

--lutjv44n75uxmgq4--

