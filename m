Return-Path: <devicetree+bounces-233275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51660C206F1
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 15:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C44571A66A51
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D9C23EA82;
	Thu, 30 Oct 2025 13:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DUcIMMVW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DD223D7C4
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832464; cv=none; b=Dm96knznHBtcXpLfKqMXIV5Gu9+G3ZOpxFDhkxOOO8DdXlyT08TNGUdLm1aU/R599uTAM8TjtNPT8NOayLw/2hMWCdYiekYSbYetgK5jcM7Qka6zmtJMHpwt1ZbndvaXHZdIJJWrtotRUnIteoZ109ibLDSaozaNBKs7u4DuDbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832464; c=relaxed/simple;
	bh=262QZ+XDmTcRlPuTpI23rfyDxN2AbKjqytkFjDvwheo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lV8qxPJ8jaBNTq7Lj+pV9gHWkQ91YYN4yNdc5lmTACjwsYu/zAk2girgDYDc49gVVbBvhGULhqCunmwyGFsTC25iUEa4gw71NCNImlgwdDQrhbjreAs5iH837ysnc+q51MRYh/PAwnh3RigjFNI3jCFuSySlfYS35EkKIj1/6qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DUcIMMVW; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6399328ff1fso1851152a12.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 06:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761832461; x=1762437261; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AJYbzh7aiosJcbzX1tDjME9nx/8tSNeeeFOOgsgmZUU=;
        b=DUcIMMVWT+aiTJO+LFx5VMkvfrFy7ENCEZu4VrikX/KbCUDJO2ALjYlpIVWzHmKHyJ
         X9WgCPlZRoWscYbdmu9QELbY6zRQeTzQoGaXdN+Jkkm3JG1oKGOF+ytRa6Ej3uw9xrlB
         Bp2iOqxVAtLTOw1PnL/gGWgJc3gHMGI3/mUmn/J2D7hC3Wea9cjqOkvpaXDIyrXm1P8O
         kBqiDmdNTj8c/k6DSXc4zS4G8bNVVcSwfHghsamizWuS0HnNRvvHuCb6tenW9vg4tFsY
         PrdywDhvK0rhsjPdsoNAeKoDscTHPr9KuVL/54enES9TPz4ui9SPiWjtC0mXn3jAhTit
         I/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761832461; x=1762437261;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AJYbzh7aiosJcbzX1tDjME9nx/8tSNeeeFOOgsgmZUU=;
        b=hcM5NZUPyk2RCiVBxj1ilj9DhFId1n7OLmHdEMH60hQrYq6OnqFuh9FR4BqaeTZkt2
         vcLt2z48TuYscAUhXjrK343GMPIGQVLwsqB3592PZzIiH9tGHUrVvolBMSKHhZ+bIEVk
         ydnmDAKIF89iS9LTAl3o6/KPWC4eT51QaL4DNk9kbo2FoRiONu28aepj3Gtr0yqzan9p
         UOCr8bPJOyr9NpePG3Xj7hQoZJUq8jETuReUWg0cob8VRfYUrv7RstBkpWDKauYR80E4
         hzYq4jpITscM2ubGX/Zxd0B6gddNXdL1McAvBUrTWw6aEA4+M/XgWcxSIs9maE46BQWb
         70YA==
X-Forwarded-Encrypted: i=1; AJvYcCU7J1Fnermmb2YCdcJ+OtEJ68MHO+jzVfdEMfXdBa0rGQdz9kfnEkFmQrlsj1yjfxxyp1AggzXRudXl@vger.kernel.org
X-Gm-Message-State: AOJu0YyRhzUbj0ji0X0nMAmcDKBPTT1WwTJqzNnAy9beOOoeDKoEGE9E
	cKy7XPc+czvX3fi/IA/A7eCUYJmEL3mZLqZkjCgaEShZ190wv/zW+yZU
X-Gm-Gg: ASbGncsx4lIwaY14zcYxbXAH3k5tOkcpuJHNshe5qg6usGMvEZKE7LwsgGjUILG8h02
	Fd5VeYwYZFcM34YJ3njhPWHxLCRSxJQJH4lwbTzbLkEyy1WWfoxPVIsw8awMNs2bZDdHXvtLZ4s
	/2clqB2GMxDB+Kc3QBb1wDWLzUbg6yuLaqMJgOS1ZWGt3F+2CA2aCj6J5Ie8lZiMbC9TWOpbPQz
	IQ6gmWUIMAbbr9eepY7NJ/cPubWYTTAsZEyL4a7LiUB9544RKq/mYAqBB4PxH0hL4LW0aXlQZ3d
	EkQGiyne9ru+6JSlMbHhIR5dgRk0YvTMrv11uz6YUoI45G6p10wAaeGeDOXBguHE+5qbzDdWfv+
	wg+jYR9CoY6zi70quIv2OidaoyMN030aH1Er0AuA6T/u+tcbsHN3s8ccJODxGiIoIQoCP9AM/Oc
	mjwe6smUOIxC6f2xa59QNT+oXK4YvTK8HMjtCVVQqexczcRAXVbdyABMgS1fpI+smFDVo=
