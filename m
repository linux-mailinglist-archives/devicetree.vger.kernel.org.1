Return-Path: <devicetree+bounces-58207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 679318A0BEC
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 11:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DA74282133
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 09:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0429E143C4F;
	Thu, 11 Apr 2024 09:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="KOH5ePm2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBA913DBB2
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 09:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712826509; cv=none; b=sMbr+7Eoja7e7LK9mgr/FR7+MA+y+hYhY3fYLTyrlDTdVh1CjnU0y8PvQFUjYfaadXCJJ4lt0gqf0ee4L0MeLQOCi+nUPtPGvMk810hiN8DpHqstSbv1DkQ/Qi82go+G75Zs+jdR3pajxbpPiXZIsNBHMBpRKk2G6I4XNUw2SPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712826509; c=relaxed/simple;
	bh=BlEZ46Xi64DHUb7bmQfCkb+sHF8Swwq9Kc4UCAqyG34=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hb+f+vKqFCELDq/98rJdzkNUELvb/3/dbRUBuqFRkvzA7OqblSPBadquZGAVXqJogShvvd7y0DOgFH+0nNw2gEjGtdvlta0+GxgiWIoQuWRzMs3rUPLjhKhHgBf1gCGVKx3i15i9oqszQcKbq3c4Do+In8Y0ILThWwgR1kiaZJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=KOH5ePm2; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-34560201517so1170804f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 02:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712826506; x=1713431306; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yOkU8Fav8POJ1zZSx8brCh9PpnPTKPCkgjyKz/gc6Gs=;
        b=KOH5ePm26P+hBCUla6fsZpCGeXtfdBjR/zwnosu5hu2Rric7ccCMt/D/5AL+Ww9yQ/
         3HxJmYw+t7FXVDsT0w2oeaMUvlzgTzJFCadUPGesNYjNGi2y3MINsvArUjwcolUsx99a
         o3ocQkFiAxkg0G3LZDl16FOJkOFfbnty8H3PyGAKt6oGtHHAa99XKa+WQflnXx7myuBG
         GhdQBFza+l77EG7GX4JxKr+BaTbamDKoAmPq40ZPQHuj/WeYWZHIETeuS2gNKeTtDpmg
         X6YCwg56dNv2VJB7aywJICsTyMUWxmvez/si876Zke6MHPjCtCSBYeuY7gLsUYKoGF92
         D0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712826506; x=1713431306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yOkU8Fav8POJ1zZSx8brCh9PpnPTKPCkgjyKz/gc6Gs=;
        b=n91hUYrSd9/gj0Q4KQoELUTDI14yrN9Yg3VCpgBPPw5QsEiVQwRrUJm1AE5K48tgFX
         iulxqEGBeru2zyWXCGcj/b83L8g3khTswv7lZ90Yj3f7itQZXeM0r8Xap/mtYzq5vXqQ
         /xCNFIkITkbnAnvv6MhLDU2JuEp9Zg+aTRiBuP2YgnSI3vVGgMcrvi4rQTRD8dNpgqah
         v+oaIfv5CZ3f8ChCWhsYwaylzoR1i5t9gmqQ9lyZD8+3Jx10WEU88zOMNlK6NdblakEu
         hOtb6TY91OBFxQrrtbkCBjmjEF4CACHXlS6pUxK6hTG346eFRlYPvRFFiUgdE0qqvL7I
         Edog==
X-Forwarded-Encrypted: i=1; AJvYcCVBLh9Tqp/9WdJ0gCLIDFHkotZtkjtasdw/msSZKzWHdcueHdfOH4Y2SWPtyoGVNoqfOqQs8b3m9v2TcU7AgpX2UZZYBQFdHo/E9g==
X-Gm-Message-State: AOJu0YxZri05A/SuHwJJ6oJd196kMsPkHAPNM8gHEON8Cy5ytmBvXAI9
	GR/2eBScqV/95uSW6Aa3b21R52xS51VnyP5d3L+FBhLM03RqOiUXN8NNG3KjIuM=
X-Google-Smtp-Source: AGHT+IHXtbYSxVoeF1iBnVllermG43pnzwZlaqvMoeMWvagnUB6+O9nYBZ7rJSRJ0T7NS/Gwu/LqZg==
X-Received: by 2002:a05:600c:1c01:b0:416:5339:d114 with SMTP id j1-20020a05600c1c0100b004165339d114mr3502727wms.1.1712826506067;
        Thu, 11 Apr 2024 02:08:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:3624:d9b3:4998:d76b? ([2a01:e0a:999:a3a0:3624:d9b3:4998:d76b])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c351000b00414688af147sm4896372wmq.20.2024.04.11.02.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 02:08:22 -0700 (PDT)
Message-ID: <c86f9fa8-e273-4509-83fa-f21d3265d5c9@rivosinc.com>
Date: Thu, 11 Apr 2024 11:08:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] riscv: add ISA extension parsing for Zcmop
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Deepak Gupta <debug@rivosinc.com>, Conor Dooley <conor@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
 Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <20240410091106.749233-1-cleger@rivosinc.com>
 <20240410091106.749233-8-cleger@rivosinc.com>
 <ZhcFeVYUQJmBAKuv@debug.ba.rivosinc.com>
 <20240410-jawless-cavalry-a3eaf9c562a4@spud>
 <20240410-judgingly-appease-5df493852b70@spud>
 <ZhcTiakvfbjb2hon@debug.ba.rivosinc.com>
 <1287e6e9-cb8e-4a78-9195-ce29f1c4bace@rivosinc.com>
 <20240411-superglue-errant-b32e5118695f@wendy>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240411-superglue-errant-b32e5118695f@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 11/04/2024 11:03, Conor Dooley wrote:
