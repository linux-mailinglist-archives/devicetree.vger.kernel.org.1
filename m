Return-Path: <devicetree+bounces-252609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D88FBD01598
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 08:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 78CBB3000B75
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 07:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6926D313264;
	Thu,  8 Jan 2026 07:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="eGoDlgD/"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CBD239E80;
	Thu,  8 Jan 2026 07:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767856164; cv=none; b=gaNWwpEmWTiS90mPTaB4nMJLljRV2HqqFZAtst4OpyPlvakJeAbsZqQCtfg6t6038uliu3IonGBWZQYByNxukurjtnqnYE7xPBbuiHtqmda0zRJiTR22x++3yyyO5UD2z7ek6Zo+Pggb3CyXjLCisp2U4sbjgoF1U2OTDKnWUB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767856164; c=relaxed/simple;
	bh=zbtJ0dIyTp50kbicmALCheWv8yqpjoI/Af++CVyyeU8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OyFF/OeDG0gTwY1BgI3URTXczr8huilzmwhOIOpBPPs7IOazLwdqIlpYwi4eZfdh3UpfvKSVnkasoYBRhvkZHjsY1QvVA/2Gh8W4RQEN2Y5pZHlrEk+sHxK/aOIRM2fXvQiUGHVHm+KYKluBTrcBWTMIxcA+Js2a5kEz7gaYKzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=eGoDlgD/; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767856160;
	bh=8GWW+6oLxMPHa9OT+guxLScbnYBJSApZwZQX2MPCbhk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=eGoDlgD/wJwCazsW1UU8xf5aDf6Iq5drgT1i7SptqL7SQB5b+iBx8qaEmmsZzwnxd
	 a7ZkPrv65KyAs5/PJk4AKrxIr6bCpbHY4b63WIzbp0VViWz2sTUsGnhheG0cwDG9s7
	 HJnvLPEGptRR1IUh8dwxtIK+rKE1+rPH5di3/ct16NnxwTweusNxIptfvMtufUsdN5
	 ASc+sjcf0EtmgtsmMO2dAPgIA7jvvbN9Nemlof92lASkQlUW/+eeeqvXSvddH85QW+
	 /QN8TDervAO2ybd7LicBgRLzAX1piiLZDfC/1TSI3svXGXEzjcNG59N6FiMmv86Y5I
	 2esM0IPBGjcCA==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A8E077C834;
	Thu,  8 Jan 2026 15:09:19 +0800 (AWST)
Message-ID: <7e20473324c8da16fa86f72af950b8e8eac92a1b.camel@codeconstruct.com.au>
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
Date: Thu, 08 Jan 2026 17:39:19 +1030
In-Reply-To: <20260105193232.3167128-1-robh@kernel.org>
References: <20260105193232.3167128-1-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2026-01-05 at 13:32 -0600, Rob Herring (Arm) wrote:
> "device_type" is required for memory nodes, but is missing on Nuvoton
> npcm845-evb.
>=20
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> =C2=A0arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts | 1 +
> =C2=A01 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch/a=
rm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> index 2638ee1c3846..5edf5d13342d 100644
> --- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> @@ -17,6 +17,7 @@ chosen {
> =C2=A0	};
> =C2=A0
> =C2=A0	memory@0 {
> +		device_type =3D "memory";
> =C2=A0		reg =3D <0x0 0x0 0x0 0x40000000>;
> =C2=A0	};
> =C2=A0

Hmm, we have quite a few other offenders under arch/arm/boot/dts/aspeed
too. I expect this should be caught by CHECK_DTBS=3Dy?

Digging back through my build archives, warnings have cropped up, but
only for when I'm building the arm64 or arm multi_v{5,7} defconfigsm
and seemingly not the aspeed_g5 defconfig.

executions/2024Y/2024Y08m/2024Y08m13d10H09M/20240812145816.3301570-1-tmaimo=
n77@gmail.com.md:      /home/andrew/src/kernel.org/linux/openbmc/build.npcm=
/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dtb: /: memory: 'device_ty=
pe' is a required property
executions/2025Y/2025Y04m/2025Y04m03d21H04M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/nuvoton/nuvoton-n=
pcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['me=
mory'], 'reg': [[0, 536870912]]}
executions/2025Y/2025Y04m/2025Y04m04d00H57M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/nuvoton/nuvoton-n=
pcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['me=
mory'], 'reg': [[0, 536870912]]}
executions/2025Y/2025Y04m/2025Y04m04d01H10M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/nuvoton/nuvoton-n=
pcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['me=
mory'], 'reg': [[0, 536870912]]}
executions/2025Y/2025Y04m/2025Y04m08d10H18M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.multi_v7/arch/arm/boot/dts/nuvoton/nuvoton-n=
pcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['me=
mory'], 'reg': [[0, 536870912]]}
executions/2025Y/2025Y05m/2025Y05m07d11H43M/03-diff-ref-curr: /home/andrew/=
src/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton=
/nuvoton-npcm845-evb.dtb: /: memory@0: 'device_type' is a required property
executions/2025Y/2025Y05m/2025Y05m07d11H43M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton/nu=
voton-npcm845-evb.dtb: /: memory@0: 'device_type' is a required property
executions/2025Y/2025Y06m/2025Y06m13d11H17M/03-diff-ref-curr: /home/andrew/=
src/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton=
/nuvoton-npcm845-evb.dtb: / (nuvoton,npcm845-evb): memory@0: 'device_type' =
is a required property
executions/2025Y/2025Y06m/2025Y06m13d11H17M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton/nu=
voton-npcm845-evb.dtb: / (nuvoton,npcm845-evb): memory@0: 'device_type' is =
a required property
executions/2025Y/2025Y07m/2025Y07m21d10H53M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton/nu=
voton-npcm845-evb.dtb: / (nuvoton,npcm845-evb): memory@0: 'device_type' is =
a required property
executions/2025Y/2025Y07m/2025Y07m21d10H53M/make-dtbs-check: /home/andrew/s=
rc/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton/=
nuvoton-npcm845-evb.dtb: / (nuvoton,npcm845-evb): memory@0: 'device_type' i=
s a required property
executions/2025Y/2025Y07m/2025Y07m21d12H20M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton/nu=
voton-npcm845-evb.dtb: / (nuvoton,npcm845-evb): memory@0: 'device_type' is =
a required property
executions/2025Y/2025Y07m/2025Y07m21d12H20M/make-dtbs-check: /home/andrew/s=
rc/kernel.org/linux/origin/build.arm64.default/arch/arm64/boot/dts/nuvoton/=
nuvoton-npcm845-evb.dtb: / (nuvoton,npcm845-evb): memory@0: 'device_type' i=
s a required property
executions/2025Y/2025Y07m/2025Y07m21d13H58M/baseline-build:/home/andrew/src=
/kernel.org/linux/origin/build.arm.multi_v7/arch/arm/boot/dts/nuvoton/nuvot=
on-npcm750-evb.dtb: / (nuvoton,npcm750-evb): memory: False schema does not =
allow {'device_type': ['memory'], 'reg': [[0, 536870912]]}

I don't yet understand why that is, but I'll do some digging. I expect
there will be some fixes to send once I figure it out.

Andrew

