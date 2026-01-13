Return-Path: <devicetree+bounces-254730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF9DD1B6A4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 31C4C300644C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A2E318EF0;
	Tue, 13 Jan 2026 21:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="azBspjFY"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88463191B4;
	Tue, 13 Jan 2026 21:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768340071; cv=pass; b=FWbD/fcZMQq3fFdaYAO9U90eE4k083B5M+tO3PoIJQed/Q8aCUx3v4RurA8gFP5j3cZyj6950vk1jk341xUXaUk/E+8lBrdpJh6GL3tZby+PUSgjQNcnbtfx3j0T0b2wG17hLA0I6QgLgwGxfwedp4ZWRR8IvnI2LVr8qav7wk4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768340071; c=relaxed/simple;
	bh=eTb4l3+bqTEsitx9NC92hzZpzCTuMy2ZyF18Eg+8epM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MkRbO5CNFkXFB12nGZbM49BuRuS2l8QRCAiehUfxPrjbVHLvEJl5pI9SsxaTNvPP5g7aFxdZMLZ7ngafFbtSITfOChsmzsoO4EqEpg42O6s1dUwSoI7kgeLoQUhaQDFmE/LwLmumP7KasL20f4Hot6DtJGRZZb3S8elYJWjI9/E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=azBspjFY; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1768340039; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PVUopQW1vaQ5syQmE/TNT46TFkjRB6EYTUB54SBSXdDe5Y+iO+Bzcmr0LTSuLX7tVo5pTqk5jmSLuzxpf8XpG0dO+9wUVLHCnVEvs1a/7xWa3SsTyQAxi2RJURd1+3DfuD14mweaU9vWOP0VkYmnY0QMPz/zQbGsLyXvPv+ZAuA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768340039; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YPvMGDxuKwaOOYCX5FeKXhOMgpERuomgztzdY3yE00U=; 
	b=U0K+G2GWT2Mahr/8tgTEmDUM/yShCaxdCFXuFsqafG6UVPgUihf7c0r51taSnAxPn64rZozgwuKJxxMw3OrYbW335OulzDDhQeKz9VxGAz+B/PQc2L0fOELPetMoOe+SgtOu6smIOTt0x2YvE44u+OyD2YFQG4cK09hGn/zURAY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768340039;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=YPvMGDxuKwaOOYCX5FeKXhOMgpERuomgztzdY3yE00U=;
	b=azBspjFYOw3YqYC5CKXSXNhIqfVa2aPuQKN7A1OAUGW3CEPhJh5tEF+R0qydHV0Q
	DY8o/9IcwyS2mDJSsT5dzCh4tE9vDgdPP4+JftN9DN+tDeNK6pmG5YqK/XVlE6o1Mb+
	a9Uv9QqroNwta5QXcBboyHbgzqHYIhuV1xOKDlEs=
Received: by mx.zohomail.com with SMTPS id 1768340037753205.9179033216559;
	Tue, 13 Jan 2026 13:33:57 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 36D27181010; Tue, 13 Jan 2026 22:33:52 +0100 (CET)
Date: Tue, 13 Jan 2026 22:33:52 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, dmitry.baryshkov@oss.qualcomm.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, cristian.ciocaltea@collabora.com, 
	Laurent.pinchart@ideasonboard.com, mripard@kernel.org, hjc@rock-chips.com, robh@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <aWa5i52PTNQ_QTQ7@venus>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-2-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="elyu7rd5toymwlxb"
Content-Disposition: inline
In-Reply-To: <20260109080054.228671-2-andyshrk@163.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/268.322.40
X-ZohoMailClient: External


--elyu7rd5toymwlxb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
MIME-Version: 1.0

Hi,

On Fri, Jan 09, 2026 at 04:00:44PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>=20
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode. And itself does not depend on the I2S
> clock or the SPDIF clock when transmit audio.
>=20
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>=20
> ---
>=20
>  .../display/rockchip/rockchip,dw-dp.yaml      | 29 +++++++++++++++++--
>  1 file changed, 26 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw=
-dp.yaml
> index 6345f0132d43..1bfe1bd6404a 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.y=
aml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.y=
aml
> @@ -27,13 +27,11 @@ description: |
>    * Pixel clock up to 594MHz
>    * I2S, SPDIF audio interface
> =20
> -allOf:
> -  - $ref: /schemas/sound/dai-common.yaml#
> -
>  properties:
>    compatible:
>      enum:
>        - rockchip,rk3588-dp
> +      - rockchip,rk3576-dp
> =20
>    reg:
>      maxItems: 1
> @@ -42,6 +40,7 @@ properties:
>      maxItems: 1
> =20
>    clocks:
> +    minItems: 3
>      items:
>        - description: Peripheral/APB bus clock
>        - description: DisplayPort AUX clock
> @@ -50,6 +49,7 @@ properties:
>        - description: SPDIF interfce clock
> =20
>    clock-names:
> +    minItems: 3
>      items:
>        - const: apb
>        - const: aux
> @@ -95,6 +95,29 @@ required:
>    - ports
>    - resets
> =20
> +allOf:
> +  - $ref: /schemas/sound/dai-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3588-dp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5
> +          maxItems: 5
> +        clock-names:
> +          minItems: 5
> +          maxItems: 5

I think maxItems is not needed, since 6 items would not work for the
specified items list anyways. Otherwise:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> +    else:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          maxItems: 3
> +
>  unevaluatedProperties: false
> =20
>  examples:
> --=20
> 2.43.0
>=20

--elyu7rd5toymwlxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlmujwACgkQ2O7X88g7
+prTbQ//W9me0B019B0o9mQvNPhje/5MD3RYy/DEqJsrBujbmk4Hci3LdxiGWn2t
z5gnWMMmq0Su7mgS7730usChzsI5DEehvTFFqhEl6w/O63fFH72XbDIEFddrmVBm
Mxi3mWOHj968IXP5IcEntqbwIbMYHGAFtljkyd1ZTXhzhlw4ju9Q5WmrbNwxNNXJ
xD4Nr9RPaVwXyyjYeCiegzlCHtMYuhrg7H9ZxiB1udIhClt+wH473IakNSk7Le/R
HY3pySNn92HqVVppdAIobFaA7UIw9iYAHbSBBAV3AJIlFxt4CENZrJ/oW2FR3raD
kFKG0R1M2JDBB44T0Uqbjkaa0C2zziiH+54gi5V82hdlPH+CkgVvvgL+XzGaIEN/
E5m6JPTFDKp/7IUICoD9M3ZW8tPZDrgsZ8nSgxa+n/LoRzsUwXB6MwyG/lf01RG9
HxX5lPsVp5k81ffbJkdx+7Hog2X4+cTRAMeurNCNfh1OIy5wQYj0zndY9aE8948R
TdwgkeACsFMzMzyt41sWRjKDuKo2HVG2lE5Zm38PXW5YCqtCug1pyNpPRy+pIY4t
bv/qGCYcppF10MCku54YY5C/IJ3p6IB4Pvv+DZjt1Smz4gjh3zC5UXkg5hirntPr
uv5D/PlO2tYRAPYIyC8TdRqCNn6dUS3xISsEVRzJxR8FFQFrOro=
=ebuf
-----END PGP SIGNATURE-----

--elyu7rd5toymwlxb--

