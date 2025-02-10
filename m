Return-Path: <devicetree+bounces-144845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0BEA2F71D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B20E166D64
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC852566F5;
	Mon, 10 Feb 2025 18:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s+MtNltr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AAA257440
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739212274; cv=none; b=dF/xyHQBqt1jRi2YKatsoXO/tBymtLyiYxLsf5ewKtxw4mzawrnO+ngCxHeUA+OcfspCBZQR2SAr+TGmt45i4DUjvIQRWdOxblgWMMdKOru42uBYlfZRUdItXmgtcozyyctguIS7W/3aGjEsauMXpDJ+NxIrX4rETlZxgfag+EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739212274; c=relaxed/simple;
	bh=etzPapOkZJ8GDSELu2V0389CvMEeFoZv8uZUDou4T6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UZ1wgEiLDWnqDk5fG1fWP3rEKuYM8XNX1A+yp0hAVOKK+JORypSx1WqYiZvDQ/aJpo080roRq3FBiuxsl5gOE0nvQh585nPnTLNfFhv3IyeG+sClQS5CjKS7XlVWCetF1oxmJ+db4faMkxHzEU0ScN2yLN8vqUtGpSwDFV4ChlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s+MtNltr; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-ab7a6758b7fso390968866b.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739212271; x=1739817071; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WRoVYFJvOYyL8xWCdpgS4WvSxBvenJHq66eRRrS+VXM=;
        b=s+MtNltr6LgKroLh9xZlfY2OrgKdtTqW2OBAm72OFQ7zE37mfdPirqBfGnNyFg1sbL
         6vVcCYRdbFLJ6MdXr9XOHw0Ti5ipUBnOvQ+RE7VZCM92PQ0NgO4ki5SBChQF+xNyUuBj
         5oOSWF40V75w0nWMTOjE6lTAf17TKeUYwSqk8XvO90R5c8qklz6pFY3tnc1Q7sE74/kw
         fMCZTK1xAkiU6wTzWGY54sei7iUv2skWmf1L1M2uWpQlvswCCQ6YadLNbJ1ynYuudKGW
         KgWLxazj1fwANp5sNP6pcZ8hxksRitJIlopK+YelIuhQYX4+31BrfdhlK74DpqYMv4h2
         Flwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739212271; x=1739817071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRoVYFJvOYyL8xWCdpgS4WvSxBvenJHq66eRRrS+VXM=;
        b=QdkWaqCufc0X/71JdpzzoQf+W5QhIJVHKnTkiOx496/4Ldamo3GDgT8Vbww46EThu4
         e5hKWiCi60wZGFh8/gWgOahCvffYW/FIfE/wOubmrwmjUgUarAZfdouz1wQJ7zIOSlVb
         g1ee/hD7yZG3FMee05aHL3QwlQpmGyn5W0+W1YyQHyvLLYynPnV/Jb2h1AzS2ShbPg6V
         aJ89Jyb9q+ErJ1QUzGJxoYPXdMDS+AisVxloRnC47mIopDjZGfhflHoTaTBeeptdVvfd
         QVyYv3+vYkmsp/99OwX69ruKcWCZPPsf+17sDrOlv5RQNcqMO7KS2RDVitCKdviXVc4n
         EjBw==
X-Forwarded-Encrypted: i=1; AJvYcCW/d7oEvEMf6v86tnMyfHKeZxiMpSFwLiY++cOVSPnKDcr7tMXQXdJTr7JhZ+bsTndvQK1lZWns5dJ1@vger.kernel.org
X-Gm-Message-State: AOJu0YzJig6U0mKxzRa7kjFrPjH3TSxhmWC7GdsGoSMfuf1tOCZJGPd9
	QpQiPJXuTGtwysFQo26UqKwzzNbXE9R1kjl1oqPH7/UOYdvl8miSNXDOFaOPx6E=
X-Gm-Gg: ASbGncsscWhoIFm9QMDJKTecDRpFSm2DQX4mUcSPhZtsApABH/h4dVTuwGla2P65X3C
	gQ2Nso/1hlGXn+n5SvFi/PL6X7zuimuwtyxc5l6fB6SkiwoMsMNv+bhRIXEa3n9Yr9If9qbMi2l
	Z8AHa+wAXAeC9LtoHp/qNejlg7+ro0Vic/h1kM5pqOjAnclHMKjfOMWQ5NcNAB6pfPvIKghDhqL
	GR6s+jdqAqA1pqQPSpZnaT50cuwbmTf4qpViB57hqJe7j7hPSNOVEtheGkA8/eRH9MnEmAspyEy
	e1SImOgSOy1LXkEtADur0kI/dBIdea/65/vhVaqn2+rpDYRkPy5Mp/cpfA==
