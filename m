Return-Path: <devicetree+bounces-100060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C761A96C0A5
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FDF528B117
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88B941DC05E;
	Wed,  4 Sep 2024 14:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gXMaL+Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5DB1DC061
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 14:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725460320; cv=none; b=NjWSvY8VdnTYN9ATVKO3VCWkDL3VzFC9Ay+8o/7lZ1lSTeAXsve/tQN84K/1/25GL5AXAE6pUO5VLiUatuBAOdPtDmFASiZnjO/Usj2AI21xItRkuQnr3rdR791rz+w2OXxI35sw/gGlNX7CJyAOI9a1eRXvK1oWxWtlHE2dv3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725460320; c=relaxed/simple;
	bh=/ahFHEGpsirSSTp4k1XZpAFQTxqOnQdGmuXxOX/+TQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JPDYtZFvoAPF/nDCw71ZjcAlKoaRP43jBRnX8ozDXeJMgSk+QTEnYGgogzoTMOyXg6XFdNmNHOahP9lourpE3KDhm0bebC0Qdy7ftLgwn9ZUYj5Cey8z6ZGUvRm8mPpzqIzHLmTeQ4qCP2U41aFAaFsxxyfQorbJ00e/3BwK+94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=gXMaL+Bl; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-82a24dec9cbso29163439f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 07:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1725460318; x=1726065118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7zATIwTHrXGiuEASzCytr2UxxMjPOWVj85mDZ7xtUWY=;
        b=gXMaL+Bl6sZTwN9Vv7KsGRLMCNwSelpdWNRrQSAAsdiRznRbhh3qPgFk59mKUfpAIk
         6K2UJHWSx1RlEoJXR60BAgMfVFJ1EuOHXpDEtfV6vYhIFRf+8EbtVOrjlTZHjQWk3ai4
         r7ieVWJQtWoYesHOs3qONX9l13RTrWj2NMNGXRMF8MMeX2k3r19ADDNZtSFmwN/GygCv
         3j0yCcU4dW3+36nCwUkGfVfvTg7zbh2L3ZAUsyLQ2vJaq6Fm5uhBIMaJbJAycsud5DRs
         pBnPkgR5ze69JcNcX6rzWqwinJYtxKmMs4tnF+m/USe14gEDSDDvulNAtgmvCqZ4r4G4
         GUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725460318; x=1726065118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7zATIwTHrXGiuEASzCytr2UxxMjPOWVj85mDZ7xtUWY=;
        b=OqlURuOsJSmscs99pey1WXNTluryO1X7PfrEdXJIKN3+I/aHg7zn4yRHHjf+qtzXE+
         gbUuNRuue0KvlcWYdQT0LeERb8UdPbBCC9zs4DNQY4+0klcFKtooIWlaEajBs74q0eDq
         7we4ysz92Wr9gThVozT2fvyys3XTk1dcmQdytgwQpxcATz0612QcfImOauPJIbVC4JLi
         k/owaZ52VTbdKVzzHZX6V5AqsW9z6lVsM0pu9hMoGo8RSTj5te6MuPJ2h/N3gGYleBCK
         KNRTdXcF+QOnNly3541hIqO7lk8zZGbacqaTF+wnFW7UgLgc1CcGyd/foMwDt5qGtov2
         IzTA==
X-Forwarded-Encrypted: i=1; AJvYcCVp0ojiNYWw2WmRE/v1EiGlW19kJ99b1Man7Pv8njACKbY8kkE4xY/Kw90Vdzvan1Owa1Ze/KWN05+O@vger.kernel.org
X-Gm-Message-State: AOJu0YyxTqVMjrDdcH7dqRjjnjThCaUKK+e48AFCYZMXx/cSpivRddQZ
	+rSgY3LSSX/2EZMnwSZW3JD7YsXDvi9rTUzEclA00WyWNBivoi00UAiPcxoLkdE=
X-Google-Smtp-Source: AGHT+IGm922K5aFjLbKMqisIulQGXLK1ylnjjkQghXfkGhr+kR8pZuYKfC5l0rEzVrrQHd7K7bQv8A==
X-Received: by 2002:a6b:7e0c:0:b0:806:3dac:5081 with SMTP id ca18e2360f4ac-82a7920d595mr183512639f.7.1725460317814;
        Wed, 04 Sep 2024 07:31:57 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ced2ee8559sm3114240173.174.2024.09.04.07.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 07:31:57 -0700 (PDT)
Message-ID: <b6de8769-7e4e-4a19-b239-a39fd424e0c8@sifive.com>
Date: Wed, 4 Sep 2024 09:31:55 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions
 for guests
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
 Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
 Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 kvm-riscv@lists.infradead.org
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-10-samuel.holland@sifive.com>
 <CAK9=C2WjraWjuQCeU2Y4Jhr-gKkOcP42Sza7wVp0FgeGaD923g@mail.gmail.com>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <CAK9=C2WjraWjuQCeU2Y4Jhr-gKkOcP42Sza7wVp0FgeGaD923g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Anup,

