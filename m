Return-Path: <devicetree+bounces-3928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B327B0837
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A4DE0281689
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75EA2450D4;
	Wed, 27 Sep 2023 15:27:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6607F6FA2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:27:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BEECC433C8;
	Wed, 27 Sep 2023 15:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695828466;
	bh=ew1MYjtPQy8sB9eXrgz71lc2ePX2xsFIrzywzE9J6Eo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X0RB2onXT9AYbf8nJ0cuxMqvm5mGl0XlsyhgPLLf4uJaZX61Sq2+yfjJ3PizalktX
	 xzZufZ+A/+zvr+/IFMZQO1ds5uWSreoqrlbDoB0APF9yiy35Xhe3C6DF+Fs5jXbCsa
	 XaRaEufy+XOcy4uRMCMWhsyOJSdNUHNuwmNSSdRI9+i0/+Iku4VnF0o/v6lI/5Qxfl
	 ElAwdnw0pvJHIcGCcJZPm2OJ2CN5QwnjMd9z+FjtxkWf4LBTUYiUd4JjURaGDjSYrQ
	 SJjqE2SPmAMwc5v5sKJ6nmpBBDzYpaBPYsm0D5kSyaozBr5Srpb4ZiJR86Lg8gLkXX
	 0vZVr08TbygLw==
Date: Wed, 27 Sep 2023 16:27:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <ray.jui@broadcom.com>,
	Scott Branden <scott.branden@broadcom.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: PCI: brcm,iproc-pcie: Drop common
 pci-bus properties
Message-ID: <20230927-fraying-pranker-19ae72ff86a7@spud>
References: <20230926155351.31117-1-robh@kernel.org>
 <20230926155351.31117-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GAGv5w0d/anu4Sn5"
Content-Disposition: inline
In-Reply-To: <20230926155351.31117-2-robh@kernel.org>


--GAGv5w0d/anu4Sn5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 10:53:41AM -0500, Rob Herring wrote:
> Drop the unnecessary listing of properties already defined in
> pci-bus.yaml. Unless there are additional constraints, it is not
> necessary.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/pci/brcm,iproc-pcie.yaml  | 15 ---------------
>  1 file changed, 15 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml b=
/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
> index 0cb5bd6cffa1..6730d68fedc7 100644
> --- a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
> @@ -34,13 +34,6 @@ properties:
>      description: >
>         Base address and length of the PCIe controller I/O register space
> =20
> -  interrupt-map: true
> -
> -  interrupt-map-mask: true
> -
> -  "#interrupt-cells":
> -    const: 1
> -
>    ranges:
>      minItems: 1
>      maxItems: 2
> @@ -54,16 +47,8 @@ properties:
>      items:
>        - const: pcie-phy
> =20
> -  bus-range: true
> -
>    dma-coherent: true
> =20
> -  "#address-cells": true
> -
> -  "#size-cells": true
> -
> -  device_type: true
> -
>    brcm,pcie-ob:
>      type: boolean
>      description: >
> --=20
> 2.40.1
>=20

--GAGv5w0d/anu4Sn5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRJ7QAKCRB4tDGHoIJi
0lP1AQDaCJ6JUfOS07CvDiagWs4i2dBIvfiGnR/4dB4fYNmQBwD8CMisRB8zqfjI
XZRmMkwsvx0bWoQ2dtE878SKFLfoCgw=
=PQD9
-----END PGP SIGNATURE-----

--GAGv5w0d/anu4Sn5--

