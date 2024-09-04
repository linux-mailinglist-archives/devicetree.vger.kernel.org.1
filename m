Return-Path: <devicetree+bounces-100077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB7D96C16E
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EBFE1F281BB
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D12E1DC1A1;
	Wed,  4 Sep 2024 14:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="TbsbV9q7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9528C1DC05F
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 14:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725461839; cv=none; b=pcTdzs7Fmsmskyv3G5hVWhiNj2VYXfUyfk/MetX6Z+0ajulaKyIHS9w5RC/5we0gVPZctaftc0MzNtA2ehncNi+dRF3goIQpXNdZIgeosrFK0k+NJZVuQpRxXBywsRkBHzMDYJHfYng/IvOTn+QzhsB//lLYztM28TKn6cg4jHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725461839; c=relaxed/simple;
	bh=kacQRsFK6YGvqLnXxIVGNOBldT/NsLt/2MzuJzkqFUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GhiJlK04a3VVeNzboaKamyZThpTgBywT85w0U1Ar4YPtMRpgIelxFFL3NW91bejtjA/ZxSRJL+3+NvM/j+2Ca81LW0zMDKDav6cidUHngSauE6LvJUyOny4BeXrkQ8H9YQeLcH97qQ5OGXXnPQPzAxdmzqZ0zKfA9OTEpqHqMPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=TbsbV9q7; arc=none smtp.client-ip=209.85.166.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-39f51934f61so15537925ab.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 07:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1725461836; x=1726066636; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F0ZQXgyDP6PEcKiBn5OcVA7Fwl0wFC8E7Z3K9IfpZ0M=;
        b=TbsbV9q7AAC7jVmS0hFm2JLNkpps6tTp2rJKbSHjXeBwBaByQBonX9gTjeyXk4DYK7
         Vg8GX0PRNOcmcc7rv0WJ2TpWtul4HUZ1K8O48zlZNdNpEuJhiFVekx8LW28v+/AbULRN
         Pqow4v4aFFwu2V89+1QEVjydotLiFU8XA+MdUSwCpn/VwY6jpOZZz/tQoduLuwvFSfFC
         IT+63AKDEmb7L+8NDKgLHONA8blTSnIux+GVFMkhLetjYrq4UzANSlAVXYj++zmP+rM7
         GA2JRQy5yE1ja47Rp35CNdjo5P6XFUA11wvWVL4PWfAb59f3Y+2wzWtPuf1QUc/KsnAe
         xRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725461836; x=1726066636;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F0ZQXgyDP6PEcKiBn5OcVA7Fwl0wFC8E7Z3K9IfpZ0M=;
        b=kruIZ1k/K+iIEcp8rFkELYZjBp3yF1sgp713gwxE7xPukrcV06bmurNev8grawJA+c
         bDJdep1lMCR+FqHo9O+dIeGhw/aep5BJOQdupH7J+0VhUX0RMHHdfQ/DOfmVnIv0aa8g
         a0WTB3BOMXTNkQrJZjhajD76SO1ofGTa21DbJ6V+X+bRx72OzNVzs5eNisaI0QQnCryy
         zo9MmN4iCBLqpcUZTIHgRduMmpm3to5sUS7tgUWNtfbidkEuF9ltLsTZJte7T8jNb4La
         hdh7VYNz6XS40+qP3pTxfsX9V5E/3+uwBQp1mzQ0teXyobOm9kjPsvWnQ1tW1cYeFdBT
         XYzw==
X-Forwarded-Encrypted: i=1; AJvYcCUEmk1b1sfSAmDwErFtytcuElX12qv8wCLct4XhXKBoiygkFp3K2yKwlVzvrOuX0p0rqrJyVclYkvOs@vger.kernel.org
X-Gm-Message-State: AOJu0YxIsGdrlIo1G3KczRQbTjaSqyeNBgH8WDMvzE48jYYIxLluN+FL
	4ZLqVax+7QRAx3p4s1jIpNh8zwhkeZZkgSA41G4Ji3h7zvE8zlodn+PR/vrjM0U=
