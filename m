Return-Path: <devicetree+bounces-134996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8A49FF533
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 00:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4D1A1881946
	for <lists+devicetree@lfdr.de>; Wed,  1 Jan 2025 23:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBCE5674E;
	Wed,  1 Jan 2025 23:29:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A572344C6C;
	Wed,  1 Jan 2025 23:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735774196; cv=none; b=Qvu9IUbmdJxlPjTiZyvD8Ikyx2p44AjNHHxXtMS2AmPHCeEj+z4f2iYcI7rVMaDziMPJUSZJenk89r13d2+rk7WRa4KMS/mKuOJw49u2qdcm/AeLCXawPUg4aDeaY1HQDPAcuchnkq7GtkDdJWCbbh4JpUbsitBcQAJ7QTtDtGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735774196; c=relaxed/simple;
	bh=DDHmBmkowkUOh8FcF//3ru+uUyuhtWiUORTAGPFWmzw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uOus0sc9exmbVvbfJGeazqtKzwuSBBkiSJDEvLexy5tMvgs4hT0uiOyzhaVX+WTiO34Rtc1woP6jXz63VT4oMfVnI3AORFIiFT6IBy0jI+5KP/f/GxI3ZLD40Q73aow39RgH6+TcbwbovW//KOLOc9Jxq5sCVRoPl/675gygQjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6435B11FB;
	Wed,  1 Jan 2025 15:30:16 -0800 (PST)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF6643F6A8;
	Wed,  1 Jan 2025 15:29:46 -0800 (PST)
Date: Wed, 1 Jan 2025 23:28:36 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>
Cc: Stefan Gloor <code@stefan-gloor.ch>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: sunxi: Add MMC alias for consistent
 enumeration
Message-ID: <20250101232836.76c7fd0e@minigeek.lan>
In-Reply-To: <CAGb2v67dBhL3-AhLeHg3xOgbNZ3qu0aj9+kA+MoOMRYfr_Z_zQ@mail.gmail.com>
References: <20241219105622.13691-2-code@stefan-gloor.ch>
	<CAGb2v67dBhL3-AhLeHg3xOgbNZ3qu0aj9+kA+MoOMRYfr_Z_zQ@mail.gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 1 Jan 2025 16:58:28 +0800
Chen-Yu Tsai <wens@csie.org> wrote:

Hi,

> On Thu, Dec 19, 2024 at 6:58=E2=80=AFPM Stefan Gloor <code@stefan-gloor.c=
h> wrote:
> >
> > Add explicit alias for MMC devices, so that (e)MMC and micro SD cards
> > are enumerated consistently. This should fix spurious boot failures when
> > specifying a hard-coded root partition, e.g., mmcblk0p2. =20
>=20
> IIRC we have chosen against adding explicit MMC aliases for the sunxi
> platforms. Please try using UUID=3D or PARTUUID=3D for root partition
> references.

Yes, and LABEL=3D would be another way.

Alternatively you could use U-Boot's DT when booting the board. U-Boot
will add those aliases during build time (because it needs them for its
own purposes), and by using $fdtcontroladdr (instead of $fdt_addr_r,
on the bootz command line) you get this for free, and even save yourself
from loading some DT.
We sync the DTs regularly from the kernel to U-Boot now, and at the
moment they are identical between the kernel and U-Boot, so you don't
lose anything.

Cheers,
Andre

> > Link: https://github.com/linux-sunxi/meta-sunxi/pull/431
> > Signed-off-by: Stefan Gloor <code@stefan-gloor.ch>
> > ---
> >  arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts =
b/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts
> > index a1b89b2a2999..9cd1eb690134 100644
> > --- a/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts
> > +++ b/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts
> > @@ -60,6 +60,8 @@ aliases {
> >                 serial2 =3D &uart7;
> >                 spi0 =3D &spi1;
> >                 spi1 =3D &spi2;
> > +               mmc0 =3D &mmc0;
> > +               mmc1 =3D &mmc3;
> >         };
> >
> >         chosen {
> > --
> > 2.45.2
> >
> > =20
>=20


