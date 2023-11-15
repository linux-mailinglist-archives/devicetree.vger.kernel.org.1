Return-Path: <devicetree+bounces-16078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AD37ED656
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7450A1C20753
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BACF3C491;
	Wed, 15 Nov 2023 21:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOphkJaT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37C145BEB
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 21:54:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3CAFC433C8;
	Wed, 15 Nov 2023 21:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700085284;
	bh=3cBd6zL0s3h4kc7XKXxRxiqowOHUr5irsv4JVBuw1nY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oOphkJaT+WdFxmy0sEobuHa8sWkWajxR3hcgekEZ5VqhwSUInN3NLHh3WnpEgVZgQ
	 bmmfqnZgKipYPucr9Ol3YgXaxNeMVMUZ0QpioCjMj7QIJSHugSGiWuEunA3raGD0HR
	 UD21lbtWuZYjc+pDmH2dUO+k8gLFbPUZS7QjQYWbk2JYmYXN/rSA1QYxYvRXBMgej1
	 urP9+TzGCDldfsE725L8hrTlO6FznJMs4c74MfJ/zRnnTeuOQPFQ21fsjc7+dJGLIB
	 nuRxf2ulQz8/WymkTw9UAzttlgTp3PmqyRvAZu7foJRasQuw/bnLMCnPKoYdORuVxr
	 ODZJcG1dLc5ug==
Date: Wed, 15 Nov 2023 21:54:40 +0000
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Chris Brandt <chris.brandt@renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: timer: renesas: ostm: Document RZ/Five SoC
Message-ID: <20231115-hertz-buffoon-aeb2c8d9e7ee@squawk>
References: <20231115212908.33131-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C2xlhivywdgGtokx"
Content-Disposition: inline
In-Reply-To: <20231115212908.33131-1-prabhakar.mahadev-lad.rj@bp.renesas.com>


--C2xlhivywdgGtokx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 09:29:08PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> The OSTM block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-ostm" compatible string will be used on the RZ/Fi=
ve
> SoC so to make this clear and to keep this file consistent, update the
> comment to include RZ/Five SoC.
>=20
> No driver changes are required as generic compatible string "renesas,ostm"
> will be used as a fallback on RZ/Five SoC.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor,

> ---
>  Documentation/devicetree/bindings/timer/renesas,ostm.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml b/=
Documentation/devicetree/bindings/timer/renesas,ostm.yaml
> index 7207929e5cd6..8b06a681764e 100644
> --- a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
> +++ b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
> @@ -23,7 +23,7 @@ properties:
>        - enum:
>            - renesas,r7s72100-ostm  # RZ/A1H
>            - renesas,r7s9210-ostm   # RZ/A2M
> -          - renesas,r9a07g043-ostm # RZ/G2UL
> +          - renesas,r9a07g043-ostm # RZ/G2UL and RZ/Five
>            - renesas,r9a07g044-ostm # RZ/G2{L,LC}
>            - renesas,r9a07g054-ostm # RZ/V2L
>        - const: renesas,ostm        # Generic
> --=20
> 2.34.1
>=20

--C2xlhivywdgGtokx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVU+HAAKCRB4tDGHoIJi
0pq/AP4o7Kn1vZAS5Npud5TKjsoeBea2Y+96WybgzEbbT6yq/QD/Y54HBIxOvFDl
nup41Y2l91Jks1pCXbP1AfdRkAvqJw0=
=CfMI
-----END PGP SIGNATURE-----

--C2xlhivywdgGtokx--

