Return-Path: <devicetree+bounces-247644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A981CC9BF5
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 23:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D918D3037E90
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 22:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB8832FA14;
	Wed, 17 Dec 2025 22:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="D6L574Kl"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35AA32F774;
	Wed, 17 Dec 2025 22:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766012390; cv=none; b=lTgOWjH8LaRM8DC+gTmULVj6M0p+0oA/aSNgOn/ThsRBQFSeHXnvbg1flEHCxvDf7KNSVATFrvnOAI4uMyrgeUpwqTu7vpY3KYvwpnwhaKyKsyweZfO5i7VwRUFzD3PNtj5LE8zTQIktAMOmRpMQLO4/XEV2X24GgOOMu/Wtv5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766012390; c=relaxed/simple;
	bh=h0ZQpPnP6V0VHVG4T/qTaG7HGafVff3MtURtDkNB+7o=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Lx/tz0SsUw/KsCnrQ+zMogGreeaAB/++fniMlMBCXiVFLzjKXFy7L3YKrM38LMlYtHLn0rn3UY+aBy5+efGsQbRO0XFVty6z4r5tjt4WBgEeANX/OoxqCwdno4cqnuRxfjnp6Ua0hU1k3+W4q6nIIvAArO45IApDJU2z5MNfg7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=D6L574Kl; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1766012385;
	bh=h0ZQpPnP6V0VHVG4T/qTaG7HGafVff3MtURtDkNB+7o=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=D6L574KlgyqzSiWjJnQy9D8H7anarJ75r5sI+bRpxh5ii3G2KVXGenqFNpIFW03G3
	 9chSFdeSExk1LhJTLixQa0Rtkp4mZ2cTamqmy5LpgLXeYrixa0LPPmSt8Xgo7IcBW9
	 MK6vkDTNKvWpvhFM5H2RA2XD1EdhQkSbudltYdehH/6CuVxo0WKxqJNreLhyRLeoS7
	 HdcZ3w01f1DmE7Zc8BDo9aqKFP6S9R0wg6Ffq/A5LT+r2YltNEcbfMBYYjA9pvqxZZ
	 pmpJW+MRqyE3y8C38vClToSpNSfFpu+Cb2dENC6tga6iEcr6qT4j2gSgDdz6jSsf55
	 z7DKlQOWcuHVw==
Received: from [192.168.68.115] (unknown [180.150.112.216])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 03A677C1B2;
	Thu, 18 Dec 2025 06:59:44 +0800 (AWST)
Message-ID: <61f561d95af86a46f1e1075df39e1ce0f1324098.camel@codeconstruct.com.au>
Subject: Re: [PATCH] arm: dts: aspeed: add an alt 128M flash layout
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Marc Olberding <molberding@nvidia.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, openbmc@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Dec 2025 09:29:44 +1030
In-Reply-To: <20251211-alt-128-layout-v1-1-100f57d2bc4a@nvidia.com>
References: <20251211-alt-128-layout-v1-1-100f57d2bc4a@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-12-11 at 13:35 -0800, Marc Olberding wrote:
> Add a 128M layout for the BMC flash chip we didn't boot from.
> Including
> this allows the user to write to each partition on the alternate spi
> chip. This dtsi follows the existing standard of using the same
> layout
> as non alt version and prepending `alt` to each partition's name.
>=20
> Testing: Include this in msx4 and cat size, offsets and name
> ```
> for devdir in /sys/class/mtd/mtd*; do
> > =C2=A0=C2=A0=C2=A0 [[ -d $devdir && -r $devdir/name ]] || continue
> > =C2=A0=C2=A0=C2=A0 name=3D$(<"$devdir/name")
> > =C2=A0=C2=A0=C2=A0 [[ $name =3D=3D alt* ]] || continue
> >=20
> > =C2=A0=C2=A0=C2=A0 size=3D$(<"$devdir/size")
> > =C2=A0=C2=A0=C2=A0 offset=3D0
> > =C2=A0=C2=A0=C2=A0 [[ -r $devdir/offset ]] && offset=3D$(<"$devdir/offs=
et")
> >=20
> > =C2=A0=C2=A0=C2=A0 dev=3D$(basename "$devdir")
> > =C2=A0=C2=A0=C2=A0 printf "%s name=3D%s offset=3D0x%X size=3D0x%X\n" "$=
dev" "$name" \
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "$offset" "$size"
> > done
> mtd10 name=3Dalt-rofs offset=3D0xA00000 size=3D0x5600000
> mtd11 name=3Dalt-rwfs offset=3D0x6000000 size=3D0x2000000
> mtd7 name=3Dalt-u-boot offset=3D0x0 size=3D0xE0000
> mtd8 name=3Dalt-u-boot-env offset=3D0xE0000 size=3D0x20000
> mtd9 name=3Dalt-kernel offset=3D0x100000 size=3D0x900000
> ```
>=20
> Also ran dtbs_check on an existing dts with this included.
>=20
> Signed-off-by: Marc Olberding <molberding@nvidia.com>
> ---
> Add a layout for an alternate 128M flash layout. This is
> useful for the aspeed ast2500[2] and ast2600[1] SoCs,
> where it has the ability to boot from one of two spi chips,
> nominally the primary and backup SPIs. Adding a layout allows
> userspace
> to flash the alternate spi by partition and switch over to it,
> allowing
> lower downtime for firmware flash, or for updating the primary
> flash from the golden backup flash. This is already an established
> scheme for the 32M and 64M layouts, where the layout is the same
> but each partition has `alt` prepended to its name. This allows
> userspace to just prepend alt to the images in the update process
> to specify which flash chip to update.
>=20
> References:
>=20
> [1] https://www.aspeedtech.com/server_ast2600/
> [2] https://www.aspeedtech.com/server_ast2500/
> ---
> =C2=A0.../dts/aspeed/openbmc-flash-layout-128-alt.dtsi=C2=A0=C2=A0 | 32
> ++++++++++++++++++++++
> =C2=A01 file changed, 32 insertions(+)

This may be fine, but please add it in a series that also introduces a
board that consumes it.

Andrew