X-Google-Smtp-Source: AGHT+IFmN6vbfzT5PWKujAvPK3c+gxIQ3iKyoamdrVQqiSlA8y4anU+BlKP4BnDY91w5JpizW9/g2Q==
X-Received: by 2002:a05:6e02:1fed:b0:39e:78d9:ebfc with SMTP id e9e14a558f8ab-39f6a9f5455mr82847405ab.17.1725461835688;
        Wed, 04 Sep 2024 07:57:15 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ced2e17ba7sm3122962173.77.2024.09.04.07.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 07:57:15 -0700 (PDT)
Message-ID: <20ab0fa2-d5dd-446d-9fff-a3ef82e8db35@sifive.com>
Date: Wed, 4 Sep 2024 09:57:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions
 for guests
To: Anup Patel <anup@brainfault.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>,
 kasan-dev@googlegroups.com, Atish Patra <atishp@atishpatra.org>,
 Evgenii Stepanov <eugenis@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 kvm-riscv@lists.infradead.org
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-10-samuel.holland@sifive.com>
 <CAK9=C2WjraWjuQCeU2Y4Jhr-gKkOcP42Sza7wVp0FgeGaD923g@mail.gmail.com>
 <b6de8769-7e4e-4a19-b239-a39fd424e0c8@sifive.com>
 <CAAhSdy08SoDoZCii9R--BK7_NKLnRciW7V3mo2aQRKW1dbOgNg@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CAAhSdy08SoDoZCii9R--BK7_NKLnRciW7V3mo2aQRKW1dbOgNg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Anup,

