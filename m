Return-Path: <devicetree+bounces-14549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E517E5633
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 13:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D74E280D50
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:28:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E84817731;
	Wed,  8 Nov 2023 12:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvkHgjyl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7123E17727
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 12:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9872C433C7;
	Wed,  8 Nov 2023 12:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699446490;
	bh=XB3yqrhkhxeT9M0N0X8n+emnTmZjtkm9F39I+mshKDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MvkHgjyliiv31fmFx/H4c4rIscBXniiM2ppee2k8ZEHDPaZ4Q+UOGDC+SGcoVdbni
	 NW9SEEjp3TKRoFbk9VqTbEN3iBh5EHbmJwDK7UrdwXCq8IhcjDFieIh0gYBwyUQ+X2
	 Bl+fDoC85+fAY6LBRNdITZ/7wpGLi+zEgzSxXUXpNLXGbu4jad+5ki6oAEWdgmeXcA
	 +IWYk4tacmWnNLmHvO2Wq6gPWj6gmSLbm2AaD3FKL2tbUO9XD5JBttWmDvZce5GzbZ
	 4Rrd72OKCrebBj/erZTZ5+GFEZCb3OCvL1jTuhHo5IyZvfVn2RnlpPj3ZBFQYNulDC
	 +2x2QOfE0A/Sw==
Date: Wed, 8 Nov 2023 12:28:05 +0000
From: Conor Dooley <conor@kernel.org>
To: Seven Lee <wtli@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	robh+dt@kernel.org, conor+dt@kernel.org, YHCHuang@nuvoton.com,
	KCHSU0@nuvoton.com, CTLIN0@nuvoton.com, SJLIN0@nuvoton.com,
	scott6986@gmail.com, supercraig0719@gmail.com, dardar923@gmail.com
Subject: Re: [PATCH v4 1/2] ASoC: dt-bindings: nau8821: Add DMIC slew rate.
Message-ID: <20231108-ungraded-paddle-93f2102e4f61@spud>
References: <20231107035230.1241683-1-wtli@nuvoton.com>
 <20231107035230.1241683-2-wtli@nuvoton.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m+wVLMrEzhVYOsBg"
Content-Disposition: inline
In-Reply-To: <20231107035230.1241683-2-wtli@nuvoton.com>


--m+wVLMrEzhVYOsBg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 07, 2023 at 11:52:29AM +0800, Seven Lee wrote:
> Add input with DMIC slew rate controls.
>=20
> Signed-off-by: Seven Lee <wtli@nuvoton.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/sound/nuvoton,nau8821.yaml       | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml=
 b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> index 3e54abd4ca74..3380b6aa9542 100644
> --- a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> @@ -89,6 +89,14 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 3072000
> =20
> +  nuvoton,dmic-slew-rate:
> +    description: The range 0 to 7 represents the speed of DMIC slew rate.
> +        The lowest value 0 means the slowest rate and the highest value
> +        7 means the fastest rate.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 7
> +    default: 0
> +
>    nuvoton,left-input-single-end:
>      description: Enable left input with single-ended settings if set.
>          For the headset mic application, the single-ended control is
> @@ -127,6 +135,7 @@ examples:
>              nuvoton,jack-insert-debounce =3D <7>;
>              nuvoton,jack-eject-debounce =3D <0>;
>              nuvoton,dmic-clk-threshold =3D <3072000>;
> +            nuvoton,dmic-slew-rate=3D <0>;
>              #sound-dai-cells =3D <0>;
>          };
>      };
> --=20
> 2.25.1
>=20

--m+wVLMrEzhVYOsBg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUt+1QAKCRB4tDGHoIJi
0utcAQCmLM7CTdSg8LB5s/+0Hp1lbmS88sg9SymaMSKjIRplmwEA0b08DRBNoeEJ
iDhhK2QtHSMpHWkckynXbj6qbZyzpAo=
=NnjE
-----END PGP SIGNATURE-----

--m+wVLMrEzhVYOsBg--

