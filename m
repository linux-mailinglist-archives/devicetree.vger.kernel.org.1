Return-Path: <devicetree+bounces-246617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BCFCBE2A6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DB9430221BC
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF5BA30EF9E;
	Mon, 15 Dec 2025 13:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="wUlcv2GA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489430EF87
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765807117; cv=none; b=e5FCOCow0oDZGo0BJtTaHp6+lKwLzHjnsr6qWfCuhUYrPxeIX8xPcSziXAPsq4p6TyHh7dkNj+Oo4LlhQbhcEvECksSvBplNGCiBrkTftlYRC7Ht5ldckNafJVrgKwNhPQuPuQwkND4RSYB9+CyPSn7OBm8Psm//l/49xqlY750=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765807117; c=relaxed/simple;
	bh=z8orsyhAP5bzSwM/KHKWlgWDXWbCHovTI6KWadK9YNA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=I3JY3xjl9A/VNGNlqoGjLZJt2SIQvKyr17gMwrCpnZx3ur8LqiHe0eEo4sYXppAZkPS+g5ne+Ib1WN7UEUUnJfuR8aYQqe5SqQk3Isuz8w8OTYYL1SbGOOezUceXJrbIxfSUviFleIcE6ui4+O4rJMdrERJvPTv9GXoABpsML7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=wUlcv2GA; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8b23b6d9f11so382199785a.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765807115; x=1766411915; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=z8orsyhAP5bzSwM/KHKWlgWDXWbCHovTI6KWadK9YNA=;
        b=wUlcv2GADub/moPp85vNTpo6moLR8z0CATa3gDVWpwGEZ0xkDy7XI9r3mRDN6SYmMl
         aktVX/1tTV43UHs3sM/WcCzFunZKXYFnul/VZUsL7aW4D+aJMOttkBx0vhg0ZS5jTF03
         mbH6Y979krjb8jKR5ei38EMSiohrpkbAblfyvo46brporXen6Ys1k7k00JsGAydPiu0o
         msk1oIJonkDirx7sXvHRRHUa1+7JBQCzNR34ldoKTfwrBJmqrJULbGIA1HjZsiJitz/i
         twMLcPmUgoRRDikRL9UgwMUv3Coc7ysRDs2sp9gJA2T3+x4kVEdGiY7nFruFaKP8NUVU
         5kMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765807115; x=1766411915;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8orsyhAP5bzSwM/KHKWlgWDXWbCHovTI6KWadK9YNA=;
        b=O7jPD+zZNhuBVic4PZWhPHWjgmkzPzKQBHlfH0rVmYqwdqEYKn4ESrbIi7gOM+o4s1
         md0yTqqGD1AMBJL9WNeHtcmJxx5fTjI5LnxBlJYKBUzIfCRKHcH7zjO+SYQuZbkTN+33
         Zz92HS3oHww7gfHmICKqIGHI3/MpOVftRTLwdLv6Ss9yaqgMva9Csr36zoFLQbE9f2YX
         cZZ7Mvb3eEpYL7Oc3cOqLLO28JpigopdSIvi1Ap6Tg5/qEQ9S4LxM5Kwj+8np1UEJEiV
         P8CXjpluwkJSor5pGxbKyymaj3lhDg2ZZ5GllnmuByCwxNO1DhPb5xjUcnOfQ/k2pNM2
         NQQg==
X-Forwarded-Encrypted: i=1; AJvYcCUeUnkvjrUk4VaZkWnlMeOcY3Bjlqr5AICPRh3ZNbW6gvF1MwPELLDrVOu5UgD3sOAoMx+fjliUl01O@vger.kernel.org
X-Gm-Message-State: AOJu0YzHtpC3XvGJdKd37S6i7GhwnVWU6k2KIsW2cqIwhU9aEN/E5gGS
	Qc7zrMpFidzh8sWb+itQ2DLfg0PxiICizk+Gi6bkjj2687/DvCKv9apAgD+RFhAX35248ZJVQMe
	0bQiPCiE=
