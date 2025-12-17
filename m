Return-Path: <devicetree+bounces-247256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A298DCC6569
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28483300F300
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9068C335BAA;
	Wed, 17 Dec 2025 07:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0a/eN3D3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4B0310636
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765955530; cv=none; b=qUNpb1mZuQEZCcdcv5PI+5fGLDBsFe5DqBVOcrqLSUxagI0WcwN4yYb3sVhYtbvvO43995yf1oyUtLjKJ9/QU0t1BC+hp7ZwihdkAEQHgCJFWXFJtoiCkLWUzfKaL7YpiBQGiPYUwVxSyv/F4E2bso6cjEC5uno/8PsTyhKzPjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765955530; c=relaxed/simple;
	bh=PzRMkJtls7CLFFw4NHuBIdkL6x6XHd3Wm9X51oLX/jY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aB5SYdG1j8NDTg6csyGdtkQxmjvijFRdjxAZg1PZrD8X6DvkufHkGRycZuxLxcDnwnhu0fvRISxobgWCMdwM1ls7v192wvUUduH9CflIUF1ffxK7Ki4XDm8gpUFI9+0pDDNOtDSsf5fh2OX9GxszQrWXNjqxSkgPzJq3c+w760I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0a/eN3D3; arc=none smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-6455a60c11fso3469516d50.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765955526; x=1766560326; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PmFJSxesbxFHQ7/q1IylIXrQEr0i3Tqtt2nX92DzZ7M=;
        b=0a/eN3D3WNM7pDxow0l0FCpGrS4+oE2ySrv38IEp56fZlvFpYYSQI4uHL2DNlJ/00B
         pjkWUlrBg/MhDd/bY+/ib/LOvTEjvrIY7Pb97ujK0dba1mQNYkui0oFgq4BLgT/cqWXD
         s6mJQZIcG0tcbdktjCxIvqICMO6Vp3rAph5YhkB5Z0tJ/rFeT0D8tN8qo6pYle2OO5na
         mZ02XEIu70W6aQcVKV23eibRUHkLzic0l+YlurRD0jCt5Hum9ixmeLjF3NrsJewk5EPX
         eZ704TNkbNMJzYr8L9e3EFXflqW5rJjQk17oRiXKywVfzDRoZRam9YG5pCcvmwxjvO+A
         F6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765955526; x=1766560326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PmFJSxesbxFHQ7/q1IylIXrQEr0i3Tqtt2nX92DzZ7M=;
        b=cfNrHKeW7bEOnP6BUhrOnYl4w6tA/8l4Zarx2KJmzFjCf6zFIuWyUQg0m3gYzjEScZ
         YvbPsCdkyTLIsxntufhaXJcCnVMxJwxJuG2QHIk/+FnUO36119ieAWwGaACrx+xzGqPM
         YrAFbkc8NMyWrn+6nQhC2uvb4xRG5sTzVrjYicd96msU9xN5n4+sqCafgJooswMT2dio
         rguGGLhecT5wazgOqMiGia3w+/cmcxcFCJozOa3aXqRFt3v+48VRAMViiV59oSlRjuuA
         teZHoLbrS0ZDRvc0bsNAxqrSvAbOIWTeTdmSspl/8uHp0dPQyPMOOzJ4Ibet7pfH0deA
         nztw==
X-Forwarded-Encrypted: i=1; AJvYcCVtLpLwux3r50dhHbWm/UdZ2DDRc6WPcla2I+e4kHl9ZEVdGJK61k7T9Ya67h3ktTIfbEnq8oBzvzWE@vger.kernel.org
X-Gm-Message-State: AOJu0YwfTmQR9C56ywawM3vMh1LDDesy5huZ8rAgFp21ttKAYSNKyde9
	nnqrLfjA2xRlT5jP6i5XBkqGE+F+cqu1aQ+jplOrFp+pjMboNX9i6+Acqut+DZkMp+qQOTJxNdG
	fWS6rEyIq8D8byvxM6SJXAmJE34xcWTsoJa5z5kzZqw==
X-Gm-Gg: AY/fxX7hEsdqdCsicSFb5KzEw030auwIZSPRBxDXVB95VhN91Rgk1dj7rckS2C503oJ
	4Vr/O3aZ3xU4g+aHqygnT2UEWtNDgl01VsS/NVPccivGkqKg0In4sx33LuEIR4VPQC/2IAGIhqh
	zUTxMib3NqAJbF7Ea//SFLBrwUK3NvcyroAfNE4ztHf18HVEpLaGduOwiwiO0QpKwzfB9YNeYtB
	vd42ip1l1ozgd90teZh/Nq734usf1W7npcxGlxLWzpTPFG1tpXWYN0oFWaosm1mZXNwx2JitfcE
	aQlE4SFOkkM6lOVal1Z+VbCzIklVBbH175iLTHPpB5yA
X-Google-Smtp-Source: AGHT+IE8huFPmjeqVhigRS72exyW6RWye/SjaHiK5d2+xtE4vBR2EQkcVlmt5N9wvdRb4rljR0aa/NY7v8SaaR90Wtc=
X-Received: by 2002:a05:690e:1910:b0:644:3850:9062 with SMTP id
 956f58d0204a3-64555668019mr13876808d50.72.1765955526563; Tue, 16 Dec 2025
 23:12:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-7-a0d256c9dc92@riscstar.com> <60948ca2-ed3d-485b-9b11-15df7ef8791d@canonical.com>
