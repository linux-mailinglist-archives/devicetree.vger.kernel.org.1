Return-Path: <devicetree+bounces-11377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BADD7D585A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:30:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B7DC281A27
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D826266A5;
	Tue, 24 Oct 2023 16:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZQmUam9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD773A28B
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:30:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D4ABC433C7;
	Tue, 24 Oct 2023 16:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698165027;
	bh=44omkjt/5HNfGSZPnCmi9G3bNkIwWFJzaa6omHVOCyY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uZQmUam9BmyVNRSqqTzzRweHloTNPmBbbVytfcFzIk6rE0L4viG8VngIqY6QauzM/
	 nfxPWK+Gv7L6jiXZttxQb8gdF5UYqegtsyVI9cWymh7taCrllPeQpRXePRfRLNfNrV
	 Psb0tsLwRuB+rTca6vqKe9ItWzH41db1Cy32rwFPt9kZ67a3TsNKUqRliZXn0bBm0T
	 XCFB7ft8mxf0uYaPS9y5E3KCW94XH7LB43c1TmTGkAQPeq3bMGvXn6biEgwXy/kr9x
	 FLlFaPEgeQzITQZpGXkoo5BCqnsaC5Vpe9aIk1i8AjVlkfXBxENhnIO6u0uOFvY2yW
	 pM3jL7LkLuJyg==
Date: Tue, 24 Oct 2023 17:30:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/4] dt-bindings: PCI: dwc: rockchip: Add dma
 properties
Message-ID: <20231024-glacial-subpar-6eeff54fbb85@spud>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-4-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cwtxAAzMBHSoshSf"
Content-Disposition: inline
In-Reply-To: <20231024151014.240695-4-nks@flawful.org>


--cwtxAAzMBHSoshSf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 05:10:10PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
>=20
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
>=20
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
>=20
> and snps,dw-pcie.yaml does have the dma properties defined, in order to be
> able to use these properties, while still making sure 'make CHECK_DTBS=3D=
y'
> pass, we need to add these properties to rockchip-dw-pcie.yaml.
>=20
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml =
b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 229f8608c535..633f8e0e884f 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -35,6 +35,7 @@ properties:
>        - description: Rockchip designed configuration registers
>        - description: Config registers
>        - description: iATU registers
> +      - description: eDMA registers

Same here, is this just for one of the two supported models, or for
both?

Cheers,
Conor.

> =20
>    reg-names:
>      minItems: 3
> @@ -43,6 +44,7 @@ properties:
>        - const: apb
>        - const: config
>        - const: atu
> +      - const: dma
> =20
>    clocks:
>      minItems: 5
> @@ -65,6 +67,7 @@ properties:
>        - const: pipe
> =20
>    interrupts:
> +    minItems: 5
>      items:
>        - description:
>            Combined system interrupt, which is used to signal the followi=
ng
> @@ -88,14 +91,31 @@ properties:
>            interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
>            tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err=
_rx,
>            nf_err_rx, f_err_rx, radm_qoverflow
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> =20
>    interrupt-names:
> +    minItems: 5
>      items:
>        - const: sys
>        - const: pmc
>        - const: msg
>        - const: legacy
>        - const: err
> +      - const: dma0
> +      - const: dma1
> +      - const: dma2
> +      - const: dma3
> =20
>    legacy-interrupt-controller:
>      description: Interrupt controller node for handling legacy PCI inter=
rupts.
> --=20
> 2.41.0
>=20

--cwtxAAzMBHSoshSf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfxHgAKCRB4tDGHoIJi
0gYhAQCUeQpAqRDJJHkX2Mozq/n5AwQ90PwjptSjFc5zEvFedwEAvFRKKAG7jc2M
qVh0v3uJUsxnOUAfs19cl4mkkTgUnQg=
=Aa4G
-----END PGP SIGNATURE-----

--cwtxAAzMBHSoshSf--

