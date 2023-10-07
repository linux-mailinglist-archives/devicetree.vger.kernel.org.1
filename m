Return-Path: <devicetree+bounces-6679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDB37BC6D4
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 879C0281FED
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 10:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ACB414F7C;
	Sat,  7 Oct 2023 10:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EydEweVS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D9779F1
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 10:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68AA1C433C7;
	Sat,  7 Oct 2023 10:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696675006;
	bh=v/WXLYgb6BqL0vB6xdnedE9f7p/YOe7av+z9qkOq7uA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EydEweVS2gYgQ/Oe74RNgW8PQDVzQb6T0RPXODOvwckxP035KnxcqNvx3oLt2DRZ1
	 xNXOjvkOpibee6glErXh+thqtj+egVYMvkHFz5wUjoa1UpfCZ0OlAC99sblt3/NNFY
	 /zyCtRDNtAsrEiKVkplhwSVnMmlWXhyrflDM1DbzloorbBsa6iEuFbjSr7AjNiQvoj
	 dbKl4yzUC6Ophv0YLYbpqzob61wG83ZZ/Sj7vdenJd4LvO9RYpQEdiqMx4kEcPQtPJ
	 IOBiWp+axF3rg4xOlmb8yn7ox8F8ZVLQo1zIwUn9PUddaeM2GEhcici4/zdlT4FV3i
	 WRblF+z/yNZ7A==
Date: Sat, 7 Oct 2023 11:36:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Hermes Zhang <Hermes.Zhang@axis.com>
Cc: sre@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	kernel@axis.com, Hermes Zhang <chenhuiz@axis.com>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: supply: bq24190: Add BQ24296
 compatible
Message-ID: <20231007-tablet-hunk-d9f13553831a@spud>
References: <20231007020701.1912553-1-Hermes.Zhang@axis.com>
 <20231007020701.1912553-2-Hermes.Zhang@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GAidJ2fG47DIHjuO"
Content-Disposition: inline
In-Reply-To: <20231007020701.1912553-2-Hermes.Zhang@axis.com>


--GAidJ2fG47DIHjuO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 10:07:00AM +0800, Hermes Zhang wrote:
> From: Hermes Zhang <chenhuiz@axis.com>
>=20
> The BQ24296 is most similar to the BQ24196, but the:
> 1. OTG config is split from CHG config (REG01)
> 2. ICHG (Fast Charge Current limit) range is smaller (<=3D3008mA)
> 3. NTC fault is simplified to 2 bits
>=20
> Signed-off-by: Hermes Zhang <chenhuiz@axis.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/power/supply/bq24190.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/power/supply/bq24190.yaml =
b/Documentation/devicetree/bindings/power/supply/bq24190.yaml
> index d3ebc9de8c0b..131b7e57d22f 100644
> --- a/Documentation/devicetree/bindings/power/supply/bq24190.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/bq24190.yaml
> @@ -20,6 +20,7 @@ properties:
>        - ti,bq24192
>        - ti,bq24192i
>        - ti,bq24196
> +      - ti,bq24296
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.30.2
>=20

--GAidJ2fG47DIHjuO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSE0uQAKCRB4tDGHoIJi
0hrxAP40V/Cau0h6qS7og70nKzPelwXlSpyduLWH0G01c9ppeQD/f1uvwHm3CvW0
Ns685SiP/CB2FAMoZRYOpbFLNvuxBQ4=
=lpUM
-----END PGP SIGNATURE-----

--GAidJ2fG47DIHjuO--

