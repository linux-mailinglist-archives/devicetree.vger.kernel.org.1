Return-Path: <devicetree+bounces-185188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 510C9AD6CA5
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51ED91BC2218
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A70D522D4FF;
	Thu, 12 Jun 2025 09:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="RlPFGNvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098B82147E7
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749722087; cv=none; b=Ovv2QAAQXBI1Pnbi7zdhwGiS6x8r25sCbe/gIQPTgbi4k+JRt1A+u/iTUL5j9ncWrIlJFio/zThNwZprFEV98npxu0wlw/ucuSrACPZYl94f7EN3YU7VqRK/UiO5UY2sRY9itty/rjCJpJ9/xNLMprJBAwQSKMLKlhhAVYbgIGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749722087; c=relaxed/simple;
	bh=Mer6qGMAyp8EPWtGukSzsuJDZTrkYf5FnFWHqQ9ONuo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sQI+Mh8hQEBbWDi+e1E2uomoBqYIYW0xDGmSHyo+QYQHuV0NG/ZsK/7xL4YdHYPleaiVkDydHcUFeA3G7lrd27mHJ+77ms+c6giNek1MiOcZRm0o2BfXSncgd7xcj2kXVU47KrDEj4QPrEsbS7r3NNMHxN/RJSZlBg7RxbmwFEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=RlPFGNvf; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=Mer6
	qGMAyp8EPWtGukSzsuJDZTrkYf5FnFWHqQ9ONuo=; b=RlPFGNvfMPgncelkj25I
	qs3/7isR9NSt1VjTlfOcMicbj9GlJCRQdolbZo4N6pvDbZEvcQ3eRlON/kTRIPot
	4KvvmCFYd11wjqg7vDgNCA5f+/eHQveyyNJiPijgnTKJYd7Slk9DkYKYncDu3X07
	IxsXn0ArHFElnhIOM42bg1qYFPKmmwrB2WyYUdKHqgi37eA5xpxTyeBMC+mh+3Vg
	m7ZtLlKel38jBr3x2nidl7BTHJ/Hbs07skrAi5P9FxzRq8DPAQ4Gu5SdjlBQ3GLP
	tb+MXwSun8QiCBmcW5V/wMs4t+CwUdpIplSCwU7zCzuowqKZoXnIQdWr1Vx6yYg4
	Sw==
Received: (qmail 3578304 invoked from network); 12 Jun 2025 11:54:36 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Jun 2025 11:54:36 +0200
X-UD-Smtp-Session: l3s3148p1@SrHL6lw3DMUgAwDPXy2/ACpZfVCNKldR
Date: Thu, 12 Jun 2025 11:54:35 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Herve Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH 1/7] arm64: dts: exynos: use proper node names for GPIO
 based I2C busses
Message-ID: <aEqj2wS7DyGrOyY8@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Herve Codina <herve.codina@bootlin.com>
References: <006ee7d6-1289-4f4a-819d-9a5e5120db99@kernel.org>
 <aCtD7BH5N_uPGkq7@shikoro>
 <3f6e1b74-5d19-4194-b98b-91ab6f10446c@kernel.org>
 <aCtK1-Yn6u8-n8mU@shikoro>
 <e5a3ce2b-4ebe-44c9-9bf5-9f460d5e7fe8@kernel.org>
 <aCtbg0_vD07g394k@shikoro>
 <aCt9e-rrOOR0C5HI@shikoro>
 <1cea4f55-752f-4581-a003-1c9d31a36039@kernel.org>
 <aEqGtjc7F8vvY4ph@shikoro>
 <b7d4272d-c08a-4c5b-814e-9367bf858ca9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BMGydgXgrD79q+F7"
Content-Disposition: inline
In-Reply-To: <b7d4272d-c08a-4c5b-814e-9367bf858ca9@kernel.org>


--BMGydgXgrD79q+F7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > https://lore.kernel.org/r/20250519184530.21845-1-wsa+renesas@sang-engin=
eering.com
>=20
> I see my approach of using generic i2c-X was also preferred by Rob, so I
> guess it won't get it.

Okay, if you guys say so...

> I sent patch for Samsung, with reported-by credits for you (it's also
> reported now by my tests and earlier by Rob's as well, though).

I will fix the AT91-based Calao boards somewhen, and then I
consider this case closed for me. Thank you both for guidance!


--BMGydgXgrD79q+F7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmhKo9gACgkQFA3kzBSg
KbZ38w/+Pgyysh+5Rz9SxTN1/5OcN6oGorrscECqMPM1RTIqYe1tp0eucb1rQUTd
g++TSOgXe9g5MBko5wyGbEDKTFda00FcmFAYJhdVjb//xbNncxB4YB+UKmgqqpRe
Q0cEUKVl+2DOTjTv7phant58+H8f3fa72Y70SYQsdbZW117LxWZ1RGY/zMoNoY9k
wOiGxaUm7EjG3mPh9cyCyG694h8pV9vsq+3B/xgkLiPo8tR9vR+azwZAd0Uo/3AG
q4JaRyC4VlxQ2oSy5+5uaDwwkaWONylQIck6AhmVgf/dFksx4IPjOpKxSfvp5C/Q
vc5nxE4Vi0UAFTxoDTB9w7Dp4AokqUsGiFXGzmPCamor8dETqCFGfzkHwzSk+Bmj
sWPnpa+T6g6L3oPx4LsAKn+Jq9KJCF+Ms+loXSOQjoq0gxbLXM8/vC+K2a19TVFj
ucCcgZQM0/WuX9Q4N7cSGQCHgoyuiiMdzel7i1PEVBtJ8ZZ+QGc+96d8YUPuPlpN
aXdI7zGpmPFcsvwwMkt8KSclfZqYNoLx2rDXI52q1ERfQEPLt6TH8zVHohu/Hh4n
hJZVco+mIvlUv2panmH6tP5qbYOilaevnyFa4ugnecpt8YfzvxknWwhdpbxwtXTw
IjcWfwh0bshNPv8vzSt+XPRaiW1QFLH5Lipc7m/Jr4IxbRNOEXs=
=IiEt
-----END PGP SIGNATURE-----

--BMGydgXgrD79q+F7--