On 2024-09-04 9:45 AM, Anup Patel wrote:
> On Wed, Sep 4, 2024 at 8:01 PM Samuel Holland <samuel.holland@sifive.com> wrote:
>> On 2024-09-04 7:17 AM, Anup Patel wrote:
>>> On Thu, Aug 29, 2024 at 6:32 AM Samuel Holland
>>> <samuel.holland@sifive.com> wrote:
>>>>
>>>> The interface for controlling pointer masking in VS-mode is henvcfg.PMM,
>>>> which is part of the Ssnpm extension, even though pointer masking in
>>>> HS-mode is provided by the Smnpm extension. As a result, emulating Smnpm
>>>> in the guest requires (only) Ssnpm on the host.
>>>>
>>>> Since the guest configures Smnpm through the SBI Firmware Features
>>>> interface, the extension can be disabled by failing the SBI call. Ssnpm
>>>> cannot be disabled without intercepting writes to the senvcfg CSR.
>>>>
>>>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>>>> ---
>>>>
>>>> (no changes since v2)
>>>>
>>>> Changes in v2:
>>>>  - New patch for v2
>>>>
>>>>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
>>>>  arch/riscv/kvm/vcpu_onereg.c      | 3 +++
>>>>  2 files changed, 5 insertions(+)
>>>>
>>>> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
>>>> index e97db3296456..4f24201376b1 100644
>>>> --- a/arch/riscv/include/uapi/asm/kvm.h
>>>> +++ b/arch/riscv/include/uapi/asm/kvm.h
>>>> @@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
>>>>         KVM_RISCV_ISA_EXT_ZCF,
>>>>         KVM_RISCV_ISA_EXT_ZCMOP,
>>>>         KVM_RISCV_ISA_EXT_ZAWRS,
>>>> +       KVM_RISCV_ISA_EXT_SMNPM,
>>>> +       KVM_RISCV_ISA_EXT_SSNPM,
>>>>         KVM_RISCV_ISA_EXT_MAX,
>>>>  };
>>>>
>>>> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
>>>> index b319c4c13c54..6f833ec2344a 100644
>>>> --- a/arch/riscv/kvm/vcpu_onereg.c
>>>> +++ b/arch/riscv/kvm/vcpu_onereg.c
>>>> @@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] = {
>>>>         [KVM_RISCV_ISA_EXT_M] = RISCV_ISA_EXT_m,
>>>>         [KVM_RISCV_ISA_EXT_V] = RISCV_ISA_EXT_v,
>>>>         /* Multi letter extensions (alphabetically sorted) */
>>>> +       [KVM_RISCV_ISA_EXT_SMNPM] = RISCV_ISA_EXT_SSNPM,
>>>
>>> Why not use KVM_ISA_EXT_ARR() macro here ?
>>
>> Because the extension name in the host does not match the extension name in the
>> guest. Pointer masking for HS mode is provided by Smnpm. Pointer masking for VS
>> mode is provided by Ssnpm at the hardware level, but this needs to appear to the
>> guest as if Smnpm was implemented, since the guest thinks it is running on bare
>> metal.
> 
> Okay, makes sense.
> 
>>
>>>>         KVM_ISA_EXT_ARR(SMSTATEEN),
>>>>         KVM_ISA_EXT_ARR(SSAIA),
>>>>         KVM_ISA_EXT_ARR(SSCOFPMF),
>>>> +       KVM_ISA_EXT_ARR(SSNPM),
>>>>         KVM_ISA_EXT_ARR(SSTC),
>>>>         KVM_ISA_EXT_ARR(SVINVAL),
>>>>         KVM_ISA_EXT_ARR(SVNAPOT),
>>>> @@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
>>>>         case KVM_RISCV_ISA_EXT_M:
>>>>         /* There is not architectural config bit to disable sscofpmf completely */
>>>>         case KVM_RISCV_ISA_EXT_SSCOFPMF:
>>>> +       case KVM_RISCV_ISA_EXT_SSNPM:
>>>
>>> Why not add KVM_RISCV_ISA_EXT_SMNPM here ?
>>>
>>> Disabling Smnpm from KVM user space is very different from
>>> disabling Smnpm from Guest using SBI FWFT extension.
>>
>> Until a successful SBI FWFT call to KVM to enable pointer masking for VS mode,
>> the existence of Smnpm has no visible effect on the guest. So failing the SBI
>> call is sufficient to pretend that the hardware does not support Smnpm.
>>
>>> The KVM user space should always add Smnpm in the
>>> Guest ISA string whenever the Host ISA string has it.
>>
>> I disagree. Allowing userspace to disable extensions is useful for testing and
>> to support migration to hosts which do not support those extensions. So I would
>> only add extensions to this list if there is no possible way to disable them.
> 
> I am not saying to disallow KVM user space disabling Smnpm.

Then I'm confused. This is the "return false;" switch case inside
kvm_riscv_vcpu_isa_disable_allowed(). If I add KVM_RISCV_ISA_EXT_SMNPM here,
then (unless I am misreading the code) I am disallowing KVM userspace from
disabling Smnpm in the guest (i.e. preventing KVM userspace from removing Smnpm
from the guest ISA string). If that is not desired, then why do you suggest I
add KVM_RISCV_ISA_EXT_SMNPM here?

> The presence of Smnpm in ISA only means that it is present in HW
> but it needs to be explicitly configured/enabled using SBI FWFT.
> 
> KVM user space can certainly disable extensions by not adding it to
> ISA string based on the KVMTOOL/QEMU-KVM command line option.
> Additionally, when SBI FWFT is added to KVM RISC-V. It will have its
> own way to explicitly disable firmware features from KVM user space.

I think we agree on this, but your explanation here appears to conflict with
your suggested code change. Apologies if I'm missing something.

Regards,
Samuel

>>> The Guest must explicitly use SBI FWFT to enable
>>> Smnpm only after it sees Smnpm in ISA string.
>>
>> Yes, exactly, and the purpose of not including Smnpm in the switch case here is
>> so that KVM user space can control whether or not it appears in the ISA string.
>>
>> Regards,
>> Samuel
>>
>>>>         case KVM_RISCV_ISA_EXT_SSTC:
>>>>         case KVM_RISCV_ISA_EXT_SVINVAL:
>>>>         case KVM_RISCV_ISA_EXT_SVNAPOT:
>>>> --
>>>> 2.45.1
>>>>
>>>>
>>>> _______________________________________________
>>>> linux-riscv mailing list
>>>> linux-riscv@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-riscv
>>>
>>> Regards,
>>> Anup
>>
> 
> Regards,
> Anup


