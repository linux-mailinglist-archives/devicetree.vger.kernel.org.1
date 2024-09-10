Return-Path: <devicetree+bounces-101615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1834D972B35
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 09:53:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA08C28152A
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 07:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D783417E8F7;
	Tue, 10 Sep 2024 07:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SOzFUMSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C516E52F71
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 07:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725954816; cv=none; b=LhWEsQRSoYl/ZjlylvkpD2BegXmaTDI+Qulq/o6ZRLBAJ/MpG+JHAe5AnEABBb9wexn/ycaa8+q8rlfYuQGRb5ZiVGSoxWYVoKX9XC354oJw7Zx3nvUnLTbxbD4aaDyHhhaEDLcz3TKHWLlki+w2a3FLa5LrzbKyVQ4flWB80KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725954816; c=relaxed/simple;
	bh=3kOckCJ3zJfAps2h/AwmdsA7upGrvE/ZTS/+vHfJdls=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HtRHyH/ZYmN4cUmHG9uHsT2M3wm21DU2KEuzRHhr1AuJdSlTkLTximKeQUmV7elHNSBaVUw1fZA+MQoUF1DQJWfxCk3GXmQhScn6iRKnuV8nuQjU/YvwuMx4W1Yv/GzMcnDRCI4mVWKmXB1Qquxa0K76avqFH7lmrmqUFI2HKP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SOzFUMSp; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-374bd059b12so3168831f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 00:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725954813; x=1726559613; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=shoX2ARTnjAfwts3W5+XviwrSe8VQj1wXkGxD3NKmZs=;
        b=SOzFUMSp0vGrh4caHExLXYWsqhjUhLwcJansJqf6cXSrFcFBPafqdylgWjYX5CqleE
         /3OJOU0wcne3MFObIrin/Vrm7/OkhBQmcCf7FB/iZGG0s43weFusnzEPnRS0RqJ+J2Nc
         FYsmUYfQomL+UrgvZTdjcVhGMsi9oVvajbMewJVc4vjozEXEFM8fGcWT28Vey1xTBZ02
         21P0bFkgnlrekMbyXzJziJezybHl6/aLb8mkcNHSOQLpPyn1pw6UrpPPnyjZM3kIgtU1
         vEDdvlzYyOnr0btuQI2D9WY/3SKamxdjPsNkSSlZRs7cjsEj2V67kRr1KClf6zHfUTRE
         ZuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725954813; x=1726559613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=shoX2ARTnjAfwts3W5+XviwrSe8VQj1wXkGxD3NKmZs=;
        b=IybnBwvV/HDKgRMRrKUvCRidqr5i06BiiALL1yEy+eTlafrR5t9lsLEl4pBv5ZXOSn
         l0KGEQFRgdB+xjCVHZukX6f8AtdRVqU6VR0ro2i4G7Y5e+eKa+4B6C1z6+J6Dbetg4LW
         a6S/dlsBRVoDS1gueYbPkwgVNER9/9irBbMdRNuaAEDeq/aIzIctYQHYrXHDK98G8qxa
         BUuTCha5H4gq8YILMgDe95dwdB2hqUQR6oKBiJ3wC684BbQwApgoHPJfGtFlm7H5Lfjj
         W9KablaXIaNUHiB0o6PaaLL+kS5+3xmc5IzI2JLcUhHAyaVpqB8vQgqeK3yzrVSovSof
         Tmjg==
X-Forwarded-Encrypted: i=1; AJvYcCXx9jQ0+zjLAMuvyILoCkPDQHF7wUhlnx0i1fHyFI/845Fy5BVOtXWrjxPx59zEAX9BExQF72M9wJc3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjq3Ci6KZXptR4bp5gYGd6L58g5WyNl3Op0gVeoKCutjzA3IOn
	IDner+1nk6mI5ytIzPGyRX/UIe4ChcrrH+xz40JZIEK5uvtE9l32DXw8fX3d9nc=
X-Google-Smtp-Source: AGHT+IENMdK/5AhA0KPXv0+AeOKMK0xU54Nn7FZkq6MEXkPuzfuPWq4a9kCnG4gHdakaS6NMNLo7Ng==
X-Received: by 2002:a05:6000:cc:b0:374:c269:df79 with SMTP id ffacd0b85a97d-378949f7e28mr5958326f8f.22.1725954812902;
        Tue, 10 Sep 2024 00:53:32 -0700 (PDT)
Received: from localhost (p5dc68d3d.dip0.t-ipconnect.de. [93.198.141.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3789566550asm8072849f8f.35.2024.09.10.00.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 00:53:32 -0700 (PDT)
Date: Tue, 10 Sep 2024 09:53:31 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Marek Vasut <marex@denx.de>
Cc: Frank Li <Frank.Li@nxp.com>, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, festevam@gmail.com, francesco@dolcini.it, imx@lists.linux.dev, 
	jun.li@nxp.com, kernel@pengutronix.de, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	p.zabel@pengutronix.de, pratikmanvar09@gmail.com, robh@kernel.org, 
	s.hauer@pengutronix.de, shawnguo@kernel.org, xiaoning.wang@nxp.com
Subject: Re: [PATCH v4 1/1] pwm: imx27: workaround of the pwm output bug when
 decrease the duty cycle
Message-ID: <clldpp6n5qsbrfjwpkz6cwidmvf6ujezlg3qim5dtiahte4dch@2ccocj2y3lql>
References: <20240909193855.2394830-1-Frank.Li@nxp.com>
 <cceb5ece-3aba-45d1-a5e3-3419245f345b@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rpeo6evaheq2e44v"
Content-Disposition: inline
In-Reply-To: <cceb5ece-3aba-45d1-a5e3-3419245f345b@denx.de>


--rpeo6evaheq2e44v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 09, 2024 at 10:19:59PM +0200, Marek Vasut wrote:
> On 9/9/24 9:38 PM, Frank Li wrote:
>=20
> [...]
>=20
> > +	 * Use __raw_writel() to minimize the interval between two writes to
> > +	 * the SAR register to increase the fastest pwm frequency supported.
> > +	 *
> > +	 * When the PWM period is longer than 2us(or <500KHz), this workaround
> > +	 * can solve this problem. No software workaround is available If PMW
>=20
> PWM , typo

Also s/If/if/

Best regards
Uwe

--rpeo6evaheq2e44v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbf+vgACgkQj4D7WH0S
/k48Mgf/ej11u9TqWoVQMnxHQnd+sK3E4TxjbvJ49leMpYo65cIequfyssgC5AU2
q8HPIPPGlohEk5qoTrFcCaTERiJMycBwkC+UZZ8cZFSXY1UCKLkTq6gmJLo0S73g
0aiNCTbJEYi+ERu3cX4RdOD3c7pjMuKRLuGcqZxqAgs1omiZIty4SkNzyrDKzYIO
pV+jP644liIs2kiwTZoYv5IpOVYUH2gtyt/GrthBdeHUpRCw6F6zh38Ercx8isj5
eXhYt/8lGVMuvI2HKpqt6iaFdQUh/smjBsv61PfuRMUr/yrSGtnc0VRE4WQhyZse
DwxLj2CPzFp91Ns2HHmEZDKYA5nldw==
=lYwG
-----END PGP SIGNATURE-----

--rpeo6evaheq2e44v--

