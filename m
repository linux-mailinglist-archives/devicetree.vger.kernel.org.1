Return-Path: <devicetree+bounces-2474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4725D7AAF01
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:59:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id B78A71F227E9
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593531EA71;
	Fri, 22 Sep 2023 09:59:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0FF1E521
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:59:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A961DC433C8;
	Fri, 22 Sep 2023 09:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695376797;
	bh=Rmbwnfy/2jfDt6etmwMj6pRES6Qp/FcaWgWrT8xRulQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mw1vZL+iRdVdZLIzYj9igp3k9yg7oXHD4JzzSXuD4hY3XJRDU6thvQcwYcW2hoEme
	 Ol1W9cMUVlfw7qW8LMI83PivEgj+cOpdSv0DTkoKAN9lDYgY/AtQRGy0cm/he3eyB2
	 2Mcu5jtXms7IBzBE9oPKkmlKDTvcknmyu/efrFcWtFMMFx5FH1MLY9TzLVy2Aujnsk
	 7TcTkEjdS1JF71KqHiCIwlDhSCw7+Cvty2sGgYx9+hMcVaCZcJvbhS34J1zF8VhSqK
	 C9pqpiDIhkC3bxWxjL6kjIxrP3mlHgqPckTIpT3CsWUj0rx38f9Co7f2URmDB3Tlwu
	 xnljFyl4KAc6w==
Date: Fri, 22 Sep 2023 10:59:52 +0100
From: Conor Dooley <conor@kernel.org>
To: shravan chippa <shravan.chippa@microchip.com>
Cc: green.wan@sifive.com, vkoul@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, conor+dt@kernel.org, palmer@sifive.com,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	nagasuresh.relli@microchip.com, praveen.kumar@microchip.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v1 2/3] dt-bindings: dma: sf-pdma: add new compatible name
Message-ID: <20230922-gray-zebra-a0ea451cc5cc@spud>
References: <20230922095039.74878-1-shravan.chippa@microchip.com>
 <20230922095039.74878-3-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aMX1ax+XegASzcpP"
Content-Disposition: inline
In-Reply-To: <20230922095039.74878-3-shravan.chippa@microchip.com>


--aMX1ax+XegASzcpP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Shravan,

On Fri, Sep 22, 2023 at 03:20:38PM +0530, shravan chippa wrote:
> From: Shravan Chippa <shravan.chippa@microchip.com>
>=20
> add new compatible name microchip,mpfs-pdma to support out of order dma
> transfers this will improve the dma throughput for mem-to-mem transfer
>=20
> Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

I would appreciate if you would drop any vendor tree related tags when
submitting patches upstream, especially for dt-bindings where it
actually means something to have my R-b on them.

Cheers,
Conor.

> ---
>  .../bindings/dma/sifive,fu540-c000-pdma.yaml         | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma=
=2Eyaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> index a1af0b906365..974467c4bacb 100644
> --- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> +++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> @@ -27,10 +27,14 @@ allOf:
> =20
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - sifive,fu540-c000-pdma
> -      - const: sifive,pdma0
> +    oneOf:
> +      - items:
> +          - const: microchip,mpfs-pdma # Microchip out of order DMA tran=
sfer
> +          - const: sifive,fu540-c000-pdma # Sifive in-order DMA transfer
> +      - items:
> +          - enum:
> +              - sifive,fu540-c000-pdma
> +          - const: sifive,pdma0
>      description:
>        Should be "sifive,<chip>-pdma" and "sifive,pdma<version>".
>        Supported compatible strings are -
> --=20
> 2.34.1
>=20

--aMX1ax+XegASzcpP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ1lmAAKCRB4tDGHoIJi
0pXbAP0UtoRGkkj5hBqOaT63U8Em3NH+kiUFeZ/HgkF8mLKhdQEA48b4gMC9cPIS
e5Clll7FoZlKKL8d+LNM/uuMmpUvvQ0=
=6kQe
-----END PGP SIGNATURE-----

--aMX1ax+XegASzcpP--

