Return-Path: <devicetree+bounces-118591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D45DB9BAE09
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 09:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B8831F22D73
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 08:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E9B1AAE28;
	Mon,  4 Nov 2024 08:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="G/GsfVUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5AC19DF8B
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 08:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730708920; cv=none; b=V37mdk9ADTq5gW40iiuGUJhtakgZkxBGnf8ny5wATEyFdFaIEmx4QwzCgwQetM3mDZ24Ox6zmoEfhz9dmp/mxJpA4DXv422rH0g5hrQDLsrXnEqp5sxqpIQ+4WJQ1Kw28OTxbbvtZw80jp5ikt8VYOwcIkJ+MRgGIR6/106ud1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730708920; c=relaxed/simple;
	bh=DMxdTs3P5a3spdGv0N8uVHm9YCakqkMYGmZziRgyw4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nBe1QWuWE0BcwGvxTrdU8INHDG5BGqZBqr+k6C7Gqe3VwVQrgwJEWs6yn+dYNxBl0Zuh3G8VptO6fnhWIdZFN0OTQf1mR76LUEiQIMmBMc2SQyjV9KcueR0DGSZM9UITGYtbQwaILPd44e9Rp9I0RkohWlyZmWp/bbYl1imzQdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=G/GsfVUA; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539e3f35268so4795754e87.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 00:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730708916; x=1731313716; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sm0NqV/gx7zKCxHVaS9AeFPFUpX+otR+14tFIsVp0BU=;
        b=G/GsfVUAorj7e42iDeumS1SH+yoOgsB2r/NcR7eDW1/VxjIKutrvneflZel2QFBhMq
         oBd7jSHmaaiJC/3zQr+tCHcYZM7vOdtVGpQMoWgfNqRlB+gKIeIbJyPnWgTPbDKvcHrC
         tZM3FzoiQdXmjb691+VuHZmOKejiHTsfkIaoZOKMEdYof77fYgL4KiFJbg6F3g0QM97x
         LoLDQ1sSRl2f4YKN/ysYZMONloizH5xQoWtRmWXgJjIsl5rPzNe/2sUb6X79VSc6nr35
         jZ24fQVZ9qicxWn/zKNxRRUttxO33qfq6SzrEUI38LAmZGCvgBU0GRK81ZLuDy9+IadY
         KyiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730708916; x=1731313716;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sm0NqV/gx7zKCxHVaS9AeFPFUpX+otR+14tFIsVp0BU=;
        b=AdUH54nrjYKxNGEsJ85UnpXbyNECz6JHmWb5EpEXlMzRyRNpwm2rjVRn4gW2yO+5hJ
         GM2U63t6zuvukvPUqavlCijsBmBZ5IOqXk+fRWfmq1EpPjfQl1fuYjnxx304/9scmYnh
         m4Q/zBnXEKMKuMy49vKStXjS5vDZj5xV0Ppm04pXjW3xOnB3BuhvGHWZzVd6ZGKRtJ8t
         D8ktD71ON1X+CZ+AEcUOKCptqqwW2YsHR+mV+1CQfVQftNnJM9v8Hhc72/s2f5SW9o8h
         k2W+3C8UR2U72eMYKkvYOpobX8eSBdCElppGOBVVy8ZMtPLtixbXiOgGlaiADc9ok36k
         25wQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNN3ZmYW35fhvqOGMeP21owzs5NdcTFRuIB+5rZKHIegKSYoAjgcEmBJ/5fibzxAM3jgqvy2q2PH8H@vger.kernel.org
X-Gm-Message-State: AOJu0YzwgXmx5F8lBs/8vInxzoGyIXZthu3vqVF0q9xy5NyTtjyp+4JT
	h+cxyTMUBjPtlKX4JT+3amSWdHSTrnLWQ22f9mLbWBxVArl4hQCx+LhXmg4Hi4w=