X-Google-Smtp-Source: AGHT+IGxnUYjEIEFumIffoV7za36A5epYh//QQ89hdBeu7W4Q3SvvoIDdRj/qSFbZjMv9ioyPcD/UQ==
X-Received: by 2002:a17:906:9c8d:b0:ab7:c1f:2b63 with SMTP id a640c23a62f3a-ab789bca7e5mr1713691266b.27.1739212271071;
        Mon, 10 Feb 2025 10:31:11 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7aab8d8fasm487594166b.58.2025.02.10.10.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 10:31:10 -0800 (PST)
Date: Mon, 10 Feb 2025 19:31:08 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>, 
	Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?utf-8?B?SGVydsOp?= Codina <herve.codina@bootlin.com>, 
	linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] pwm: pxa: Use #pwm-cells = <3>
Message-ID: <lzlzq4fh3762kyezzr7eqnbkgsu6nbvzgi7yqzwy5tbsrb4tg2@gdpjz3cqrqq6>
References: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cuu5yijfy6peiu4x"
Content-Disposition: inline
In-Reply-To: <cover.1738842938.git.u.kleine-koenig@baylibre.com>


--cuu5yijfy6peiu4x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/3] pwm: pxa: Use #pwm-cells = <3>
MIME-Version: 1.0

On Thu, Feb 06, 2025 at 01:06:24PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> Hello,
>=20
> this series' goal is to soften the special device-tree binding of
> marvel,pxa-pwm devices. This is the only binding that doesn't pass the
> line index as first parameter.
>=20
> Here the #pwm-cells value is bumped from 1 to 3, keeping compatibility
> with the old binding.
>=20
> The motivation for this was that Herv=C3=A9 sent a patch introducing pwm
> nexus nodes which don't work nicely with the marvel,pxa-pwm
> particularities.
>=20
> Changes since (implicit) v1, available at
> https://lore.kernel.org/linux-pwm/cover.1738777221.git.u.kleine-koenig@ba=
ylibre.com:
>=20
>  - Use #pwm-cells =3D <3> also in the binding example (*sigh*), pointed
>    out by Rob
>  - Add review, ack and test tags by Herv=C3=A9 Codina, Conor Dooley, Duje
>    Mihanovi=C4=87 and Daniel Mack. Thanks!
>=20
> I intend to take the first patch via my pwm tree. Assuming the pxa and
> device tree maintainers and bots are happy now: Dear pxa maintainers,
> please tell if I should take the whole series via pwm, or if you want to
> take patches #2 and #3. If the latter: Do you want to delay application
> or should I provide an immutable branch for patch #1?

I applied patch #1 to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next
now.

I don't know yet what should happen to the two other patches, but maybe
it's a good idea to wait a bit anyhow to have 3 cells working for the
pxa driver for a kernel release or two before we switch it.

Best regards
Uwe

--cuu5yijfy6peiu4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeqReoACgkQj4D7WH0S
/k4VkQf6AzUwWcUMhatT49kzLrH9Ik8W0qT2EHQhxjiTKiZvylgEcKffpbQkdE63
S3rsHNK2V+sauwfreQSx3KA4YW95TWhVfjGOS/aij1mL4Plse94GOCEhw8zLCzsc
HJi4SKa3A6BPsuRYLuIqdNcgKh0HYEXibFojcux7CKSAyfS9mk9K3WsEuCpw3MVV
6Moq80l2BVV82SKZ9xR9iANgDIxji9xFJpMRTNcK673fnq8++TFwevwzB1u/iMf9
MitOOVkNj5+X/oYZwDZAneQLABUE/qDeYzWEtU6P/2KuT3RiTmP0rGAPcHlzZwIb
GkiTBJZ6Xu07fhBuP9ceT5liCF7+NA==
=GLjj
-----END PGP SIGNATURE-----

--cuu5yijfy6peiu4x--

