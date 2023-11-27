Return-Path: <devicetree+bounces-19337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D947FA7E1
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADDFE2815E2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04392374F2;
	Mon, 27 Nov 2023 17:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcBUHDyt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA45C15AD2
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 17:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 728D8C433C7;
	Mon, 27 Nov 2023 17:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701105950;
	bh=lfF7mYOfz1bTjUZRZpi+nzNpv2LWni6xopUZHu5kx+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CcBUHDytfki6Yc03N/Pa9DuIG7urxHBfpSDNPHmG1gmWrRgEXV7+YKEVsi1yTueIX
	 KPojgBDUpR+HXL+6+t4DQ60ZbWxbX2cwqEmzjpzhzeEJtm3vxh1I8KACjSVEjpD020
	 WczXbca1++KymG7gXAVblCZ15TiGkyeS0+dEoPne1SfIxaORLzYClSJu2ZJks+TPOr
	 tK6JY+n8AfSTNWr4C6r6A/FFAAYs4abc7Crl+sUruW+dl7MB17mp/Qm/sf86sxyzII
	 YKHVgueKg20YLTuauSMoGDoiHlD+1P0M8M7Q7bT+Iu18q/qsmZzfzNXGC3ccYGErk0
	 9VMiD6SO6BnAA==
Date: Mon, 27 Nov 2023 17:25:45 +0000
From: Conor Dooley <conor@kernel.org>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: timer: fsl,imxgpt: Add fsl,imx7d-gpt
 compatible
Message-ID: <20231127-morse-favoring-b76d4a436796@spud>
References: <20231127-b4-dt-bindings-timer-v1-1-e06bd6b2370b@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bfkf7er0zEK6fHrR"
Content-Disposition: inline
In-Reply-To: <20231127-b4-dt-bindings-timer-v1-1-e06bd6b2370b@pengutronix.de>


--Bfkf7er0zEK6fHrR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 04:38:24PM +0100, Roland Hieber wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
>=20
> Add "fsl,imx7d-gpt", "fsl,imx31-gpt", used in imx7s.dtsi, to the list of
> valid compatibles.
>=20
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Do=
cumentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> index e2607377cbae..2006043b8335 100644
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> @@ -31,6 +31,7 @@ properties:
>            - enum:
>                - fsl,imx6sl-gpt
>                - fsl,imx6sx-gpt
> +              - fsl,imx7d-gpt
>                - fsl,imx8mp-gpt
>                - fsl,imxrt1050-gpt
>                - fsl,imxrt1170-gpt
>=20
> ---
> base-commit: 2cc14f52aeb78ce3f29677c2de1f06c0e91471ab
> change-id: 20231127-b4-dt-bindings-timer-95462dfd9758
>=20
> Best regards,
> --=20
> Roland Hieber, Pengutronix e.K.          | rhi@pengutronix.de          |
> Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
> 31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |
>=20

--Bfkf7er0zEK6fHrR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWTRGQAKCRB4tDGHoIJi
0oV2AQD/OUwpWlz4bqYn6JMiz0Az7JfTMTQxmdGF17z3HvM2bwEAt1/hXpI+jz02
94mz7ob5CmgmTN1/rwSJh9/7FAnHkgg=
=40ZV
-----END PGP SIGNATURE-----

--Bfkf7er0zEK6fHrR--