X-Google-Smtp-Source: AGHT+IGLgVkoTtf12XBD4Hn20M4ZZFpHNiXrpMjOAFmET6eMB53wq32OvLmDjh9GwGxQ818JQEEEKw==
X-Received: by 2002:a05:6512:2809:b0:52e:987f:cfc6 with SMTP id 2adb3069b0e04-53d65e25188mr4490074e87.51.1730708916242;
        Mon, 04 Nov 2024 00:28:36 -0800 (PST)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10e7435sm12580653f8f.52.2024.11.04.00.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 00:28:35 -0800 (PST)
Date: Mon, 4 Nov 2024 09:28:34 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Baolin Wang <baolin.wang@linux.alibaba.com>
Cc: Stanislav Jakubek <stano.jakubek@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: sprd,ums512-pwm: convert to YAML
Message-ID: <jjfajijz7xkh6rh4ekmvta5rum7tod4ts2j3y7sbdkbhkcgryr@6bbxclrkyzgq>
References: <ZyH-JASRcpMXYsmH@standask-GA-A55M-S2HP>
 <ielio4ys77kgo5qsvrbbqfg6yzlit33yun4leei2giplbedsc4@5qmkwgvqe6xl>
 <84dfe382-65d8-4743-84ba-d70699b6f5e7@linux.alibaba.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sjemf23l2yoec6ux"
Content-Disposition: inline
In-Reply-To: <84dfe382-65d8-4743-84ba-d70699b6f5e7@linux.alibaba.com>


--sjemf23l2yoec6ux
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dt-bindings: pwm: sprd,ums512-pwm: convert to YAML
MIME-Version: 1.0

Hello,

On Mon, Nov 04, 2024 at 10:52:09AM +0800, Baolin Wang wrote:
> On 2024/11/4 04:24, Uwe Kleine-K=F6nig wrote:
> > thanks for your patch, looks fine for me.
> >=20
> > On Wed, Oct 30, 2024 at 10:36:36AM +0100, Stanislav Jakubek wrote:
> > > +maintainers:
> > > +  - Orson Zhai <orsonzhai@gmail.com>
> > > +  - Baolin Wang <baolin.wang7@gmail.com>
> > > +  - Chunyan Zhang <zhang.lyra@gmail.com>
> >=20
> > An Ack from (at least one of) them would be great. I see Baolin Wang in
>=20
> Sorry for late reply. Look good to me though I'm not a DT schema expert. =
So
> Acked-by: Baolin Wang <baolin.wang@linux.alibaba.com>
>=20
> > the recipients of this mail, but with a different address. Does the
> > maintainer entry need updating?
>=20
> No need, I have already done the mail mapping:)

Having an entry in .mailmap doesn't justify adding old/wrong email
addresses. If your linux.alibaba.com address is the one that should be
used, it should be listed here. Not everyone consults .mailmap before
sending mail.

If you agree I just substitute your address while applying.

Best regards
Uwe

--sjemf23l2yoec6ux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcoha8ACgkQj4D7WH0S
/k7nWQf+J9uiA1Rlu4ZD0jh6NqCygKQYHecAuykrLL79C4krqWgnAWc+ioV57EhP
s2xp/VIycQfdFmbbOMtuWfVuBu6yq9sm9GKvR3jgU4UvNDo9rTMDkh41XdYvlypE
o//QisOGsUEv9e7xoRcdFSw1GL7YvtKiOJ9i98Pa4bqIj2idZ7nSfCxrGWWVeO0a
0WX9KWw6AzAUTpN2HjQYbJe15mT50nHpeWn5iurbX1NZhzYlmsPLxqVqll+6SoWn
8pMkJTgsDWVC6ZzrmO0VtLcKmZMA7K4F1bdgRqC9VLffWcUGExkId/zTiMufVj9d
c9RTKEUIiBn1Y1qG2rH9pEq40GbppA==
=zE8Y
-----END PGP SIGNATURE-----

--sjemf23l2yoec6ux--