On 2024-09-04 7:17 AM, Anup Patel wrote:
> On Thu, Aug 29, 2024 at 6:32 AM Samuel Holland
> <samuel.holland@sifive.com> wrote:
>>
>> The interface for controlling pointer masking in VS-mode is henvcfg.PMM,
>> which is part of the Ssnpm extension, even though pointer masking in
>> HS-mode is provided by the Smnpm extension. As a result, emulating Smnpm
>> in the guest requires (only) Ssnpm on the host.
>>
>> Since the guest configures Smnpm through the SBI Firmware Features
>> interface, the extension can be disabled by failing the SBI call. Ssnpm
>> cannot be disabled without intercepting writes to the senvcfg CSR.
>>
>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>> ---
>>
>> (no changes since v2)
>>
>> Changes in v2:
>>  - New patch for v2
>>
>>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
>>  arch/riscv/kvm/vcpu_onereg.c      | 3 +++
>>  2 files changed, 5 insertions(+)
>>
>> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
>> index e97db3296456..4f24201376b1 100644
>> --- a/arch/riscv/include/uapi/asm/kvm.h
>> +++ b/arch/riscv/include/uapi/asm/kvm.h
>> @@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
>>         KVM_RISCV_ISA_EXT_ZCF,
>>         KVM_RISCV_ISA_EXT_ZCMOP,
>>         KVM_RISCV_ISA_EXT_ZAWRS,
>> +       KVM_RISCV_ISA_EXT_SMNPM,
>> +       KVM_RISCV_ISA_EXT_SSNPM,
>>         KVM_RISCV_ISA_EXT_MAX,
>>  };
>>
>> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
>> index b319c4c13c54..6f833ec2344a 100644
>> --- a/arch/riscv/kvm/vcpu_onereg.c
>> +++ b/arch/riscv/kvm/vcpu_onereg.c
>> @@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] = {
>>         [KVM_RISCV_ISA_EXT_M] = RISCV_ISA_EXT_m,
>>         [KVM_RISCV_ISA_EXT_V] = RISCV_ISA_EXT_v,
>>         /* Multi letter extensions (alphabetically sorted) */
>> +       [KVM_RISCV_ISA_EXT_SMNPM] = RISCV_ISA_EXT_SSNPM,
> 
> Why not use KVM_ISA_EXT_ARR() macro here ?

Because the extension name in the host does not match the extension name in the
guest. Pointer masking for HS mode is provided by Smnpm. Pointer masking for VS
mode is provided by Ssnpm at the hardware level, but this needs to appear to the
guest as if Smnpm was implemented, since the guest thinks it is running on bare
metal.

>>         KVM_ISA_EXT_ARR(SMSTATEEN),
>>         KVM_ISA_EXT_ARR(SSAIA),
>>         KVM_ISA_EXT_ARR(SSCOFPMF),
>> +       KVM_ISA_EXT_ARR(SSNPM),
>>         KVM_ISA_EXT_ARR(SSTC),
>>         KVM_ISA_EXT_ARR(SVINVAL),
>>         KVM_ISA_EXT_ARR(SVNAPOT),
>> @@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
>>         case KVM_RISCV_ISA_EXT_M:
>>         /* There is not architectural config bit to disable sscofpmf completely */
>>         case KVM_RISCV_ISA_EXT_SSCOFPMF:
>> +       case KVM_RISCV_ISA_EXT_SSNPM:
> 
> Why not add KVM_RISCV_ISA_EXT_SMNPM here ?
> 
> Disabling Smnpm from KVM user space is very different from
> disabling Smnpm from Guest using SBI FWFT extension.

Until a successful SBI FWFT call to KVM to enable pointer masking for VS mode,
the existence of Smnpm has no visible effect on the guest. So failing the SBI
call is sufficient to pretend that the hardware does not support Smnpm.

> The KVM user space should always add Smnpm in the
> Guest ISA string whenever the Host ISA string has it.

I disagree. Allowing userspace to disable extensions is useful for testing and
to support migration to hosts which do not support those extensions. So I would
only add extensions to this list if there is no possible way to disable them.

> The Guest must explicitly use SBI FWFT to enable
> Smnpm only after it sees Smnpm in ISA string.

Yes, exactly, and the purpose of not including Smnpm in the switch case here is
so that KVM user space can control whether or not it appears in the ISA string.

Regards,
Samuel

>>         case KVM_RISCV_ISA_EXT_SSTC:
>>         case KVM_RISCV_ISA_EXT_SVINVAL:
>>         case KVM_RISCV_ISA_EXT_SVNAPOT:
>> --
>> 2.45.1
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
> Regards,
> Anup


