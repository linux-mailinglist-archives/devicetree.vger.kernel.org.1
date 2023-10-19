Return-Path: <devicetree+bounces-10144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9765E7CFCBC
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C1CE2821D1
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71FB2FE09;
	Thu, 19 Oct 2023 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e94sfFOU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94DF92FE04
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 419F7C433C7;
	Thu, 19 Oct 2023 14:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697725833;
	bh=bCbbK58GKdnGRxA9DLKELKX4xl1h1nw+Joy0RAJJDYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e94sfFOUhlvTCJ+KsyfTyprctm3YXuF7ZBQ6aTD+wO1ppTBr1o7eDkYdtPhsWn4+O
	 lRlem6VVeLzV/mED0F2ree0E1okm+Bq3TpuU8COvPxlOGs/jnud7RPhnXf1i3LvRva
	 XJixeZSPVOdol0CW6z7ZZ8HLmhapM6WX7L70sKwjiN07akSecaSedsnxZtt+wWGGDa
	 IIsPa3Q4eSYWf0KDxRpS+Gy9Arbiz1/ynO5n4mTE7BPD4rw4oVKaYkdW9QdDeiBUPU
	 npBerivivVf4VlGFwvMG+Tu8DLJUhFnH2b5rEslJnNQAGyc3FZzBgjtwTEXhPdCTZv
	 SP8nyWR51YXHA==
Date: Thu, 19 Oct 2023 15:30:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Kris Chaplin <kris.chaplin@amd.com>
Cc: thomas.delev@amd.com, michal.simek@amd.com,
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, git@amd.com
Subject: Re: [PATCH v2 1/2] dt-bindings: w1: Add YAML DT schema for AMD AXI
 w1 host and MAINTAINERS entry
Message-ID: <20231019-expand-supreme-ba8c17d05eb4@spud>
References: <20231013093109.37165-1-kris.chaplin@amd.com>
 <20231019142526.10592-1-kris.chaplin@amd.com>
 <20231019142526.10592-2-kris.chaplin@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Vs9zQgVNHgPNaIk6"
Content-Disposition: inline
In-Reply-To: <20231019142526.10592-2-kris.chaplin@amd.com>


--Vs9zQgVNHgPNaIk6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 07:24:17AM -0700, Kris Chaplin wrote:
> Add YAML DT schema for the AMD AXI w1 host IP.
>=20
> This hardware guarantees protocol timing for driving off-board devices su=
ch
> as thermal sensors, proms, etc using the 1wire protocol.
>=20
> Add MAINTAINERS entry for DT schema.
>=20
> Co-developed-by: Thomas Delev <thomas.delev@amd.com>
> Signed-off-by: Thomas Delev <thomas.delev@amd.com>
> Signed-off-by: Kris Chaplin <kris.chaplin@amd.com>
> ---
>  .../bindings/w1/amd,axi-1wire-host.yaml       | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++
>  2 files changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/w1/amd,axi-1wire-ho=
st.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml=
 b/Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
> new file mode 100644
> index 000000000000..ef70fa2c0c5d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/w1/amd,axi-1wire-host.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMD AXI 1-wire bus host for programmable logic
> +
> +maintainers:
> +  - Kris Chaplin <kris.chaplin@amd.com>
> +
> +properties:
> +  compatible:
> +    const: amd,axi-1wire-host

I was happy with it before, and still am I guess, given that there is an
IP version register that can be used to determine which version of the
IP is in use.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    onewire@a0000000 {
> +        compatible =3D "amd,axi-1wire-host";
> +        reg =3D <0xa0000000 0x10000>;
> +        clocks =3D <&zynqmp_clk 0x47>;
> +        interrupts =3D <GIC_SPI 0x59 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7a7bd8bd80e9..3dacb7ed6e3b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -890,6 +890,13 @@ Q:	https://patchwork.kernel.org/project/linux-rdma/l=
ist/
>  F:	drivers/infiniband/hw/efa/
>  F:	include/uapi/rdma/efa-abi.h
> =20
> +AMD AXI W1 DRIVER
> +M:	Kris Chaplin <kris.chaplin@amd.com>
> +R:	Thomas Delev <thomas.delev@amd.com>
> +R:	Michal Simek <michal.simek@amd.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
> +
>  AMD CDX BUS DRIVER
>  M:	Nipun Gupta <nipun.gupta@amd.com>
>  M:	Nikhil Agarwal <nikhil.agarwal@amd.com>
> --=20
> 2.42.GIT
>=20

--Vs9zQgVNHgPNaIk6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTE9hAAKCRB4tDGHoIJi
0vrJAQCdBNZBogaqjSq9mIQbpV9idnyqAvpEY9eAuAHHEQ+ouQD/Q4JZ92jwVfAO
N9MGvkTf4w3RScLxWGxEqSI0g/Y07AM=
=6wrE
-----END PGP SIGNATURE-----

--Vs9zQgVNHgPNaIk6--

