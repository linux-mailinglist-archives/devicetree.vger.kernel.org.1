Return-Path: <devicetree+bounces-82909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9AB926519
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 17:40:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0889A28710B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 15:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3112C18131E;
	Wed,  3 Jul 2024 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USk2/5lm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C45A18132E
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 15:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720021117; cv=none; b=C3T+age6QNNn/md40OnGKOiiIUVRYOh4jZNsTu3FTO7fxCv8kTq59Nv+6EjK+m43sf2mbWGjYqLh0K0r5GJzlQw2JoHgzmixt+3PDs6eVOgX7WSJlo9yM0yQqkxnoESKVYYQpa9PfcmW25S25pKLBBPJoK+vS7rrXdQsRBNi68c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720021117; c=relaxed/simple;
	bh=IUGlUTqqMt36lhKlUUU0HiC749ze4B7y+O/XaXPqxNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QvKC7QEbmbCUe/9KdsWYCnOPA2p+IbbpzU90PsFA/7bcCElG5spk3SITiHAY6M5bHLsQzjokU4cqRbLJ+zm213t9Ar46PMH1FXGbTKOblxKBUMibJotopVOU2Phgr6xCeLgyRIIvpQFhheV1L1BxEn3/d7T2wWMP+ms3kXDdedY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USk2/5lm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63660C32781;
	Wed,  3 Jul 2024 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720021116;
	bh=IUGlUTqqMt36lhKlUUU0HiC749ze4B7y+O/XaXPqxNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=USk2/5lmfMLCZ2yyGOjcbK16lGP4IC521UCNwrSz2FxTPZEjxz0PzN/RChvVCuHnZ
	 tMfm9YA5LNyCDfoKddznIGNxOKgDUkSeJuDb8LLFxmcdTsyuwxSThOXUua59juAPSo
	 IEae4duFuB8IB6KOgRC7X2RddGP082B8EnTIEvIGnqFRJObs578WNnBTaHA/U/5gFN
	 PSg/sZw996zMuNG0uQyqfq9sGjlxToKSdUxwyUfuXFyNABJ8IUGwO9ZCBi+jz1u8E1
	 xa6NdOPOZHybO1oVNR40sCgru51dtM3sL5Cr+RlAaWzEELbY9RQH2cXTR+QD/bsLWV
	 +vhh9z9uGV6kg==
Date: Wed, 3 Jul 2024 16:38:31 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: display: panel: correct Anbernic
 RG35XX panel example
Message-ID: <20240703-cataract-suitor-f930bcc83aa8@spud>
References: <20240703103710.31169-1-ryan@testtoast.com>
 <20240703103710.31169-4-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DqxTy8vnaiFFu2zC"
Content-Disposition: inline
In-Reply-To: <20240703103710.31169-4-ryan@testtoast.com>


--DqxTy8vnaiFFu2zC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 03, 2024 at 10:31:46PM +1200, Ryan Walklin wrote:
> make dt_bindings_check reports that sck-gpios and num-chipselects are
> required for spi nodes, therefore add these to the example.
>=20
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>

I forgot to reply to, or somehow didn't notice your reply to my comments
on this patch. I would just drop this change as I think it's a tooling
issue. I checked the version of dt-schema etc that I have here locally
and there were no complaints with the binding prior to your patches.

Sorry for missing your reply,
Conor.

> ---
>  .../bindings/display/panel/anbernic,wl-355608-a8.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,wl-=
355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,w=
l-355608-a8.yaml
> index dde3600f0189c..bbe016453c9b2 100644
> --- a/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-=
a8.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-=
a8.yaml
> @@ -40,6 +40,9 @@ examples:
>          #address-cells =3D <1>;
>          #size-cells =3D <0>;
> =20
> +        sck-gpios =3D <&pio 8 9 GPIO_ACTIVE_HIGH>; // PI9
> +        num-chipselects =3D <1>;
> +
>          panel@0 {
>              compatible =3D "anbernic,wl-355608-a8";
>              reg =3D <0>;
> --=20
> 2.45.2
>=20

--DqxTy8vnaiFFu2zC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZoVwdwAKCRB4tDGHoIJi
0oCgAQCzrSTM8OPo0HV+21dnRdqoWFh1d6zw3BEtHr20zqHtKwD/a4e438/Ioc+W
GqRDr7AcM9XI9VTnTCsC2ozY7og6aws=
=TfRi
-----END PGP SIGNATURE-----

--DqxTy8vnaiFFu2zC--

