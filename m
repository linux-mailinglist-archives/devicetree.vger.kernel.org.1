Return-Path: <devicetree+bounces-13481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00A7DE30D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05D40281391
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5FF14286;
	Wed,  1 Nov 2023 15:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9idzNvI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7094A14282
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:33:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC405C433C7;
	Wed,  1 Nov 2023 15:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698852814;
	bh=eg9WHFCa2Yu4n+A3lcI4eJ92snfSlvDngVSqSCKIOOM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u9idzNvI6u0AYDkW3BdIDAxmmvdbqW1n/KqGSCiCmXYNMc94Y94PsKl/Ofadqm2XT
	 Y+HxW6G0+AEJT0eIeb2ffOiyhZlOiwcCC744+gJwN9X2U7SpkFc2hdoHH5QsHq8sOA
	 cXd+Fir0ya7Cej7puu20Ve/AvNX2Mew2zyetdC1zVX9NIJNtRSqcbWltkOI0VoQR8c
	 qJwUXkYPOakdIrBxJnWkcDTgmLEyir2bcpRN76s6js8QlmePI/KVVsOkKKmfdN6yGA
	 wus8NBZh7VGQQxgT/7KeubwCnqe8BkE7JXFVewqUnsNbfpWfUYuqBNQXeN4QUV27rP
	 wUr6XrqbsuY+A==
Date: Wed, 1 Nov 2023 15:33:30 +0000
From: Conor Dooley <conor@kernel.org>
To: Vincent Knecht <vincent.knecht@mailoo.org>
Cc: Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] media: dt-bindings: ak7375: Add ak7345 support
Message-ID: <20231101-floss-mortified-452c96c9af46@spud>
References: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
 <20231101102257.1232179-2-vincent.knecht@mailoo.org>
 <20231101-wise-childless-ed44729657c6@spud>
 <0f294695fdfed60c385deadc9d030c225816b4f9.camel@mailoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GFXk9WplJkFov3Ct"
Content-Disposition: inline
In-Reply-To: <0f294695fdfed60c385deadc9d030c225816b4f9.camel@mailoo.org>


--GFXk9WplJkFov3Ct
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 04:29:20PM +0100, Vincent Knecht wrote:
> Le mercredi 01 novembre 2023 =E0 15:10 +0000, Conor Dooley a =E9crit=A0:
> > On Wed, Nov 01, 2023 at 11:22:56AM +0100, Vincent Knecht wrote:
> > > Document AK7345 bindings.
> >=20
> > The commit message should mention why this device is incompatible with
> > the 7375. Something like
> >=20
> > "Document the ak7345 voice coil motor actuator. Similar to the ak7375,
> > this model has 4 unilateral phase detractors instead of 8."
> >=20
> > Otherwise,
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >=20
> > Cheers,
> > Conor.
>=20
> Thank you for the review!
>=20
> I don't know anything about phase detractors, nor any other details

hah, that was just me putting techobabble in the example text rather
than using foo. See also:
https://www.youtube.com/watch?v=3DRXJKdh1KZ0w

> (having found no datasheets for either of these ICs)
> apart what could be infered from vendor/downstream drivers
> like in the commit text for patch 3/3...
>=20
> So I guess I'll send a v2 with a commit text along these lines :
> Document AK7345 bindings.
> Compared to AK7375, it has only 9 bits position values (instead of 12),
> 20 ms power-up delay (instead of 10), and no known standby register setti=
ng.

Yah, that is the exact sort of information that is good to have, thanks.

--GFXk9WplJkFov3Ct
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJvygAKCRB4tDGHoIJi
0mr0AP9ua78lXwIJm7NKVVKFjyBrUIedY6NKHe0VwDp4fJi5HAD/V0b1ZNpChS1t
c/HKZTeESkrwatJfu376oALOkuZHbg8=
=9zv9
-----END PGP SIGNATURE-----

--GFXk9WplJkFov3Ct--

