Return-Path: <devicetree+bounces-103319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4414697A5E6
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 18:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14495B2CCA3
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45504158A3D;
	Mon, 16 Sep 2024 16:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD1aSrtr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2108A28371
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 16:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726503462; cv=none; b=ZXPzqjIqOmxxAJbVX4ztQovNZ3US6sQAfpvQyP0320kAU22vjzFpIWMM23/dM1L9EsqZ3QjUZeao6l3/QjPpyIIZUrohgtbiQBIK2/I9YPL1x7Sht3UBzSu0zPT5E5AHJqWqC4nV4MMxtKHjd2nXLPm1Y1pdd+b7+Zye9/bmQhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726503462; c=relaxed/simple;
	bh=LRTwH4s4Ogw/as5MdeQKQ5ujUGmHf11kW+Qnv77pTpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhuJhq1ZH9TcWMCw4JcerLXM4dP7B5iSwtgXvPqeMRRzj+b/ye/1Rj53GKav+aQBfjjHz0SuYwibXl+yIZ5CJF061qXY2x52bT8Z6fqUoynn+nHxl920TlZRg1jC2MXHhPm0lCBui1KLamMaPWLB+fNZsZx2IQYMqh1DNuQqHt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD1aSrtr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CCE1C4CEC4;
	Mon, 16 Sep 2024 16:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726503461;
	bh=LRTwH4s4Ogw/as5MdeQKQ5ujUGmHf11kW+Qnv77pTpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FD1aSrtrT09AayrcekIIq3kzL0BrYOj1SoGQtTXs8jgRZvSJ/cQqL9rJEis6Xkjt3
	 pCKaiZky2VZZCazvLfqqt5HN6Nl52X8E1HMpu2N63ODhmOewPHYRBCgo6A+zcY1SoC
	 r8+9vvlQbZT7AEuuZRRqmDzOAUmH0g4YxHEKDPSQxP5Q1+xLm7dVDTZu719+X7AISU
	 +eEbT3Y7a2nkhfmh4U8qGMkk9VLhqXrkMt65XL9f5V3HmEPgvwO3npNM4cfJQg2EuW
	 CVdrJHKRS8yUVxZHmKq3B+/B6HpCDt48Q9II0T4EuYVyHF11IhI3Mlg3uzD2JEDaCk
	 xFlRWnO6H1fBw==
Date: Mon, 16 Sep 2024 17:17:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add an entry for
 ComVetia AG
Message-ID: <20240916-shadily-basil-90db916723f1@spud>
References: <20240913200906.1753458-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UTagNkEp5RUCEmAC"
Content-Disposition: inline
In-Reply-To: <20240913200906.1753458-1-festevam@gmail.com>


--UTagNkEp5RUCEmAC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 13, 2024 at 05:09:04PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> ComVetia AG is a professional radio communication platforms
> manufacturer:
>=20
> https://comvetia.com/
>=20
> Add a vendor prefix entry for it.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--UTagNkEp5RUCEmAC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuhaIQAKCRB4tDGHoIJi
0vh4AQCaxMhlr+ynMGVAK57Ho7maBJXhp3lCRXs5DAPerBbG4AEAuMlZMleLXEDy
GHxI5RcIG1ETfCGAWkmUCSG4OO9DpQI=
=qhep
-----END PGP SIGNATURE-----

--UTagNkEp5RUCEmAC--

