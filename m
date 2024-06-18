Return-Path: <devicetree+bounces-76881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E502E90C6F8
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D52A01C21E6B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BDAC14BFBC;
	Tue, 18 Jun 2024 08:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dtjuvzkz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5805E13A272
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 08:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718698617; cv=none; b=SzIlQn3/pjIllnSsUy+Km5X7j0uavjAqhMyAYLTfq3lgqCVhexYZa6U6HrpLioeC9PlnGXoAZV69H3H162WworiaLJ6rIT5hZUWJAO7DvXPBIYLFOK4YQJYUaSjo7vFtApBZVM0+Tc7bpxBXkv+JW1DJL6TSU0l9RxU8p8IeECw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718698617; c=relaxed/simple;
	bh=AnHPQh9Ws7FCn5Y0bhEFJjmVr5CmxaG2VtfLyAikIhU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YSJ+ChC9HMAqT0JsGy3tYwEtvT67Be7PwcrenSQItDUCkx9L+RzTKUNSCdXtDtAlwlEN1e19y+CedUo0RAJttBne8bdIbZNcTcWCoIQahSBoAXvTG7/Xp5maFk88gyS0mfEtS0sLi3X1ORuC+k3CMJQ4IyK2jezN2+mHcH8vvNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dtjuvzkz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918D9C3277B;
	Tue, 18 Jun 2024 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718698616;
	bh=AnHPQh9Ws7FCn5Y0bhEFJjmVr5CmxaG2VtfLyAikIhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DtjuvzkzmQUY8B6zgAe2OZf2Ge6HFUNYDOHah5zXPAlNwsSVcFgLFt+FDQ0AMU2WE
	 y8fi2K0dCjOm6cAkB8wtBgZHQLrnlD3AiD7M6xEcDH2nuepk5xeAgGxbPbcTak81nF
	 xk1mimJtzBZe+6I1azrUnHTFOIEMaS3TtGdBMldAqxF0dBIOAF5SSngTXDefq5FCCa
	 v9xdle+3hVKjw3UtdGZcVHnGpax17YX7Z0ShP5+9DSHmA8sSCITseOTgpaIGUh8HEH
	 MtcfPSoyUhqw3sh7U9nLi8Guy1383eXSVcT0Or1IB2WpMCyhNQypz4bItuH+2EQ4AY
	 oQdnyurwXuIUA==
Date: Tue, 18 Jun 2024 10:16:54 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH 2/4] drm: bridge: simple-bridge: use dev pointer in probe
Message-ID: <20240618-hot-centipede-of-contentment-bafcfc@houat>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-2-df98ef7dec6d@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6j5qm7tab4pveph5"
Content-Disposition: inline
In-Reply-To: <20240617-tdp158-v1-2-df98ef7dec6d@freebox.fr>


--6j5qm7tab4pveph5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 06:03:00PM GMT, Marc Gonzalez wrote:
> Prepare to factorize probe function.
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>

=2E.. And since we would need a separate binding file, we probably don't
want to add things to simple-bridge that would not be part of its
binding.

Even more so when bridge drivers are that simple to write.

Maxime

--6j5qm7tab4pveph5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnFCdQAKCRDj7w1vZxhR
xSOGAQCyONwu9r3f/CI8n8WI6HWYwIWpVaBHAiQkqRvdA331GwD/UPE/Ia5NbW01
YA06OHStsPC8FhSXLmOvPo/JdGkDeQA=
=BELX
-----END PGP SIGNATURE-----

--6j5qm7tab4pveph5--

