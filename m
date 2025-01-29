Return-Path: <devicetree+bounces-141609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8DBA2191D
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EBC5163774
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 08:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DABD193409;
	Wed, 29 Jan 2025 08:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TW1pgqUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3472D19048D
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 08:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738139728; cv=none; b=Bw4L5hCmUpFHqPicwMrWlRMF6mAYw5q1xwQv+W19iJPSzSX8Nqt7yNnEklaN3xE2Y5T2vjLEwKuXdpu+CCZedHSZkqZWhKlaLLB2VjrwsCGxn2kk9rAQvQ+8OBKdxzwmDxWHHQKEq+/28N5p1xyA/Ru9va2TvWjZ1VSbtRYVnLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738139728; c=relaxed/simple;
	bh=6JWEsMHzCEXoNop+CD5KSXZ0qpMvWow+yGHr1jf3M2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BwROFHVNE3B4zE+G5I6F69NjmLqj/PD8921vvW8V/LZx3/Iu5sXSVyClIxYQg3BmWEtz6gu0tXC/vjEYRCPohfVNhZk787b+ZvsHkDz5V/WmuzUThUNptWhrm5o41KMzx/PO0b12mXdhJfLOLqC791NkuT15RcLsNOvxlVrecv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TW1pgqUA; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3863703258fso242710f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 00:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738139723; x=1738744523; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zuYqXLN9pWWEEMuag1Wep+j9GMbtuULX7qFuR3zF6Qo=;
        b=TW1pgqUAQlPSXFhwbp+YZTIJzbzO4bOZP483chc2TMsbLrpxZTLWAlMHQV3lYlCCcB
         Z+lXjijzxpEyjWBD/CA5GmwLhC/CviVxCDe7ZjXpiaC8FZF/ykACBz3TPKLDFpTFFR3N
         pfQRUAVibZA6rce4X7Zda6EGOxAz+wYDmwFD5dQOYNd4SCXMV/uCRGDANH+re7rwRIXr
         lsByMGY+8+gk8kwVqKoJZuMVBUlyOZ8CZUEpgO5uN0lFqm6zo0SZU7u0BtJ0YYmsH8Zs
         YZYh8183WomZEpZeuMNZNy7ryN089se+zsEGZst+c94xri2uRrqXYuuVSNa4OzYemgh4
         NtGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738139723; x=1738744523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zuYqXLN9pWWEEMuag1Wep+j9GMbtuULX7qFuR3zF6Qo=;
        b=aClw5r7T45C/62IQZQSDTP2aAewGd+LqU5kR/bvc6IWne50j7ljr8ieqd+g/IdqOSY
         WX/IoJhANqfrTcpTZkEu0qwEV3lPeEElFwAa8OR/DNMD16eTs8G3LoaU3c+WlqsjKZ7A
         Sk6FZI1D0HxMyKhxn6CQTMzhW1eEsA/Y3Q04TYSFDBOrR/pc+Re08H9z8nr2B86Bg2Gb
         5wCOoixSPgt8KOnD8aadOBIBfudsFcrtzH/A96OQMV5TCgnt7U/rJOOcW1/+FvVWreck
         O1Pf0OQwj6jBT73n7GCPWgEsQVUXcVZCfB0UOoe/d39LrE1hD3AX1uFpYCsQpgQ3BUnU
         ujug==
X-Forwarded-Encrypted: i=1; AJvYcCXM47KI1g1Falmw1Jl2Dri1HUjX6x0n64cvteCJXePVvdaxtqFG2aEuGUfOKUmyW1BnZherJUY5bhtC@vger.kernel.org
X-Gm-Message-State: AOJu0YwA0HKW6uGRGeLFgrjwE+YmWX7h2JZIbA+nv1f0rqkZgO5qqH4E
	RlKEiESgizzCHE9PbnWaoCZ9tDYeipJs35uUVmHOyLXhmJYTocVYz503mrwZMoE=
X-Gm-Gg: ASbGncsiUUUqLowmRbR/ud6BgaYfNBHym0xw5TKQ/7Z5eXRCw4nV8tXGddwvf8XY8xS
	mPEtruj85tXjpxNDtmIXrOfxloWIPD+uoMSxD7crbmp+y31JecyBrLXNIiJhgwXSvN/qpwf1YAY
	YUXN7ciaCeztwj/5tiVbTlvoVmLz7fjgb9ITF2bRPOjBWngo+nfMHiOE118++JS/iGx62bRbULt
	tnhdn0wThNbTR0SDdJ+fHhTwOayOxcL81YRs2gtQj0/Aq6LvC1IwXV3J65OXQWMLNkdT09MWVag
	InHJt2x/RQpJskhy4OfpAhDJfoszT4SzFF8Q+qXq0GgEFaT0IedPMF2MPw==
