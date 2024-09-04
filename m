Return-Path: <devicetree+bounces-100094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D9896C21D
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:20:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A8651C249A6
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E041DC1B5;
	Wed,  4 Sep 2024 15:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="kHGYFAFc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD94DDCD
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 15:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725463248; cv=none; b=qqw/QDkwCdPHGTg0F8N4K34hIluozzakOv0/7NgcGS5YDLB5NAYjdrgwI88IaUzZIXXZ0u+2vjxeVbbtKrEJ+bdiZLvxfOTVeO0WY5FfLosqhCtmR5H172WNo/juGc+enwKaKLcKvQfT1eSDnuQDNReHwQr3Onh/+2/AkGn9vkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725463248; c=relaxed/simple;
	bh=T5BMsuQaxR/3ggYG9BCUQhUEBynXr68UfPj057Ocu8A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jp6XHKmIfVsNyWr86YkzaX463LPy11Qg0x9jsta/pIX17LACwxdK9qbVrpsS/L7yrQWZKhjUhRLswMqo9jVnpPMUtBKB0ar7B19YtRS6GuwbEdx7olY7Yy77UPmw34y3gwKUcOU3VcrIwDAKPOIRiCkqLLw1hptwTKhKiMIsQE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=kHGYFAFc; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-39fd6a9acb6so2629165ab.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 08:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1725463246; x=1726068046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FhDF0SQeiM2A3Xk/DMuv3JXuwNqZLtLOCwSo8gz5fyA=;
        b=kHGYFAFcoYCFjA8YkKYBuXvWtgzm720fCbgYwpBTJQcK5ZnH6waLnmuERULO5uAnmi
         E8o6BLbBhuTmDvrR1V+ByU6YIi+6jiq/N7tNl8jXKnjGmOJGyeXMNaGnDi8ZY3ZARJVd
         LbDcUEQF9D4vQkcE3zxVoQ2MdJmG7yMPcpfkjMiIe9vePw4Z8pCeoKX4IQfCJoKY5nw3
         7fMyVnwBBW+1dT4udlgTPa93UklOfhhkKP9Xws1k4Bx9/mSjj+mK+YXwpaas57/gFEkG
         UhMqvh2n03BEf/CzQO2otOU4h4saC3hFj2lC+ly2LkM1gll+qnm8sFgGvsrj+UJy2Zaq
         XwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725463246; x=1726068046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FhDF0SQeiM2A3Xk/DMuv3JXuwNqZLtLOCwSo8gz5fyA=;
        b=pu9xPWLoYeEvNE+C70RCQCwpj18xzPCFL+wPbTWXqh5wh/BoTRsuRRZ2b4dBIY98Ow
         Jh+9YRY5In7hNmWKjDWb1UT5hKnHj9BatLT1TSH/tXJB4n+/sJj3h+MmWxWOoJ1x4bF3
         S+McF8vbTA/MonNLLlS0hv/vMhPBO1PcqZpMkbwgvK74YNz6rBZfuEkAlG/XfdgVIHA0
         cwdkktl/flBIiidzaFwCj0+lGanjAUvWIGc0Q7NXPSzCoy4tknFsEmvsCIjXpInObd6p
         gP0Zeyi0gcLFqnUE5/Xor5Wz4Nk7PYBsgD5EXZ15SWGgG2M0NJMSH4DuBQoPVlJkH6Qj
         d6gQ==
X-Forwarded-Encrypted: i=1; AJvYcCWP5zIp/3MFV4Ibbo2t2NDK9+Cc5gpgJv3o6FdNJZxYvEjnn17OH0vIbfgdG0nCUjjNBJFyVxHN910j@vger.kernel.org
X-Gm-Message-State: AOJu0YxRRSOPG1CJONlBRVDhUpazJlAqPxEWhl7rmBFnwKjnmCywBPZq
	+5D2duDohHYEq9+0uOTGtuFVpj2vIMxyQE7oZJd917ngk28Fj4+HuiH+SxZOsRB/KVPU+Nz55WA
	CujlCzSZmJqBHCO+Te3Uy55I6SqJKhINlJuASCw==
