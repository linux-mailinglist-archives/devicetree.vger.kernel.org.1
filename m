Return-Path: <devicetree+bounces-38315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2278487E9
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 18:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12A5C285CA5
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 17:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B3CE5F87E;
	Sat,  3 Feb 2024 17:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="kX4NdLEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3982B5F873
	for <devicetree@vger.kernel.org>; Sat,  3 Feb 2024 17:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706981481; cv=none; b=YufapesGhRx9haDMqQ527F7HbpRtVp6AHXfyUjTsFxn4/SpNOV2GX4nf4FAyktashlSf+8SC9Nye7yNeOJSKven63l0A8LxUo6gVTwiNcGwrwJCiDgZVPUbooJ3noHYhf0M63AKuwvZsjV2NOmLviF1xVB+o46lkiZHaUG2x7jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706981481; c=relaxed/simple;
	bh=nAi8H70LamHZMHIoOA/Oi/GnSLYwuM9hZRYZf2LGiD0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K+T5kRDCd5jNLJLZQo7g6AZmBuC8P4aqbjFKUw1HvCAqggr9j1tep4PaV8hUFHd7ro95cPar17pNGA7onmIX0Viv0YY4420IkqvUFgCBqbhXcgUk69NuYV/MMoI6+qG2rw56zUN6dU1QjS2GoZVxlr3Do8IeAuciIysGoC9KW+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=kX4NdLEA; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=nAi8
	H70LamHZMHIoOA/Oi/GnSLYwuM9hZRYZf2LGiD0=; b=kX4NdLEAdfowZ21tKAqE
	HlrWejJ/aGe/DUO/Os9oIRUEga4BG2Z+krPaHKJrDWh3FBeSTpp/aReFL+DRMT0+
	QLpcCXHWKBQeq8r/aw8RQYgeOAmddFgb49w1+AI4kSRY8oJoI9LMhlvUag1duIx8
	5e/aJn6sNeEJMMitvlp81g+m0S/jd5qYTsPjzyWstdlHbABgrmE+qPgnq4kzDEDF
	WkeMIRNCoAhg9LnEdo+cdSAjDpYlbEfCa0p+t2nmfEJaGffo+kxzhDTl6fESDR3z
	8lV2Uh+44mTkvnlb5JcK//eHt2Brb9jszB6FRihVXi4hx/Cr2fspnqkvoAtjXsf+
	cA==
Received: (qmail 282749 invoked from network); 3 Feb 2024 18:31:08 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 3 Feb 2024 18:31:08 +0100
X-UD-Smtp-Session: l3s3148p1@PCYNmH0Q9pYgAQnoAGo3AKaQ4acoehG5
Date: Sat, 3 Feb 2024 18:31:08 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: renesas,rcar-i2c: Add r8a779h0 support
Message-ID: <Zb54XCZaZMzAJQyi@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org
References: <b83a745334b0aea8bffae5a41db2543100ad5e30.1706789816.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+8AS98WBfIHLko+0"
Content-Disposition: inline
In-Reply-To: <b83a745334b0aea8bffae5a41db2543100ad5e30.1706789816.git.geert+renesas@glider.be>


--+8AS98WBfIHLko+0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 01, 2024 at 01:18:51PM +0100, Geert Uytterhoeven wrote:
> Document support for the I2C Bus Interfaces in the Renesas R-Car V4M
> (R8A779H0) SoC.
>=20
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--+8AS98WBfIHLko+0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmW+eFsACgkQFA3kzBSg
Kbbr0Q/9FHsLrC5QZHhnr5ZGeWCJ371wVFzYjV1YilsGZflIQdG78aGtrOmDAZwO
AKx7nNahwzOLAgcUHXYL7zeU0ySQ5rEJRWpr+Z7ba2p4Nw0fmM+Uk4oDpjjs8oTS
9varS5KJti8VjQFCgvin1YsZKOOsDzfQDfHQ/zteOOogm3k5Lmy9UrPdBat1PnIR
UUFP9EYonXz94VJpFbAAmCsmpBTd2RQG4C14Q5uRhjgM590EsksUqF9riTUQrLHu
9hXp/Oo/ugzeNiqntlbham7Em3XoOvIjchUDtteOr/rGKbDA8eadC0FWh2I5DnUm
QRBgqoBDPPO2rbm4sI2dPxdKekhHMhje/UA5lg03O4nrh25e6TPuO/H0A6UrcBO3
qz9LOqBTXbiOxeUB7JUx6VON+jrMlsX4uzKzq8UeF3CxjErbePLNql+bNvmR563f
xCh3pasSQr1ICi0iXWyNHHpzBfIoiwcQoFDigtXM9C3dRFY2q6H0HmQkaInLIeiq
DmgIScmh+gYrHVZ2Wvwemvne2JqDBBlCS9GtnXpV5ySsbjE5lAcRcE5PN4h4+cu/
f1Kk9K5//RloNUMrcw4cyxtWRlno62T+M2Ti9oZXTdGLDtLksLjLrZVyhFBV+OGh
JKsuXr/yuNnZ+BtUWaQ2MH0Nvh4ta7yqPdSW36oWweNVz7J2dfQ=
=mx8w
-----END PGP SIGNATURE-----

--+8AS98WBfIHLko+0--

