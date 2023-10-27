Return-Path: <devicetree+bounces-12487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E55C7D9AE4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA4B71C20EE9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7772D36AE0;
	Fri, 27 Oct 2023 14:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+h2mAlT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561CD358AD
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:11:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAAD3C433C9;
	Fri, 27 Oct 2023 14:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698415900;
	bh=qiPK2+5bbIvnFZbVVqos1S/u2AdHxbqykbMWZHHXeiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E+h2mAlTeznQyw9FEZ6q7a/Yc4daSJLb373j7XfWgfwt4u6pT/QB7I7r26Uvy6l1v
	 jeLTaV9iB8eXeABbaFc78yp3zyZoVcYj3phgewglZpGrTZV2hg3WFPadlQ3Bv3XxgJ
	 mTaH6IWdx5I4wF6mskwkrrmp0Z3Li1M2m/48WkmYRzWtT8JYVM3xEZNnNiVNJ1Eq3B
	 xFWdWhVtkPTu0wVIEh/avYTQwxwtiiK7B5orqm0IGXzm4wHDfZLqc7jwwh/heSLTi1
	 Ry9ucEsKi1dPYYO4LiM80iGu5cH4sq5QMTt9juk96LdVv4uIHk/oKQhjGIxJXjTnYR
	 s7ukr0I9mrMSg==
Date: Fri, 27 Oct 2023 15:11:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Seven Lee <wtli@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	robh+dt@kernel.org, conor+dt@kernel.org, YHCHuang@nuvoton.com,
	KCHSU0@nuvoton.com, CTLIN0@nuvoton.com, SJLIN0@nuvoton.com,
	scott6986@gmail.com, supercraig0719@gmail.com, dardar923@gmail.com
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: nau8821: Add DMIC slew rate
 selection
Message-ID: <20231027-pronto-prideful-2cf3415a9d87@spud>
References: <20231027082144.639369-1-wtli@nuvoton.com>
 <20231027082144.639369-2-wtli@nuvoton.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Utulr+me0/RPd4KV"
Content-Disposition: inline
In-Reply-To: <20231027082144.639369-2-wtli@nuvoton.com>


--Utulr+me0/RPd4KV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Fri, Oct 27, 2023 at 04:21:43PM +0800, Seven Lee wrote:
> Add input with DMIC slew rate selection
>=20
> Signed-off-by: Seven Lee <wtli@nuvoton.com>
> ---
>  .../devicetree/bindings/sound/nuvoton,nau8821.yaml        | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml=
 b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> index 3e54abd4ca74..01028b7ff85c 100644
> --- a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> @@ -89,6 +89,13 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 3072000
> =20
> +  nuvoton,dmic-slew-rate-selection:
> +    description: the number from 0 to 7 that sets the DMIC slew rate.
> +        The unit is mV/ns. 0 is the slowest, and 7 is the fastest.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 7
> +    default: 0

I meant make the property in terms of the unit, so
nuvoton,dmic-slew-rate-volt-per-sec (or similar, Rob would likely know
better how he likes the unit suffix for a more complex unit like this
one) and then make it an enum with possible values corresponding to
the real values that putting 0, 1, 2, 3 etc into the register produces.

Cheers,
Conor.

> +
>    nuvoton,left-input-single-end:
>      description: Enable left input with single-ended settings if set.
>          For the headset mic application, the single-ended control is
> @@ -127,6 +134,7 @@ examples:
>              nuvoton,jack-insert-debounce =3D <7>;
>              nuvoton,jack-eject-debounce =3D <0>;
>              nuvoton,dmic-clk-threshold =3D <3072000>;
> +            nuvoton,dmic-slew-rate-selection=3D <0>;
>              #sound-dai-cells =3D <0>;
>          };
>      };
> --=20
> 2.25.1
>=20

--Utulr+me0/RPd4KV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTvFFwAKCRB4tDGHoIJi
0oU8AQCj7pUfn9S1XRtqy6D5OsCQmxBVTCNuJ1c20C0wtxBy1AD+O3vJBYzE6iVc
BMhcpZ436Z5tHhcVPq+K0vt37JpUTwo=
=y/dP
-----END PGP SIGNATURE-----

--Utulr+me0/RPd4KV--

