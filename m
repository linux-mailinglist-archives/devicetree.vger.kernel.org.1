Return-Path: <devicetree+bounces-3441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A5E7AEDA9
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:06:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 98CFD2814C3
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C960F28DBE;
	Tue, 26 Sep 2023 13:06:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A2D27728
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:06:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05736C433C8;
	Tue, 26 Sep 2023 13:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733591;
	bh=nj7Pno7gxKRpYeFnO5r1L7tRE2na9od26GJPA9cmoRY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LsTkHnL+6Gku6jK1CrWtDSHYgBlZFoUkeW85VJlnCA2VJfgl+VdLRc1KdBwA3ddze
	 GnvDYhB+gobdJsh2F9tLYu6jFTKL4t9FvI+d2NuWIJNOj4OeMtD0FfPIoQRCm4PY7l
	 AeNDe2d/BANbs941hh7vjo32zrGFxelZzKkzbUlnVQyD8FJt641HPC441YFKrF9A7K
	 c0EeNsL7xLQG6A72wQ2zRk3ujrUCH86Tv2yw0GQ2OmJKXKe9DiAZMz6RcSkO5HAhfV
	 s7wOluArGcS6ljG5riOpXja14UG0qj2MQTQPlq1Oi02n+8xZkVUlKVQky0P4UnSz/B
	 baLx3rZxaRD0w==
Date: Tue, 26 Sep 2023 14:06:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>,
	David Rau <David.Rau.opensource@dm.renesas.com>,
	Damien Horsley <Damien.Horsley@imgtec.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] ASoC: dt-bindings: Add missing
 (unevaluated|additional)Properties on child node schemas
Message-ID: <20230926-freewill-treachery-81fb636e537e@spud>
References: <20230925220947.2031536-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pRkokaTksUJ87J4L"
Content-Disposition: inline
In-Reply-To: <20230925220947.2031536-1-robh@kernel.org>


--pRkokaTksUJ87J4L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 05:09:28PM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>=20
> Add unevaluatedProperties or additionalProperties as appropriate.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/sound/dialog,da7219.yaml | 1 +
>  Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml | 1 +
>  Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml   | 1 +
>  3 files changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml b=
/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
> index eb7d219e2c86..19137abdba3e 100644
> --- a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
> +++ b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
> @@ -89,6 +89,7 @@ properties:
> =20
>    da7219_aad:
>      type: object
> +    additionalProperties: false
>      description:
>        Configuration of advanced accessory detection.
>      properties:
> diff --git a/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml b=
/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml
> index ff5cd9241941..b522ed7dcc51 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml
> +++ b/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml
> @@ -33,6 +33,7 @@ patternProperties:
>      description:
>        A DAI managed by this controller
>      type: object
> +    additionalProperties: false
> =20
>      properties:
>        reg:
> diff --git a/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml b/D=
ocumentation/devicetree/bindings/sound/ti,pcm3168a.yaml
> index b6a4360ab845..0b4f003989a4 100644
> --- a/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
> +++ b/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
> @@ -60,6 +60,7 @@ properties:
> =20
>    ports:
>      $ref: audio-graph-port.yaml#/definitions/port-base
> +    unevaluatedProperties: false
>      properties:
>        port@0:
>          $ref: audio-graph-port.yaml#
> --=20
> 2.40.1
>=20

--pRkokaTksUJ87J4L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLXUQAKCRB4tDGHoIJi
0pghAP9+4AC2NOyTDvOOxue9O55ySqsVJ7XyGO5vj0hDxz+4vAD+JR0pthP9HqDu
s11/vLsHj4O2ke1qIBfFm69Uq5wWhgo=
=vDBg
-----END PGP SIGNATURE-----

--pRkokaTksUJ87J4L--

