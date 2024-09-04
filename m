Return-Path: <devicetree+bounces-100065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE6896C113
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E2721C24EAB
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813401DB53B;
	Wed,  4 Sep 2024 14:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="x/vq+qV4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A33A18BB87
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 14:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725461141; cv=none; b=EwmeTwolfWV0wPgqd8SNpwq0CER6EVDDsnQghtgwGeIWCNSX1U4b3XaTU7Pmfxu92E5L1XrxKxQuJ++kI1bCRhGMvTNiTf8A34Gp1UYBfH+EX9ondNfH/O9TqYJY17lW+vId/YjboesTrGNHlP+VrJk4S57T408+mw9BytMbPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725461141; c=relaxed/simple;
	bh=wHE3mxOuhHRAxL4MQT/wGmdv7vx15O2tUkIuYmup3TU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZZjK+ujrAlpbGOwu7Zsvz2b9Fmq/Mg3DS0s3kxokX3hUBGjnHeNVY4XWuqa7uBIZkym1133TrvUwxsigbO7oq6iQq0uKXULNgPCKwyrTVAgZnaCImwoq1+qg3SUKwVU8P/i1jHEGuPzxThBmC40R8+dT1P8yB4PWssAvReaKCJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=x/vq+qV4; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-39f52e60a19so16429585ab.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 07:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1725461138; x=1726065938; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51nJ3+dnXamTe1z0PXS6eJAv/Sucabjt3mu+GvHMgUs=;
        b=x/vq+qV4k2oKHTpj3aDaE1sz2egjycwuklt3ZiHVMSvStYtysOWTwkI6y6F/5C+/hr
         uDykHKL6Cxdr8fj0NaN7EeQFikZnj8aZVcAW0ygY7aTjBrYLYPbIjN7inZlhGY2I0Toa
         HSRVsckwERGKzL2BRhYfmqUdDG0NCkWoNTGTU/Tnca4zrcS2kxClkpQ0ITPK6IWZ8+2Z
         exsswTALbfY8G3CaG+p2R5YbmuW4YqGrtkbhfc7rGZWVz6OM90zmd49pNJcrZl1FGxcr
         sFGDrnaunKciRYfQXNAXbdh4fD/uRzY02oTU6bYHwXhwjTa8z6dKJJhkRYVbUBXdLtIV
         Xfdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725461138; x=1726065938;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51nJ3+dnXamTe1z0PXS6eJAv/Sucabjt3mu+GvHMgUs=;
        b=SRNWtZbX5uqo9Pa8koisJpl93Tly1stHCljXZOw25XcNGiMp6TQe6+KGCsJIhhUcej
         RdYsUlcODBUqe4Xq+6X7kK6psm4i/3DrjbGYREdTTOQxl7OFbvPXihd8IlaNfwZx+ev+
         zyZr1p480LnbZnGJRfOOXmvs02juN3DnjWeKykqp8bBd3FuRQWuBfs2eQOuuNsv5ns9m
         ci64+O5SdICEMd0dsS/qIC0ZAp3fqBmhAgzj3JxLvCMnsRJVtdCejd85D+9WN3Ff0rkl
         ecxl7RieGPmIuMgthBQWsZVkx13eg6ZtzK9l0hYhLViZ/GjYAvx9qJcT12ZCWFonC2s+
         9YDw==
X-Forwarded-Encrypted: i=1; AJvYcCVRzz+RXiGj1c0SrOAJkIghM/SDKTWcoRJwBO1wRJdfjGHKSiVjdoKrKxQ31hIKY2zwjO8d89s9B6j0@vger.kernel.org
X-Gm-Message-State: AOJu0YxBc45A4qhuGZd50DdM4P5sRt1cSmGox6GtG4FzA6MkJ9zGLPsi
	/ZSZnypZ0YGF5jTEKgxlFf18yxVc2adIOam8xsO+C5Ju2CWVfhFInQUp4dwnYMHev1dfR7UG3Fx
	78N9+KGDLHTV+6DHJjTSZlWGhH3jr8GkBEL7yOg==
X-Google-Smtp-Source: AGHT+IFLJd6RqOOTfo+W5iDNyY9QHqf9y/6hYcTKnLONyt7tLaod+XWb5F7JfdnatN+pTnZbGN1pwsF1i8OPhTP7U0c=
X-Received: by 2002:a05:6e02:52c:b0:39f:558a:e404 with SMTP id
 e9e14a558f8ab-39f558ae637mr120606115ab.4.1725461138110; Wed, 04 Sep 2024
 07:45:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-10-samuel.holland@sifive.com> <CAK9=C2WjraWjuQCeU2Y4Jhr-gKkOcP42Sza7wVp0FgeGaD923g@mail.gmail.com>
 <b6de8769-7e4e-4a19-b239-a39fd424e0c8@sifive.com>
