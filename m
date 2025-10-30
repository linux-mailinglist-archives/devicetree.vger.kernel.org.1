Return-Path: <devicetree+bounces-233243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 391DDC201FD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9A235343B9E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A731C340A51;
	Thu, 30 Oct 2025 12:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeB95CGI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EB42EC088
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761829155; cv=none; b=jZG/eogBF82ZbMkM7/WeCHzwRG+nrUK/ZDmHXH8yliTLE3keX7RvRNl0RUnbik5XHFSt5KXZurzCpDgtW/zSM1mFO+MVr9uPnehAH4QyGj1R0KgeUzI2HuznfJB2Gfs8FXcT8kCvKy0WE8/djQc1grxy9o4PkVrXl4/kVuT4sl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761829155; c=relaxed/simple;
	bh=+1QdoawkvflouOC6qmIDpRPfUBs0v5s5IJB5WvVN5c8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bWYsGriVIjrt0iwjdhtKG8A0DkqGnXGUCXDtXjZnvszpfutSzNVsgdr0TAiaXCkFfC9+Be4BNQgQL6BMeh1BtK8dcErSc88doTH5fyBvWAY3gLu1savI88HuSlJwVk8pOY2rudfNmqYzXth7wNArMfE+/Q0fTzfmwM2oU3udkrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeB95CGI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F512C4CEF1;
	Thu, 30 Oct 2025 12:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761829155;
	bh=+1QdoawkvflouOC6qmIDpRPfUBs0v5s5IJB5WvVN5c8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UeB95CGIa0bUoc3nVboyxnGKS3LjLnmt37ePDVdvoQKf83UepOJ121/YnPn3t8SZp
	 WT9ofgpoHA+oc9DkrYPpAYEVfsYrXgToUHn6AbgONlGAGLm14sIKqWmn7AOe4XvwyX
	 9W1KRLNKop4Hg5zqDjZ2BBO1jFBC0iWZi7sq7TcSVxpnyXEaD+D78QH/CC3e/e23DU
	 PQyjht7aXAgAWQZsaI168foVKW8jjKKTBNJ6lvNh5VEuFfa9IE6vXT46jNe0Nevy/x
	 iDgbEJLjnMM4JUXuQa/SlGEbWZ9WDRtPESL+b9TCPKjxc6EvUwCGmK62ChusB+JGmC
	 UvAjl58afSMDA==
Date: Thu, 30 Oct 2025 12:59:08 +0000
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Melissa Wen <mwen@igalia.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Maxime Ripard <mripard@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>, kernel-dev@igalia.com,
	kernel-list@raspberrypi.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
Message-ID: <d88f6420-5013-4856-99d6-da28f79bd7a5@sirena.org.uk>
References: <20251005113816.6721-1-wahrenst@gmx.net>
 <9ebda74e-e700-4fbe-bca5-382f92417a9c@sirena.org.uk>
 <a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
 <ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
 <a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
 <10a4ef77-0e70-4ef2-b1df-535b476d256d@sirena.org.uk>
 <ecd75fd5-3131-4d10-ae3d-b6f608d9622a@gmx.net>
 <25e500c2-3dc1-476c-b6c1-ac4098a0501d@sirena.org.uk>
 <d6b14388-e0ab-44f0-b4d9-78adf74c2a7f@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DL6fKXW3fR4LoiHa"
Content-Disposition: inline
In-Reply-To: <d6b14388-e0ab-44f0-b4d9-78adf74c2a7f@gmx.net>
X-Cookie: Is there life before breakfast?


--DL6fKXW3fR4LoiHa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 08:51:38PM +0100, Stefan Wahren wrote:
> Am 28.10.25 um 19:47 schrieb Mark Brown:

> Okay, here is my theory. The difference is about (boot) time. In my setup
> the whole device boot from SD card and in your case the kernel modules are
> stored via NFS.

> V3D requires two resources, a clock and a PM domain. Additionally the PM
> domain itself depends on the very same clock. In arm64/defconfig the
> relevant clock driver is build as module, but the PM domain driver is
> builtin.

> During boot "driver_deferred_probe_timeout" (10 s) expires before the clo=
ck
> driver could be loaded via NFS. So the PM domain core gave up:
> [=A0 =A016.936547] v3d fec00000.gpu: deferred probe timeout, ignoring dep=
endency

> So this breaks probing of V3D driver in this case.

That seems buggy on the part of the core, particularly since userspace
isn't there yet so we might be missing some filesystems - I would have
expected the device to probe once the supply becomes available.  But I
do agree with your analysis, it doesn't look like an issue with this
driver.

--DL6fKXW3fR4LoiHa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmkDYRwACgkQJNaLcl1U
h9AuPAgAhX8oYbIGRTANQ29CvGBBiBWZTt3xEqxSiSYYfyZHAo3wqewY65jMId3v
iiN98hv86nqd09M4x5o20xrclao8tKqf+hJuOLTAiaTmK6vZ2MP7jcLrSIEKcXj5
Bz7YUJ8KNIL3greU8KJtZrOYarVY9dLsEfWg8vA5Dn6LVYLRiR9AjcSPotQ8HBYR
unihXKLZ0FjWnYPNZPh7FwuB+X1uyJpD0Frd7O2QwKshXeimCAfyEas59caUod/C
gt7bHp31py5xKcfkJnFIRPsaLiR+0VAgQGOJunxK9ALbq2VPKcUQPIvFy8o+g+PP
N6FBknR19Ga2HdCaymnhijMAVkNMmg==
=tMof
-----END PGP SIGNATURE-----

--DL6fKXW3fR4LoiHa--

