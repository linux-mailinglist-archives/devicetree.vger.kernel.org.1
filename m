Return-Path: <devicetree+bounces-252874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C2FD03B0E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:12:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 35A103006983
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D740B34FF44;
	Thu,  8 Jan 2026 15:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R66lN2kO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E19350D77
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767884552; cv=none; b=m+86ePvh1fKwD9ZoEyXQ+BtKo2bO3bJmS6dUEIqXigRSk22WuAYp9uxRyNfp+V1lncMWmLnTBWtmTbvwthcIPraiEXZds5s+5xNHKhwTX6SVd59ZCWzyJIg4OY99d3CC9MOF5foOsbZVDntA1F992OysuLvPs54qSFi9p2bpzTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767884552; c=relaxed/simple;
	bh=6Ycbt0WRFOzd22dkj9KdYWmrxAjeojzg19QbPUzXTdw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q54lric67d1IAqtXMwHJKWhw9kKVos1mWQ7S1cLcHbEOsOHCrDLa4He69/p2hCMWde4qOeBcfU3ikg0ikjZT/xT6BxscQ+agYoHgHEJAQed8PQPXW4y6S/ciSat8NFMujYkderpl+a7J9PSMmDBbVmZEIjb44ctsJAhC/MXV8M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R66lN2kO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EEF6C116C6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767884552;
	bh=6Ycbt0WRFOzd22dkj9KdYWmrxAjeojzg19QbPUzXTdw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=R66lN2kOn0m3kjtpf4js/FUoNmRiWyysVqdw6Bja37XbdWze50Mb1/CAR9uJTL0cl
	 +NNzTZ0Y9jDATAVROnt0LTqQPaolCCEpyUYrMl35GvZ+j5jAF/yWt0M8OaRixi6Z7W
	 7LmD+IhmJhmRTq5Q6bu19ssfcoHKHx70qJWRnfQiQPPT45CY/SdwC2kX4FG8BgKPEs
	 yGI6y/BCYhu6/K04396oCCSCt0MflD8YqMVm3B8hfuuMNL72ZVKiRFvmOEgjwZNHMV
	 OzHu+5To9H+aWn2Zz6HZ3OJWMjlRnQ6V+wHOpWvpS9nt8R0JMBkM7AiiTfIgtuT1b2
	 7elgbwAnStWcw==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b734fcbf1e3so639861166b.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:02:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXrejLd7dI4XcLCJqC1Q6tk6RdzzxFwmN6GoJtYeaeFoU6oz/+eRSylw+7sf8KCp89yQuJ37GudBDV4@vger.kernel.org
X-Gm-Message-State: AOJu0YxNVUig7NSzLifkxZfCbGpfNWwjkElZOnPsF5vD7+pR7GFrmXUj
	1/fw3a8H8WTpbvk0y9uX76PmLsXlEtm3j+mHiQvIpMNhnewf8DHIkKy/21fSKmb8tzpiVqEqyNY
	hOvY3C931p1aFYlEcBjPxV3QhPp4wgQ==
X-Google-Smtp-Source: AGHT+IE6a44nzxp8DKF3vBuQKICR2Q2Gpwy14zv/pqJi6o0PWzyZzpo8zWkR8xYUq2MVn/kk9ttnYyYiRvu/oXF2zto=
X-Received: by 2002:a17:907:2d9f:b0:b4c:137d:89bb with SMTP id
 a640c23a62f3a-b8444d4eb3fmr605079566b.29.1767884545890; Thu, 08 Jan 2026
 07:02:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260105193232.3167128-1-robh@kernel.org> <7e20473324c8da16fa86f72af950b8e8eac92a1b.camel@codeconstruct.com.au>
In-Reply-To: <7e20473324c8da16fa86f72af950b8e8eac92a1b.camel@codeconstruct.com.au>
From: Rob Herring <robh@kernel.org>
Date: Thu, 8 Jan 2026 09:02:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJsQR5JLMLQ=FnYWVsxmV+KQrpn20Juo=bZTBvwK9=AYw@mail.gmail.com>
X-Gm-Features: AQt7F2oknbve6chvB-3ZyMwku6hZ0gM-vqN_na5ZgE6XABn1xxxvphnh0zHxrPg
Message-ID: <CAL_JsqJsQR5JLMLQ=FnYWVsxmV+KQrpn20Juo=bZTBvwK9=AYw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add missing "device_type" property
 on memory node
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: openbmc@lists.ozlabs.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Avi Fishman <avifishman70@gmail.com>, 
	Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, 
	Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, 
	Benjamin Fair <benjaminfair@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 1:09=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Mon, 2026-01-05 at 13:32 -0600, Rob Herring (Arm) wrote:
> > "device_type" is required for memory nodes, but is missing on Nuvoton
> > npcm845-evb.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> >  arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch=
/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> > index 2638ee1c3846..5edf5d13342d 100644
> > --- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> > +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> > @@ -17,6 +17,7 @@ chosen {
> >       };
> >
> >       memory@0 {
> > +             device_type =3D "memory";
> >               reg =3D <0x0 0x0 0x0 0x40000000>;
> >       };
> >
>
> Hmm, we have quite a few other offenders under arch/arm/boot/dts/aspeed
> too. I expect this should be caught by CHECK_DTBS=3Dy?
>
> Digging back through my build archives, warnings have cropped up, but
> only for when I'm building the arm64 or arm multi_v{5,7} defconfigsm
> and seemingly not the aspeed_g5 defconfig.
>
> executions/2024Y/2024Y08m/2024Y08m13d10H09M/20240812145816.3301570-1-tmai=
mon77@gmail.com.md:      /home/andrew/src/kernel.org/linux/openbmc/build.np=
cm/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dtb: /: memory: 'device_=
type' is a required property
> executions/2025Y/2025Y04m/2025Y04m03d21H04M/baseline-build:/home/andrew/s=
rc/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/nuvoton/nuvoton=
-npcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['=
memory'], 'reg': [[0, 536870912]]}
> executions/2025Y/2025Y04m/2025Y04m04d00H57M/baseline-build:/home/andrew/s=
rc/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/nuvoton/nuvoton=
-npcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['=
memory'], 'reg': [[0, 536870912]]}
> executions/2025Y/2025Y04m/2025Y04m04d01H10M/baseline-build:/home/andrew/s=
rc/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/nuvoton/nuvoton=
-npcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['=
memory'], 'reg': [[0, 536870912]]}
> executions/2025Y/2025Y04m/2025Y04m08d10H18M/baseline-build:/home/andrew/s=
rc/kernel.org/linux/origin/build.multi_v7/arch/arm/boot/dts/nuvoton/nuvoton=
-npcm750-evb.dtb: /: memory: False schema does not allow {'device_type': ['=
memory'], 'reg': [[0, 536870912]]}

> executions/2025Y/2025Y07m/2025Y07m21d13H58M/baseline-build:/home/andrew/s=
rc/kernel.org/linux/origin/build.arm.multi_v7/arch/arm/boot/dts/nuvoton/nuv=
oton-npcm750-evb.dtb: / (nuvoton,npcm750-evb): memory: False schema does no=
t allow {'device_type': ['memory'], 'reg': [[0, 536870912]]}

There's a number of problems on arm32 /memory nodes. The main one is
the lack of unit-address, but that can't necessarily be fixed because
bootloaders may depend on finding a /memory node. That unfortunately
includes our own ATAGS to FDT zImage code. If you know these platforms
don't have those issues, then yes, please update them.

Rob

