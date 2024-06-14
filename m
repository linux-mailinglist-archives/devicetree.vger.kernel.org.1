Return-Path: <devicetree+bounces-75831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F27908D5B
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A79BC287B57
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 14:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3FFD26D;
	Fri, 14 Jun 2024 14:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DOtNGdK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6F9945A
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718375318; cv=none; b=WUk4v0TWv4Cft/wCmqcw74RZoKxi8a2lWDtY1QUZXslm82eqG5ddRuSO+vtqFqenC1PVm8+wFVon4SPJAkpOnKuhr68D/3I0kLyeuz72+t8djNh1ogCBjkOLEv3/Dpemwi0vxVe0tPL/MPtme9pdJDhcCcc7991l0BkFPW9iRzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718375318; c=relaxed/simple;
	bh=a8giHmOguwIdhSxsi+Yd0a2rm54oi3KcKwGr9bPc3Bc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iwgMArLlIBMCb4ETDK2goatIfbt3l1cJsNhACRxewiAF6wkByMVAF8xjsrqt6QbTcV5HnnTzcDYXCGjDB7gou3k/e3B+kUbfw2KigPhFxiHATGwApChdPY5XQQMYmLxsJt8KdUV7/LpsGTsHWmjT1pasvNv6p5Qn8EJV8J+Z6WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DOtNGdK9; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-6fd8506a0b2so1798680a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718375315; x=1718980115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q+AS47E60QeHhUZsqoLBw7psRgmmP43ASuDhPpTTvN0=;
        b=DOtNGdK9m/Nzz6FCeWtSbvu/54qzv5BSvUh8ZlNYFGxAPo/K1NrwNZILFjog9U/tbj
         HRqINOGYme49IkmVw+UBN6adOfIKPzzELJ50JJhCkNhCWEWXIsVSWzrjsV71KB0Vh+YM
         RhDwa+GsGRf5Ag0lqtbosNePnAUCSXftXLkRc5gp/aXN5ZjgLgXgOpzi8JF0dJbeDRfg
         rqUVDov5aQxnT2V4RtuRTmVkDP2cq4ELv3JzwWsYfHDmBYY/O/J3HR98363gNxgA62LB
         rjZ/hDLY1oEW7WbwS/zSKuDD4X+4SRjIxXr5xddCA6V/me2O40lXRhgCV2DtrU9fWLA9
         GEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718375315; x=1718980115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+AS47E60QeHhUZsqoLBw7psRgmmP43ASuDhPpTTvN0=;
        b=qCbha3tdbi8AJ7kiVY+BsMUNCNElEAKqVaQ1wjrpveK7JaifktHPoEhS5g6821hb77
         M820RXAXWqciAO3J1liJkWxLfPILGNGNU3Vt/1rZwGfiV7ZY6dyxEHtDX33L40dGouS6
         EP1BLIj4JmTJedKT9s+PFeA6bGLdkgSZp6mFlEu1hHeBQ89LY+BV0sg6O2pHT8UXaDAC
         h4Ty5iYlE1CUssOS938Ot/b9BEehtQz4BRSiXJCH/0pw25qAM4WfWJIntwJ2xlaKWRdQ
         FOyHwLCUHlV+2gAHjjSVLDRkkIlq98uIpVFvpFs1xPz8Av2o2hRZdSVlmTc2PA6Yuhuc
         LGFg==
X-Forwarded-Encrypted: i=1; AJvYcCWvWwJfbwKMw1ZX+4JWYrpS4Vqulq1u/i+nSZ5Ap+8dIRnX2UBWWYhon6tK7ZmlpN1mIkgYbQoSTdorO/iUV9SV7LyfG0DGrYxNpg==
X-Gm-Message-State: AOJu0YxiXWJzfiFdhpZoP9CZtIRlyjjysuECw2uGGLVosJM8YVlCaksO
	FpiOhJhnm2REiwd20ZlBgr4b2tT7oujNq6ngJfoUp4jGyPd9G4v2f73DPl2i4p8=
