Return-Path: <devicetree+bounces-61456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B518ACBCA
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 13:14:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FD981C22CDF
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D1A1465AA;
	Mon, 22 Apr 2024 11:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="pNXhE4qy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B38145FFF
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 11:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713784472; cv=none; b=Orfe9Yao5sBpo1qC8VCV4UbRkO0ywei6if2Onv49cER1kVVNslAIv2fC9vJocAzL+2EQhxOkF9Z8ChdNQyvMTROBM+/gktwhN1j2Cg5RPUAi9D/E4Ma1X7hZ3oLxTgLmxuzwZAdQlaK25xqJjnb2SItkd3WZZ8KfuyNneT/1BJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713784472; c=relaxed/simple;
	bh=zZ5Qg5WxBAkfsgf85z6RtZBesdjrnTKjsOr6tnZ/Cqc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oH+5A3vYlNKhaO/vnHhrZGThPi+6yfZqaUdI208NBlCS+LQn9Lcpi59qyrvxspF+n+Oye0fvU+YjaxPBUBFaDOamzGSDabd3lSR22suBzWWGWRuey2ycslfcqkjXDH0YUCT/5d4/uzUH/RI2OH1D/HJeT14keSuxQ7gAwmfMcTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=pNXhE4qy; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-349bd110614so750455f8f.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 04:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713784468; x=1714389268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=txTWpp1pw11cuzo3l6Yv3qVL9j61JY83c5SyuufTWno=;
        b=pNXhE4qyq+5L68XkpJZ9k4DIYLY5EVhHt8ZpX4UksINZRYugQIOX0/CQSHWTTBdJOL
         NYLxEpKS9Ju3q+ASPY0odC9Jad8Q83Ji//dxiXqvCuZjqngtJWZghJ0bgdtH9vNetCTT
         lYMRqRVqx20tnMFK2/S86T8Qq+iXx1dEtfFLPdZ89mTISoGQ5achtG5x/0Qs73XKHgli
         6OI7rEJfRyUxL3rDi7G8zDjCo0TuKbJwgBFkkPSOE13kQvr0222+0MFg9i9EJtziApRD
         Zlgj8MT9SLGc4t273aKWYLwgmNjOC8QjiEerI4Q/wq4PKn5z0oWF+W+/EJZFxfbqylq7
         LqHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713784468; x=1714389268;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=txTWpp1pw11cuzo3l6Yv3qVL9j61JY83c5SyuufTWno=;
        b=nZqyP7dHnx61m8eojJItOoOvaUyD4xfMWS+ZwAA92/ZRQRh9jstfDx7ebGAVEWVs45
         DFR0PI5ZMt3D6FvGZdiNPQclNhd4SPQ6EhAc+/x742y3Cl9+pqveS5gsg15khIFh0opN
         rtGALowsDGFdnODFbF9PXJMf+eNVdLV0ltQhCIifyFeFZvUairyBHbmZnVLLWEArGewI
         3xABD4uL9VQpmYmnaXORPbchDra4Lde/CyTYb2BtL5LmytBCyIms1NXrngJXFsHzQ/Yx
         gBDedu61mSFl4NQqjia5N5ur4kw/I7vCa0pCroLPw9ZGvVh9vZeOB0/jCR7SP6f4Kx+A
         XbeA==
X-Forwarded-Encrypted: i=1; AJvYcCWOSYid0fEaSJluL3NXq72YJdKZKmbujQhG0QE/FMVVC8O8l9eeBHPZQ/OuSmPFZt2TdpHPG8vYTBuE7/B30/jGm/h9I4HBnbXpUA==
X-Gm-Message-State: AOJu0Yzw/vNEaYNasJZdxkAyDM3pyZLzMMomimfhHm69uiUMrlIUrw/a
	aCCmArtNYmsXbyVs49l40TSmEvmdu50gq1GlUU36tbhY/4lgPRJlaNy9ML6w8a0=
X-Google-Smtp-Source: AGHT+IFg50yN4QrZNx2LlD1EJ2tT/EI9hFZ2bUjcoiDOKnV7sj3JlUWpq/52eyPbnKALbKb6A7dtxw==
X-Received: by 2002:a5d:6511:0:b0:34a:f759:271d with SMTP id x17-20020a5d6511000000b0034af759271dmr2082090wru.6.1713784467909;
        Mon, 22 Apr 2024 04:14:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:9f43:3ca4:162c:d540? ([2a01:e0a:999:a3a0:9f43:3ca4:162c:d540])
        by smtp.gmail.com with ESMTPSA id cg3-20020a5d5cc3000000b00349bd105089sm11706450wrb.47.2024.04.22.04.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 04:14:27 -0700 (PDT)