In-Reply-To: <60948ca2-ed3d-485b-9b11-15df7ef8791d@canonical.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 17 Dec 2025 15:11:55 +0800
X-Gm-Features: AQt7F2qskcnlJTlmY9mkZsjM35ekor5-LiDipt_O0jT58J0Q0vF7KdDCyFPY_3o
Message-ID: <CAH1PCMb=+TvB1w+G6a2ANDp05HUwC4r6CFBDHXFwSmoP3Mm8xw@mail.gmail.com>
Subject: Re: [PATCH 7/8] riscv: dts: spacemit: add initial device tree of
 SpacemiT K3 SoC
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>, 
	Conor Dooley <conor@kernel.org>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
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

On Tue, Dec 16, 2025 at 10:24=E2=80=AFPM Heinrich Schuchardt
<heinrich.schuchardt@canonical.com> wrote:
>
> On 12/16/25 14:32, Guodong Xu wrote:
> > SpacemiT K3 is equipped with 8 X100 cores, which are RVA23 compliant.
> > Add nodes of uarts, timer and interrupt-controllers.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >   arch/riscv/boot/dts/spacemit/k3.dtsi | 529 ++++++++++++++++++++++++++=
+++++++++
> >   1 file changed, 529 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts=
/spacemit/k3.dtsi
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..cb27b790716fdd6dc2bc89c=
28dd2588a596a5af9
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
> > @@ -0,0 +1,529 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (c) 2025 SpacemiT (Hangzhou) Technology Co. Ltd
> > + * Copyright (c) 2025 Guodong Xu <guodong@riscstar.com>
> > + */
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/dts-v1/;
> > +
> > +/ {
> > +     #address-cells =3D <2>;
> > +     #size-cells =3D <2>;
> > +     model =3D "SpacemiT K3";
> > +     compatible =3D "spacemit,k3";
> > +
> > +     aliases {
> > +             serial0 =3D &uart0;
> > +             serial2 =3D &uart2;
> > +             serial3 =3D &uart3;
> > +             serial4 =3D &uart4;
> > +             serial5 =3D &uart5;
> > +             serial6 =3D &uart6;
> > +             serial7 =3D &uart7;
> > +             serial8 =3D &uart8;
> > +             serial9 =3D &uart9;
> > +             serial10 =3D &uart10;
> > +     };
> > +
> > +     cpus: cpus {
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +             timebase-frequency =3D <24000000>;
> > +
> > +             cpu_0: cpu@0 {
> > +                     compatible =3D "spacemit,x100", "riscv";
> > +                     device_type =3D "cpu";
> > +                     reg =3D <0>;
> > +                     riscv,isa-base =3D "rv64i";
> > +                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c", "v", "h",
> > +                                            "smaia", "smstateen", "ssa=
ia", "sscofpmf",
> > +                                            "ssnpm", "sstc", "svade", =
"svinval", "svnapot",
> > +                                            "svpbmt", "zawrs", "zba", =
"zbb", "zbc", "zbs",
> > +                                            "zca", "zcb", "zcd", "zcmo=
p", "zfa", "zfbfmin",
> > +                                            "zfh", "zfhmin", "zicbom",=
 "zicbop", "zicboz",
> > +                                            "zicntr", "zicond", "zicsr=
", "zifencei",
> > +                                            "zihintntl", "zihintpause"=
, "zihpm", "zimop",
> > +                                            "zkt", "zvbb", "zvbc", "zv=
fbfmin", "zvfbfwma",
> > +                                            "zvfh", "zvfhmin", "zvkb",=
 "zvkg", "zvkn",
> > +                                            "zvknc", "zvkned", "zvkng"=
, "zvknha",
> > +                                            "zvknhb", "zvks", "zvksc",=
 "zvksed",
> > +                                            "zvksg", "zvksh", "zvkt";
>
> This not the description of an RVA23S64 cpu. It is not even RVA23U64,
> e.g. `supm` is missing.
>
> Is the description incomplete or is the CPU not compliant?

Hi Heinrich,

The SpacemiT K3 supports the mandatory extensions defined in the RVA23
Profile (ratified Oct 2024). The list appears incomplete here only because
I am restricting the entries to those currently supported by the Linux
kernel Device Tree bindings.

Specifically, I must adhere to
Documentation/devicetree/bindings/riscv/extensions.yaml (and cpus.yaml for
properties like 'riscv,sv39' which stands for the extension Sv39). If I
add extension strings that are not yet defined in these schemas, such as
supm, running 'make dtbs_check W=3D3' fails with: 'supm' is not one of
['i', 'm', 'a', ...], followed by "Unevaluated properties are not allowed."

Another angle, I found there are other reasons why Linux kernel chose to
'omit' some specific extension strings. For example, here are what I notice=
d
so far, including the 'supm' you mentioned:

supm: There is no binding string for this yet. However, in the kernel confi=
g
(refer to arch/riscv/Kconfig), RISCV_ISA_SUPM depends on the detection of t=
he
underlying 'smnpm' or 'ssnpm' hardware extensions. Since 'ssnpm' is
present in my list, it can be considered as supported and the kernel
will enable pointer masking support automatically.

Other examples:
ssstateen: The kernel schema currently uses the smstateen string to
cover CSR access control in all modes (H/S/VS/U/VU). I have included
'smstateen' to satisfy this, as there is no separate 'ssstateen' binding
in the extensions.yaml.

ziccif: This extension is also absent from the bindings, despite being
implied by ftrace dynamic code work. Reference:
https://lore.kernel.org/all/20250407180838.42877-12-andybnac@gmail.com/
I intend to submit a separate patch series to formally add ziccif to
extensions.yaml.

Anyway, I have limited the x100 riscv,isa-extensions list to strictly
validate against the current kernel schema while exposing all features
the kernel is currently capable of parsing.

I hope this explanation clarifies the situation. Please let me know if you
agree with this approach.

Best Regards,
Guodong Xu

>
> Best regards
>
> Heinrich
>

