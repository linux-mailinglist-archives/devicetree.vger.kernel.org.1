Return-Path: <devicetree+bounces-11666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A657D651F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F4DB281AAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8EE1642D;
	Wed, 25 Oct 2023 08:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.b="eWpWdySy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208141D542
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:31:16 +0000 (UTC)
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C698812A;
	Wed, 25 Oct 2023 01:31:14 -0700 (PDT)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id D06001C0079; Wed, 25 Oct 2023 10:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1698222672;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K5b8VxAJIn+dbIaaMO3Y3bs3x2LTJPKWvzi8/c5oplg=;
	b=eWpWdySy0HTFCZvH2BYvZXLv/Ha8APYid6FXcU+BrdCmlWfjuTVVdAStgAcBhk/vQTVCoA
	pP1qIeBnfpkhxdUaqJ7XDwqoN9PYrFZnaez1sIj7d36FwRvbydIgOyQ4mwpwaXOPsM73g9
	YkcK9hbB5LPrzgofczc+IzZm9+fLp8o=
Date: Wed, 25 Oct 2023 10:31:12 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Piotr =?utf-8?Q?Mas=C5=82owski?= <piotr@maslowski.xyz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Robert Mader <robert.mader@posteo.de>,
	Guido Gunther <agx@sigxcpu.org>, dri-devel@lists.freedesktop.org,
	Hector Martin <marcan@marcan.st>, devicetree@vger.kernel.org,
	phone-devel@vger.kernel.org, asahi@lists.linux.dev,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH RFC] dt-bindings: display: document display panel
 occlusions
Message-ID: <ZTjSUPUKxsuIYPkC@duo.ucw.cz>
References: <20231009-caleb-notch-example-v1-1-9e0a43ae233c@linaro.org>
 <CW4UT45DZ5C6.3NIT2IFNSKD4O@andrad>
 <4ce2c3a6-6f66-4fe7-8616-a787a88dd250@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BKsHCK/XSjafsKFw"
Content-Disposition: inline
In-Reply-To: <4ce2c3a6-6f66-4fe7-8616-a787a88dd250@linaro.org>


--BKsHCK/XSjafsKFw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > An orthogonal issue is labeling all of those regions. I think we should
> > start with fully obscured areas and maybe less readable ones like the
> > waterfall edges. Still, different features should live on different
> > masks =E2=80=93 even if we don't attach meaningfull labels (like 'notch=
' or
> > 'camera cutout') to them right away.
> >=20
> >=20
> > What do you all think of that? I didn't see this approach considered in
> > any of the earlier discussions, yet it seems so elegant to me. Am I
> > missing something?
>=20
> I think the unfortunate truth is that approximating notches and rounded
> corners exclusively with regular arcs at the cost of pixel accuracy is
> just such a no-brainer. Pixel masks would be pixel accurate, but there
> is no benefit compared to a slightly underfit curve.

Pixel accuracy may be important for low-resolution displays.

And... I have certain low-resolution displays in mind. There are
keyboards with individual backlights below each key.

Maybe they could/should be treated similarily to displays with
occlusions? But we'll really need to be pixel-perfect for that.

Best regards,
								Pavel
--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--BKsHCK/XSjafsKFw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCZTjSUAAKCRAw5/Bqldv6
8oFPAJ95or5A0GJeZajBk7IYau7VzJLw2QCeJzrKL+rZIklUforgWph0lEF6FCA=
=wIrJ
-----END PGP SIGNATURE-----

--BKsHCK/XSjafsKFw--