X-Gm-Gg: AY/fxX5uruWiQVZnNPbFQ6gIc5uRueyJ6q5zoDOvKmc0LEV8S+m1BB9dMmogcAvDOGU
	SYWqnMCPZVOXRyvaPx0qES7i4kZqu6YPvhxgU6mBivoPO69GiB+S9oxuW5dQvRcJeKu4nE+Lqzy
	vJlzDzuf8aHITbID9+BRcKyEPxhQ58c8NfdUxdd/lYcbdD88dtG31nAf5lkcuvWIkJHLariCnB0
	BDBFKfoKxraE7VxBRjNcIXkUKPy7ePkEUWQ+FNaNrqs2ncCQdDtyiokZxSXUyxPnaGiFvtkZAda
	YZjZw1Y/QoTRz/EmaeKr9RZfcEcwL2bglwBJWxOKM1vcDG3nSKVAAMybmcvvD4TtoVosFjhuCat
	k9aLKq7pxQj3xUivqCjCh+CsLWAzCimNkANZx3yiXTVDTHBWMe+cem9u/d6/LQPfZRuOW1chDlK
	TM5WRS6G2drG1kUFOn
X-Google-Smtp-Source: AGHT+IHCJspCKUvkOG+Xo70rNhXmh6KZCM3b8s+rM1WOTs7Ip4vAkhAuAFKg19FdUxMEjoF51Dgt+Q==
X-Received: by 2002:a05:620a:178e:b0:8a6:e2b4:ba73 with SMTP id af79cd13be357-8bb3b334244mr1520231085a.51.1765807114979;
        Mon, 15 Dec 2025 05:58:34 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::5ac? ([2606:6d00:17:7b4b::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4d24bsm1131976285a.50.2025.12.15.05.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 05:58:33 -0800 (PST)
Message-ID: <04287d0b6207c98f24112b492b9ee52f0889da39.camel@ndufresne.ca>
Subject: Re: [PATCH RFC v2 2/3] decoder: Add V4L2 stateless H.264 decoder
 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Zhentao Guo <zhentao.guo@amlogic.com>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Neil Armstrong	
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet	 <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Date: Mon, 15 Dec 2025 08:58:31 -0500
In-Reply-To: <9ab31529-8146-4ca7-8389-04c69f7d1b49@amlogic.com>
References: <20251124-b4-s4-vdec-upstream-v2-0-bdbbce3f11a6@amlogic.com>
	 <20251124-b4-s4-vdec-upstream-v2-2-bdbbce3f11a6@amlogic.com>
	 <9b74086ac938475328904960add2c284b81efd4a.camel@ndufresne.ca>
	 <12f26bf8-409b-4206-a39b-4bb2a14edec0@amlogic.com>
	 <f9c113914290a0701614c64b5e2167d4b3e21646.camel@ndufresne.ca>
	 <9ab31529-8146-4ca7-8389-04c69f7d1b49@amlogic.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-qBzEoaReG3EWP7r7Fagz"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-qBzEoaReG3EWP7r7Fagz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 15 d=C3=A9cembre 2025 =C3=A0 10:15 +0800, Zhentao Guo a =C3=A9crit=
=C2=A0:
>=20
> =E5=9C=A8 2025/12/12 21:51, Nicolas Dufresne =E5=86=99=E9=81=93:
> > Hi,
> >=20
> > Le vendredi 12 d=C3=A9cembre 2025 =C3=A0 12:11 +0800, Zhentao Guo a =C3=
=A9crit=C2=A0:
> > > > strcpy() would be the preferred helper for this, no need to fill th=
e
> > > > leading
> > > > zero liek this, see include/linux/string.h
> > > Ok, it should be more suitable to use strcpy.
> > I have to correct myself, I meant to suggest strscpy(dst, src, size).
> > Passing
> > the size for safety seems important, and unlike strncpy() it takes care=
 of
> > the
> > leading zero.
> Yes, we use strscpy() for copying all the strings.

Indeed, I had miss-read, then you simply need to remove the code you added =
to
force the last byte to be 0, this is not needed with that function.

Nicolas

> >=20
> > Nicolas
>=20
> Thanks
>=20
> Zhentao

--=-qBzEoaReG3EWP7r7Fagz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUAUCAAKCRDZQZRRKWBy
9AuCAQC5OW8TUz9HUz9rqFtRU/k9dXVqrmNFo5ppn/oDw9vXZAD/XbR9uAxf5plF
ozw8abhWcc2hYmCZKWQME9F0PeJQfAM=
=Wm8u
-----END PGP SIGNATURE-----

--=-qBzEoaReG3EWP7r7Fagz--

