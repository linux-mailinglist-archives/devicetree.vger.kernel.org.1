Return-Path: <devicetree+bounces-63487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DE98B5175
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 08:31:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47A40B20C2C
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 06:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E0C110FF;
	Mon, 29 Apr 2024 06:31:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F1312E6C
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714372263; cv=none; b=tr8qGNsopnps5bxcUSMyTHqP0WcQ1A4z5qd6kQbU8eJJgbSNUx/zWWOp7SFhS04ywkrs5RrHV2y0iCYH7pEL7ZeoodLKpVeUkpxZg0VRiO0ikXhh66Z/DxLwyGUALFKzzvUAcVIOkChXxbnGkanI2+DYQRejKk82rB44fudmneg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714372263; c=relaxed/simple;
	bh=R7C5wr96MqWDYR44Ry+prYbPTSvDWaKrG2gXzaFYjI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nXjRGqEm0NOPonGyXGjzDhs5T+dCvtq3RfSwmG3Av0TdbB2Z4e1u4l4kkm8sNyYuJ07My6Av1ZSkO8LAM3nBIYUzIzebK9sTVNZykjjjfGqimwP+nR8q38oKzBRHoxBPFHt3uGI2cWEKUSJmlkZl0eJxU6oeNU7Y+Fr8OO3z8QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1KXJ-0007Fa-Dv; Mon, 29 Apr 2024 08:30:49 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1KXI-00Evg4-9u; Mon, 29 Apr 2024 08:30:48 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1KXI-00BDAk-0h;
	Mon, 29 Apr 2024 08:30:48 +0200
Date: Mon, 29 Apr 2024 08:30:47 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Trevor Gamblin <tgamblin@baylibre.com>, linux-pwm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, michael.hennerich@analog.com, nuno.sa@analog.com, 
	dlechner@baylibre.com, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org
Subject: Re: [PATCH 1/2 v5] dt-bindings: pwm: Add AXI PWM generator
Message-ID: <sjgqbftxfz763qoj33p2diba4ify4lae2vc2amcpaudjtdlse7@buk2wrofz3fp>
References: <20240424125850.4189116-1-tgamblin@baylibre.com>
 <20240424125850.4189116-2-tgamblin@baylibre.com>
 <8bc13253-db16-4801-9f69-b06ba4e129be@baylibre.com>
 <148f8e69-ad44-40f8-b277-69c289b94c68@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gvrldjymnq56fhzd"
Content-Disposition: inline
In-Reply-To: <148f8e69-ad44-40f8-b277-69c289b94c68@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--gvrldjymnq56fhzd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Krzysztof,

On Mon, Apr 29, 2024 at 08:23:19AM +0200, Krzysztof Kozlowski wrote:
> On 26/04/2024 22:11, Trevor Gamblin wrote:
> >=20
> > On 2024-04-24 8:58 a.m., Trevor Gamblin wrote:
> >> From: Drew Fustini <dfustini@baylibre.com>
> >>
> >> Add Analog Devices AXI PWM generator.
> >>
> >> Link: https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
> >> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
> >> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> > Note that I missed the following two acks from the v4 series when=20
> > preparing v5:
> >=20
> > Acked-by: Michael Hennerich<michael.hennerich@analog.com>
> > Acked-by: Nuno Sa<nuno.sa@analog.com>
>=20
> You cannot add other people's tags that way. By default b4 ignores it.

I'm aware that I have to pay attention to that detail (i.e. using b4 am
-S). Full disclosure: I asked off-list if Trevor missed to add these
Acks and requested to add them this way if yes.

> Also, don't modify the tags...

you mean the missing space between name and email address? I can fix
that up when (and if) I apply the patches.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--gvrldjymnq56fhzd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYvPpcACgkQj4D7WH0S
/k7SUQf7BzKSUujDtEWtqcp4TGtptEioI6AM59Ll/ritKfTWBnFnWKdX7u4WnDJD
3p5P4fNBG/KKUsJoRJTYUT397NhSkot00rGWFHgGDOwFTggpPjEt8BE8Kut+k0QX
Nohl2BxUw6/UAeDG0zut9ObxmR9oGecTwtswRr9nK7Ol+5QOxlPQJn5jdwhiVAe4
8UeF1Hp/zt7WeDkCHWw3q8wM6hlFvqclE/4WYB1h5UfQ3ZLXxFd/2kltlyZwAtFm
YTuG2t/Ku/KnXlB07a+VIDFyHUPUj7xMXM3R7siYli+hZClqP+q12CK91dDu6fTh
G1Wbqcs033VybfJGNg3u+24MJaGyiw==
=6L5Y
-----END PGP SIGNATURE-----

--gvrldjymnq56fhzd--

