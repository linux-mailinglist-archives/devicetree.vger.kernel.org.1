Return-Path: <devicetree+bounces-100105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A25296C325
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:57:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7ED181C21523
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B331DFE06;
	Wed,  4 Sep 2024 15:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mcZGtdJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFD51DEFF4
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 15:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725465347; cv=none; b=jAoiwSJryJ8TkcwLVB/VjC6xIkXzv/asot+ouyq0Dw1jhdg0WwKvyiAsMh9su65z5wBDhmrfX3WxKFtPnQuy0t5MoJ2LINeCxuP/02wF7LC8PAYKm8TH5HXb2AFFBAXaQTNwu8evaxMxpxZ0PydBaQdujehm9W/QcSs1miZ+VeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725465347; c=relaxed/simple;
	bh=CkecVjIYNoe7NJxOPr5z1PU5WVX0/Q+Dm7XYnVNPMvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YFdE4RG172VT9TgzhO4RcV0UxHv69urEA+QEYeyNRq9322TX3gXHsryssK5P3VdBoLL/pYcv+7lV+YPn/S0CFHqgF1DA4rtLc/Z5CoAzdgWTZSsTwwKUi+a1iJaIBPTxMX8MDkvt+QzYsUzNmMHKm5A7cX8R2Xw3ulESyalQe+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mcZGtdJD; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5de8647f0d5so4327879eaf.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 08:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1725465344; x=1726070144; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IJfJhTqoZula3HvRr4vB1EKIVpNv9UMUTRfayiacVI8=;
        b=mcZGtdJDrkqZVt7rj3akGcS1fHMGiicNF68D9d+iq7hjqBfMLe4hslVKCAaNA29xOv
         ndaBBhLiSv7BW+dZpa2wdOXifLgyuzZqizwfs9B8fVqrgGxBjZ8sqaBSGkFRX//+ElGm
         Jdcy1gqOhW9jboSyPnOOUzXeDyCG6vCz4cUVJ+J3m2lbT789+uNOuRWqceFSOzrJUKaX
         +909TkHjoYNa+bS3nSju/mCqxLGlfiwKKf1AlhYhyUsBTTR4d1gWUWXpEm3LX5BRqFj5
         djSJpfzTEPw00jWqCJGNFmpMZyk26sox/6Pyhi/Zgy9tSA6JOJmuCFx5OevSJo49l72H
         Zj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725465344; x=1726070144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IJfJhTqoZula3HvRr4vB1EKIVpNv9UMUTRfayiacVI8=;
        b=TJrHgOs0G4seeR8JB9mwxrR2veUkhyCAkJWIbIiTdwlwgqV0pP4v499N3XfkZfqmVC
         aHtg5206taMhUCK1zmPwNP6YxOzSwSOfgyq/AtrFKJ8bwh4EQOVw985bK/1CbAXOIJE9
         +kjTK3ggeBTmK+wAgWiH7kcpnegcyv4MOXUxk+Qj7FiDv3mE922Vbg7hTIAfmVbi0UGk
         UTO2McgTP/ybWsWdX+7A4niwjGk4sVm7MrZdAUjddN9kFWRAE7BicFZUtzgXXaXQfFMX
         WJGnH5BXQ2qPzi3FF7IXTRLughJIIEpi00rQgg3Ruff8PErPWHQVeewz/bfxy21CCfOv
         e/tQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9P9ZRgCTcFgvVfGUdK5EzEx8kqgy8uFnxVbEdUyMA1CEiAjGzoYA74kHdmTrByh5jwbFH43EL9bi3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3sylch1fUuS/2V3j5G8CXiQFP9i+8f/V52/O1qi9RkFXJtshA
	T7gEKQuoVH7smDBPUYJHc/c3qQ5lZ2xygO9g8Xw4WzXKCeKmRm/ZFASBBR18NrQ=
X-Google-Smtp-Source: AGHT+IGSj2mjNP3cd8Y+Wq93jLDk/4D2+bETU3DRxxEgzsXQc26cqw387LSpclivH7vxPgGiROcLBA==
X-Received: by 2002:a05:6808:1687:b0:3dc:15b9:334a with SMTP id 5614622812f47-3df1b6f43f7mr14003462b6e.6.1725465344248;
        Wed, 04 Sep 2024 08:55:44 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df117a63a5sm2850495b6e.1.2024.09.04.08.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 08:55:43 -0700 (PDT)
