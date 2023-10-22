Return-Path: <devicetree+bounces-10636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A167D24F8
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:35:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 668C2B20CCC
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBC61118F;
	Sun, 22 Oct 2023 17:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLkBckyN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1F010784
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 17:35:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82EADC433C7;
	Sun, 22 Oct 2023 17:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697996127;
	bh=+RDNXfr09gHQffArCIyEozXJfIbsRgoaUkMmT9nAQcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eLkBckyNDlVImV6OmWVubPL8xno7BMuzseCqIL3vonmAX2lr7NWo32iXbn7x329lq
	 WBmBv5FKUlX0Zen72FOVJfSeggC712Wl6JuCOuCd9IR55st2uLprrpMjZ9fUZZ+eVl
	 XbTqr7uvU8iA3/c+NKe+NkPGnZFOGzZ4WB7QjxBE8NFvv1q7DFvKk0fRHfpUTM/Yy3
	 ELu7ofnQHMlVeT+01DnzQFIlZWEv+NgxtPfcVXY+AHciEFXx5Y7Cc9hRDUCY33aW9Q
	 FQ7k1H0JkowwcDWor3eSXTsmSLuFfhcKBt1LnWIYRYBvkfhBCXSVXyDBTlJHKx1pyD
	 2tcWgJrfdaG6A==
Date: Sun, 22 Oct 2023 18:35:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pinctrl: nuvoton,npcm845: Add missing
 additionalProperties on gpio child nodes
Message-ID: <20231022-imprison-gruffly-7a54a48918a6@spud>
References: <20231020170017.3610978-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zjBK80u1y4Q2cFRB"
Content-Disposition: inline
In-Reply-To: <20231020170017.3610978-1-robh@kernel.org>


--zjBK80u1y4Q2cFRB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 12:00:16PM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node. Add the missing addtionalProperties to the 'gpio'
> child nodes.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.yaml     | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pi=
nctrl.yaml b/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinc=
trl.yaml
> index e4b9f3da2cf0..3e8472898800 100644
> --- a/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.y=
aml
> +++ b/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.y=
aml
> @@ -35,6 +35,7 @@ properties:
>  patternProperties:
>    '^gpio@':
>      type: object
> +    additionalProperties: false
> =20
>      description:
>        Eight GPIO banks that each contain 32 GPIOs.
> --=20
> 2.42.0
>=20

--zjBK80u1y4Q2cFRB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTVdWgAKCRB4tDGHoIJi
0nCNAQC4n/8blQKppMM0k1acuJdQK7No/wYvFuR+achfFZtDgQEA42l10lATlk8v
JinAMIUTJAq/UBAw9oma3JH5StDPDwo=
=sxmL
-----END PGP SIGNATURE-----

--zjBK80u1y4Q2cFRB--

