Return-Path: <devicetree+bounces-15385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DC57E9DE1
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C70DEB20A59
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6168D20B0B;
	Mon, 13 Nov 2023 13:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPJXpBhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393C5208A8;
	Mon, 13 Nov 2023 13:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6206EC433C7;
	Mon, 13 Nov 2023 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883637;
	bh=plF/r4HIEuooKGmnsFRar8GaRxhKP0L4EfThVigAiCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jPJXpBhZw16BZzwtzm0uvW7wge2Aro67mW43BIE38LUZbU4kbtgYcwBB46uYMfHmM
	 qhAktBDNxSQtd2LYxEEenXoSpbrlmZY+h18Q4DaKdwlXvyxdny67ABNZ9UOOxWDrid
	 bcJPE646qrhPJrpomct9wBA7Q0GmkI+stFJkyJh2p9rTp+RX1t13wjj0xzPlA9h9M3
	 40+cWtO/SsSINvV+2W26Fc3vWryYrjlQatSA+jwLN1PND0mE5z73q4qTlIlOr9zO0f
	 4ut19ixOqFn2wSAK7ZuBkCrdqxfQHYGHDvOP7aDL5fLbv1rHeOIRTjJTAwdlDGvGvF
	 p8i4eqCxq82fA==
Date: Mon, 13 Nov 2023 13:53:54 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: PCI: qcom: adjust iommu-map for
 different SoC
Message-ID: <20231113-shortly-catchable-9110f1b63943@squawk>
References: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kU0g80bZlb7NsLLb"
Content-Disposition: inline
In-Reply-To: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org>


--kU0g80bZlb7NsLLb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 12, 2023 at 07:45:56PM +0100, Krzysztof Kozlowski wrote:
> The PCIe controller on SDX55 has five entries in its iommu-map, MSM8998
> has one and SDM845 has sixteen, so allow wider number of items to fix
> dtbs_check warnings like:
>=20
>   qcom-sdx55-mtp.dtb: pcie@1c00000: iommu-map: [[0, 21, 512, 1], [256, 21=
, 513, 1],
>     [512, 21, 514, 1], [768, 21, 515, 1], [1024, 21, 516, 1]] is too long
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Docum=
entation/devicetree/bindings/pci/qcom,pcie.yaml
> index 8bfae8eb79a3..14d25e8a18e4 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -62,7 +62,8 @@ properties:
>      maxItems: 8
> =20
>    iommu-map:
> -    maxItems: 2
> +    minItems: 1
> +    maxItems: 16
> =20
>    # Common definitions for clocks, clock-names and reset.
>    # Platform constraints are described later.
> --=20
> 2.34.1
>=20

--kU0g80bZlb7NsLLb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIqbwAKCRB4tDGHoIJi
0qY1AP9i/3gvKL8whJl5EdsGw0HYkilJh0o9sZue21L0oWgM0wD/ZIJm4cDxnLzk
NZTYlZScX/bEZrUi8+Z/Q4N2qJ6KZwo=
=SXnR
-----END PGP SIGNATURE-----

--kU0g80bZlb7NsLLb--

