Return-Path: <devicetree+bounces-252576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E57D012F5
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5597A30217B6
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01A1528504D;
	Thu,  8 Jan 2026 06:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="FPvChj9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A072D4B40;
	Thu,  8 Jan 2026 06:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767852301; cv=none; b=TH20P8B61Ufe6usjobY4PiyYzFWgy8nL6uhrNL0ID7jo0YLuNIMJVDRg8xw9pTpz6lWEZB47K15OCiaif+nxLCAOu+v2BCNW9ciNW6pJmkQXyVHuSwTRgzG11k5xs2U0+TQPAUX7vwmBSQMJNK3GGiyUFH62Q/jVFgeYui2qjjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767852301; c=relaxed/simple;
	bh=Jt4KV6fnkMfvidLzWMEWYpXAg344LKA5CXQ+qNFDYQI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=uSYkWMSuNOPWt5CGrQFUiYC5UFFnvHzi+GwBfUqY+H7X4x2oS3wMV/pjAXaoSntp02vH+/eu8ptqJYeRRVjtp6jY65cEGvzXUQGO5OWwGtllTeaEnii9TUHcllALKL6AW8N8fgCAWomMwaQBxiNoK8NK4GfmjNRZH17cDBi68Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=FPvChj9Q; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767852298;
	bh=Lzc+HCU/UMiCZqanaq1/Hyk80NttsM3prspmFkSZ1dM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=FPvChj9QFoYELv4NmJ0HWX4qTD4n8uT2clQe2BuBk2aDz3PVF8Ry8moGU6xwAI7H5
	 MMH5yumSsONLqGEgMIiqfxAh9Dn4CdPhwzQeP3gi6/T3aHhCr27XkY95VVg4xUezQV
	 QGKMyyzP5v+/xq/b4u+QROxP7YbForn4nLzIsXArRg/z+VwzcUI58n2TwjMt5vkdRX
	 Ac4cAXty41G8FHnWcWF7jU8eoyGu61VaBx6z1K8IEreEIRCxQ4AHB/uJ/cHlqggX9a
	 6GOg9qnkpB0b2RAXEWf13igTQnR4S0UUAg/fZACzLE9iNmDS9ZfU/DyYZpgBj4dw7E
	 i6vlPPAuW0yYQ==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B16BA7C834;
	Thu,  8 Jan 2026 14:04:57 +0800 (AWST)
Message-ID: <3d6aaf558fd8b60ec7010f976a747d9f0a727f98.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 1/2] arm: dts: aspeed: add an alt 128M flash layout
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Marc Olberding <molberding@nvidia.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Thu, 08 Jan 2026 16:34:57 +1030
In-Reply-To: <20251218-alt-128-v2-1-10499a0b7eb9@nvidia.com>
References: <20251218-alt-128-v2-0-10499a0b7eb9@nvidia.com>
	 <20251218-alt-128-v2-1-10499a0b7eb9@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Marc,

Regarding the subject prefix, can you please capitalise the 'ARM' portion, =
so:

   ARM: dts: aspeed: add an alt 128M flash layout

That way it's consistent with the rest of history.

On Thu, 2025-12-18 at 10:48 -0800, Marc Olberding wrote:
> Add a 128M layout for the BMC flash chip we didn't boot from. Including
> this allows the user to write to each partition on the alternate spi
> chip. This dtsi follows the existing standard of using the same layout
> as non alt version and prepending `alt` to each partition's name.
>=20
> Testing: Include this in msx4 and cat size, offsets and name

I think this would be better with s/Testing/Tested by/ and associated
grammar fixes.

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

Can you rather remove the markdown codeblock and instead indent the
code snippet (IMO 4 spaces is fine)?

Also the shell continuation markers seem a little unfortunate. Maybe
just drop them for clarity? You can separate the output from the
script.

I also found this helpful:

    diff -u arch/arm/boot/dts/aspeed/openbmc-flash-layout-128{,-alt}.dtsi

Andrew

