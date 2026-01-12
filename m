Return-Path: <devicetree+bounces-254146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 815A8D14ADA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 057673005335
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 758543815C4;
	Mon, 12 Jan 2026 18:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsHC/MNw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FD630EF65
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768241369; cv=none; b=CA0XdFuV8YCOcvv5AjUi1Z958WYtks28r5uucu7N7kDLdbbqrwhdM50OgkpxWVA9Yq5Bl87yBaijj486FrGhhMtnwBncXKQuNQLToZOy6yvitfTzAwU3ybPA9FsM7t4YQNWjSLo2gv4SAgl8mOYOUYt6EPPtNVPUwiu/p+qeya8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768241369; c=relaxed/simple;
	bh=mhixNK8lHUjegBa385fwvTFBsDtFeR8hvKlCRxJ9cMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mLnAKqoorMvCqxUT4x/1T43g2XE6BaI5DoqYz36eePvQBG/p6BN2CzZDfy918kKgWrQmbbYLv5nmR72Uq8RgNI6TlJDS9PkZ629pE0DFbWzRgM66eKbQWzBkygiEicARIoG65Kn9/ZVK0xNcfyWy3f4Nlqdzye9hWB6dVrKTllk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsHC/MNw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BBE1C116D0
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768241368;
	bh=mhixNK8lHUjegBa385fwvTFBsDtFeR8hvKlCRxJ9cMQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=IsHC/MNw5Kbwk7exiZ8wgOqCZo+QuDBew9GugLZR5L/4fw9UPRm8p2WIVs1QjYt7N
	 DZU2+JAvqXdifGwlpEUAIok8U89yAL69c+NWtBXvA6JpgEWerYG2qdRp9McRoFvrNY
	 hxNjG2eF7FTw47/LiEsPLgNSP7l1cQFTNYGfwGOiB170VMJZf14BnfJv5DcKr+P5w6
	 QCePoTvsFBoVhZ3jeGTn6KJlkaVTWouuNatxs5WVrCEBmArGLy5Y5dzyhlb7Gzyj7s
	 cHCdgTE6GcAbJdfvvZBIciWmIoC0MU1ypwNR6dWUmWbKRM5ESj6TROAv1G28eHoz7b
	 MEEdoNdb+6A8Q==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64d30dc4ed7so13111374a12.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:09:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUoM4mbeB+TTvOpl0pddgwAM7Cik/7XZfp+DP8MeeM3J1+CGZETXo+tEboZEgFai2J5GjBwby3lPM7O@vger.kernel.org
X-Gm-Message-State: AOJu0Yz94zGhX1MGsdLH15JoKRObypLoHkCD16Igk+/JKZ37WR60BTL6
	yWPxZp/r/4ek2VF3g0VQIy4VtLLX0tOvvVRaPycYolvIfAXGZJvlT2rcPSQV+yp2fg5pnZsKWF5
	0yyvTVRjagV28CujdoPbbTjeiGECkuA==
X-Google-Smtp-Source: AGHT+IG5xcKR7v4cX8GZZCxRqqj4tQDG/nJdB3WUDW/MrkeY66RSUIccQFsDV7uCNUFFhk++0NMnKzp1y2ffQS7au7Q=
X-Received: by 2002:a17:906:ef0d:b0:b80:3346:496 with SMTP id
 a640c23a62f3a-b8444f61b72mr1837030866b.42.1768241366844; Mon, 12 Jan 2026
 10:09:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
 <CGME20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3@eucas1p2.samsung.com>
 <20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org> <e98ad883-7ba2-417b-8cd3-19f5f863b03d@samsung.com>
In-Reply-To: <e98ad883-7ba2-417b-8cd3-19f5f863b03d@samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 12 Jan 2026 12:09:15 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKNKCOWj_eSTtDwsex3pUhgc+7QwAwLZn4MWVzOkOOHcg@mail.gmail.com>
X-Gm-Features: AZwV_QjocnkRXAoPVNdU9kvYmv1w2H2D-xJ5BkaNLSfLGbUqcsTJiUivNFh6LKc
Message-ID: <CAL_JsqKNKCOWj_eSTtDwsex3pUhgc+7QwAwLZn4MWVzOkOOHcg@mail.gmail.com>
Subject: Re: [PATCH 02/13] ARM: dts: broadcom: bcm2835-rpi: Move non
 simple-bus nodes to root level
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 6:01=E2=80=AFAM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> On 07.01.2026 03:09, Rob Herring (Arm) wrote:
> > The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not=
 be
> > under a 'simple-bus'. Additionally, the "raspberrypi,bcm2835-power" nod=
e
> > is part of the firmware, so move it under the /firmware node.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>
> This breaks operation of all drivers under the firmware node. I'm not
> exactly sure why, but they are not properly instantiated. It must be
> something specific to "firmware" name, but I didn't dig enough to find
> exactly where and why.
>
> After changing the "/firmware" node name "xfirmware" everything works aga=
in:
>
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> index 9ab70b519a63..464f032ccb71 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> @@ -1,7 +1,7 @@
>   #include <dt-bindings/power/raspberrypi-power.h>
>
>   / {
> -       firmware: firmware {
> +       firmware: xfirmware {
>                  compatible =3D "raspberrypi,bcm2835-firmware", "simple-m=
fd";
>                  mboxes =3D <&mailbox>;
>
>
> Same issue occurs with bcm2712 change (patch 3/13).

The issue is how /firmware is handled in drivers/of/platform.c and it
doesn't create a device for the /firmware node. I think the fix here
is /firmware needs to be just a container node and move
"raspberrypi,bcm2835-firmware" down a level. That also allows for
different types of firmware such as a TEE or SCMI should those or
something similar ever be needed.

I'll see if I can get kernelci to test that change. I don't think my
branch boots all boards though...

Rob

