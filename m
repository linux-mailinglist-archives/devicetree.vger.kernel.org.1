Return-Path: <devicetree+bounces-165825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F870A85A1A
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 12:35:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B8A61BA39BB
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEED1E8356;
	Fri, 11 Apr 2025 10:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="TmiokUKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C17117D2
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744367738; cv=none; b=GOQakkjMMsa6p3UwNKrb+UJufnn4QvF98YktaK8pSDjVg/LZr0oj67yVWPXIhfO/B6zCqIPlzNbQ9WX6Nbjhbf14RpNk+rdImcG++mxYidZbuaoqZ1T7cftP5XKhNDTMeovR7/lRa8TQBJ2jlDZww3YO21OCtgGohq6GItUO218=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744367738; c=relaxed/simple;
	bh=S7MMWBiP2EHIAd5aoKVdha9ifwO0SF1kUyI8Nuacdek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cJc/9Of45y2xbN7K8gcJj6uksrhqDHP39JLvNVb+8HxGwp8ua1aSLiKzKouIn5tqiC+qb9E24P2lwojU156sMbTNoYtpyOObThg9oSlxdn7G8HftMtrhTIcFtnd80eT8IxSu7o+UgM0Qz1IVpWpHGGssOYMOS/EEVpW4wl57aHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=TmiokUKj; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=LGf8
	UY9BVKPiL+qDBOW5kpdXxoI7xUtlyYa6X+i4Zfo=; b=TmiokUKjz0g1oKohRMHp
	goLrJjOFP+pOecoIKUWAK6ezuKL+iSFjz7OBirwcYaOta84RrngD7IAc4aV3bOAE
	/qGZH8yWM9oFPLZ9Bv0nEYQGyBUGnchnvgfJ4N4zZEqIQLyTNM3rhfErFhY1C0Sg
	JqYRXwqxxhD2YANNhHwlbv50db0fNk6LLbv2DWyZ2YDvKyOtyWzIkrF3JYG3U/bA
	5zlAPZCtXbW71bxjTkWhVxVfRce1sT3LrwBYf4bsxS7/nxrwHRa2FziP7UFH3sUG
	LJJF0azRr9D8EC39LVMtcM4KOX2VHVCKsrbAlBogcKzfNssbQCS4T8jlQGGswmuy
	TQ==
Received: (qmail 1256927 invoked from network); 11 Apr 2025 12:35:26 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Apr 2025 12:35:26 +0200
X-UD-Smtp-Session: l3s3148p1@1wixQn4yWqIujnsS
Date: Fri, 11 Apr 2025 12:35:26 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-renesas-soc@vger.kernel.org,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-eb: correct LAN
 LED nodes
Message-ID: <Z_jwbsfNQNkN5b6I@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-renesas-soc@vger.kernel.org,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20250411095425.1842-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdUk3wrH=oB35v2tyrHVd9w0otqTDBmYc8fwt4w3fhXUog@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BGECI4hn9RaXMSbo"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUk3wrH=oB35v2tyrHVd9w0otqTDBmYc8fwt4w3fhXUog@mail.gmail.com>


--BGECI4hn9RaXMSbo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > +                                       color =3D <LED_COLOR_ID_RED>;
>=20
> Can you please confirm they are RED and not ORANGE, as documented in
> the schematics?

ORANGE is also fine. For me, it looked like 'light' RED + GREEN =3D orange
when both are active. But you could also say: 'red-ish' ORANGE + GREEN =3D
light orange. Let's go with the schematics.


--BGECI4hn9RaXMSbo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmf48GoACgkQFA3kzBSg
KbaTSxAAjLZC/5EIA4sZWd6eWE6Qr0tkpbPThqdaPtinqYzF695dA7GxqLzovKMj
N5m9x95vG4yw4WMsl+ZTKoHbJHyJP69/hEcQK5wQhDjxK743LMz+Q2apepDepRr+
5tOKqngqwwig1Kep/599UcWxVes7aWupeMgT/WwU8cmgsiB9m03V2nhcxFagnJLF
B+0MR8MezqM4J866uGTuvZzOFDC6gYrIIxTbk0Xd2tUWqrGgWc37rvA94Epwsfne
LtujTcAN75YsobjexCGiRQbYBacunGF+ddizTIOKAmu0Ux1Z5UaqjwO8UAieHXS8
HO1lPsruNbzP2zAgp3CDj/aTgCaYy+anxnAulOExsdj5uYVQQyIvCev1LaF7dOPj
B4rRoS0fhAYT/5E/TIk1J76PqU86gKQEG+9gQdeVCPV9nA+YOF7gY6DWO1b0ywau
n4nFX+sTqQGqunK8E84xWX1QGqPVJe7ml4BTcFHyjnHdYqZMDQo0r0Ul4N3eNCPx
aLuz2U8Sr5MChz21VrN6l62Hb6iZw/6qmXVrDV5X574FpiCuak82K4Ps8U5l54TP
U0I6ryX9z1dyvTv+D1cq6/g9oWgpEfAiF9PzUbsALq4JCYWAyG1Gt1ztxnnwft3B
o3gkPEGUppwT6bc4RUG+FvZra4AWYxg9nHpQe+NnyQ/OK3B9E/Y=
=NoQG
-----END PGP SIGNATURE-----

--BGECI4hn9RaXMSbo--

