Return-Path: <devicetree+bounces-58770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 314C68A2F98
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:36:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 545521C224B1
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF5183CD8;
	Fri, 12 Apr 2024 13:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="vBfI4rJF"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBDA1DFD9
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712928981; cv=none; b=lVuc+BMb/NVXwmGzCLmhfc3GsfERlI87gAXqJUc7CFb0sruthhdI96EldUZ8C+yqCfwtD0YYL0hI5RS3Q6x+5uhg2K1DukGhUtt+62hRWP0qpkYpiGNHiNX0GxWAu4hNKyZh2HPA2oQNZOgZViv7uch3ZBxaEvVXZ3cONSoabfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712928981; c=relaxed/simple;
	bh=RfQjQI/hL6/lXEi0MxFEwSpVIbCy6WdsNoc/LzDQ8z0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=czWq/OGGuBBYN4g2lsiSlk8nju1AHSsUBtdyfkdhR27dOqCC/XraIprSD3ebXauLMH3raBS57HK4JSBDYwnyCb28jCKulO1xT9ognjyrCIErnUJ4FWVuiLQ+jqkBYomGaL1GcDB4Yq0OQ66cobtHdMQ+pUirRz1vWrxl/LzXZpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=vBfI4rJF; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712928972;
	bh=RfQjQI/hL6/lXEi0MxFEwSpVIbCy6WdsNoc/LzDQ8z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vBfI4rJF1EfdfJkR3RVLha1K5eB3M0eDkmyC5f0qZ5utuVRR1NI/vce5IEWXBldVv
	 pRLvEOoKDeYRgN0ZBAqiF2Sr9iIpcGrrmx0UapSgdBqht2IKfCcdsdlrgZsyHgEDxq
	 jiNWH2IZSioISR0S2pZH2ox8WX7vRBe0Yr4CdLNQoC4AR5xhFtBpcG0banmrkjQCn3
	 hqYHNyF4/Y8v6eFo33pdy/xKto+nSJPsc/TpsJNXfBi327twl4KQa5NKkCOtq/WYvO
	 qjEg+Csh+HUV6rUHA6ndGIDOwNO+5XbHOMYOneMm8X7CkYVLG3A98XEWf4vnOuVb76
	 K0z2R7CdNXShg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CAB2D3781116;
	Fri, 12 Apr 2024 13:36:11 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 71E25106071F; Fri, 12 Apr 2024 15:36:11 +0200 (CEST)
Date: Fri, 12 Apr 2024 15:36:11 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Michal Tomek <mtdev79b@gmail.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,rx-common-refclk-mode
Message-ID: <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>
References: <20240412125818.17052-1-cassel@kernel.org>
 <20240412125818.17052-2-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aykfst6pwpjbzkd5"
Content-Disposition: inline
In-Reply-To: <20240412125818.17052-2-cassel@kernel.org>


--aykfst6pwpjbzkd5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 12, 2024 at 02:58:15PM +0200, Niklas Cassel wrote:
> From the RK3588 Technical Reference Manual, Part1,
> section 6.19 PCIe3PHY_GRF Register Description:
> "rxX_cmn_refclk_mode"
> RX common reference clock mode for lane X. This mode should be enabled
> only when the far-end and near-end devices are running with a common
> reference clock.
>=20
> The hardware reset value for this field is 0x1 (enabled).
> Note that this register field is only available on RK3588, not on RK3568.
>=20
> The link training either fails or is highly unstable (link state will jump
> continuously between L0 and recovery) when this mode is enabled while
> using an endpoint running in Separate Reference Clock with No SSC (SRNS)
> mode or Separate Reference Clock with SSC (SRIS) mode.
> (Which is usually the case when using a real SoC as endpoint, e.g. the
> RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)
>=20
> Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
> per lane. (Since this PHY supports bifurcation.)
>=20
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yam=
l b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> index c4fbffcde6e4..ba67dca5a446 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> @@ -54,6 +54,16 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description: phandle to the syscon managing the pipe "general regist=
er files"
> =20
> +  rockchip,rx-common-refclk-mode:
> +    description: which lanes (by position) should be configured to run in
> +      RX common reference clock mode. 0 means disabled, 1 means enabled.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 16
> +    items:
> +      minimum: 0
> +      maximum: 1

Why is this not simply using a single u32 with each bit standing for
one PCIe lane? I.e. like this:

rockchip,rx-common-refclk-mode:
  description: bitmap describing which lanes should be configured to run
    in RX common reference clock mode. Bit offset maps to PCIe lanes and
    a bit set means enabled, unset bit means disabled.
  $ref: /schemas/types.yaml#/definitions/uint32
  minimum: 0
  maximum: 0xffff
  default: 0xffff

Apart from that the PHY only supports up to 4 lanes on all existing hardwar=
e,
so 0xf should be enough?

Greetings,

-- Sebastian

--aykfst6pwpjbzkd5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYZOMMACgkQ2O7X88g7
+pqmXA//cCBR6kC3WV/BEB3gr3uj5vLk8Um4jA/Jd2dCAaYaaEsD//SzyunPACdo
rgxgorVO6VkBWf6aL9d49MvR1dItKj7odF6nzcknO3o51OCRKJ2jDxpwPGlrQiwl
ewmBCvCuuXfwlyexRZBocfaPzj9g0Ugqfu7YA3dkj1ot5IB8yh5pxnsaLOI6SXzu
0BlcgGzvd8tm4DSkdmgdFIFK0kNaktYnk6prKxPbJ1HXb3IHSJBXW4lOXemFTK0E
D5Q0Wq7A+FB1TZ5EGoESQraVFBwF9I2CxGHygNwHnWy2sfLPSdSbm+W5sPoUNICc
In+mQusBKvLqBc8SklbA/fdD/94iPzWcMTY+QkxGrfqQDIx175l2I8n6HMDARD7W
5APzve5MEnXco8Ss8bDlrLYMcahPG2KVUzL5H/mUWftB1xvZHcUoYbrnAcXvvLu6
uh/VscO/Lm1oxNc14ycsZGsrayCds8mf0hgdPpNAJl7YJUlfCV/e3yrMltBM4P8G
5/BOc+K8w73cVygGaUEKztuaQOwf4Madng5auObUFvW4hW6OjprYj3x8VMmkkfHo
OnZ7f6mQMDnE1v3Vexl+sI2JkkApgDQsMSnupSGfo+7jLP1yR48Chelgs7P3jihw
TF7dxrrRDmVYm9sqiTXVNrxXH/oDpVsNVJisfq9f4gyZBmkxoUs=
=FJ5r
-----END PGP SIGNATURE-----

--aykfst6pwpjbzkd5--

