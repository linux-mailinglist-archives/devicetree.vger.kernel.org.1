Return-Path: <devicetree+bounces-138320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 823ACA0FEDA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 03:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 419B03A6A68
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 02:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2770E230276;
	Tue, 14 Jan 2025 02:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgSHOFB2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD7B8488;
	Tue, 14 Jan 2025 02:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736822506; cv=none; b=IIvA4AHQK6TphCALqJVmBk1YUWZ0Kx24peoORtn+oJ25J8ZByIL2rN/0mxgcRdIzhme7krvmVU+l98htAvgIlJwo2NiFnY6NFU+o+CCT8StisdMUe5vUnfndUghjqqIFiAtYPzY2jQ5Sq/FvK9msRmEAT75K7Xcit1SejfJ8YLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736822506; c=relaxed/simple;
	bh=RFaFgbO3WympoeYCTU1TUued9NzMv/ua64e3Tsa/l+I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=raa93M/1kKtrFPp6+fL+CaGE2MJVwYDghNIpmuWmO4B/t1/AmXhSWqgXXmXxSdPpF5Zejm6OCi1REgTZw8CUlskhP02gqfEijKaVrBldNjq7L1S5ftGxGpi6jW47UiVdHPgb/bgLHwwMvrKfOAdEnAlVwTKKxDElIxGUJZQrLaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgSHOFB2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CD4CC4CED6;
	Tue, 14 Jan 2025 02:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736822505;
	bh=RFaFgbO3WympoeYCTU1TUued9NzMv/ua64e3Tsa/l+I=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kgSHOFB2V+koPUWDz+1Z2QWD2LKbOnZlD94THG7bu76RaJvxNTscoAsReYIo51wjJ
	 SjmSxd6IZIMFpaefnmfyVFZkB4uEpwpC8FmLFhzH/hboaL1zpfGIShY9BTGEwGKUD1
	 qDrx7hKvjQIKgJVTfqrpsyd4ww3z236IkVMqRPmqWyMgnQW7vctfVY/su3q5ZxRGXr
	 t7f1CWWTA5aqBqDJcguO47V/w71L6lFxYPLYzLVGiTfjUkTLLnUqr3QQNN+sbJv/Xv
	 oPFNwZCWia1zrYHKFMfVsyvBTP9OWWFH0OZvtych3uSmw9q/ShjlvVc5Bss/Tm5yVM
	 XBC6UIv6ZT08A==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53e3778bffdso5180544e87.0;
        Mon, 13 Jan 2025 18:41:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU0BKNBufuubRztxSo+EWLDu7IscA4oow+w+ZgN6futPchpOTrcaJTTPwAelP9emsNgZaUdaenC1sV/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx+yWV60Vg3aAhkQxu76EusnOtAMID3UYJAEaQwQRH14w8JmOf
	nHVIn+YcKJfVNahuDnWrVV7x+3ACtYLG1SLWP/dUJ3SOSBDBk8YAvN5Lih87d5UrQcJzhMGMUmc
	Xt2pNZcUu6niwkmHK3g31iYGiaEE=
X-Google-Smtp-Source: AGHT+IGwUhYAH2rnXf/w/VZURPd81phBaedUSJJDsnKne9UNQSJzAyJtQQypVFOs1jxCbsrtgbj1DEFvpSFMkUCGzgo=
X-Received: by 2002:a05:6512:33c9:b0:542:2905:ae52 with SMTP id
 2adb3069b0e04-542845b0a89mr7081980e87.45.1736822504065; Mon, 13 Jan 2025
 18:41:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241222094701.207592-1-masahiroy@kernel.org> <05f5eebf-8253-48dd-b3bb-b5bf07b04598@amd.com>
