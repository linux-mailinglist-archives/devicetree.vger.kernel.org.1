Return-Path: <devicetree+bounces-80380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A77A4918714
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA9101C21CC1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FDBA1849EF;
	Wed, 26 Jun 2024 16:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="BF7+8s2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13437173C
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719418472; cv=none; b=lgMoLrFKn1gTa17F7NshPzbvziJWvgcKdsMFQNNeaxvh+21NvSkHFGwlW5GkBlP/nv9r8kZEV4psPUUudD6BaMdKgZZxD6Sy9aeVlfjLPa739xUexMAve0ZvkcY16NlyJlkDhANy2mehql9kg9KuqcJgfA9sQLD598v7tbMD/vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719418472; c=relaxed/simple;
	bh=5atelX/vUS0AFl7mEPkUdeZjy2hqDtlRXR/m6bHx+R8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W0W3qfWiPBZpFCkZmlu7NBEggoAs9x/DdTR6hhVNFjdQFATLOa734q41cmsRJ1nMlXIc2OJy37U9b1df/UO/i8eD6vMFF1PbBHA1vWuRJsBPHpsumaqe5cwKTBOK3JUZJ+6ctVbI9D0JY8Cb9oE9JNa0IjhdS5dt+jIUBkkrEFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=BF7+8s2B; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-375f713a099so25906095ab.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719418470; x=1720023270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kDDEvuft6YUbchcNAvdNgKui7TGEyIpJ9wmKFGBqMjA=;
        b=BF7+8s2BxLrcl7qOVp0UlxsC8uigX58i1fnndEPXQCkO72+un1kp2KGYrstYGWkm2B
         aomuWuP6IQEPRj/dOeSqeydkIduwWga5Ud78qVXvLy6lCnkTQtB10vMYt9j6jaBBJc27
         uqqb0G/iBQ7CcqvA0Iy3eIrxbzBvpocEBqR6iIDEN6ugPgEkQ+qwYZC0Oyq8jrXsFK7M
         7254GaLkVll1DKuVTIACy9yQqVhlmi2rK7j2M/FwRqCaDTCYmUW4Vy+zcppcNX47MAnP
         JDDHqFa86WSu6VRxoeDXwDZ9KxsMZwZC3jAsBt0OIn8WLCcIhH9uXPXoQJGOLjsFUk6Z
         VPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719418470; x=1720023270;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kDDEvuft6YUbchcNAvdNgKui7TGEyIpJ9wmKFGBqMjA=;
        b=URlY3+Ra/sCuSgLimoQeLtPROKn/JmpRREsDNPt0dEWC0r/PA+TK3tkV1gAa/YK/se
         Kn/XZhXiVmdZT3NSAsNTTQXXN0TIV8k4ite4T1tHMKMNhhxrYeA+16O+GJasfmGAJkje
         mjWAA3PNeZQi3ru0U931tV00b5KNCNuO7mPZPVwmczAq5IDYZpEzXSXyiNzwbyH6rDHU
         ZQCZvZSjZDDw7700KaA/E3xMI4d1GlWDcn7vgOt4oMPlDMe0sMe2sNu1yk9Z1/mGyxYF
         rAMPOPmgRcriPL5fXOdsS+GRcVUu9PtZHKhLcxdbiruG3b0CcJT+QY4NkPe/is13Ci5x
         GOrA==
X-Forwarded-Encrypted: i=1; AJvYcCVzWMO+G848MKRr/sflFHQnsvhu6hR6t/qebB88F2woM3HWgvodT2BbTh5HJQSKYZYHg+efdWmZi+BzxfUmOTXvlGNCS7Pe/CWe4w==
X-Gm-Message-State: AOJu0YycdoCe8nwiSLy4hdASTeHvwi4d5OwcqwktADOI1sfFkvUS2DfU
	LPxGe93CHttKkUNocuEl4+Ae/wpfMKQxIUyw/ypYAvun3+upbsqDfcyNlrETuF8=
X-Google-Smtp-Source: AGHT+IELKQLJZTF+x62RjW2AmmDAddWE/zXZ9jt/OXnsyiCchr7jyoc/sCxp83/vqAiFW8alxf17RA==
X-Received: by 2002:a92:c569:0:b0:375:c473:4a8c with SMTP id e9e14a558f8ab-3763e166c2dmr137718185ab.32.1719418469797;
        Wed, 26 Jun 2024 09:14:29 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3772b4c8b06sm5483315ab.53.2024.06.26.09.14.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 09:14:29 -0700 (PDT)
Message-ID: <acd4c562-1f4f-4cd0-8ff8-e24e3e70d25e@sifive.com>
Date: Wed, 26 Jun 2024 11:14:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/10] dt-bindings: riscv: Add pointer masking ISA
 extensions
To: Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
 kasan-dev@googlegroups.com, Atish Patra <atishp@atishpatra.org>,
 Evgenii Stepanov <eugenis@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
References: <20240625210933.1620802-1-samuel.holland@sifive.com>
 <20240625210933.1620802-2-samuel.holland@sifive.com>
 <20240626-refined-cadmium-d850b9e15230@spud>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20240626-refined-cadmium-d850b9e15230@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Conor,

On 2024-06-26 11:01 AM, Conor Dooley wrote:
> On Tue, Jun 25, 2024 at 02:09:12PM -0700, Samuel Holland wrote:
>> The RISC-V Pointer Masking specification defines three extensions:
>> Smmpm, Smnpm, and Ssnpm. Document the behavior of these extensions as
>> following the current draft of the specification, which is 1.0.0-rc2.
> 
> You say draft, but the actual extension has already completed public
> review, right?

Correct. The spec is frozen, and public review is complete. Here's the tracking
ticket for details: https://jira.riscv.org/browse/RVS-1111

I use the word draft because it is still an -rc version, but I can reword this
if you prefer.

Regards,
Samuel

>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>> ---
>>
>> Changes in v2:
>>  - Update pointer masking specification version reference
>>
>>  .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> index cfed80ad5540..b6aeedc53676 100644
>> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> @@ -128,6 +128,18 @@ properties:
>>              changes to interrupts as frozen at commit ccbddab ("Merge pull
>>              request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
>>  
>> +        - const: smmpm
>> +          description: |
>> +            The standard Smmpm extension for M-mode pointer masking as defined
>> +            at commit 654a5c4a7725 ("Update PDF and version number.") of
>> +            riscv-j-extension.
>> +
>> +        - const: smnpm
>> +          description: |
>> +            The standard Smnpm extension for next-mode pointer masking as defined
>> +            at commit 654a5c4a7725 ("Update PDF and version number.") of
>> +            riscv-j-extension.
>> +
>>          - const: smstateen
>>            description: |
>>              The standard Smstateen extension for controlling access to CSRs
>> @@ -147,6 +159,12 @@ properties:
>>              and mode-based filtering as ratified at commit 01d1df0 ("Add ability
>>              to manually trigger workflow. (#2)") of riscv-count-overflow.
>>  
>> +        - const: ssnpm
>> +          description: |
>> +            The standard Ssnpm extension for next-mode pointer masking as defined
>> +            at commit 654a5c4a7725 ("Update PDF and version number.") of
>> +            riscv-j-extension.
>> +
>>          - const: sstc
>>            description: |
>>              The standard Sstc supervisor-level extension for time compare as
>> -- 
>> 2.44.1
>>


