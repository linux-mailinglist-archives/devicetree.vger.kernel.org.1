Return-Path: <devicetree+bounces-138175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C896BA0BFD0
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:30:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A0E87A2FC4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4038F1C07C9;
	Mon, 13 Jan 2025 18:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEeA/yUK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145F51865E5;
	Mon, 13 Jan 2025 18:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793049; cv=none; b=UlXEBrJS8FaZSHqne0Afjqqmx+5PufY0zQbhNicX8UtwWnLlOW6/ikL7sgbwI7CvN62XfH6vkgTek4ON44gNzmYhn0zBgEMiFJR3U3yQZi4lFz6VTreNs/eD9PlsdXWUHqyvS+THaFMUH7fRxJ+3G1UsOMk9CxsfQ61x2rcBm0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793049; c=relaxed/simple;
	bh=P6o9b9OJEbbN6mvPN7cHfla1Cu8ASLwXWJu0Q2N2xEU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jSkKvDYO12oo0HbUueZXlPmzbOMO72O+aIhDzl8ukgpCkVrPH7PsjieS2Ifn2bcdoMrkpRWCQ0ZMaPSUPdmixtdjNCi/DhyyqVZYR5RbOl7O6BQQ6IqPYrMOYcqJdiGFDxoE/L24PIn8FE5gOl/A2C8dZ3TxizPWLucrHvdWKVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEeA/yUK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AA6EC4CED6;
	Mon, 13 Jan 2025 18:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793048;
	bh=P6o9b9OJEbbN6mvPN7cHfla1Cu8ASLwXWJu0Q2N2xEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rEeA/yUKsAqWherMVsQL3MgtjM9tx+cBFSLOXmyVc9crUJyTMUG9rxP0Vj6vdShWB
	 moIFFK0hRAKiYEwRBHXj8WLwvYriZtvUG/AL98sZ42u8NGnWbO8lz9nNWZUTyGUm5h
	 b5ouCotv5ASLnK215CQQrEMGiz+gXx7VymMZNHDcy2YHQZ7NxPEsYkqiGGiXBLLkxm
	 a+5IOKKyx2Mf5dAGLtT1dX/5jK2AyXTZeiQcuUVk1cPw+TD3IacFa+J0oE2zlHGyWi
	 2F2Mm2ARw0gVyBDn9w/xftidEroQ8euUzLcyBfWbYtO23e+fxQ9MJkfwQYQd4oKCr6
	 bUr9vfV75pWhg==
Date: Mon, 13 Jan 2025 18:30:43 +0000
From: Conor Dooley <conor@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add
 property to set disconnect threshold
Message-ID: <20250113-aerobics-tall-e570d8bbcf2c@spud>
References: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RGQVYqBrFU+TitZQ"
Content-Disposition: inline
In-Reply-To: <20250111141542.5007-1-chunfeng.yun@mediatek.com>


--RGQVYqBrFU+TitZQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 11, 2025 at 10:15:41PM +0800, Chunfeng Yun wrote:
> Add a property to tune usb2 phy's disconnect threshold.
> And add a compatible for mt8196.
>=20
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> based on kernel 6.13-rc1
>=20
> this property is porting from t-phy driver, due to the u2 phy are similar.
> ---
>  Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/=
Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> index a9e3139fd421..2e012d5e1da1 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> @@ -49,6 +49,7 @@ properties:
>        - enum:
>            - mediatek,mt3611-xsphy
>            - mediatek,mt3612-xsphy
> +          - mediatek,mt8196-xsphy
>        - const: mediatek,xsphy
> =20
>    reg:
> @@ -129,6 +130,13 @@ patternProperties:
>          minimum: 1
>          maximum: 7
> =20
> +      mediatek,discth:
> +        description:
> +          The selection of disconnect threshold (U2 phy)
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 15

What unit is this? Unitless? How are the values determined?

> +
>        mediatek,efuse-intr:
>          description:
>            The selection of Internal Resistor (U2/U3 phy)
> --=20
> 2.46.0
>=20

--RGQVYqBrFU+TitZQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4Vb0wAKCRB4tDGHoIJi
0vKoAP4zLF3EUp+hEhLKk1EO3mA43mZ+y4hvXWvOmzulSeWtcAD8DUyZ7/MQOMPF
usYBcosdsvVr84zavQbRDKFCKsLWQAY=
=5d+a
-----END PGP SIGNATURE-----

--RGQVYqBrFU+TitZQ--

