Return-Path: <devicetree+bounces-14202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FAD7E2AA3
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3042928147F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC2329CEA;
	Mon,  6 Nov 2023 17:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsC89/T7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FCE15AF2
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:08:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E967C433C8;
	Mon,  6 Nov 2023 17:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699290480;
	bh=oGcY1XnKa5iGOJarwEIaAE56m8RRUhMgV4uGH2Lskso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fsC89/T7gBbIo2WJMyHknqbR85F+HSoEQCn+pgP9cmq6Nb+pPjy9LWtcbJn7yS/EM
	 QZ2yEBo3+MwoNiD5kwlTnhqc6gEZFD6c4WcjgerrU/ac9/j0Qydo173QOv7SGA48Dh
	 SHzNuorGGjZDC69+HA4Z54/4l2IXlq1xG9ad6Gqba1dofSv66ftc5SJdMVdp8SZAnn
	 BGDbbaURfQ/3uUMs7sUANAr7QbTe4ukUaRLEogcG5v/N+R/mHRZReg3r4RnJUPsKXr
	 k9y69VKo5dfYgb9UTyfNlXqdwr6X1mD4ZaLlTdLO3JLzXgfZunkgIKXyMXEr53Nkw1
	 RN3GJD9KZAHzg==
Date: Mon, 6 Nov 2023 17:07:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
	git@xilinx.com, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: Add new board description for
 MicroBlaze V
Message-ID: <20231106-hangnail-prankster-a04e713bed35@spud>
References: <50c277c92c41a582ef171fb75efc6a6a4f860be2.1699271616.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gHXkR8HFBaWoCSEC"
Content-Disposition: inline
In-Reply-To: <50c277c92c41a582ef171fb75efc6a6a4f860be2.1699271616.git.michal.simek@amd.com>


--gHXkR8HFBaWoCSEC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 06, 2023 at 12:53:40PM +0100, Michal Simek wrote:
> MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor IP.
> It is hardware compatible with classic MicroBlaze processor. Processor can
> be used with standard AMD/Xilinx IPs including interrupt controller and
> timer.
>=20
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
>=20
>  .../devicetree/bindings/soc/amd/amd.yaml      | 26 +++++++++++++++++++

Bindings for SoCs (and by extension boards with them) usually go to in
$arch/$vendor.yaml not into soc/$vendor/$vendor.yaml. Why is this any
different?

>  1 file changed, 26 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/amd/amd.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/soc/amd/amd.yaml b/Documen=
tation/devicetree/bindings/soc/amd/amd.yaml
> new file mode 100644
> index 000000000000..21adf28756fa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/amd/amd.yaml
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/amd/amd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMD Platforms
> +
> +maintainers:
> +  - Michal Simek <michal.simek@amd.com>
> +
> +description: |
> +  AMD boards with MicroBlaze V SOC
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: AMD MicroBlaze V
> +        items:
> +          - const: amd,mbv

You don't actually list any boards here, but instead permit having only
the SoC compatible and no board one. The SoC compatible is also
incredibly generic. Personally I don't think this binding makes any
sense as it appears to exist as a catch all for anything using your
new cores in any combination.

Cheers,
Conor.

> +
> +additionalProperties: true
> +
> +...
> --=20
> 2.36.1
>=20

--gHXkR8HFBaWoCSEC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUkdawAKCRB4tDGHoIJi
0idmAQDsefzYlfgTZyJR0eC7OK+0/z2tavzpuQasC2Yn6bJL5gEA4KM5FPn4NdEe
cY17yjhDeBsVHudUl4BvCaGCis1GAgo=
=5fi7
-----END PGP SIGNATURE-----

--gHXkR8HFBaWoCSEC--

