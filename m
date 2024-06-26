Return-Path: <devicetree+bounces-80328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31267918607
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 624011C21362
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD89118C34A;
	Wed, 26 Jun 2024 15:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlsXJL/m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896A216CD12
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416336; cv=none; b=qWOLPxRwJvN/4SNIHRIQpUrpedUfxswAIK+6li3W7TGu/xGbUHWSIzQl2nsD10j54QyZ9uvMr5Y6frQ08kcdOdZHs8DMYzB1IRHqSlWCxsl51VSh5pahF8f3lri4qXD0QmY/e9pajeSxgjQD4j6krl8AX1rBuob89Xb8c2VFkqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416336; c=relaxed/simple;
	bh=b15Hg210z4EL1SOAWGuFlnF2GxD3SazHyJ2VDPmInEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IN/ih4NXWeOyrpX4oxhdSzaO4Y9RmCP1rOz2jfaNZaBl44XGLoAMynu2IxI9vIAFPxGi+0A399dXHRm+vJIssAIJeGWWac11QW2g/2yOO9tN7Kb7hHhLV/k+vQoVUQfe3eZ8P9QUwWOhTaj0855czg62h9FforGCrYh20P/WOac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlsXJL/m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11F20C116B1;
	Wed, 26 Jun 2024 15:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719416336;
	bh=b15Hg210z4EL1SOAWGuFlnF2GxD3SazHyJ2VDPmInEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KlsXJL/moHiFFn2jx7dIHhNN7zdPay+XnxCl1s8uk13N0AKzXG8Ah+mBaArx1lI5Y
	 WNSmGHQ1tyjqSNpnKSepSB0yc/Xn9RCY/lpJoNSJbP7SdXOEh7oWee5FZ7CImYUap8
	 enTic8LswQTv+qC9SM+5K4Oa5qRmW1X+vm/O49tGMPYB5ZfYYDkRZ59BlgEFjI41ql
	 qP1i8XHFELskhshRpneNzOwyUxr501u2QERkmTyWVLiadlcGbGJxvWUFzZ1NK5Re9K
	 fGAcR907XY8wySLmd7I/b8RGC6UYpRhAEDCMiVwwhNqqLl1ZV8HQXGJkkzSaHTl43P
	 fg1rbeXyfy3Qw==
Date: Wed, 26 Jun 2024 16:38:50 +0100
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
Subject: Re: [PATCH 3/3] dt-bindings: display: panel: correct Anbernic RG35XX
 panel example
Message-ID: <20240626-duo-outage-1601a51239b9@spud>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-4-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dgzzThEjxvXjkW+/"
Content-Disposition: inline
In-Reply-To: <20240626112005.248576-4-ryan@testtoast.com>


--dgzzThEjxvXjkW+/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 11:17:50PM +1200, Ryan Walklin wrote:
> make dt_bindings_check reports that sck-gpios and num-chipselects are
> required for spi nodes, therefore add these to the example.
>=20
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>

huh, are you sure it does? It doesn't for me...

> ---
>  .../bindings/display/panel/anbernic,rg35xx-panel.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,rg3=
5xx-panel.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,r=
g35xx-panel.yaml
> index a7d5ad0f29389..610601c1594f3 100644
> --- a/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-pan=
el.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-pan=
el.yaml
> @@ -40,6 +40,9 @@ examples:
>          #address-cells =3D <1>;
>          #size-cells =3D <0>;
>=20
> +        sck-gpios =3D <&pio 8 9 GPIO_ACTIVE_HIGH>; // PI9
> +        num-chipselects =3D <1>;
> +
>          panel@0 {
>              compatible =3D "anbernic,rg35xx-panel";
>              reg =3D <0>;
> --=20
> 2.45.2
>=20

--dgzzThEjxvXjkW+/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnw2CgAKCRB4tDGHoIJi
0k4WAQCeFXubyWEYxMjUj+AKDeIHuh6tr43Hf8kr8IKu+uA9eAD7BTMhbmysri3Z
AfDfVCH099k/ebvZ6nNr9HGEFAFjows=
=qKYB
-----END PGP SIGNATURE-----

--dgzzThEjxvXjkW+/--

