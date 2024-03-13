Return-Path: <devicetree+bounces-50252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D22C787A7B9
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FE481F24651
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA6F224D8;
	Wed, 13 Mar 2024 12:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7iVlM1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281F515D1
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710333751; cv=none; b=nDy0pi0/6hJK3q2k377vfDQoasjlarTEHwsG1j/ax6lprf505dY5G7luAzB7mOnqVJWLW1jpwV59ptB3byBF1zG+iboWF2NJYAVl29tT8FSDsMX43Q6aDBsWaVFZ6+UtnPVCju2e2DBnIU1iXJ7vegKlSBDoNyNDG7gIwMaHURM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710333751; c=relaxed/simple;
	bh=DXSVZljyBLC5a5bv0CgQcHa/KwzURiQNZglsucfnuhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NXKEkZtu5fH0iy9r7uR4HTDAn1lDGCpppLVx5/SWFyUWBn0GK0q91Iqx90hWaBadGcqFUN+E52ycA4tFRLWhQqcIIXMKiWKmjBVE+0xhoEuFrste5o/nJKjDi8U+7M6CypEtUmhy4ivqYT6q/ZHkVvlgW7ZPkuVEYkqX6sIq6rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7iVlM1Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96983C433C7;
	Wed, 13 Mar 2024 12:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710333750;
	bh=DXSVZljyBLC5a5bv0CgQcHa/KwzURiQNZglsucfnuhs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S7iVlM1Yv1FdfGxD5dAxt5gtvqPHKBy18644j0pvXAICnMmlq1ZUb3cD2ioaZYpgL
	 //AMzZ5ClKLtUS6DWftu9L9v6wjtj9YGYwI8yWCowMXyi02ls/9ZpA4v67CLHYdeHM
	 dV2L8kBzrY7ZFOZ1H8f/o9kD40draOJ3M2tpzXnAzGXNdJLz82x2qnyaM4qjcsAn3y
	 vdE/bTQB27TepIUa1O3ZbOU8KmTb45gboqvYF8DnTvTFJkmiflFrf7KtzyqHiEWpBn
	 B8fp/TmKvEa0dEdzIIZeAQRmHGAJEC1S3ErwhRipgq0isUyWO+hx2JOZrfcgnpoKVW
	 iUJ48KwBMVdBQ==
Date: Wed, 13 Mar 2024 12:42:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map more
 generic
Message-ID: <0388cd67-42d7-4a20-bf05-6637d484d0bd@sirena.org.uk>
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
 <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
 <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
 <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
 <1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
 <b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
 <1jh6haih3f.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wQxpEnVQw38uV/8e"
Content-Disposition: inline
In-Reply-To: <1jh6haih3f.fsf@starbuckisacylon.baylibre.com>
X-Cookie: It's later than you think.


--wQxpEnVQw38uV/8e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 13, 2024 at 10:36:41AM +0100, Jerome Brunet wrote:

> * Only the u200 is failing. The others devices of the same family are fine.

Oh, that's a shame :(

> I'll continue to check but this is apparently related to the options
> turned on by the debug fragment. Maybe it could be interesting to check
> another non-intel SoC manufacturer using DPCM with this fragment ?
> (another device relying on cleared ch_maps - Renesas and/or MTK maybe ?)

The error reported was a kasan one so it may just be that that needs to
be turned on to reproduce.

--wQxpEnVQw38uV/8e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXxnzAACgkQJNaLcl1U
h9Ai0wf+OYHVg9zC6RMcSJpC7ACW+vbtvz0OdadwhgAlHiep1nwv1pT8HxQ/a6ww
XtYXBPeyZ+Y7/NGN1c01Jvd/h61KP2A/wOM0e2XOh+C0TEqfknw9r+TFVkeqTnMY
B684z8HI9r+W015kRWHkTV965eMBjxrXIw8iuRCPs75BpdxShLBDm4r6tw1O+j7f
ZjRxYQmQS+0k++0IheEtoK1zx8h3jrFKYtmFyI7h/zaGTShIu4PwAscGGhk8wd1X
jm1zEcn55OP3w/8FtzYSGaec0L6ehUDBv23Zpgnx9KuUIvehR/oWzo3uhlRTCKui
0QHsYd3RamfGrNFDssvpWFVWblNP6Q==
=ZlKR
-----END PGP SIGNATURE-----

--wQxpEnVQw38uV/8e--