X-Google-Smtp-Source: AGHT+IEQFVIvYewjzZ/93rg8is2jjIrooht86OTcuqkjAo75gh3hiz+k4V+6PV6A+M+W65cLQnX5qg==
X-Received: by 2002:a05:6402:34ca:b0:640:6b00:5e93 with SMTP id 4fb4d7f45d1cf-6406b006061mr1458460a12.36.1761832460539;
        Thu, 30 Oct 2025 06:54:20 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e86c6d7d3sm15133490a12.27.2025.10.30.06.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 06:54:20 -0700 (PDT)
Message-ID: <1ae385ba6000fc5e90adadc6dcdc2fa8b19d5783.camel@gmail.com>
Subject: Re: [PATCH v2 1/4] ASoC: cs4271: Fix cs4271 I2C and SPI drivers
 automatic module loading
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Herve Codina <herve.codina@bootlin.com>, Mark Brown <broonie@kernel.org>
Cc: David Rhodes <david.rhodes@cirrus.com>, Richard Fitzgerald	
 <rf@opensource.cirrus.com>, Liam Girdwood <lgirdwood@gmail.com>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi
 Iwai	 <tiwai@suse.com>, Nikita Shubin <nikita.shubin@maquefel.me>, Axel Lin
	 <axel.lin@ingics.com>, Brian Austin <brian.austin@cirrus.com>, 
	linux-sound@vger.kernel.org, patches@opensource.cirrus.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas Petazzoni	
 <thomas.petazzoni@bootlin.com>, stable@vger.kernel.org
Date: Thu, 30 Oct 2025 14:54:19 +0100
In-Reply-To: <20251030144319.671368a2@bootlin.com>
References: <20251029093921.624088-1-herve.codina@bootlin.com>
		<20251029093921.624088-2-herve.codina@bootlin.com>
		<06766cfb10fd6b7f4f606429f13432fe8b933d83.camel@gmail.com>
	 <20251030144319.671368a2@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Herve,

On Thu, 2025-10-30 at 14:43 +0100, Herve Codina wrote:
> > > --- a/sound/soc/codecs/cs4271-spi.c
> > > +++ b/sound/soc/codecs/cs4271-spi.c
> > > @@ -23,11 +23,24 @@ static int cs4271_spi_probe(struct spi_device *sp=
i)
> > > =C2=A0	return cs4271_probe(&spi->dev, devm_regmap_init_spi(spi, &conf=
ig));
> > > =C2=A0}
> > > =C2=A0
> > > +static const struct spi_device_id cs4271_id_spi[] =3D {
> > > +	{ "cs4271", 0 },
> > > +	{}
> > > +};
> > > +MODULE_DEVICE_TABLE(spi, cs4271_id_spi);
> > > +
> > > +static const struct of_device_id cs4271_dt_ids[] =3D {
> > > +	{ .compatible =3D "cirrus,cs4271", },
> > > +	{ }
> > > +};
> > > +MODULE_DEVICE_TABLE(of, cs4271_dt_ids);=C2=A0=20
> >=20
> > So currently SPI core doesn't generate "of:" prefixed uevents, therefor=
e this
> > currently doesn't help? However, imagine, you'd have both backends enab=
led
> > as modules, -spi and -i2c. udev/modprobe currently load just one module=
 it
> > finds first. What is the guarantee that the loaded module for the "of:"
> > prefixed I2C uevent would be the -i2c module?
> >=20
>=20
> I hesitate to fully remove cs4271_dt_ids in the SPI part.
>=20
> I understood having it could lead to issues if both SPI and I2C parts
> are compiled as modules but this is the pattern used in quite a lot of
> drivers.
>=20
> Maybe this could be handle globally out of this series instead of introdu=
cing
> a specific pattern in this series.
>=20
> But well, if you and Mark are ok to fully remove the cs4271_dt_ids from t=
he
> SPI part and so unset the of_match_table from the cs4271_spi_driver, I ca=
n
> do the modification.
>=20
> Let me know if I should send a new iteration with cs4271_dt_ids fully rem=
oved
> from the SPI part.
>=20
> Also, last point, I don't have any cs4271 connected to a SPI bus.
> I use only the I2C version and will not be able to check for correct
> modifications on the SPI part.

I'd propose to drop SPI modifications in this case, because by doing this
you actually introduce yet another problem for the I2C case you are interes=
ted
in (namely if you'd enable both modules).

--=20
Alexander Sverdlin.