In-Reply-To: <05f5eebf-8253-48dd-b3bb-b5bf07b04598@amd.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 14 Jan 2025 11:41:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQDj9x7hHeSO=5PHpswRm6ku3bb1RW9fVZw9N+xswPQrA@mail.gmail.com>
X-Gm-Features: AbW1kvZlVe8Zu5-Hf86bouZ-cGhRVEbLaakQsgia3my8xgyp-aQIzJweUeyXG-4
Message-ID: <CAK7LNAQDj9x7hHeSO=5PHpswRm6ku3bb1RW9fVZw9N+xswPQrA@mail.gmail.com>
Subject: Re: [PATCH] microblaze: migrate to the generic rule for built-in DTB
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2025 at 1:37=E2=80=AFAM Michal Simek <michal.simek@amd.com> =
wrote:
>
> Hi Masahiro,
>
> On 12/22/24 10:46, Masahiro Yamada wrote:
> > Commit 654102df2ac2 ("kbuild: add generic support for built-in boot
> > DTBs") introduced generic support for built-in DTBs.
> >
> > Select GENERIC_BUILTIN_DTB to use the generic rule.
> >
> > MicroBlaze is the only architecture that places the built-in DTB to its
> > own section, __fdt_blob, rather than the standard location defined by
> > the KERNEL_DTB() macro.
> >
> > For backward compatibility, arch/microblaze/boot/dts/system.dtb is stil=
l
> > placed in the __fdt_blob section, and possibly overwritten by an extern=
el
> > DTB passed via the r7 register.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >   arch/microblaze/Kbuild                | 1 -
> >   arch/microblaze/Kconfig               | 5 +++++
> >   arch/microblaze/boot/dts/Makefile     | 5 -----
> >   arch/microblaze/boot/dts/linked_dtb.S | 2 --
> >   arch/microblaze/kernel/vmlinux.lds.S  | 2 +-
> >   5 files changed, 6 insertions(+), 9 deletions(-)
> >   delete mode 100644 arch/microblaze/boot/dts/linked_dtb.S
> >
> > diff --git a/arch/microblaze/Kbuild b/arch/microblaze/Kbuild
> > index 077a0b8e9615..70510389eb92 100644
> > --- a/arch/microblaze/Kbuild
> > +++ b/arch/microblaze/Kbuild
> > @@ -2,7 +2,6 @@
> >   obj-y                       +=3D kernel/
> >   obj-y                       +=3D mm/
> >   obj-$(CONFIG_PCI)   +=3D pci/
> > -obj-y                        +=3D boot/dts/
> >
> >   # for cleaning
> >   subdir- +=3D boot
> > diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
> > index f18ec02ddeb2..4ed8ca89f0c9 100644
> > --- a/arch/microblaze/Kconfig
> > +++ b/arch/microblaze/Kconfig
> > @@ -10,6 +10,7 @@ config MICROBLAZE
> >       select ARCH_MIGHT_HAVE_PC_PARPORT
> >       select ARCH_WANT_IPC_PARSE_VERSION
> >       select BUILDTIME_TABLE_SORT
> > +     select GENERIC_BUILTIN_DTB
> >       select TIMER_OF
> >       select CLONE_BACKWARDS3
> >       select COMMON_CLK
> > @@ -47,6 +48,10 @@ config MICROBLAZE
> >       select TRACE_IRQFLAGS_SUPPORT
> >       select GENERIC_IRQ_MULTI_HANDLER
> >
> > +config BUILTIN_DTB_NAME
> > +     string
> > +     default "system"
> > +
> >   # Endianness selection
> >   choice
> >       prompt "Endianness selection"
> > diff --git a/arch/microblaze/boot/dts/Makefile b/arch/microblaze/boot/d=
ts/Makefile
> > index b84e2cbb20ee..87c1d25ff096 100644
> > --- a/arch/microblaze/boot/dts/Makefile
> > +++ b/arch/microblaze/boot/dts/Makefile
> > @@ -4,11 +4,6 @@
> >   dtb-y :=3D system.dtb
> >
> >   ifneq ($(DTB),)
> > -obj-y +=3D linked_dtb.o
> > -
> > -# Ensure system.dtb exists
> > -$(obj)/linked_dtb.o: $(obj)/system.dtb
> > -
> >   # Generate system.dtb from $(DTB).dtb
> >   ifneq ($(DTB),system)
> >   $(obj)/system.dtb: $(obj)/$(DTB).dtb
> > diff --git a/arch/microblaze/boot/dts/linked_dtb.S b/arch/microblaze/bo=
ot/dts/linked_dtb.S
> > deleted file mode 100644
> > index 23345af3721f..000000000000
> > --- a/arch/microblaze/boot/dts/linked_dtb.S
> > +++ /dev/null
> > @@ -1,2 +0,0 @@
> > -.section __fdt_blob,"a"
> > -.incbin "arch/microblaze/boot/dts/system.dtb"
> > diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/ker=
nel/vmlinux.lds.S
> > index ae50d3d04a7d..e86f9ca8e979 100644
> > --- a/arch/microblaze/kernel/vmlinux.lds.S
> > +++ b/arch/microblaze/kernel/vmlinux.lds.S
> > @@ -47,7 +47,7 @@ SECTIONS {
> >       . =3D ALIGN (8) ;
> >       __fdt_blob : AT(ADDR(__fdt_blob) - LOAD_OFFSET) {
> >               _fdt_start =3D . ;                /* place for fdt blob *=
/
> > -             *(__fdt_blob) ;                 /* Any link-placed DTB */
> > +             *(.dtb.init.rodata) ;           /* Any link-placed DTB */
> >               . =3D _fdt_start + 0x10000;       /* Pad up to 64kbyte */
> >               _fdt_end =3D . ;
> >       }
>
> This patch is better then previous one but still it is changing behavior =
of
> build. When this patch is applied linux.bin contains dtb which is not the=
 same
> behavior as before (which was empty).
> DTB should be filled when simpleImage.<dt> is built.

Why is it a problem?

Microblaze always keeps 64kbyte space in case
an external DTB is passed from a boot-loader.

Even if the default system.dtb is placed there,
nothing is wasted.


One more thing, Microblaze is only the architecture
that determines the built-in DTB by the command line.

I do not think it is a sensible way.

    $ make linux.bin simpleImage.foo
      --> linux.bin also contains the builtin device tree

    $ make simpleImage.foo simpleImage.bar
      --> does not work


All other architectures determinantes the built-in DTB
by CONFIG option.


--=20
Best Regards
Masahiro Yamada

