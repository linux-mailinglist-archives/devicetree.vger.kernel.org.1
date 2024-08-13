Return-Path: <devicetree+bounces-93358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 443099509D0
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:07:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFBB5284FC3
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 16:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DFD51A38FB;
	Tue, 13 Aug 2024 16:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaBGxmtx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2E81A38EC
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 16:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723565132; cv=none; b=pVkYcfR2Bd5KgAOrjKa2fQCPOpo00Kz+o67gQ1VMVS8EiupUV0NBVynQCw0zekg03ytU57YQerUkCn2hwnj0wxJEHVeTGN40fBueRY4e6MlHBsrt0vkbsMGaJrHbQ5BALhR5aapYdSkW3M79m1oTR5FK8ylE8h6fwhvzm1NCF0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723565132; c=relaxed/simple;
	bh=xzw4wiqcclr3zHNKKjAlMjEmWthPPhTBXbfL9tmQXTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IxKHGh3FZEUN1AWz6mQ0XmrcW7dom1/ZUUr9jqr8cQcigzw84ZQZIGLV7APS481D2brg+S/g3n5RKNaQmSXJOrLNuupurwoJlsr7TOwlMf1nexpRdgRk/0gJz2w9r+CvtolnwxZsco1dP6Od4R2GUrDaBH65/qpEhQ1xC3PW3Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaBGxmtx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A1DBC4AF09;
	Tue, 13 Aug 2024 16:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723565130;
	bh=xzw4wiqcclr3zHNKKjAlMjEmWthPPhTBXbfL9tmQXTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DaBGxmtxczIVyYtBHOtWGAbk9zfsnGifLFeMNQhHcvo0Nb/KClM5Ql2NnLdw5DKqh
	 WjkcB93G41OvlvetW8OnFZJGU2nk+LUFRRbzIBV44/LflwZQEJAPk1UXrgfMhh602j
	 +DwZz+kpAw7fOB9FfO/lFPLW6vUAjvJWuNEg9IU2e1pogNpi909KQq5E4dH/ChG4xf
	 s8kUPu4qLcjZp2R9u6dxVlcFGM9wGVURG754OQ5B1+Fq+qs8CqQbwb8vdRvHmpk5hA
	 GhzRUyVjS/Omqq23GXQgLEFIFgUjDxhZvhBSCR70ZJ7CdX24H6SBsI3Oc8wjq+zS3p
	 Nk0x9Y1hal/dA==
Date: Tue, 13 Aug 2024 17:05:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org, kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 2/4] dt-bindings: interrupt-controller: convert
 bcm2836-l1-intc to yaml
Message-ID: <20240813-defective-angled-8a429e78e8e5@spud>
References: <20240812200358.4061-1-wahrenst@gmx.net>
 <20240812200358.4061-3-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="auHGIicSjdrXJOCZ"
Content-Disposition: inline
In-Reply-To: <20240812200358.4061-3-wahrenst@gmx.net>


--auHGIicSjdrXJOCZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2024 at 10:03:56PM +0200, Stefan Wahren wrote:
> Convert the DT binding document for BCM2836 per-CPU interrupt
> controller from .txt to YAML.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  .../brcm,bcm2836-l1-intc.txt                  | 37 --------------
>  .../brcm,bcm2836-l1-intc.yaml                 | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controlle=
r/brcm,bcm2836-l1-intc.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controlle=
r/brcm,bcm2836-l1-intc.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,=
bcm2836-l1-intc.txt b/Documentation/devicetree/bindings/interrupt-controlle=
r/brcm,bcm2836-l1-intc.txt
> deleted file mode 100644
> index 8ced1696c325..000000000000
> --- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836=
-l1-intc.txt
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -BCM2836 per-CPU interrupt controller
> -
> -The BCM2836 has a per-cpu interrupt controller for the timer, PMU
> -events, and SMP IPIs.  One of the CPUs may receive interrupts for the
> -peripheral (GPU) events, which chain to the BCM2835-style interrupt
> -controller.
> -
> -Required properties:
> -
> -- compatible:	 	Should be "brcm,bcm2836-l1-intc"
> -- reg:			Specifies base physical address and size of the
> -			  registers
> -- interrupt-controller:	Identifies the node as an interrupt controller
> -- #interrupt-cells:	Specifies the number of cells needed to encode an
> -			  interrupt source. The value shall be 2
> -
> -Please refer to interrupts.txt in this directory for details of the comm=
on
> -Interrupt Controllers bindings used by client devices.
> -
> -The interrupt sources are as follows:
> -
> -0: CNTPSIRQ
> -1: CNTPNSIRQ
> -2: CNTHPIRQ
> -3: CNTVIRQ
> -8: GPU_FAST
> -9: PMU_FAST
> -
> -Example:
> -
> -local_intc: local_intc {
> -	compatible =3D "brcm,bcm2836-l1-intc";
> -	reg =3D <0x40000000 0x100>;
> -	interrupt-controller;
> -	#interrupt-cells =3D <2>;
> -	interrupt-parent =3D <&local_intc>;
> -};
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,=
bcm2836-l1-intc.yaml b/Documentation/devicetree/bindings/interrupt-controll=
er/brcm,bcm2836-l1-intc.yaml
> new file mode 100644
> index 000000000000..5fda626c80ce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836=
-l1-intc.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/brcm,bcm2836-l1-=
intc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BCM2836 per-CPU interrupt controller
> +
> +maintainers:
> +  - Stefan Wahren <wahrenst@gmx.net>
> +  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
> +
> +description:
> +  The BCM2836 has a per-cpu interrupt controller for the timer, PMU
> +  events, and SMP IPIs. One of the CPUs may receive interrupts for the
> +  peripheral (GPU) events, which chain to the BCM2835-style interrupt
> +  controller.
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: brcm,bcm2836-l1-intc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  '#interrupt-cells':
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +  - '#interrupt-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    local_intc: interrupt-controller@40000000 {

If, for some reason, there's a respin - drop the label.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

> +        compatible =3D "brcm,bcm2836-l1-intc";
> +        reg =3D <0x40000000 0x100>;
> +        interrupt-controller;
> +        #interrupt-cells =3D <2>;
> +        interrupt-parent =3D <&local_intc>;
> +    };
> +...
> --
> 2.34.1
>=20

--auHGIicSjdrXJOCZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZruERQAKCRB4tDGHoIJi
0ghoAP9686PEjhkD4aXDeIGm/WHW0z+TntifpIl5HwMKxjCLFQD/aOiMGKokPvUB
EBjXpOJMkaIjlzbmqo4VvC71D+7uJwk=
=BkUN
-----END PGP SIGNATURE-----

--auHGIicSjdrXJOCZ--

