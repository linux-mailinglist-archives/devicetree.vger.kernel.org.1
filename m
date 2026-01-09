Return-Path: <devicetree+bounces-253209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA38D08601
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 352BF3009832
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8CB3358B6;
	Fri,  9 Jan 2026 09:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Lfp4C7jR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9315333554B
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952730; cv=none; b=DXW9p9E3999qd4z1SCpdGJsc6fzdk1cwc7jaAknPUzOI6bJxOT8Z59kgIvdRyamaAu41XVhMhad0bbG7nApYcrcZU7d6j9QPp06XkGafmsaIvTAwL7NFNK0LVQ2z25kHSMSD3UBh7zcBZuKiL+nhdnJrP/I2uJEM8vWXfvOUke8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952730; c=relaxed/simple;
	bh=HfqN5rsCzLuNeeHAJM65+FWteRwaiCNG9V1ApHVnkXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gLUWFIMz1j3/nv8w+a5K8bi1qG//CL3CwF8eR5wuyzlRXk64g+lMwK4ZC0PjnQtxOt2xHXg9lOA/P047RnDxjJi4YKZB5YXbCZ0rAZPy6hWI2psN8crnF/DmQMdqDIj29EKo+uoaGn6XybbtWZOYfSeZpCI2dn6LqvTaFXOmovg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Lfp4C7jR; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64669a2ecb5so3478254d50.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767952727; x=1768557527; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JRyjYSTtXcl5FXFODcJzwoMzy+oOw8NWF5mztWKmicQ=;
        b=Lfp4C7jRqgq6E/biD7yqtBZyExrT/LR3/QALDuG77fJFAzRmM6qMVYcRhtWMc5yh0x
         1T0n7ePnYGXy7hNJx4/w3AP1oxF2UctxG1iCEmcAxqI1y3i2zWzmEpaaruLvuD8RMVNs
         Qa/x0pZ0cBBTMiPB4YNfpuPMp6MZ6yVWzgbEwbFJ06jxoSopWQWIV72vYhRiIwpoSjWx
         M3A+Ty4vBkUgNbXiBhD4PIVdHpRKsSI/+DmFw2FfpQwIjs9RKngEvnq+CoomzFflO/ZR
         eeHrhtAndBun0uewVQjiHS4wpFAJv4PZpTmZoua7kT1ND/pvW2cN3feLpFH8zfX/VpgQ
         Q90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767952727; x=1768557527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JRyjYSTtXcl5FXFODcJzwoMzy+oOw8NWF5mztWKmicQ=;
        b=XXpbyDVadyFmFOGPQy6JsQGq0HxMDPYhmpT94enMi9/6GkJO2Ite6CERCmFDmbW2iF
         kwmfdd3nxsAKwvrnpkF6PDbg3T2D3dv4HlDhvMGJ6HcfF4YcLUjwXnVMVroXCzsp0iEP
         kiYVz+fShqdnyLkVWC+/ef6MAUB5xt+xErguqWK8QGiuhMeQXf52vwASyZXiH7dhIuYZ
         0zEvm3BBH+ipTrNuUP+YMh8h+yWdJoscKwWwY5fCUVAwDfWxdnKJOMvCXE0qdI8G09Hx
         jrXU0K7ijBFRU+L3Rwqth8WJ6u4XjEbOHXVKr/HxbeJUeixEW6niJkChEl8h4k0cyrHu
         qpwA==
X-Forwarded-Encrypted: i=1; AJvYcCUwRhnMwdbpWmGq+gHkW2IBWRGvh097O21J/MBOHizvJiTPCK4q2tgAYIz/AdlaDb8lHug+vnknYNuQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyuDU8d1ncNzXQoqVj13fUQ44GfDydAmtodK5gDfVrTKmM84TKv
	6U/EVVJ9jhe+NljVWmDc/2PxPy1QLXp8cqVvF3dAQXg89ZwhokYYq5QVwVhqphN8FmXBpWkg5XL
	xVKhw3WNFFjwkiomqhCoswDYzA3Qa5JJe84OVRUo7HQ==
X-Gm-Gg: AY/fxX4PA4dgESebZMi7eKcxQ3ANOxFAu3iXtxgemCptGYnJ4uKEB+BQlkYymkgI8tW
	necexyvlTQNH1eFZ9iwSTicf3QYpwwdq7T9NGFNebPO1J6xO/ookE+6b5V8zWZ/cVH5a4yrS5+B
	OJd06eP0Y4JPnYoXNB59iZ4rAvpjyEusp1IZIJ2zP/FmLbZ5iR94qLPe3m/P3wEnLl2Rqb9EmmB
	KP5TsV52X8vmjs6rDsmMOuv8Ngb9V94DnG1nVw2zmNPB5Uxl8Ptkwl8xuiE3i+xEU6USbU1IGon
	tlttzBiWURtXPpDGXq/euc69qacyoMZNKmbQUf2OxJs=
X-Google-Smtp-Source: AGHT+IFW7FLnowocr8JpPLfWWYtEHi7OSPLnkmturePvB00jhuMA0kdr6u8Qb5NpLIfs41qOnuD4QPSn0aG0bk5mMPQ=
X-Received: by 2002:a05:690e:1188:b0:641:f5bc:692b with SMTP id
 956f58d0204a3-6470d2f46b7mr10319192d50.36.1767952727498; Fri, 09 Jan 2026
 01:58:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
 <20260108-k3-basic-dt-v3-10-ed99eb4c3ad3@riscstar.com> <77f9a001-7f0a-4c29-abcb-501e875da117@sifive.com>
