Return-Path: <devicetree+bounces-233729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A8EC250B0
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D56964F4721
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666C234B1B5;
	Fri, 31 Oct 2025 12:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V58qOvdC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418B134B194
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914074; cv=none; b=A5kEp6m21iSMojt2BsnIWCA356sVHKZKyoZl2pTapnCsBejiRX3+v7Q3wP325JawCUe7TVLsm5upiYRWXF56SNiZgVIJVaVIfZGUKc6+SmeN2ovE6ISqF512eqv8i3E99gKr4Vlqx6MLNLgQ3JB7BtKx4BvJ/p/NeHpM6MTYsrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914074; c=relaxed/simple;
	bh=qp7p4OjV21T3iXDqxMAdoFN7yqHseFTIlvJMnmtuDn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bo10jUrDAftRV8pBq4uW7kRWNSCHHw9qC2kGaE4W/FhVphLqRHJRTrHugbN1EANSdIpCOU5OeJOs+ANfqbrqO/P8F6gWnanc57i89O9gx2cW7ZlZrAgk5VRF+QgEg9FGpGOwIZBw3MVdIa4vth6URVs5vUs0Jn07zX2l+DlN0Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V58qOvdC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CDBDC4CEE7;
	Fri, 31 Oct 2025 12:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761914073;
	bh=qp7p4OjV21T3iXDqxMAdoFN7yqHseFTIlvJMnmtuDn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V58qOvdC6F7V+ERFpyhfPUuchLohiQmLQ++GETumq2j0dREsdUTaG3ESPLfDlAAy3
	 +skw6I7tUWOdrzpymhOgLg6T4C1FuZ+yCBteN9WSU5Uyz9Se1eWUeB0lDwcbBZidjM
	 ay5QUiSS+KD5FWYSLCV9WPq+z6p2gxZ+c+6o6qOPjp+0pL7s9AhYpP+DuBgHkJzW1x
	 B4E7CpGLBTZk6AqE5tdxxB90GTcz2tix475c43rYjtOuaxJvXCrqhq75vE7pd7EsUo
	 hUVMEcybP6s6VeVE41+bxFxxg8D5vzVPrgaZ2O9Kk6VCLU+Hw7OW9fnt5y/BwTFdTn
	 hn7O+5nyjF5Cg==
Date: Fri, 31 Oct 2025 12:34:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Melissa Wen <mwen@igalia.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Maxime Ripard <mripard@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	kernel-dev@igalia.com, kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
Message-ID: <ded1d5ac-fed9-4f5d-a85a-b6edebcad274@sirena.org.uk>
References: <a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
 <ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
 <a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
 <10a4ef77-0e70-4ef2-b1df-535b476d256d@sirena.org.uk>
 <ecd75fd5-3131-4d10-ae3d-b6f608d9622a@gmx.net>
 <25e500c2-3dc1-476c-b6c1-ac4098a0501d@sirena.org.uk>
 <d6b14388-e0ab-44f0-b4d9-78adf74c2a7f@gmx.net>
 <CGME20251030125919eucas1p17450881a921187fd804abf531ccfe1e2@eucas1p1.samsung.com>
 <d88f6420-5013-4856-99d6-da28f79bd7a5@sirena.org.uk>
 <a3ff2ac0-573c-44c6-b8b4-8b6d11548a16@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VRijyemmI/KEl1PB"
Content-Disposition: inline
In-Reply-To: <a3ff2ac0-573c-44c6-b8b4-8b6d11548a16@samsung.com>
X-Cookie: Byte your tongue.


--VRijyemmI/KEl1PB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 30, 2025 at 08:09:47PM +0100, Marek Szyprowski wrote:
> On 30.10.2025 13:59, Mark Brown wrote:

> > That seems buggy on the part of the core, particularly since userspace
> > isn't there yet so we might be missing some filesystems - I would have
> > expected the device to probe once the supply becomes available.  But I
> > do agree with your analysis, it doesn't look like an issue with this
> > driver.

> Well, I see this partially as a configuration issue. Probably in case of=
=20
> NFS root and modules distributed there it would be good to add=20
> deferred_probe_timeout=3D60 or something like that. I'm not sure if there=
=20
> can be any generic solution for this kind of issues.

I disagree, I just don't think we should ever stop trying to probe a
device that's in deferral.  It's sensible to carry on with system wide
actions after a timeout, but stopping trying to probe the device isn't
helpful.

--VRijyemmI/KEl1PB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmkErNIACgkQJNaLcl1U
h9B8wwf+Kdw9rjhA/XKpcWjn2DNfVY+bqk1r0+SetYZ/Kc+QDexKRkXbkkgoj0CK
qX+zQQnObxfdjO2+NOkv10uHLEWaAnIzzPrsi/VXW4JsrgLQAItBso0rb8OCa9bC
smdA6hKJXkdKdNkQjvldMgJOwFxseQh9Ut2ijjbt1xll6IDWepzLSCM9oF+8Sj7K
njHjIiJNuwCkS0aEKPTfNAW4snykYekdxtzRfg73tZChzXcPzyC6/rFu6KhvQYr2
S0b9Ndq4iL0dKG/+8gyNOMKSvfmTUoAOe8j24m1JTnIku5nWInL42TTJbSzsna6/
rFciDDQCKid8EcYlAHxFtvBJoGKiYA==
=sGXh
-----END PGP SIGNATURE-----

--VRijyemmI/KEl1PB--