X-Google-Smtp-Source: AGHT+IGd2UpE4x7adX1HKMcNLR5Di8u1V53T20UlS2WB4LkUGl/DfaURLgDVMysvwbgsJdQBfoiELQ==
X-Received: by 2002:a05:6000:1847:b0:385:e328:8908 with SMTP id ffacd0b85a97d-38c51079cacmr1719764f8f.29.1738139723079;
        Wed, 29 Jan 2025 00:35:23 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1baf65sm16624223f8f.64.2025.01.29.00.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 00:35:22 -0800 (PST)
Date: Wed, 29 Jan 2025 09:35:21 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <tjkdekrcxoot3inwcboqc76iljbkjgjaamo55u2k2glr7aubjh@y3465k547zwz>
References: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
 <f9aad21c-64f9-413b-a3ea-18825515944c@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lvjgmcreqtqyinlr"
Content-Disposition: inline
In-Reply-To: <f9aad21c-64f9-413b-a3ea-18825515944c@lunn.ch>


--lvjgmcreqtqyinlr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
MIME-Version: 1.0

Hello Andrew,

On Tue, Jan 28, 2025 at 06:44:26PM +0100, Andrew Lunn wrote:
> > +&gmac1 {
> > +	/* Uses a KSZ9031RNX phy */
> > +	status =3D "okay";
> > +	phy-mode =3D "rgmii";
> > +
> > +	rxd0-skew-ps =3D <420>;
> > +	rxd1-skew-ps =3D <420>;
> > +	rxd2-skew-ps =3D <420>;
> > +	rxd3-skew-ps =3D <420>;
> > +	txen-skew-ps =3D <0>;
> > +	txc-skew-ps =3D <1860>;
> > +	rxdv-skew-ps =3D <420>;
> > +	rxc-skew-ps =3D <1680>;
> > +};
>=20
> The convectional meaning of phy-mode 'rgmii' is that the PCB provides
> the 2ns delay. Here you are abusing the
>=20
> > +	txc-skew-ps =3D <1860>;
> > +	rxc-skew-ps =3D <1680>;
>=20
> To add these delays.

Ah, at some point I already knew that. Thanks for repeating that hint.
(Back then it was for
arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts.)

> Please test without these two lines, and change phy-mode to
> 'rgmii-id'. 1680 is rather low, so it might not work. Look for CRC
> errors for received packets.

I did an apt upgrade involving > 100 MB downloads with rgmii-id and
afterwards I had:

	# ip -stats link show dev eth0
	2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode=
 DEFAU
	LT group default qlen 1000
	    link/ether ee:5f:09:22:72:da brd ff:ff:ff:ff:ff:ff
	    RX:  bytes packets errors dropped  missed   mcast
	     158336739  113000      0       0       0       0
	    TX:  bytes packets errors dropped carrier collsns
		482481    5094      0       0       0       0

so that seems to be fine, right?

Best regards
Uwe

--lvjgmcreqtqyinlr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeZ6EYACgkQj4D7WH0S
/k4qaQgAlRiE8Bu3Vj9y++KvX2u4tfM6GeiZTH5zpWwNoS+LaTs+1R9Nn+pfAgYC
txyvZp0iygZc6e3IMmciuXbeZ1eFV8s8FMpBdzIGI/gQZWiItQdPkOFa4NJy1dlV
fKn45byHBTuPOdGKEWXYzTR0U5SWWdQcqojaokPf91uxOn3x6ypHdRapdI4pF6OR
2sYFRDOQD0BSQUHCL55rAGW2/ccy+R1MdASugqtsrXknqGDe1TpHbDFn7oSveIjd
JcNH2fw9zSTAR4xihf8jRyWymy5UQ9K4nB3MlFnx7qrXXrrnrp5QcphVs8vWdT6C
EhE1mwk5br+ntDGTD1+ubCNAM/mQ0g==
=mF3H
-----END PGP SIGNATURE-----

--lvjgmcreqtqyinlr--