X-Google-Smtp-Source: AGHT+IFlCjL08b27lesj/M0GSbfgPmaNXoKZh84hCGeFfyGBJsLwWWKLF7r4KbtLWMpGVc+/CtaW+Q==
X-Received: by 2002:a05:6a20:4314:b0:1b2:5baa:7acb with SMTP id adf61e73a8af0-1bae7e14cb3mr4139421637.1.1718375315129;
        Fri, 14 Jun 2024 07:28:35 -0700 (PDT)
Received: from [10.4.10.38] (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc925fe7sm3211617b3a.19.2024.06.14.07.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 07:28:34 -0700 (PDT)
Message-ID: <acb7a467-fc0e-4f32-8410-cd7aafce8bae@rivosinc.com>
Date: Fri, 14 Jun 2024 10:28:17 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] RISC-V: Detect unaligned vector accesses
 supported.
To: Conor Dooley <conor.dooley@microchip.com>
Cc: linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?=
 <cleger@rivosinc.com>, Evan Green <evan@rivosinc.com>,
 Andrew Jones <ajones@ventanamicro.com>,
 Charlie Jenkins <charlie@rivosinc.com>, Xiao Wang <xiao.w.wang@intel.com>,
 Andy Chiu <andy.chiu@sifive.com>, Eric Biggers <ebiggers@google.com>,
 Greentime Hu <greentime.hu@sifive.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>,
 Costa Shulyupin <costa.shul@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>,
 Anup Patel <apatel@ventanamicro.com>, Zong Li <zong.li@sifive.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Alexandre Ghiti <alexghiti@rivosinc.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Erick Archer <erick.archer@gmx.com>, Joel Granados <j.granados@samsung.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240613191616.2101821-1-jesse@rivosinc.com>
 <20240613191616.2101821-5-jesse@rivosinc.com>
 <20240614-viral-dinghy-71d5f6585a55@wendy>
 <20240614-distaste-negligee-ba9216a8684e@wendy>
Content-Language: en-US
From: Jesse Taube <jesse@rivosinc.com>
In-Reply-To: <20240614-distaste-negligee-ba9216a8684e@wendy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/14/24 04:40, Conor Dooley wrote:
> On Fri, Jun 14, 2024 at 09:36:55AM +0100, Conor Dooley wrote:
>> On Thu, Jun 13, 2024 at 03:16:13PM -0400, Jesse Taube wrote:
>>> --- a/arch/riscv/kernel/unaligned_access_speed.c
>>> +++ b/arch/riscv/kernel/unaligned_access_speed.c
>>> @@ -19,7 +19,8 @@
>>>   #define MISALIGNED_BUFFER_ORDER get_order(MISALIGNED_BUFFER_SIZE)
>>>   #define MISALIGNED_COPY_SIZE ((MISALIGNED_BUFFER_SIZE / 2) - 0x80)
>>>   
>>> -DEFINE_PER_CPU(long, misaligned_access_speed);
>>> +DEFINE_PER_CPU(long, misaligned_access_speed) = RISCV_HWPROBE_MISALIGNED_UNKNOWN;
>>> +DEFINE_PER_CPU(long, vector_misaligned_access) = RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED;
>>>   
>>>   #ifdef CONFIG_RISCV_PROBE_UNALIGNED_ACCESS
>>>   static cpumask_t fast_misaligned_access;
>>> @@ -268,12 +269,18 @@ static int check_unaligned_access_all_cpus(void)
>>>   
>>>   	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICCLSM)) {
>>>   		for_each_online_cpu(cpu) {
>>> +#ifdef CONFIG_RISCV_VECTOR_MISALIGNED
>>> +			per_cpu(vector_misaligned_access, cpu) = RISCV_HWPROBE_VEC_MISALIGNED_FAST;
>>> +#endif
>>> +#ifdef CONFIG_RISCV_MISALIGNED
>>>   			per_cpu(misaligned_access_speed, cpu) = RISCV_HWPROBE_MISALIGNED_FAST;
>>> +#endif
>>
>> Can you IS_ENABLED()-ify these two as well please?
> 
> Ah, you can't cos the variable doesn't exist in the other case.

Yeah kinda just dealing with how it was originally written ideally we 
would use IS_ENABLED. I don't really want to have a 500+ diff patch
IS_ENABLED()-ifying the original code as well. I can do that if 
necessary though.

Thank,
Jesse Taube