Message-ID: <032530b8-a26e-494f-bd9c-3e1661add5d4@rivosinc.com>
Date: Mon, 22 Apr 2024 13:14:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] riscv: add ISA parsing for Zca, Zcf, Zcd and Zcb
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
 Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <20240418124300.1387978-1-cleger@rivosinc.com>
 <20240418124300.1387978-5-cleger@rivosinc.com>
 <20240419-clinic-amusing-d23b1b6d2af2@spud>
 <6ab9e591-f2f2-4267-8bdd-169ef0243e14@rivosinc.com>
 <20240422-daylight-sassy-ff3b0d867fef@wendy>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240422-daylight-sassy-ff3b0d867fef@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 22/04/2024 11:35, Conor Dooley wrote:
> On Mon, Apr 22, 2024 at 10:53:10AM +0200, Clément Léger wrote:
>> On 19/04/2024 17:51, Conor Dooley wrote:
>>> On Thu, Apr 18, 2024 at 02:42:27PM +0200, Clément Léger wrote:
>>>> The Zc* standard extension for code reduction introduces new extensions.
>>>> This patch adds support for Zca, Zcf, Zcd and Zcb. Zce, Zcmt and Zcmp
>>>> are left out of this patch since they are targeting microcontrollers/
>>>> embedded CPUs instead of application processors.
>>>>
>>>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
>>>> ---
>>>>  arch/riscv/include/asm/hwcap.h | 4 ++++
>>>>  arch/riscv/kernel/cpufeature.c | 4 ++++
>>>>  2 files changed, 8 insertions(+)
>>>>
>>>> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
>>>> index 543e3ea2da0e..b7551bad341b 100644
>>>> --- a/arch/riscv/include/asm/hwcap.h
>>>> +++ b/arch/riscv/include/asm/hwcap.h
>>>> @@ -82,6 +82,10 @@
>>>>  #define RISCV_ISA_EXT_ZACAS		73
>>>>  #define RISCV_ISA_EXT_XANDESPMU		74
>>>>  #define RISCV_ISA_EXT_ZIMOP		75
>>>> +#define RISCV_ISA_EXT_ZCA		76
>>>> +#define RISCV_ISA_EXT_ZCB		77
>>>> +#define RISCV_ISA_EXT_ZCD		78
>>>> +#define RISCV_ISA_EXT_ZCF		79
>>>>  
>>>>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
>>>>  
>>>> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
>>>> index 115ba001f1bc..09dee071274d 100644
>>>> --- a/arch/riscv/kernel/cpufeature.c
>>>> +++ b/arch/riscv/kernel/cpufeature.c
>>>> @@ -261,6 +261,10 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>>>>  	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
>>>>  	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
>>>>  	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),
>>>> +	__RISCV_ISA_EXT_DATA(zca, RISCV_ISA_EXT_ZCA),
>>>> +	__RISCV_ISA_EXT_DATA(zcb, RISCV_ISA_EXT_ZCB),
>>>> +	__RISCV_ISA_EXT_DATA(zcd, RISCV_ISA_EXT_ZCD),
>>>> +	__RISCV_ISA_EXT_DATA(zcf, RISCV_ISA_EXT_ZCF),
>>>>  	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
>>>>  	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
>>>>  	__RISCV_ISA_EXT_DATA(zbc, RISCV_ISA_EXT_ZBC),
>>>
>>> Ye, this looks exactly like what I "feared".
>>
>> Ok but for instance, Qemu actually set Zc* based on C/F/D. So the ISA
>> string containing theses dependencies should actually also be allowed.
>> So should we simply ignore them in the ISA string and always do our own
>> "post-processing" based on C/F/D?
> 
> I'm not familiar with the contents of all of these extensions, but I
> assume the reasoning for splitting them out is that you can implement
> them but not maybe not implement C (or something similar)? If that's the
> case, you cannot always imply.

Yeah, they can be implemented independently so we need to be able to
parse them independently. However, the kernel currently requires C so we
should always have Zca/Zcf/Zcd. But if that changes in the future, then,
that won't be true anymore. Better keep it generic probably

Clément


