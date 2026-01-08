Return-Path: <devicetree+bounces-252673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF75D0208F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A511312C569
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AAA37F0EB;
	Thu,  8 Jan 2026 08:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="NtX6E90V"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430F637C0EA;
	Thu,  8 Jan 2026 08:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862722; cv=none; b=ojM5zPjJiFvsD/TFSSaUTL2VJQRUArYXST96sHdf8wD4b0CeZkkRUQNkG6fLM+NNFBcsmubxPLpKLRNehIQhf3UprTa7WG3yWMS6BvyV3kpURxgyiW/PlrwjHAj6ndnuZDreo78yUNEThPKjErdPheJFxhEAdPfPhVuzDtzg3gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862722; c=relaxed/simple;
	bh=z1B+1oi4CAD0tQkvKmKLiIb5U2yqfEVUHlDrA4aF1s8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=J5NCQjPqX2hH3tu6rkVrabBLltNeELSZTJAFc022OMXLo61G/HteBzMsndLsIEXXJ5jY0LePXINEFlWkZQyDml2gxWcNclna3lnjxeIEdfmPS6otJOoddjTyMKWCwaYcNUaxofi0T3Inc2tonIyOe2lM2OLEmDTTuh50HNi4t8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=NtX6E90V; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767862706;
	bh=R1YVWqFT14aajrU8NomY7blt6pzz0A0j+Gh5vTz+QFo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=NtX6E90VRts1BpslEkR/LrcMeLsX9mJCEl0PbGdIGjzqq3QgZSl8BWv+uHesGem5r
	 cmcgNipH1BccS8u9WolVMloXsT+yhR1eTGrqiX14w+kMai29bSXomqM06yb8IgR01z
	 W7zzbUrfOLwmRxHt2Um7UIQBbR27nrIyck667oQa7Sz1HfhtOHTPiomqX66JtQnnff
	 2FA4q1jxoQAyiOXEF6skiSqEaCrbYbrRZjuvpEJutJ8GBma7pTEi7x25J/mu0zhuLw
	 6HyRjbbv/WTrBKgOUFwjinVXrkTgUDJ0/hAo4yCNCCpYg7ihKMHaMRulrlb6dfZYig
	 PK+iQ9g1WacRQ==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 747BE79F8C;
	Thu,  8 Jan 2026 16:58:25 +0800 (AWST)
Message-ID: <909110018686854d129ec579cd3852d29ab60be6.camel@codeconstruct.com.au>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add missing "device_type" property
 on memory node
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: openbmc@lists.ozlabs.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Avi Fishman <avifishman70@gmail.com>, Tomer
 Maimon	 <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, Patrick
 Venture	 <venture@google.com>, Nancy Yuen <yuenn@google.com>, Benjamin Fair
	 <benjaminfair@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Date: Thu, 08 Jan 2026 19:28:24 +1030
In-Reply-To: <7e20473324c8da16fa86f72af950b8e8eac92a1b.camel@codeconstruct.com.au>
References: <20260105193232.3167128-1-robh@kernel.org>
	 <7e20473324c8da16fa86f72af950b8e8eac92a1b.camel@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2026-01-08 at 17:39 +1030, Andrew Jeffery wrote:
> On Mon, 2026-01-05 at 13:32 -0600, Rob Herring (Arm) wrote:
> > "device_type" is required for memory nodes, but is missing on Nuvoton
> > npcm845-evb.
> >=20
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> > =C2=A0arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts | 1 +
> > =C2=A01 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch=
/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> > index 2638ee1c3846..5edf5d13342d 100644
> > --- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> > +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> > @@ -17,6 +17,7 @@ chosen {
> > =C2=A0	};
> > =C2=A0
> > =C2=A0	memory@0 {
> > +		device_type =3D "memory";
> > =C2=A0		reg =3D <0x0 0x0 0x0 0x40000000>;
> > =C2=A0	};
> > =C2=A0
>=20
> Hmm, we have quite a few other offenders under arch/arm/boot/dts/aspeed
> too. I expect this should be caught by CHECK_DTBS=3Dy?
>=20
> Digging back through my build archives, warnings have cropped up, but
> only for when I'm building the arm64 or arm multi_v{5,7} defconfigsm
> and seemingly not the aspeed_g5 defconfig.

Ah the aspeed dtsis define a memory node with it and some zero-length
memory, and the node properties are updated by the dts files.

False alarm.

Andrew

