Return-Path: <devicetree+bounces-119533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3569BEFF0
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 15:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BA2E1F234DD
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 14:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DBBD1F8184;
	Wed,  6 Nov 2024 14:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="u+LcAaXy"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53FB502B1
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 14:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730902642; cv=none; b=Qh1iMnri96xBP2sGpRQWniqOVrO+UkxOEE/mYrnAb6ZKtcWZeJR0SEVpaAx3e3LnqPhUHxUWWBBIvfRdf/TI/rRVcIPqAtVpm8wVst3a8qicNIP0nnQyQEVBFNiAhVuk8exs60fK/GIu/7UR9Cwija/uwR+l/bmWE0rrf+InStM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730902642; c=relaxed/simple;
	bh=NpkgZ3AmQShEAKcBqcYm6Dkv8MKwesgkNU5p3i63HsU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=F4UN6kCb00eNmeCJHTFsrALkn9/VxlCcebqTqPGndF8UAK+/Fz3kjLhS068SajXP3QRbkE1W7JiMi82aomr9V1CHAyNpiVWH6YKtyuBwkG48tWggJQSh9ql8or3IdE3TNcMwWNWCH/JSuSXZrSnQ2GFHqimL8hRax9r2ohvaUBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=u+LcAaXy; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1730902636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sdmqNqqp4Bk7buEsWzjxk7mkEA62rn6czo4XC8c0f/Q=;
	b=u+LcAaXyxYZ1m5RiP1Q6G4WEQS06mhDv0LvBxdrkpeyfdAWqHbev4lfFLZhV3OrmnQC9vo
	qf3VfilxFSAJEFs3p2N9BlbKWXtgG2PCOUkgkBaj/Fy2fAYk0RyhKT3EYgyN1w6y0Ur9FA
	ht7w0lw1sg8wv2Bl4XQu+kToVM3pK2lYfeaHXZSh1WGj6973fbCUoLLBH3YTZVRx/0WCkq
	rFOYgk8eicCxYfCL5y8xGko3wWZtD8wLtwSkNJdQ28QYRtxfFOKoQK44n592ptKmBnNIM+
	duIlk1CHEAOqUnC3KtcSYxifGZ4qw2Rvl5C9JGfJm+AMeEAc2PpP8QAbb2ddsQ==
Content-Type: multipart/signed;
 boundary=621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Wed, 06 Nov 2024 15:17:02 +0100
Message-Id: <D5F5RRFVMP7R.19G82R4S878IL@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <quentin.schulz@cherry.de>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY
 schema
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, <vkoul@kernel.org>,
 <kishon@kernel.org>
References: <20241104111121.99274-1-heiko@sntech.de>
 <20241104111121.99274-2-heiko@sntech.de>
In-Reply-To: <20241104111121.99274-2-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT

--621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon Nov 4, 2024 at 12:11 PM CET, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
> Add dt-binding schema for the MIPI CSI/DSI PHY found on
> Rockchip RK3588 SoCs.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../phy/rockchip,rk3588-mipi-dcphy.yaml       | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588=
-mipi-dcphy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-d=
cphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcph=
y.yaml
> new file mode 100644
> index 000000000000..5ee8d7246fa0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.ya=
ml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,rk3588-mipi-dcphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip MIPI CSI/DSI PHY with Samsung IP block
> +
> +maintainers:
> +  - Guochun Huang <hero.huang@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3576-mipi-dcphy
> +      - rockchip,rk3588-mipi-dcphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: ref
> +
> +  resets:
> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: m_phy
> +      - const: apb
> +      - const: grf
> +      - const: s_phy
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the 'mipi dcphy general register fi=
les'.

Should this dt-binding have a power-domains property?
RK3588 TRM v1.0 part 1 page 1097 has ALIVE(PD_BUS) for
MIPI_DC_PHY0~MIPI_DC_PHY1

FTR: I made a similar remark on another patch sent by Heiko today. While
that was incorrect, I do think it's appropriate for this binding after
which it could also be added to the respective phy nodes in the dts(i)
file(s).

Cheers,
  Diederik

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      phy@feda0000 {
> +        compatible =3D "rockchip,rk3588-mipi-dcphy";
> +        reg =3D <0x0 0xfeda0000 0x0 0x10000>;
> +        clocks =3D <&cru PCLK_MIPI_DCPHY0>,
> +                 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +        clock-names =3D "pclk", "ref";
> +        resets =3D <&cru SRST_M_MIPI_DCPHY0>,
> +                 <&cru SRST_P_MIPI_DCPHY0>,
> +                 <&cru SRST_P_MIPI_DCPHY0_GRF>,
> +                 <&cru SRST_S_MIPI_DCPHY0>;
> +        reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +        rockchip,grf =3D <&mipidcphy0_grf>;
> +        #phy-cells =3D <0>;
> +      };
> +    };


--621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZyt6YwAKCRDXblvOeH7b
bi/sAPkBV9EJ6lxI2snofBThwqWbOjtpT4jPd/NnpQy6YWvmEQEAoUUz2gsMxZzy
NTI0fYtiF0lrdWJnjQbXBvaGYJy3jww=
=aVJh
-----END PGP SIGNATURE-----

--621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0--