X-Google-Smtp-Source: AGHT+IFiKaBWReK0tbHlJpXTKJ8AZC/Ae/CVs7LTX1J5vcwRf7FmLNwzwKIaBz82dofnaoXmdcIiu+c9zdUQYU1F7lU=
X-Received: by 2002:a05:6e02:2181:b0:39d:376b:20cb with SMTP id
 e9e14a558f8ab-39f6aa30e14mr79570475ab.25.1725463245792; Wed, 04 Sep 2024
 08:20:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-10-samuel.holland@sifive.com> <CAK9=C2WjraWjuQCeU2Y4Jhr-gKkOcP42Sza7wVp0FgeGaD923g@mail.gmail.com>
 <b6de8769-7e4e-4a19-b239-a39fd424e0c8@sifive.com> <CAAhSdy08SoDoZCii9R--BK7_NKLnRciW7V3mo2aQRKW1dbOgNg@mail.gmail.com>
 <20ab0fa2-d5dd-446d-9fff-a3ef82e8db35@sifive.com>
In-Reply-To: <20ab0fa2-d5dd-446d-9fff-a3ef82e8db35@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2024 20:50:35 +0530
Message-ID: <CAAhSdy1pZcEfajg3OZUCaFf9JMYcMzpRVogCT5VL2FHx__vDdA@mail.gmail.com>
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

On Wed, Sep 4, 2024 at 8:27=E2=80=AFPM Samuel Holland <samuel.holland@sifiv=
e.com> wrote:
>
> Hi Anup,
>
> On 2024-09-04 9:45 AM, Anup Patel wrote:
> > On Wed, Sep 4, 2024 at 8:01=E2=80=AFPM Samuel Holland <samuel.holland@s=
ifive.com> wrote:
> >> On 2024-09-04 7:17 AM, Anup Patel wrote:
> >>> On Thu, Aug 29, 2024 at 6:32=E2=80=AFAM Samuel Holland
> >>> <samuel.holland@sifive.com> wrote:
> >>>>
> >>>> The interface for controlling pointer masking in VS-mode is henvcfg.=
PMM,
> >>>> which is part of the Ssnpm extension, even though pointer masking in
> >>>> HS-mode is provided by the Smnpm extension. As a result, emulating S=
mnpm
> >>>> in the guest requires (only) Ssnpm on the host.
> >>>>
> >>>> Since the guest configures Smnpm through the SBI Firmware Features
> >>>> interface, the extension can be disabled by failing the SBI call. Ss=
npm
> >>>> cannot be disabled without intercepting writes to the senvcfg CSR.
> >>>>
> >>>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> >>>> ---
> >>>>
> >>>> (no changes since v2)
> >>>>
> >>>> Changes in v2:
> >>>>  - New patch for v2
> >>>>
> >>>>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
> >>>>  arch/riscv/kvm/vcpu_onereg.c      | 3 +++
> >>>>  2 files changed, 5 insertions(+)
> >>>>
> >>>> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/=
uapi/asm/kvm.h
> >>>> index e97db3296456..4f24201376b1 100644
> >>>> --- a/arch/riscv/include/uapi/asm/kvm.h
> >>>> +++ b/arch/riscv/include/uapi/asm/kvm.h
> >>>> @@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
> >>>>         KVM_RISCV_ISA_EXT_ZCF,
> >>>>         KVM_RISCV_ISA_EXT_ZCMOP,
> >>>>         KVM_RISCV_ISA_EXT_ZAWRS,
> >>>> +       KVM_RISCV_ISA_EXT_SMNPM,
> >>>> +       KVM_RISCV_ISA_EXT_SSNPM,
> >>>>         KVM_RISCV_ISA_EXT_MAX,
> >>>>  };
> >>>>
> >>>> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_oner=
eg.c
> >>>> index b319c4c13c54..6f833ec2344a 100644
> >>>> --- a/arch/riscv/kvm/vcpu_onereg.c
> >>>> +++ b/arch/riscv/kvm/vcpu_onereg.c
> >>>> @@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] =3D =
{
> >>>>         [KVM_RISCV_ISA_EXT_M] =3D RISCV_ISA_EXT_m,
> >>>>         [KVM_RISCV_ISA_EXT_V] =3D RISCV_ISA_EXT_v,
> >>>>         /* Multi letter extensions (alphabetically sorted) */
> >>>> +       [KVM_RISCV_ISA_EXT_SMNPM] =3D RISCV_ISA_EXT_SSNPM,
> >>>
> >>> Why not use KVM_ISA_EXT_ARR() macro here ?
> >>
> >> Because the extension name in the host does not match the extension na=
me in the
> >> guest. Pointer masking for HS mode is provided by Smnpm. Pointer maski=
ng for VS
> >> mode is provided by Ssnpm at the hardware level, but this needs to app=
ear to the
> >> guest as if Smnpm was implemented, since the guest thinks it is runnin=
g on bare
> >> metal.
> >
> > Okay, makes sense.
> >
> >>
> >>>>         KVM_ISA_EXT_ARR(SMSTATEEN),
> >>>>         KVM_ISA_EXT_ARR(SSAIA),
> >>>>         KVM_ISA_EXT_ARR(SSCOFPMF),
> >>>> +       KVM_ISA_EXT_ARR(SSNPM),
> >>>>         KVM_ISA_EXT_ARR(SSTC),
> >>>>         KVM_ISA_EXT_ARR(SVINVAL),
> >>>>         KVM_ISA_EXT_ARR(SVNAPOT),
> >>>> @@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(u=
nsigned long ext)
> >>>>         case KVM_RISCV_ISA_EXT_M:
> >>>>         /* There is not architectural config bit to disable sscofpmf=
 completely */
> >>>>         case KVM_RISCV_ISA_EXT_SSCOFPMF:
> >>>> +       case KVM_RISCV_ISA_EXT_SSNPM:
> >>>
> >>> Why not add KVM_RISCV_ISA_EXT_SMNPM here ?
> >>>
> >>> Disabling Smnpm from KVM user space is very different from
> >>> disabling Smnpm from Guest using SBI FWFT extension.
> >>
> >> Until a successful SBI FWFT call to KVM to enable pointer masking for =
VS mode,
> >> the existence of Smnpm has no visible effect on the guest. So failing =
the SBI
> >> call is sufficient to pretend that the hardware does not support Smnpm=
.
> >>
> >>> The KVM user space should always add Smnpm in the
> >>> Guest ISA string whenever the Host ISA string has it.
> >>
> >> I disagree. Allowing userspace to disable extensions is useful for tes=
ting and
> >> to support migration to hosts which do not support those extensions. S=
o I would
> >> only add extensions to this list if there is no possible way to disabl=
e them.
> >
> > I am not saying to disallow KVM user space disabling Smnpm.
>
> Then I'm confused. This is the "return false;" switch case inside
> kvm_riscv_vcpu_isa_disable_allowed(). If I add KVM_RISCV_ISA_EXT_SMNPM he=
re,
> then (unless I am misreading the code) I am disallowing KVM userspace fro=
m
> disabling Smnpm in the guest (i.e. preventing KVM userspace from removing=
 Smnpm
> from the guest ISA string). If that is not desired, then why do you sugge=
st I
> add KVM_RISCV_ISA_EXT_SMNPM here?

Yes, adding KVM_RISCV_ISA_EXT_SMNPM here means KVM
user space can't disable it using ONE_REG interface but KVM user
space can certainly not add it in the Guest ISA string.

>
> > The presence of Smnpm in ISA only means that it is present in HW
> > but it needs to be explicitly configured/enabled using SBI FWFT.
> >
> > KVM user space can certainly disable extensions by not adding it to
> > ISA string based on the KVMTOOL/QEMU-KVM command line option.
> > Additionally, when SBI FWFT is added to KVM RISC-V. It will have its
> > own way to explicitly disable firmware features from KVM user space.
>
> I think we agree on this, but your explanation here appears to conflict w=
ith
> your suggested code change. Apologies if I'm missing something.

I think the confusion is about what does it mean when Smnpm is present
in the ISA string. We have two approaches:

1) Presence of Smnpm in ISA string only means it is present in HW but
    says nothing about its enable/disable state. To configure/enable
    Smnpm, the supervisor must use SBI FWFT.