In-Reply-To: <77f9a001-7f0a-4c29-abcb-501e875da117@sifive.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 9 Jan 2026 17:58:36 +0800
X-Gm-Features: AQt7F2phDg1o6vGA0EN2FWkwF5OD2jGO_aKHZYYtROeDAwedA-GsX86VaBlzTIs
Message-ID: <CAH1PCMZ5rKbG8xEbB9jt6TqyB28T5aLgRtf3iJ8Gt6Fk+3XFhQ@mail.gmail.com>
Subject: Re: [PATCH v3 10/11] riscv: dts: spacemit: add initial device tree of
 SpacemiT K3 SoC
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	spacemit@lists.linux.dev, linux-serial@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Anup Patel <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Samuel

On Fri, Jan 9, 2026 at 2:19=E2=80=AFAM Samuel Holland <samuel.holland@sifiv=
e.com> wrote:
>
> On 2026-01-08 6:26 AM, Guodong Xu wrote:
> > SpacemiT K3 is equipped with 8 X100 cores, which are RVA23 compliant.
> > Add nodes of uarts, timer and interrupt-controllers.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v3: Remove "supm" from the riscv,isa-extensions list.
> > v2: Remove aliases from k3.dtsi, they should be in board DTS.
> >     Updated riscv,isa-extensions with new extensions from the extension=
s.yaml
> > ---
> >  arch/riscv/boot/dts/spacemit/k3.dtsi | 548 +++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 548 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts=
/spacemit/k3.dtsi
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..be9335fba32cb9e81915b2b=
91cf08c55a5e96809
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
> > [...]
> > +
> > +             simsic: interrupt-controller@e0400000 {
> > +                     compatible =3D "spacemit,k3-imsics","riscv,imsics=
";
>
> style: missing space after comma

Thanks, Samuel. I will fix that.

>
> > +                     reg =3D <0x0 0xe0400000 0x0 0x00200000>;
> > +                     interrupt-controller;
> > +                     #interrupt-cells =3D <0>;
> > +                     msi-controller;
> > +                     #msi-cells =3D <0>;
> > +                     interrupts-extended =3D <&cpu0_intc 9>, <&cpu1_in=
tc 9>,
> > +                                           <&cpu2_intc 9>, <&cpu3_intc=
 9>,
> > +                                           <&cpu4_intc 9>, <&cpu5_intc=
 9>,
> > +                                           <&cpu6_intc 9>, <&cpu7_intc=
 9>;
> > +                     riscv,num-ids =3D <511>;
> > +                     riscv,num-guest-ids =3D <511>;
> > +                     riscv,hart-index-bits =3D <4>;
> > +                     riscv,guest-index-bits =3D <6>;
> > +             };
> > +
> > +             saplic: interrupt-controller@e0804000 {
> > +                     compatible =3D "spacemit,k3-aplic", "riscv,aplic"=
;
> > +                     reg =3D <0x0 0xe0804000 0x0 0x4000>;
> > +                     msi-parent =3D <&simsic>;
> > +                     #interrupt-cells =3D <2>;
> > +                     interrupt-controller;
> > +                     riscv,num-sources =3D <512>;
> > +             };
>
> Does the chip also have M-mode IMSIC and APLIC instances? Those need to b=
e
> represented in the devicetree as well, for M-mode firmware to access them=
, just
> like the CLINT below.

Yes, the K3 chip does have M-mode IMSIC and APLIC instances. Currently, the
boot firmware (U-Boot) transfers information about these nodes to OpenSBI.
However, you are correct that they should be properly described in the DT.

In the next version, I will add the M-mode APLIC (maplic) and IMSIC (mimsic=
)
nodes to k3.dtsi, for topology representation and potential firmware usage.
I will set their status to "disabled" because exposing them as "okay" to Li=
nux
causes access faults during driver probing.

Please let me know if this approach (adding them but keeping them disabled)
looks okay to you.

Best regards,
Guodong Xu

>
> Regards,
> Samuel
>
> > +
> > +             clint: timer@e081c000 {
> > +                     compatible =3D "spacemit,k3-clint", "sifive,clint=
0";
> > +                     reg =3D <0x0 0xe081c000 0x0 0x0004000>;
> > +                     interrupts-extended =3D <&cpu0_intc 3>, <&cpu0_in=
tc 7>,
> > +                                           <&cpu1_intc 3>, <&cpu1_intc=
 7>,
> > +                                           <&cpu2_intc 3>, <&cpu2_intc=
 7>,
> > +                                           <&cpu3_intc 3>, <&cpu3_intc=
 7>,
> > +                                           <&cpu4_intc 3>, <&cpu4_intc=
 7>,
> > +                                           <&cpu5_intc 3>, <&cpu5_intc=
 7>,
> > +                                           <&cpu6_intc 3>, <&cpu6_intc=
 7>,
> > +                                           <&cpu7_intc 3>, <&cpu7_intc=
 7>;
> > +             };
> > +     };
> > +};
> >
>