In-Reply-To: <b6de8769-7e4e-4a19-b239-a39fd424e0c8@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2024 20:15:27 +0530
Message-ID: <CAAhSdy08SoDoZCii9R--BK7_NKLnRciW7V3mo2aQRKW1dbOgNg@mail.gmail.com>
Subject: Re: [PATCH v4 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions
 for guests
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>, kvm-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2024 at 8:01=E2=80=AFPM Samuel Holland <samuel.holland@sifiv=
e.com> wrote:
>
> Hi Anup,
>
> On 2024-09-04 7:17 AM, Anup Patel wrote:
> > On Thu, Aug 29, 2024 at 6:32=E2=80=AFAM Samuel Holland
> > <samuel.holland@sifive.com> wrote:
> >>
> >> The interface for controlling pointer masking in VS-mode is henvcfg.PM=
M,
> >> which is part of the Ssnpm extension, even though pointer masking in
> >> HS-mode is provided by the Smnpm extension. As a result, emulating Smn=
pm
> >> in the guest requires (only) Ssnpm on the host.
> >>
> >> Since the guest configures Smnpm through the SBI Firmware Features
> >> interface, the extension can be disabled by failing the SBI call. Ssnp=
m
> >> cannot be disabled without intercepting writes to the senvcfg CSR.
> >>
> >> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> >> ---
> >>
> >> (no changes since v2)
> >>
> >> Changes in v2:
> >>  - New patch for v2
> >>
> >>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
> >>  arch/riscv/kvm/vcpu_onereg.c      | 3 +++
> >>  2 files changed, 5 insertions(+)
> >>
> >> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/ua=
pi/asm/kvm.h
> >> index e97db3296456..4f24201376b1 100644
> >> --- a/arch/riscv/include/uapi/asm/kvm.h
> >> +++ b/arch/riscv/include/uapi/asm/kvm.h
> >> @@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
> >>         KVM_RISCV_ISA_EXT_ZCF,
> >>         KVM_RISCV_ISA_EXT_ZCMOP,
> >>         KVM_RISCV_ISA_EXT_ZAWRS,
> >> +       KVM_RISCV_ISA_EXT_SMNPM,
> >> +       KVM_RISCV_ISA_EXT_SSNPM,
> >>         KVM_RISCV_ISA_EXT_MAX,
> >>  };
> >>
> >> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg=
.c
> >> index b319c4c13c54..6f833ec2344a 100644
> >> --- a/arch/riscv/kvm/vcpu_onereg.c
> >> +++ b/arch/riscv/kvm/vcpu_onereg.c
> >> @@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
> >>         [KVM_RISCV_ISA_EXT_M] =3D RISCV_ISA_EXT_m,
> >>         [KVM_RISCV_ISA_EXT_V] =3D RISCV_ISA_EXT_v,
> >>         /* Multi letter extensions (alphabetically sorted) */
> >> +       [KVM_RISCV_ISA_EXT_SMNPM] =3D RISCV_ISA_EXT_SSNPM,
> >
> > Why not use KVM_ISA_EXT_ARR() macro here ?
>
> Because the extension name in the host does not match the extension name =
in the
> guest. Pointer masking for HS mode is provided by Smnpm. Pointer masking =
for VS
> mode is provided by Ssnpm at the hardware level, but this needs to appear=
 to the
> guest as if Smnpm was implemented, since the guest thinks it is running o=
n bare
> metal.

Okay, makes sense.

>
> >>         KVM_ISA_EXT_ARR(SMSTATEEN),
> >>         KVM_ISA_EXT_ARR(SSAIA),
> >>         KVM_ISA_EXT_ARR(SSCOFPMF),
> >> +       KVM_ISA_EXT_ARR(SSNPM),
> >>         KVM_ISA_EXT_ARR(SSTC),
> >>         KVM_ISA_EXT_ARR(SVINVAL),
> >>         KVM_ISA_EXT_ARR(SVNAPOT),
> >> @@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(uns=
igned long ext)
> >>         case KVM_RISCV_ISA_EXT_M:
> >>         /* There is not architectural config bit to disable sscofpmf c=
ompletely */
> >>         case KVM_RISCV_ISA_EXT_SSCOFPMF:
> >> +       case KVM_RISCV_ISA_EXT_SSNPM:
> >
> > Why not add KVM_RISCV_ISA_EXT_SMNPM here ?
> >
> > Disabling Smnpm from KVM user space is very different from
> > disabling Smnpm from Guest using SBI FWFT extension.
>
> Until a successful SBI FWFT call to KVM to enable pointer masking for VS =
mode,
> the existence of Smnpm has no visible effect on the guest. So failing the=
 SBI
> call is sufficient to pretend that the hardware does not support Smnpm.
>
> > The KVM user space should always add Smnpm in the
> > Guest ISA string whenever the Host ISA string has it.
>
> I disagree. Allowing userspace to disable extensions is useful for testin=
g and
> to support migration to hosts which do not support those extensions. So I=
 would
> only add extensions to this list if there is no possible way to disable t=
hem.

I am not saying to disallow KVM user space disabling Smnpm.

The presence of Smnpm in ISA only means that it is present in HW
but it needs to be explicitly configured/enabled using SBI FWFT.

KVM user space can certainly disable extensions by not adding it to
ISA string based on the KVMTOOL/QEMU-KVM command line option.
Additionally, when SBI FWFT is added to KVM RISC-V. It will have its
own way to explicitly disable firmware features from KVM user space.

>
> > The Guest must explicitly use SBI FWFT to enable
> > Smnpm only after it sees Smnpm in ISA string.
>
> Yes, exactly, and the purpose of not including Smnpm in the switch case h=
ere is
> so that KVM user space can control whether or not it appears in the ISA s=
tring.
>
> Regards,
> Samuel
>
> >>         case KVM_RISCV_ISA_EXT_SSTC:
> >>         case KVM_RISCV_ISA_EXT_SVINVAL:
> >>         case KVM_RISCV_ISA_EXT_SVNAPOT:
> >> --
> >> 2.45.1
> >>
> >>
> >> _______________________________________________
> >> linux-riscv mailing list
> >> linux-riscv@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
> >
> > Regards,
> > Anup
>

Regards,
Anup