2) Presence of Smnpm in ISA string means it is present in HW and
    enabled at boot-time. To re-configure/disable Smnpm, the supervisor
    must use SBI FWFT.

I am suggesting approach #1 but I am guessing you are leaning towards
approach #2 ?

For approach #2, additional hencfg.PMM configuration is required in
this patch based on the state of KVM_RISCV_ISA_EXT_SMNPM.

Regards,
Anup

>
> Regards,
> Samuel
>
> >>> The Guest must explicitly use SBI FWFT to enable
> >>> Smnpm only after it sees Smnpm in ISA string.
> >>
> >> Yes, exactly, and the purpose of not including Smnpm in the switch cas=
e here is
> >> so that KVM user space can control whether or not it appears in the IS=
A string.
> >>
> >> Regards,
> >> Samuel
> >>
> >>>>         case KVM_RISCV_ISA_EXT_SSTC:
> >>>>         case KVM_RISCV_ISA_EXT_SVINVAL:
> >>>>         case KVM_RISCV_ISA_EXT_SVNAPOT:
> >>>> --
> >>>> 2.45.1
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> linux-riscv mailing list
> >>>> linux-riscv@lists.infradead.org
> >>>> http://lists.infradead.org/mailman/listinfo/linux-riscv
> >>>
> >>> Regards,
> >>> Anup
> >>
> >
> > Regards,
> > Anup
>

