Return-Path: <devicetree+bounces-10031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 428677CF6C3
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF7D7281FFE
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966FC19468;
	Thu, 19 Oct 2023 11:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8J0WDTw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B4BE19442
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:28:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 250FDC433CA;
	Thu, 19 Oct 2023 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697714905;
	bh=CC0lIEjmBNKh9ZTUkXID9Xg/UYaPpvLP9VjlpzQIKKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t8J0WDTwOMk8s35OVmB7NSTsfGjyRimJNi5chvuN1wISDixtWWtxec6I/Jgkl7RYb
	 wPdKLI3UMGcqllLhjGfvA1fPhw3Ss24uv9lOCpTq9KygR+eDdZ6yo6b5UMx0t5qV/A
	 HJ8wfdF9AqVuSyXYkrXMMHAg28W2/so1DapBzf2bVBRFXBG3ZFAfxnmdS+xBugvWxw
	 cZdMhkr1sXbWWExImGv/N12f5FQqe1aVRlVNDMW7wzQOh1AZx7lxv9T1kqtb5CAWIq
	 Sn+yf4mAwebUB9u8U3khpgl0/GAiQoqEOERGebNHxs/y25XgfQW5yXshmQg5YN4jdn
	 6B9mKC0kTpD2Q==
Date: Thu, 19 Oct 2023 12:28:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Message-ID: <20231019-hurry-eagle-0ffa95b1a026@spud>
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <20231019-rematch-ethically-9d482ca4607e@spud>
 <6b856b0d-4f69-70ac-59a7-237fd21d1a92@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iLG2NMHQSB/mbANT"
Content-Disposition: inline
In-Reply-To: <6b856b0d-4f69-70ac-59a7-237fd21d1a92@tweaklogic.com>


--iLG2NMHQSB/mbANT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 09:20:12PM +1030, Subhajit Ghosh wrote:
> On 19/10/23 19:21, Conor Dooley wrote:
> > On Thu, Oct 19, 2023 at 06:34:37PM +1030, Subhajit Ghosh wrote:
> > > Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one
> > > file and removing the other.
> >=20
> > > Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dce=
f@linaro.org/
> >=20
> > "Yes, they look similar. I will combine them all in a single yaml file =
in
> > the next revision. Thank you Krzysztof."
> >=20
> > Yet this is a follow-up patch, not a version 2. The original patches
> > seem to not have been applied, so I am not sure why you didn't send a
> > v2?
> >=20
> > Cheers,
> > Conor.
>=20
> Sorry, I should have put a longer description and a longer commit message.
> That patch series adds a new driver - apds9306 which is separate to this
> patch. As per Krzysztof's comments, first operation is to merge the exist=
ing
> apds9300 and apds9960 schemas. This patch is the first operation.
>=20
> Second operation will be to add apds9306 support on top of that. I will
> explain more on Krzysztof's comments. Thank you for reviewing.

Ahh apologies then. The best course of action would likely be to include
the patch merging the two bindings in your series adding the third user.

--iLG2NMHQSB/mbANT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTES1AAKCRB4tDGHoIJi
0hxoAP9jx8eindF1SaXOSWo2eyme0bm0nsGc8NhDwAugFtQf1QEA4S34dn1S2csN
Xiyj0F1EY71U+VdxYt7jDZkgkwUtlgw=
=tF1b
-----END PGP SIGNATURE-----

--iLG2NMHQSB/mbANT--

