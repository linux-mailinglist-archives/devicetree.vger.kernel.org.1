Return-Path: <devicetree+bounces-293644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJfWI0Zz+2m7bAMAu9opvQ
	(envelope-from <devicetree+bounces-293644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 18:58:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D304DE7F5
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 18:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D09F2300187A
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 16:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6994A13AC;
	Wed,  6 May 2026 16:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ou5KWIDB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B23649550E;
	Wed,  6 May 2026 16:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778086687; cv=none; b=cRS08hlXd1xK5rgGcSKA03T1+wlY3Dxza2Dwi9e0Qlti3DttMlk5GsYVm3LFu6ySDLzd7iQ+Ct6B5HVexKDALjzpYARRVcbc+cgb/S/VQaxAYx5YbV5s0GeGpacYuQEBnzU/8s4bFopvT0SPbdJUGj4hiEBaHI0bFfJlFA2XPNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778086687; c=relaxed/simple;
	bh=aMkFGXzi8Egn2jdhjt/Bo9gCanCXDfSPDnXjNpmDKB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W5rghF7sk/P0t/jpxf/QeuD8irQP/Tj5m8W44xpbfpLqPfFHqqYzHLxdHLfPEWCVkA8WEIAqROgMiPtHcPKyr30WO//H4QVMW5a5D+CdOwkM4Z0b1x7pNxqY/zwl2QuzoBLlLr9k3y8F95+S3irhOedeimsDsFuxKVM83UDtYco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ou5KWIDB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC1C5C2BCB0;
	Wed,  6 May 2026 16:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778086687;
	bh=aMkFGXzi8Egn2jdhjt/Bo9gCanCXDfSPDnXjNpmDKB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ou5KWIDBRlPw5uY6Bz5p7kvavhQL701mIxTZSkuiPwLGwDu+R4FIXZhhgyFF0zh0b
	 6rR+D8yi2bkjZEBgYs8NtJogY0Fd8NQCRSt40Vipz/amsJwqMfjYxCAZPl2jO79B0H
	 dJOcgopwwOqCZG2Yw60Ni82NombFqokowM4Q+pSLO0IIwgNHWeI3PjWgHQ0N/7C/5+
	 aSouXljf+6fUBvCXlVGEK2glvxRWzM4ZWuBcISIsYw4Q88A3gj8aUgGIy/QAgLJy1F
	 lnuKiutIx0MmI0SzBhgurxLmA2uYl8Wp+8WO1QqCg68YtTUWnxmTMjScgWMMaa4aNZ
	 tkCK8K7o9lV5Q==
Date: Wed, 6 May 2026 17:58:02 +0100
From: Conor Dooley <conor@kernel.org>
To: LiangCheng Wang <zaq14760@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Wig Cheng <onlywig@gmail.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: mayqueen,pixpaper: add
 pixpaper-426m
Message-ID: <20260506-clique-safely-6dd507d0593f@spud>
References: <20260506-bar-v1-0-12195406f4ef@gmail.com>
 <20260506-bar-v1-1-12195406f4ef@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XlmV61d7RTQpBGLX"
Content-Disposition: inline
In-Reply-To: <20260506-bar-v1-1-12195406f4ef@gmail.com>
X-Rspamd-Queue-Id: 98D304DE7F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.24 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-293644-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_ALLOW(0.00)[+ip4:104.64.211.4:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	NEURAL_SPAM(0.00)[0.214];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]


--XlmV61d7RTQpBGLX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 06, 2026 at 02:25:37PM +0800, LiangCheng Wang wrote:
> Add the compatible string for the PIXPAPER 4.26 monochrome
> e-ink panel to the Mayqueen Pixpaper binding.
>=20
> The new panel uses the same SPI and GPIO control interface as
> the existing Pixpaper panel, so extend the existing binding
> instead of adding a separate schema. Document the new compatible
> string and add an example node for pixpaper-426m.
>=20
> Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
> ---
>  .../bindings/display/mayqueen,pixpaper.yaml        | 25 ++++++++++++++++=
+-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.=
yaml b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
> index cd27f8ba5ae1d94660818525b5fa71db98c8acb7..4b0db2b079ebea244eb149a52=
ee1d8dbab0f60bb 100644
> --- a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
> +++ b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
> @@ -4,22 +4,23 @@
>  $id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> =20
> -title: Mayqueen Pixpaper e-ink display panel
> +title: Mayqueen Pixpaper e-ink display panels
> =20
>  maintainers:
>    - LiangCheng Wang <zaq14760@gmail.com>
> =20
>  description:
> -  The Pixpaper is an e-ink display panel controlled via an SPI interface.
> -  The panel has a resolution of 122x250 pixels and requires GPIO pins for
> -  reset, busy, and data/command control.
> +  Mayqueen Pixpaper e-ink display panels are controlled via an SPI inter=
face
> +  and require GPIO pins for reset, busy, and data/command control.
> =20
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
> =20
>  properties:
>    compatible:
> -    const: mayqueen,pixpaper
> +    enum:
> +      - mayqueen,pixpaper
> +      - mayqueen,pixpaper-426m

The commit message makes it sound like both devices could be compatible,
but the diff says they are not. What actually makes them incompatible?

> =20
>    reg:
>      maxItems: 1
> @@ -61,3 +62,17 @@ examples:
>              dc-gpios =3D <&gpio1 19 GPIO_ACTIVE_HIGH>;
>          };
>      };
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        display@0 {
> +            compatible =3D "mayqueen,pixpaper-426m";
> +            reg =3D <0>;
> +            spi-max-frequency =3D <1000000>;
> +            reset-gpios =3D <&gpio1 17 GPIO_ACTIVE_HIGH>;
> +            busy-gpios =3D <&gpio1 18 GPIO_ACTIVE_HIGH>;
> +            dc-gpios =3D <&gpio1 19 GPIO_ACTIVE_HIGH>;
> +        };
> +    };

This example just duplicates the existing one, there's no value in
adding it.

pw-bot: changes-requested

Cheers,
Conor.

>=20
> --=20
> 2.34.1
>=20

--XlmV61d7RTQpBGLX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaftzGgAKCRB4tDGHoIJi
0sxUAQCLu8SFH/T5I6Xp1bz4jhxFnR8ov5kVt8WibSDpgZoBbAEAv06FTy+aRbgh
URBJgr9cofJoYTIl7cejUjHC3xdcVgk=
=xFdR
-----END PGP SIGNATURE-----

--XlmV61d7RTQpBGLX--

