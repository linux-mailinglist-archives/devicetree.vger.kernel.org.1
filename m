Return-Path: <devicetree+bounces-253955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B92CD12FE8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:06:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C1A9300854F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A0932A3F5;
	Mon, 12 Jan 2026 14:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dO8zo0Mf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB327E06C;
	Mon, 12 Jan 2026 14:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226774; cv=none; b=GO4poEiNRoSIWiE6KUszhF02sShzjWxtcZ1CTbA8Ybv2rPT2/tO2kInEDmCouTxkD1DXU68V+7pmK6DIZSRKz21Ad9UwD7YD7Oh1hUfR3xoybgwPSDMLdtf/jJcL6Q1htRQOd1n5HBV1K7h4tM5woP3GzR5MxwXZ3nTjSmNKxmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226774; c=relaxed/simple;
	bh=rsyIsgBkGIjphgcCMskKizrQMVbuRwnXGKfAose0lAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f9S3oklb/6d+19o68vcngxvII8KgqbgtmW+UbCM3JAgK7zz2qg95Ptour3iEGuFHa9gEEx6AxzVXpdlzCUugHDlbNaV5hed6p+lXJhi+TH5BVJ7aTWgEmNpxnUdSI4O/qwX92ouZhqXmL4kCCNJ+RTsB7XGuDaN31vyzyE0TaEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO8zo0Mf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 880BAC16AAE;
	Mon, 12 Jan 2026 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768226773;
	bh=rsyIsgBkGIjphgcCMskKizrQMVbuRwnXGKfAose0lAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dO8zo0MfJUeu+esVfJmzLFj/hOY6pZHBE48DHbyIQRhJKLE+8Ft2+eOUUzftvviFc
	 p4TPTuzTAiu1iMtHsY1JREqWmGJ+uWPaMcOAm+fGz2RUhnQW78PJAkeGe7mPqiBXII
	 hzxIa+6nHGaKvXJdE+mI/b9izlqB5vV6GFclPn/Bkd+FviP3e+JiPbDH/W93s+ANgC
	 E3/3J49y0bvE+kyWcm6+hztARA6/IGn1lbfq0GJfmszouQpF2Zpo8mzkaUQfxeOGaz
	 hiTPoS9hhPJdxU68U2WRV9mtX26B55TrF1cpoScrju4ESMzdT71FkQ4gdAlLfcXPjO
	 wIMBOI2ToUNEg==
Date: Mon, 12 Jan 2026 14:06:08 +0000
From: Mark Brown <broonie@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] regulator: rk808: Add RK801 support
Message-ID: <affddac9-813f-4835-a8b9-e3bab520987c@sirena.org.uk>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <20260112124351.17707-4-chenjh@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8DIUkVIkcTq+IojV"
Content-Disposition: inline
In-Reply-To: <20260112124351.17707-4-chenjh@rock-chips.com>
X-Cookie: Surprise due today.  Also the rent.


--8DIUkVIkcTq+IojV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 12, 2026 at 08:43:51PM +0800, Joseph Chen wrote:

> Add support for rk801 to the existing rk808 regulator driver.
> It provides 4 BUCK, 2 LDO and 1 SWITCH.

Reviewed-by: Mark Brown <broonie@kernel.org>

--8DIUkVIkcTq+IojV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmlk/9AACgkQJNaLcl1U
h9BQFwf/cqOmYM+t/IYJjfuTxz15Dllx6K8nDXEsGWUFL5K556/wH+M0jlnOClfk
vvCt3aP8xVJdVqHOBJf/u0VGwYBjzjM2s5Apbh4FeYQbwAmE+ywK6ms8IRhS1nwr
HIZRZLUgj7ONflXNSkPqQltqVdT37idPD26jz/bCAM5/1lxcW8er3kmySBKuXQgB
rFIBhDjDGsS0Is5pVtudcvOU8dLQ0XHKg7kXSGGYXmT0nTkrK1TuceAg426MIPkd
+pAEMr/iMWoSSdP8qlGYADJnt9Yd6C+Z9wrMhyn5FAttKd+Pt1Dggb9O6XNl+kR8
yU3q3xHbm4SPQ98BSNUrIeqS2lpvpg==
=G4Z3
-----END PGP SIGNATURE-----

--8DIUkVIkcTq+IojV--

