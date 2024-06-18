Return-Path: <devicetree+bounces-77087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D580A90D5E4
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:46:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76CC7288097
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17527139CF6;
	Tue, 18 Jun 2024 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfnNCPUO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D08127E0D
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718721403; cv=none; b=CQJUhyqXPH2V3pqlxLs7GSg7QK9TopWTluHhM4ddfWT2dHoamxLeJ3pL2u/aUzVgwlG1x8NxDDKlXapGYzBcxaegqTgJuw5uC1iv/gupyi6w3MM6tONVDAou5+U0ClLktly1wXGgZ6LtJznMJPSSZmcgJese/axuVgeFyNZL9OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718721403; c=relaxed/simple;
	bh=TemdYJYTYnKGcbzKQlINdrNuRC9BBhSSn/lMK6ZyzEM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DCzqPqJc64bq8aNA5wJ3bl9mxZD/0IjWt7M+BTuwwl1BNd01XoBSRlUqKbWtMLO7SFUokDIgY457k6TotJlpjbMZILN8m6sVQseZZ9gaHagUlxn/s0Yk7GQg2W5HtSPh8++pYHWG4BTwreiRWGdQ4n2bBke/xfrlTiJY1i6xHo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfnNCPUO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC3C4C3277B;
	Tue, 18 Jun 2024 14:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718721402;
	bh=TemdYJYTYnKGcbzKQlINdrNuRC9BBhSSn/lMK6ZyzEM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NfnNCPUO/eeZdPUIalzDchxV8DRA6ydEqKO074R+lnNCPeJIhpHIwcA797TXYZ4ZC
	 B6c+XIK3iIUZ4p3kOOQxzLuScni0Tl1zBBazbZKH4vOueuBq8QFJGmjvPToNz2BoUH
	 l5JJrllzudxTU94YDop8oBLiRAaYeofPJ46k9yzNNrcyveCnLp9DRTFCE3l3JUFw0e
	 t8vSFHmxAW+BD8ZfhOG/7XOXMZ/602l+FJzdzQw6BrwDqm+gkQMZcCqKdMx2fGCDYT
	 8H1XIed7OAKJVVn0lppr/uiAAQ571PTQcbxS5OnZ4SON3omrbIdIw6G98XbKcgx++k
	 9ABkE4KrBW7OA==
Date: Tue, 18 Jun 2024 16:36:39 +0200
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
Subject: Re: [PATCH 0/4] Basic support for TI TDP158
Message-ID: <20240618-impetuous-passionate-jaguarundi-d7bcc1@houat>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <fac01fa5-f257-488a-854e-716bd2634d85@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="auo766chcwhbxk2f"
Content-Disposition: inline
In-Reply-To: <fac01fa5-f257-488a-854e-716bd2634d85@freebox.fr>


--auo766chcwhbxk2f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 03:07:16PM GMT, Marc Gonzalez wrote:
> On 17/06/2024 18:02, Marc Gonzalez wrote:
>=20
> > Marc Gonzalez (4):
> >       dt-bindings: display: simple-bridge: add ti,tdp158
> >       drm: bridge: simple-bridge: use dev pointer in probe
> >       drm: bridge: simple-bridge: use only devm* in probe
> >       drm: bridge: simple-bridge: add tdp158 support
> >=20
> >  .../bindings/display/bridge/simple-bridge.yaml     |  4 +
> >  drivers/gpu/drm/bridge/simple-bridge.c             | 85 ++++++++++++++=
+++-----
> >  2 files changed, 71 insertions(+), 18 deletions(-)
>=20
> Series has been NACKed.

That's a gross misrepresentation. It wasn't NAK'd, changes were requested.

Maxime

--auo766chcwhbxk2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnGbdgAKCRDj7w1vZxhR
xW3tAQC0G2P2v2IA4YXDoDQcvzowCTVlw9WiKP8yb/JmhiiSFwEAnwSATQToNNCP
OXgrBEFxwljYuZjXStcJ7XjZDG4OqwI=
=evAI
-----END PGP SIGNATURE-----

--auo766chcwhbxk2f--