> On Thu, Apr 11, 2024 at 09:25:06AM +0200, Clément Léger wrote:
>>
>>
>> On 11/04/2024 00:32, Deepak Gupta wrote:
>>> On Wed, Apr 10, 2024 at 11:27:16PM +0100, Conor Dooley wrote:
>>>> On Wed, Apr 10, 2024 at 11:16:11PM +0100, Conor Dooley wrote:
>>>>> On Wed, Apr 10, 2024 at 02:32:41PM -0700, Deepak Gupta wrote:
>>>>>> On Wed, Apr 10, 2024 at 11:11:00AM +0200, Clément Léger wrote:
>>>>>>> Add parsing for Zcmop ISA extension which was ratified in commit
>>>>>>> b854a709c00 ("Zcmop is ratified/1.0") of the riscv-isa-manual.
>>>>>>>
>>>>>>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
>>>>>>> ---
>>>>>>> arch/riscv/include/asm/hwcap.h | 1 +
>>>>>>> arch/riscv/kernel/cpufeature.c | 1 +
>>>>>>> 2 files changed, 2 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/riscv/include/asm/hwcap.h
>>>>> b/arch/riscv/include/asm/hwcap.h
>>>>>>> index b7551bad341b..cff7660de268 100644
>>>>>>> --- a/arch/riscv/include/asm/hwcap.h
>>>>>>> +++ b/arch/riscv/include/asm/hwcap.h
>>>>>>> @@ -86,6 +86,7 @@
>>>>>>> #define RISCV_ISA_EXT_ZCB        77
>>>>>>> #define RISCV_ISA_EXT_ZCD        78
>>>>>>> #define RISCV_ISA_EXT_ZCF        79
>>>>>>> +#define RISCV_ISA_EXT_ZCMOP        80
>>>>>>>
>>>>>>> #define RISCV_ISA_EXT_XLINUXENVCFG    127
>>>>>>>
>>>>>>> diff --git a/arch/riscv/kernel/cpufeature.c
>>>>> b/arch/riscv/kernel/cpufeature.c
>>>>>>> index 09dee071274d..f1450cd7231e 100644
>>>>>>> --- a/arch/riscv/kernel/cpufeature.c
>>>>>>> +++ b/arch/riscv/kernel/cpufeature.c
>>>>>>> @@ -265,6 +265,7 @@ const struct riscv_isa_ext_data
>>>>> riscv_isa_ext[] = {
>>>>>>>      __RISCV_ISA_EXT_DATA(zcb, RISCV_ISA_EXT_ZCB),
>>>>>>>      __RISCV_ISA_EXT_DATA(zcd, RISCV_ISA_EXT_ZCD),
>>>>>>>      __RISCV_ISA_EXT_DATA(zcf, RISCV_ISA_EXT_ZCF),
>>>>>>> +    __RISCV_ISA_EXT_DATA(zcmop, RISCV_ISA_EXT_ZCMOP),
>>>>>>
>>>>>> As per spec zcmop is dependent on zca. So perhaps below ?
>>>>>>
>>>>>> __RISCV_ISA_EXT_SUPERSET(zicboz, RISCV_ISA_EXT_ZCMOP,
>>>>> RISCV_ISA_EXT_ZCA)
>>>>>
>>>>> What's zicboz got to do with it, copy-pasto I guess?
>>>
>>> Yes, copy-pasta :-)
>>>
>>>>> If we're gonna imply stuff like this though I think we need some
>>>>> comments explaining why it's okay.
>>>>
>>>> Also, I'm inclined to call that out specifically in the binding, I've
>>>> not yet checked if dependencies actually work for elements of a string
>>>> array like the do for individual properties. I'll todo list that..
>>>
>>> Earlier examples of specifying dependency on envcfg actually had functional
>>> use case.
>>> So you are right, I am not sure if its actually needed in this
>>> particular case.
>>
>> I actually saw that and think about addressing it but AFAICT, this
>> should be handled by the machine firmware passing the isa string to the
>> kernel (ie, it should be valid). In the case of QEMU, it takes care of
>> setting the extension that are required by this extension itself.
>>
>> If we consider to have potentially broken isa string (ie extensions
>> dependencies not correctly handled), then we'll need some way to
>> validate this within the kernel.
> 
> No, the DT passed to the kernel should be correct and we by and large we
> should not have to do validation of it. What I meant above was writing
> the binding so that something invalid will not pass dtbs_check.

Acked, I was mainly answering Deepak question about dependencies wrt to
using __RISCV_ISA_EXT_SUPERSET() which does not seems to be relevant
since we expect a correct isa string to be passed. But as you stated, DT
validation clearly make sense. I think a lot of extensions strings would
benefit such support (All the Zv* depends on V, etc).

Clément


