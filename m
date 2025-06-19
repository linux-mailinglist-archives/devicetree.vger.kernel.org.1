Return-Path: <devicetree+bounces-187637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC31EAE0B1D
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 18:11:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E1945A484E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7EE28B7DA;
	Thu, 19 Jun 2025 16:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyIgYnSd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474D122D4DD
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 16:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750349479; cv=none; b=mW3U5KRnS+XUlZUhT4ABpCIru8IIQTVZ/u8gV/B3p8qpAiHoZdKvkLaPDpW71kkbIQwNJNEgXtoNa5N73GG0Y6Tqm6bEWo4KiHgWtTKUXHnTjLBqNnlGi4Es3MMC3G5bzklNizOBjR6EPk29800RknsM/MdkT4leMkTK+VfNwFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750349479; c=relaxed/simple;
	bh=L/4GQCmNp4End3bV26nQ0uPgKzbQn9lwe/QiKMgQu7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BqOC8T8MS1TbxwsC8y2/T0MdsdkRnSQrcofJkz4gWTqMg7Bai8ElXZF0tWRfRYrXxPUK8jjLNqe95qKB2amCJ1k9XTVFjWBUhyvQRGWkmN6NjE6rtMynZYVrTwiCsB0kdJsQjjXLSoum5aBER4hSXjcE6DQC6tTmazxRi/RtFLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyIgYnSd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21FD8C4CEEA;
	Thu, 19 Jun 2025 16:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750349478;
	bh=L/4GQCmNp4End3bV26nQ0uPgKzbQn9lwe/QiKMgQu7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oyIgYnSdcag72Xy1MvJrJHWa8zcMh9260RChoW/kjEG8Tr8iHnltwi5hvZPHCcHC3
	 kUkdxM6EeTe1+iH4YXP/IHbBqakGp7MWZLZdj6182PI0stgsFsE2+QuL18VFGVpqCv
	 70aMVuTVIRb/Zx3h58R/VPCRTQ+NB5BgPal4dbevE6GqDho6BNyiFcj8L1A5+MS1Za
	 b8bAFD77YvJvuVb+xoYThFrgQZbd1jKA302idHdWbnSg4Z35IUNQLgAZ5TmS+iljsc
	 6o6XlrA6m4hqsBHlgOMThKj602r6pVpKJFAryk54i+P8w3EpDyACWk58lHl05Zt7jB
	 doXIbiPRI7YTQ==
Date: Thu, 19 Jun 2025 17:11:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: LiangCheng Wang <zaq14760@gmail.com>, cip-dev@lists.cip-project.org,
	drm@lists.freedesktop.org, devicetree@vger.kernel.org,
	noralf@tronnes.org, robh+dt@kernel.org, onlywig@gmail.com
Subject: Re: [PATCH 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink
 panel
Message-ID: <20250619-savior-aptly-39782910eb16@spud>
References: <20250618033731.171812-1-zaq14760@gmail.com>
 <20250618033731.171812-4-zaq14760@gmail.com>
 <20250619-earlobe-skiing-25605816a861@spud>
 <c466efe2-981a-4dcf-a278-f84a37d9caf0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9inD52BoC/bUAuhb"
Content-Disposition: inline
In-Reply-To: <c466efe2-981a-4dcf-a278-f84a37d9caf0@kernel.org>


--9inD52BoC/bUAuhb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 19, 2025 at 06:01:41PM +0200, Krzysztof Kozlowski wrote:
> On 19/06/2025 17:43, Conor Dooley wrote:
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: mayqueen,pixpaper
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +    description: SPI chip select number for the device.
> >> +
> >> +  spi-max-frequency:
> >> +    default: 1000000
> >> +    description: Maximum SPI clock frequency in Hz.
> >=20
> > Does this actually not have a max?
> > The display surely has a maximum supported frequency, which might be
> > lowered based on the board it is connected to.
> >=20
>=20
> Have in mind this is a duplicated thread - same stuff was sent two times
> leading to duplicated discussion:
>=20
> https://lore.kernel.org/all/?q=3Df%3Azaq14760%40gmail.com

Yeah, I saw the dupe but I deleted the wrong one and couldn't be
bothered downloading the mbox for it.=20

--9inD52BoC/bUAuhb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFQ2ogAKCRB4tDGHoIJi
0p0/AP9sO8ovk33FvFe8Uc0xO46JGtywO5SJ8Y+nCh3b+wBiRQD+O39z852xvYn2
9wN8lBYsxPWOhE1dnIYFJeSzWE0z+QU=
=gQDp
-----END PGP SIGNATURE-----

--9inD52BoC/bUAuhb--

