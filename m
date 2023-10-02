Return-Path: <devicetree+bounces-5272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C437B5BD4
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 22:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B217D1C20836
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A548A200D0;
	Mon,  2 Oct 2023 20:09:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953F91F19A
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:09:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE8B5C433C7;
	Mon,  2 Oct 2023 20:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696277386;
	bh=s298W+xjsfyJWvszrdF7gGepgqGm/rYfvmLeuLhSGjw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n63772t/6TBRYCzKuWisa+ljpoaqMMJ91wUNRAC8Nj6H3U7RHbHRTZNhyuHhyjyQA
	 iCqHYFaevyS0EgKlZxIndQi0v6Kvkjj0Gl2cnCp0/6SnWVq5mpckPlva4AaTa9VNq2
	 dPkmwT9EJ25AdGrPXW33qaM4nmHZnbbkjElGnRz7SA/dnkQGPG+5It1yyM+HrzfQTx
	 JtUQDNkpkEsdCi3Cu6lcERalYw020ry/jPyY2p/FFhtI6VE3YIeKuaBlCzfJyLlfiY
	 TsbQqwl+wdo0ozJnHCAExpkhKn6AcRo2ZlvapnB5VaP/IclZIO1hCTDqZX3ZWwySTM
	 JdFFjVmWLU7Kg==
Date: Mon, 2 Oct 2023 21:09:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, neil.armstrong@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: display: newvision,nv3051d: Add
 Anbernic 351V
Message-ID: <20231002-residence-oversweet-31ba0edc867c@spud>
References: <20231002193016.139452-1-macroalpha82@gmail.com>
 <20231002193016.139452-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Kpl87wm36+MCaAlf"
Content-Disposition: inline
In-Reply-To: <20231002193016.139452-2-macroalpha82@gmail.com>


--Kpl87wm36+MCaAlf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 02:30:15PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Document the Anbernic RG351V panel, which is identical to the panel
> used in their 353 series except for in inclusion of an additional DSI
> format flag.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/display/panel/newvision,nv3051d.yaml | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv=
3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv30=
51d.yaml
> index 116c1b6030a2..cce775a87f87 100644
> --- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.y=
aml
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.y=
aml
> @@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: NewVision NV3051D based LCD panel
> =20
>  description: |
> -  The NewVision NV3051D is a driver chip used to drive DSI panels. For n=
ow,
> -  this driver only supports the 640x480 panels found in the Anbernic RG3=
53
> -  based devices.
> +  The NewVision NV3051D is a driver chip used to drive DSI panels.
> =20
>  maintainers:
>    - Chris Morgan <macromorgan@hotmail.com>
> @@ -21,6 +19,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - anbernic,rg351v-panel
>            - anbernic,rg353p-panel
>            - anbernic,rg353v-panel
>        - const: newvision,nv3051d
> --=20
> 2.34.1
>=20

--Kpl87wm36+MCaAlf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRsjhQAKCRB4tDGHoIJi
0uzvAQDuB1jdKKtG/KDThWVLQQG38q0jau4AwEK2APgGSTO7EwD9GHHyJxNVv9Lp
fbog7oqkDyr9GI75VVDK5Oj5ftmRtgo=
=Q0Zu
-----END PGP SIGNATURE-----

--Kpl87wm36+MCaAlf--

