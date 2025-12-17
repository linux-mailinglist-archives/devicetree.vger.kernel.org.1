Return-Path: <devicetree+bounces-247257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D52AFCC657E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CE6D301A1B0
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434CB336ECF;
	Wed, 17 Dec 2025 07:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="anjG4JjY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601BE335558
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765955644; cv=none; b=IGiLdcOGVhriyJSIZS/tisNq1znmxYB2q5vejPuT0OukpHcP0RnpU/xAL4pUigx3ddeJ6bgASXJTgJaySMzac9FVVNxs3bWmhTXMWLKI3HTow57Sqaz54Ajiv53vS+UJyn6CBBPzxMdBRYXLwnU3M96jPG30kDMSZ0Z/NroKBA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765955644; c=relaxed/simple;
	bh=/3Qz6JpF9If22QjnUQlmi1erbphQgNsGGIVDRF+xmkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JmqC8W584qf12Jemg8jidMyItXFnnf+jwh0hFUBxnHFeIuVECG/vXkWqdTFoMgWjo3bqSYggINDJUguS14VQQsklYxtH7di4lX/prkn09ylcH1Nfq7zivabuAgjJUJh1qlpFZi8aQkyuAzBu+fuAJ8BruyTQ6fkb/yPyRkVRPm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=anjG4JjY; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7881b67da53so47885777b3.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765955641; x=1766560441; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HDfl8qAKqI9K5fPdr90NV1qLIsNLvTVsSytePWp/iv8=;
        b=anjG4JjYN5gXw3dZg8RDL6GoTv0C6SRB8ZNbcByd3fnK2FkFHH+KVsz0hvDG6TSw7V
         2t8RBkBFJIQ/fTdlfKu83zeAzmvxhlzfm71GGuVcIJyJE9DJHHxVBpjSHjwayuZs4vcm
         PMr+SC3JOimStguvcbvT7ReFEdx87BPOSdTbprTKwxoeRJ7N6hW93q2RzbZJR7SUYUMI
         QnLyYHCi+QwlxuzHv+aypMcpH/PA/0D0/6T451Gx46QoPWkFgh5rwYJ7w7mVD1hPgGg6
         L08Dan7GqwJWIiGgtJzrLrHgJ35hj85V6thYoXVhuV4TXgl9O1705Bd215rBEAcXVJpi
         tMsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765955641; x=1766560441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HDfl8qAKqI9K5fPdr90NV1qLIsNLvTVsSytePWp/iv8=;
        b=F+0lPA9eRS1lVfrp8uH94LWaDXN276PJ3rjMtS9ijbLoeq7YSkl341WlyHhNiVZRIH
         cURw0F0dEnPktuEWr7S9Wuz/4rzDvCekN+0z7hhugPnjPGNOnf4DhbvkOwRBWjMmPb2e
         fUnf2trDxpUXJMuyp5apDza7I9azU4MlXxNhPTq7jOY9l4QXEZteo/zZVDcyz1s1Rchp
         /uNBy7aDWHSY2NFUX/RNl01r/cb6beuqqcfcl4LR2clUNJHKaAKQx8nsCDAFKsclSWqq
         WaI+fBi7EB0BmOhuaYHOHm6L2kMobbJEf0QA72OGdP+YboOCwI1EjRQaGEJvIU3ZEkC+
         0UdA==
X-Forwarded-Encrypted: i=1; AJvYcCWNEoCJB0BYO5cKaFi7BvsEvKAkRQ2TkDIEVZdV8ACwx66W+CnfJPKyhJ1i/1qkZJkof72Atyvfjfcf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8ee8LPPSBFJmSgfRcDs8F6cOXlZi8NTtnmmEJoI+Tvj5r/ZaO
	TMCoNLAgIpCDzfKIv6RTyxpQu+sWAbm72D/PNyJ6/4lE45ZOkPOFuKJ29ckjjDHlscjRYEBZE+s
	3GXdWKgCO47aFa8YIDySZR8V//CpeWH5yxP1zSyomLQ==
X-Gm-Gg: AY/fxX7ZA5Jiw1ac1Gv8X3a9ZcT42UeOexry6V2uzOQr9k1lAkch4jW+oJb19tnd+eH
	5cBl0i1SD/ngOnrNuczILgDsKK8WTv31Hg+3TkaIsxfV3KvF8LHZSpvLVbFakQVD9/4VJPeathK
	KG8HSnl+poj+TyHqTSt918yC6XPUXxTv8r0JI0fEycZrGv0ej7ASw2/nSD/Rjdqh+sR17CG45Gt
	JVuvstW0Cso5WkLhCtwAE4oSYwfdtVlQxSaq39aEYFNmyvfEcUVsU55O1oseNmd2q8dwNVDuNPX
	hReotqkzo1zbkZX27bFi7Wido0WxQS1M+3RuJxO3TxtOAvju9hbD7cQ=
