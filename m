Return-Path: <devicetree+bounces-83117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 396C6927420
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 12:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A0CF1C2094A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD8A1A38EE;
	Thu,  4 Jul 2024 10:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="DgCVIFGJ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACB11AB8E4
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 10:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720089276; cv=none; b=oHxFPT9GBadrCBfbiVkuIDUyB6kXL2/kzIbTyYewrAIqvlsC3rFT6rybflRfuRem3zIXIwLbkYYZzECnH8Jg8YZyf+pbJViqDRSS+Yijtp6jUTkAWEjJgA31GwIKnp4f/mPIzlBVb+To0boHHRwfjYiXpzFI+0ZnADuyhVAql84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720089276; c=relaxed/simple;
	bh=qiLIb5/3I7iGXP4b9N1BmkpG2vzsQMvYJVNUMVpvvjY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=esida+vwjiJR6ySKNN2T+F9hfNwtm99gOBXEqjfVE9Gk6pLX91vLk4MCD7PwlBoEWzM9Dy0SYIW5pXUp4yPFd5RdLInSYkwk26HZE7OwUJ8sd+FhjqIpws8yFYLUF2UsORmb66/RDC1rJjr7te0UI3SPbxYk3RuCUOJ+mDcuKos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=DgCVIFGJ; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720089270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WaeRZ2nOjo92gumscFG9YpVZTkXiyVaKUvdvkRECyMs=;
	b=DgCVIFGJBTAj+jAEd25PHvFZkbUs1LImkDzhrgReBtXijVUVkKPP1wnPw2V4WaUOujxKvu
	jJyvcjGiG7wvLqhry+l86pk0JW7Rh9tTmnqCZ9stUzB3kkBnqSTMEkcgT31X3WondIGuK+
	p0kxQBoVq3VXNRM74CpUq01obpMyoDsywt4GndWznVjvavjG1lDtEG/Zme0utAXrcRMLRj
	7UupdPzTKXI+xG/ed47jl9Gxmtq7x0KIS7cO4cntuC9vIIJ7+zog4SFdllKvn2FZgJJ17c
	9AhprNEbSOAXdN9LXFoOPFcnF/g/Jmpf3EO/Uieoogaqiix1nVJTqAcHclxVTA==
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: heiko@sntech.de
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: kernel@pengutronix.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: benjamin.gaignard@collabora.com
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: pgwipeout@gmail.com
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: dmitry.osipenko@collabora.com
X-Envelope-To: dsimic@manjaro.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
Date: Thu, 04 Jul 2024 12:34:18 +0200
Message-ID: <17377562.Wbl12GSNyo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3615926.LM0AJKV5NW@diego>
References:
 <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <16078476.GIfNKF0EQE@bagend> <3615926.LM0AJKV5NW@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2562580.NADL9uRC7c";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2562580.NADL9uRC7c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 04 Jul 2024 12:34:18 +0200
Message-ID: <17377562.Wbl12GSNyo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3615926.LM0AJKV5NW@diego>
MIME-Version: 1.0

On Thursday, 4 July 2024 12:00:43 CEST Heiko St=FCbner wrote:
> > Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only=
 on
> > devices that should have them?
> >=20
> > On a Rock64 (rk3328), but probably for all VOP1 devices, they're not
> > present and that results in the following warnings:
> > dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy
> > regulator dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, usi=
ng
> > dummy regulator
> counter-argument, why not define them in the dts?
> I.e. looking at the rock64 schematics, you want the dvideo_avdd_1v8 (from
> LDO1) and dvideo_avdd_1v0 (from LDO3) if I'm not mistaken. Why this stuff
> is called dvideo and not hdmi in there I have no clue ;-)

That appears to be a valid counter-argument ...

On donderdag 4 juli 2024 12:28:53 CEST Alex Bee wrote:
> Those regulators exist for _all_ RK SoCs that use dw-hdmi controller, as =
it
> has to be supplied in same why (as it is always the same controller). In
> particular case of rock64[0] its:
>=20
> DVIDEO_AVDD_1V8P6 -> VCC_18
> DVIDEO_AVDD_1V0M6 -> VDD_10
>=20
> So: Just fix the device tree and your warnings are gone :)
>=20
> [0] https://files.pine64.org/doc/rock64/ROCK64_Schematic_v2.0_20171019.pdf

=2E.. confirmed by Alex Bee.

I do wonder about 0.9V vs 1.0V, but I'll bug someone else about that ;-)

Cheers,
  Diederik
--nextPart2562580.NADL9uRC7c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoZ6qgAKCRDXblvOeH7b
bvq+AP9nd2vWXEhpjpT5r1vm/NRY9bGkS/orX1vBaxZgGcwjmQEA9GlBCm3VIGIq
h8OWrwrSTdI76Uh1Eb98A1qx9ctzUAI=
=S12p
-----END PGP SIGNATURE-----

--nextPart2562580.NADL9uRC7c--




