Return-Path: <devicetree+bounces-75117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0AE9058D9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 18:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54B581C20D8E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 16:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4315618130D;
	Wed, 12 Jun 2024 16:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/A94sjn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107FE16E882;
	Wed, 12 Jun 2024 16:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718210025; cv=none; b=sFnnamH/5/tEeDvabl3HNTkgvgxCvuvgi4MD2gGDOAZ9wuWJckgyf+MOcKluDi/QLfPpIBBiUKapZt1j30vGoZ5cIVV4n1ubymIxnNUpiYnLhMazwGsamHYjNsixO+Mj/Mg156s0eMDpnTHLo1xQw6jxaPIgVPCsIJKlclZk/i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718210025; c=relaxed/simple;
	bh=MsFhjqz8K5lYmvWMxKf4C54DDbJX7oTJcO1G+HwBc7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nudIInqwEr3JzmA1GcRj03iZ6H7xWHmZVNW9JS3lhKvu+6tX5ItGptSCt5GO2rVIMTWG0b9nVLAr5SqPnqlAmaH9MmzD8qN8NUa88HTmjK9wHJ2eW2GcckwjCt0yrXZ0ZpxxjVi8LhqpdBM6Y51aZFSmQpJIVWm44lafRvXbRSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/A94sjn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB245C116B1;
	Wed, 12 Jun 2024 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718210024;
	bh=MsFhjqz8K5lYmvWMxKf4C54DDbJX7oTJcO1G+HwBc7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A/A94sjnqFJGlbWmyQihVESPvg0PkCzVg1I4nQ02bgdav01il2R4ztGU6aU1UtPu/
	 Cs7+1wksCp1mR6a3UAo/RXqX6mAnbdQq/EM7sUMrYJITwL+5zYgHjMDVKfrHruUtAS
	 RnKDLhiXr05X3ho1yjomQFzqaIygS4HZ7MG0bWdbCTUtytX3JebZ9DKFwtDhCSolWW
	 1k42z7ipJMuR+qpDMWSijcqlC0NW3Asz1Nu/CewdfjZc/Zxnbo6V6TMnINfI7sBD6Z
	 t8dFtbqr/dU/rB2CciVugp0ioOhNDk0/SW+HlKHKWiZeSic/siy3CXc6X/aAByuPHR
	 KXtLiW/YqCk3A==
Date: Wed, 12 Jun 2024 17:33:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oded Gabbay <ogabbay@kernel.org>,
	Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH 3/9] dt-bindings: mailbox: rockchip,rknn: Add bindings
Message-ID: <20240612-thread-throng-a4a14ce0c6e8@spud>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XO+bVuaSKPlkL0L7"
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>


--XO+bVuaSKPlkL0L7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 03:52:56PM +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
>=20
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  .../devicetree/bindings/npu/rockchip,rknn.yaml     | 123 +++++++++++++++=
++++++
>  1 file changed, 123 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml b/D=
ocumentation/devicetree/bindings/npu/rockchip,rknn.yaml
> new file mode 100644
> index 000000000000..570a4889c11c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/npu/rockchip,rknn.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Neural Processing Unit IP from Rockchip, based on NVIDIA's NVDLA
> +
> +maintainers:
> +  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
> +
> +description: |+

The |+ chomping operator is not needed here.

> +  Rockchip IP for accelerating inference of neural networks, based on NV=
IDIA's open source NVDLA IP.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3588-rknn
> +      - const: rockchip,rknn
> +
> +  reg:
> +    description: Base registers for NPU cores
> +    minItems: 1
> +    maxItems: 20

For all of these properties, you need to describe the individual items.

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 20
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 20
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 1
> +    maxItems: 20
> +
> +  reset-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  power-domains:
> +    minItems: 1
> +    maxItems: 20
> +
> +  power-domain-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  iommus:
> +    items:
> +      - description: IOMMU for all cores
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - assigned-clocks
> +  - assigned-clock-rates
> +  - resets
> +  - reset-names
> +  - power-domains
> +  - power-domain-names
> +  - iommus
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        rknn: npu@fdab0000 {

Drop the label here, it's not used.

> +          compatible =3D "rockchip,rk3588-rknn", "rockchip,rknn";
> +          reg =3D <0x0 0xfdab0000 0x0 0x9000>,
> +                <0x0 0xfdac0000 0x0 0x9000>,
> +                <0x0 0xfdad0000 0x0 0x9000>;
> +          interrupts =3D <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names =3D "npu0_irq", "npu1_irq", "npu2_irq";
> +          clocks =3D <&scmi_clk 0>, <&cru 1>,
> +                   <&cru 2>, <&cru 3>,
> +                   <&cru 4>, <&cru 5>,
> +                   <&cru 6>, <&cru 7>;
> +          clock-names =3D "clk_npu",
> +                  "aclk0", "aclk1", "aclk2",
> +                  "hclk0", "hclk1", "hclk2",
> +                  "pclk";
> +          assigned-clocks =3D <&scmi_clk 0>;
> +          assigned-clock-rates =3D <200000000>;
> +          resets =3D <&cru 0>, <&cru 1>, <&cru 2>,
> +                   <&cru 3>, <&cru 4>, <&cru 5>;
> +          reset-names =3D "srst_a0", "srst_a1", "srst_a2",
> +                        "srst_h0", "srst_h1", "srst_h2";
> +          power-domains =3D <&power 0>, <&power 1>, <&power 2>;
> +          power-domain-names =3D "npu0", "npu1", "npu2";
> +          iommus =3D <&rknpu_mmu>;

> +          status =3D "disabled";

A disabled example is useless.

> +        };
> +    };
> +...
>=20
> --=20
> 2.45.2
>=20

--XO+bVuaSKPlkL0L7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmnN4QAKCRB4tDGHoIJi
0mrlAP9TxBQhVfDfgrJQbQo60aSn0bl4zIUbk97NiOySlHcMagD+P4zYal5XytkL
kBIJ4zmFrRDcfCNFjF3XIqExV8y20gI=
=Z+Wc
-----END PGP SIGNATURE-----

--XO+bVuaSKPlkL0L7--