X-Google-Smtp-Source: AGHT+IH0USc98adq68YuNkR6BO6s7ouNVB7SxQasWdlzVDiV6ZxglCL/bAho39AyjZN16MBGjdgmEImzF7UM0hhyf0g=
X-Received: by 2002:a05:690c:6a0e:b0:78a:7a68:e4fe with SMTP id
 00721157ae682-78e6831c4dbmr123317137b3.25.1765955641406; Tue, 16 Dec 2025
 23:14:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-8-a0d256c9dc92@riscstar.com> <3c38ce9c-4259-4149-bf2c-a54e74c00a34@canonical.com>
In-Reply-To: <3c38ce9c-4259-4149-bf2c-a54e74c00a34@canonical.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 17 Dec 2025 15:13:50 +0800
X-Gm-Features: AQt7F2qt3rSNkF23w_AVCZL60KRRfHKfFoZFSmyzaNBRd3Kb1iOnGUyhNAVCUBk
Message-ID: <CAH1PCMbzv_uggyZ3JLPyWXSwbe2dJAh7jVT64xpM6SLG77VZqQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board
 device tree
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 10:33=E2=80=AFPM Heinrich Schuchardt
<heinrich.schuchardt@canonical.com> wrote:
>
> On 12/16/25 14:32, Guodong Xu wrote:
> > K3 Pico-ITX is a 2.5-inch single-board computer equipted with a Spacemi=
T
> > K3 SoC.
> >
> > This minimal device tree enables booting into a serial console with UAR=
T
> > output.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >   arch/riscv/boot/dts/spacemit/Makefile        |  1 +
> >   arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 25 +++++++++++++++++++=
++++++
> >   2 files changed, 26 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dt=
s/spacemit/Makefile
> > index 95889e7269d1bae679b28cd053e1b0a23ae6de68..7e2b877025718113a0e3191=
7eadf7562f488d825 100644
> > --- a/arch/riscv/boot/dts/spacemit/Makefile
> > +++ b/arch/riscv/boot/dts/spacemit/Makefile
> > @@ -4,3 +4,4 @@ dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-milkv-jupiter.dtb
> >   dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-musepi-pro.dtb
> >   dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-orangepi-r2s.dtb
> >   dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-orangepi-rv2.dtb
> > +dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k3-pico-itx.dtb
> > diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/=
boot/dts/spacemit/k3-pico-itx.dts
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..0f9d04dd352f5331e825992=
85113b86af5b09ebe
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (c) 2025 SpacemiT (Hangzhou) Technology Co. Ltd
> > + * Copyright (c) 2025 Guodong Xu <guodong@riscstar.com>
> > + */
> > +
> > +#include "k3.dtsi"
> > +
> > +/ {
> > +     model =3D "SpacemiT K3 Pico-ITX";
> > +     compatible =3D "spacemit,k3-pico-itx", "spacemit,k3";
> > +
> > +     chosen {
> > +             stdout-path =3D "serial0";
> > +     };
> > +
> > +     memory@100200000 {
> > +             device_type =3D "memory";
> > +             reg =3D <0x1 0x00200000 0x3 0xffe00000>;
>
> Shouldn't the reserved memory be described as no-map /reserved-memory
> nodes instead?

Hi Heinrich,

Yes, you are right. Using a reserved-memory node with the no-map property i=
s
the correct approach. I will update this in the next version to explicitly
reserve the first 2MB.

>
> I would assume that 0x1,0000,0000 is the location of OpenSBI.
> What is at 0x3,ffe0,0000?

Yes, confirmed, 0x100000000 is the start of OpenSBI. The size 0x3ffe00000 i=
n
my original patch was the result of manually subtracting the 2MB OpenSBI
offset from the total 16GB memory.

I will correct this in v2 to show the actual memory and put the first 2MB i=
n
reserved-memory {} for opensbi.

Thanks for the review.

BR,
Guodong Xu


>
> Best regards
>
> Heinrich
>
> > +     };
> > +};
> > +
> > +&uart0 {
> > +     status =3D "okay";
> > +};
> >
>