Message-ID: <4c010cb1-b57c-427e-a241-1dd3ab15f2ce@sifive.com>
Date: Wed, 4 Sep 2024 10:55:41 -0500
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
 <20ab0fa2-d5dd-446d-9fff-a3ef82e8db35@sifive.com>
 <CAAhSdy1pZcEfajg3OZUCaFf9JMYcMzpRVogCT5VL2FHx__vDdA@mail.gmail.com>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <CAAhSdy1pZcEfajg3OZUCaFf9JMYcMzpRVogCT5VL2FHx__vDdA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2024-09-04 10:20 AM, Anup Patel wrote:
> On Wed, Sep 4, 2024 at 8:27 PM Samuel Holland <samuel.holland@sifive.com> wrote:
>>
>> Hi Anup,
>>
>> On 2024-09-04 9:45 AM, Anup Patel wrote:
>>> On Wed, Sep 4, 2024 at 8:01 PM Samuel Holland <samuel.holland@sifive.com> wrote:
>>>> On 2024-09-04 7:17 AM, Anup Patel wrote:
>>>>> On Thu, Aug 29, 2024 at 6:32 AM Samuel Holland
>>>>> <samuel.holland@sifive.com> wrote:
>>>>>>
>>>>>> The interface for controlling pointer masking in VS-mode is henvcfg.PMM,
>>>>>> which is part of the Ssnpm extension, even though pointer masking in
>>>>>> HS-mode is provided by the Smnpm extension. As a result, emulating Smnpm
>>>>>> in the guest requires (only) Ssnpm on the host.
>>>>>>
>>>>>> Since the guest configures Smnpm through the SBI Firmware Features
>>>>>> interface, the extension can be disabled by failing the SBI call. Ssnpm
>>>>>> cannot be disabled without intercepting writes to the senvcfg CSR.
>>>>>>
>>>>>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>>>>>> ---
>>>>>>
>>>>>> (no changes since v2)
>>>>>>
>>>>>> Changes in v2:
>>>>>>  - New patch for v2
>>>>>>
>>>>>>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
>>>>>>  arch/riscv/kvm/vcpu_onereg.c      | 3 +++
>>>>>>  2 files changed, 5 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
>>>>>> index e97db3296456..4f24201376b1 100644
>>>>>> --- a/arch/riscv/include/uapi/asm/kvm.h
>>>>>> +++ b/arch/riscv/include/uapi/asm/kvm.h
>>>>>> @@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
>>>>>>         KVM_RISCV_ISA_EXT_ZCF,
>>>>>>         KVM_RISCV_ISA_EXT_ZCMOP,
>>>>>>         KVM_RISCV_ISA_EXT_ZAWRS,
>>>>>> +       KVM_RISCV_ISA_EXT_SMNPM,
>>>>>> +       KVM_RISCV_ISA_EXT_SSNPM,
>>>>>>         KVM_RISCV_ISA_EXT_MAX,
>>>>>>  };
>>>>>>
>>>>>> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
>>>>>> index b319c4c13c54..6f833ec2344a 100644
>>>>>> --- a/arch/riscv/kvm/vcpu_onereg.c
>>>>>> +++ b/arch/riscv/kvm/vcpu_onereg.c
>>>>>> @@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] = {
>>>>>>         [KVM_RISCV_ISA_EXT_M] = RISCV_ISA_EXT_m,
>>>>>>         [KVM_RISCV_ISA_EXT_V] = RISCV_ISA_EXT_v,
>>>>>>         /* Multi letter extensions (alphabetically sorted) */
>>>>>> +       [KVM_RISCV_ISA_EXT_SMNPM] = RISCV_ISA_EXT_SSNPM,
>>>>>
>>>>> Why not use KVM_ISA_EXT_ARR() macro here ?
>>>>
>>>> Because the extension name in the host does not match the extension name in the
>>>> guest. Pointer masking for HS mode is provided by Smnpm. Pointer masking for VS
>>>> mode is provided by Ssnpm at the hardware level, but this needs to appear to the
>>>> guest as if Smnpm was implemented, since the guest thinks it is running on bare
>>>> metal.
>>>
>>> Okay, makes sense.
>>>
>>>>
>>>>>>         KVM_ISA_EXT_ARR(SMSTATEEN),
>>>>>>         KVM_ISA_EXT_ARR(SSAIA),
>>>>>>         KVM_ISA_EXT_ARR(SSCOFPMF),
>>>>>> +       KVM_ISA_EXT_ARR(SSNPM),
>>>>>>         KVM_ISA_EXT_ARR(SSTC),
>>>>>>         KVM_ISA_EXT_ARR(SVINVAL),
>>>>>>         KVM_ISA_EXT_ARR(SVNAPOT),
>>>>>> @@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
>>>>>>         case KVM_RISCV_ISA_EXT_M:
>>>>>>         /* There is not architectural config bit to disable sscofpmf completely */
>>>>>>         case KVM_RISCV_ISA_EXT_SSCOFPMF:
>>>>>> +       case KVM_RISCV_ISA_EXT_SSNPM:
>>>>>
>>>>> Why not add KVM_RISCV_ISA_EXT_SMNPM here ?
>>>>>
>>>>> Disabling Smnpm from KVM user space is very different from
>>>>> disabling Smnpm from Guest using SBI FWFT extension.
>>>>
>>>> Until a successful SBI FWFT call to KVM to enable pointer masking for VS mode,
>>>> the existence of Smnpm has no visible effect on the guest. So failing the SBI
>>>> call is sufficient to pretend that the hardware does not support Smnpm.
>>>>
>>>>> The KVM user space should always add Smnpm in the
>>>>> Guest ISA string whenever the Host ISA string has it.
>>>>
>>>> I disagree. Allowing userspace to disable extensions is useful for testing and
>>>> to support migration to hosts which do not support those extensions. So I would
>>>> only add extensions to this list if there is no possible way to disable them.
>>>
>>> I am not saying to disallow KVM user space disabling Smnpm.
>>
>> Then I'm confused. This is the "return false;" switch case inside
>> kvm_riscv_vcpu_isa_disable_allowed(). If I add KVM_RISCV_ISA_EXT_SMNPM here,
>> then (unless I am misreading the code) I am disallowing KVM userspace from
>> disabling Smnpm in the guest (i.e. preventing KVM userspace from removing Smnpm
>> from the guest ISA string). If that is not desired, then why do you suggest I
>> add KVM_RISCV_ISA_EXT_SMNPM here?
> 
> Yes, adding KVM_RISCV_ISA_EXT_SMNPM here means KVM
> user space can't disable it using ONE_REG interface but KVM user
> space can certainly not add it in the Guest ISA string.

Is there a problem with allowing KVM userspace to disable the ISA extension with
the ONE_REG interface?

If KVM userspace removes Smnpm from the ISA string without the host kernel's
knowledge, that doesn't actually prevent the guest from successfully calling
sbi_fwft_set(POINTER_MASKING_PMLEN, ...), so it doesn't guarantee that the VM
can be migrated to a host without pointer masking support. So the ONE_REG
interface still has value. (And that's my answer to your original question "Why
not add KVM_RISCV_ISA_EXT_SMNPM here ?")

>>> The presence of Smnpm in ISA only means that it is present in HW
>>> but it needs to be explicitly configured/enabled using SBI FWFT.
>>>
>>> KVM user space can certainly disable extensions by not adding it to
>>> ISA string based on the KVMTOOL/QEMU-KVM command line option.
>>> Additionally, when SBI FWFT is added to KVM RISC-V. It will have its
>>> own way to explicitly disable firmware features from KVM user space.
>>
>> I think we agree on this, but your explanation here appears to conflict with
>> your suggested code change. Apologies if I'm missing something.
> 
> I think the confusion is about what does it mean when Smnpm is present
> in the ISA string. We have two approaches:
> 
> 1) Presence of Smnpm in ISA string only means it is present in HW but
>     says nothing about its enable/disable state. To configure/enable
>     Smnpm, the supervisor must use SBI FWFT.
> 
> 2) Presence of Smnpm in ISA string means it is present in HW and
>     enabled at boot-time. To re-configure/disable Smnpm, the supervisor
>     must use SBI FWFT.
> 
> I am suggesting approach #1 but I am guessing you are leaning towards
> approach #2 ?
> 
> For approach #2, additional hencfg.PMM configuration is required in
> this patch based on the state of KVM_RISCV_ISA_EXT_SMNPM.

No, I am definitely suggesting only approach #1. My proposal for adding pointer
masking to the SBI FWFT extension[1] specifies the feature as disabled by
default, and this would apply both inside and ouside a VM.

But I am also suggesting that the ONE_REG interface is a useful way to
completely hide the extension from the guest, like we do for other extensions
such as Svpbmt. The only difference between something like Svpbmt and Smnpm is
that instead of clearing a bit in henvcfg to hide the extension from the guest,
we reject calls to sbi_fwft_set(POINTER_MASKING_PMLEN, ...) when the ISA
extension is hidden from the guest.

Regards,
Samuel

[1]: https://github.com/riscv-non-isa/riscv-sbi-doc/pull/161


