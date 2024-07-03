Return-Path: <devicetree+bounces-82664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB2E925470
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 09:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75F91F24F90
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 07:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF5C13698F;
	Wed,  3 Jul 2024 07:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Xl+RwvpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F3B13664A
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 07:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719990830; cv=none; b=T+otnGPXQv42i6NHmYoj5Wvm6+rpbO8F4/e+Z631Bhy4KN51pbmug7dzpElHWEuR3QCfnw8iuMwsPYR0iMyPDBF4FoMbTNzABwX6qx593NZZPV1P9ILWcyvBmE1RfW77rXiROknxoWBWR4rC3M3sGWiTbU8tCBiYB01ckW8InMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719990830; c=relaxed/simple;
	bh=hw+ZymsrKMSb49jSECjMf0BKlJxnEXQtbyHFUJnj1+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ENGO0E3gbdlO22X9MWEHiqoOdYU8ZA8NCGRwOEDm7NBgOLSK/FCk5h0Ok44ew2u5WldifQ73AV8He+NOTVXVEb/fKK0kmit39/0Zemicrl7HHEl0JvqgAGZk7M/6mp6VWMueMVbAbgskQjnCx54lXQMsJnfxwYMKzbVQheUTr64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Xl+RwvpZ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ee7a4f67aeso1298501fa.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 00:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719990826; x=1720595626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KN2K7tgPnaRdMlkcJsecCmouFwytLiuseqebs8rLJVU=;
        b=Xl+RwvpZ0/yaSZX87BiVybPBof/hA0BzwmmfurFrgVcjzQezHljohEEx4suygYKsGr
         JtBr4M6KLwYPSqNJaWiJA37MjhcQcA02oOXsyhSZDVyUVzDxGc3q61jBuA4AQbAL6HnW
         wJy2EQtVdbIvQ3wFo+zMCfhiLiKwdubYTTy02xbdgNoZMDDkw0IlgG2Qc0FbMMo/vquQ
         3c6HwOvmRGVm6svNQCS27nq2CNLXh63AHWUwfIiQ0E2SiTU0RJu7J/3fdgNns3z39ED8
         KFIJHFGMSf3qB83w+u8K6opH2JnphhG/sAv59f5iVu+CrVTi+OebOGxf/ZBwkB5WjR9f
         flkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719990826; x=1720595626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KN2K7tgPnaRdMlkcJsecCmouFwytLiuseqebs8rLJVU=;
        b=t1vTIwPeHMo70jALruG2JM1p7ODXrptHBmhhwL8+hQ8gSOoCfhGzsd9Wy214D0OagE
         hzYkFsTLOgBdgvUUnJFzqEdrFjwvgEfJ5EkG14isLYu/tT3MRBUxRFE/lKtmWz3bYsZp
         1R5hJAj/H0h3F+IrbcSpMC8VicLDnDBY1FOv0kaG2mlKTsHxesrjaB24sIjX4Mj4Z3+W
         KhChAapyQqcctcSZOBakZze1LdpOwZEthblx+SeSi9z+iTAcNwgkq9bu28XxnqnIH5UV
         sJ0RxGDJQTm2Ml8TZVHJpcbQi5K3U8BJAPjTTjVIhjKrIo7vCQvOzKwOVL6VNDBZG5Qn
         ufdw==
X-Forwarded-Encrypted: i=1; AJvYcCX98sNKDNpRzePSmclLTgswaeQIUDx0MFbrNShF61W0Uij+uKETf9pRGiREtj41cJ3SAy8qHKYkUQ+H2TsjldYcdFb4iTAA0v0N6g==
X-Gm-Message-State: AOJu0YykmNm0Y98M7Ra8Tlb7yxwUnQHsOC/Kxq2eNXfHccNQKVTtnCBT
	ixzz7QwSCLNfVB751R7C/kog5dC+DcKr4EfEA4tVIxVt3fk/J/31SQ74c/L5XU8=
X-Google-Smtp-Source: AGHT+IFFfAg0I5+WBGdENPKRIjqEUI5N8ZPdcwFhG3jl2OApcULLU4fNNmCI6KI3zwI9td0RSLoRcA==
X-Received: by 2002:a05:651c:1053:b0:2ec:4399:9be1 with SMTP id 38308e7fff4ca-2ee5e2a8b15mr62962181fa.0.1719990824955;
        Wed, 03 Jul 2024 00:13:44 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4258036d034sm124160185e9.43.2024.07.03.00.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jul 2024 00:13:44 -0700 (PDT)
Message-ID: <af3152b6-adf7-40fa-b2a1-87e66eec45b0@rivosinc.com>
Date: Wed, 3 Jul 2024 09:13:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/8] RISC-V: Check Zicclsm to set unaligned access
 speed
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Jesse Taube <jesse@rivosinc.com>,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>,
 Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>,
 Eric Biggers <ebiggers@google.com>, Greentime Hu <greentime.hu@sifive.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@rivosinc.com>,
 Heiko Stuebner <heiko@sntech.de>, Costa Shulyupin <costa.shul@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>,
 Anup Patel <apatel@ventanamicro.com>, Zong Li <zong.li@sifive.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Alexandre Ghiti <alexghiti@rivosinc.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Erick Archer <erick.archer@gmx.com>, Joel Granados <j.granados@samsung.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240625005001.37901-1-jesse@rivosinc.com>
 <20240625005001.37901-5-jesse@rivosinc.com>
 <20240626-march-abreast-83414e844250@spud> <Zn3XrLRl/yazsoZe@ghost>
 <43941f48-9905-4b25-89ef-6ad75bf1a123@rivosinc.com>
 <20240701-ajar-italicize-9e3d9b8a0264@spud>
 <ef639748-3979-4236-b48d-c0c44e2d5ad2@rivosinc.com> <ZoR9swwgsGuGbsTG@ghost>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <ZoR9swwgsGuGbsTG@ghost>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 03/07/2024 00:22, Charlie Jenkins wrote:
> On Mon, Jul 01, 2024 at 04:20:15PM +0200, Clément Léger wrote:
>>
>>
>> On 01/07/2024 15:58, Conor Dooley wrote:
>>> On Mon, Jul 01, 2024 at 09:15:09AM +0200, Clément Léger wrote:
>>>>
>>>>
>>>> On 27/06/2024 23:20, Charlie Jenkins wrote:
>>>>> On Wed, Jun 26, 2024 at 03:39:14PM +0100, Conor Dooley wrote:
>>>>>> On Mon, Jun 24, 2024 at 08:49:57PM -0400, Jesse Taube wrote:
>>>>>>> Check for Zicclsm before checking for unaligned access speed. This will
>>>>>>> greatly reduce the boot up time as finding the access speed is no longer
>>>>>>> necessary.
>>>>>>>
>>>>>>> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
>>>>>>> ---
>>>>>>> V2 -> V3:
>>>>>>>  - New patch split from previous patch
>>>>>>> ---
>>>>>>>  arch/riscv/kernel/unaligned_access_speed.c | 26 ++++++++++++++--------
>>>>>>>  1 file changed, 17 insertions(+), 9 deletions(-)
>>>>>>>
>>>>>>> diff --git a/arch/riscv/kernel/unaligned_access_speed.c b/arch/riscv/kernel/unaligned_access_speed.c
>>>>>>> index a9a6bcb02acf..329fd289b5c8 100644
>>>>>>> --- a/arch/riscv/kernel/unaligned_access_speed.c
>>>>>>> +++ b/arch/riscv/kernel/unaligned_access_speed.c
>>>>>>> @@ -259,23 +259,31 @@ static int check_unaligned_access_speed_all_cpus(void)
>>>>>>>  	kfree(bufs);
>>>>>>>  	return 0;
>>>>>>>  }
>>>>>>> +#else /* CONFIG_RISCV_PROBE_UNALIGNED_ACCESS */
>>>>>>> +static int check_unaligned_access_speed_all_cpus(void)
>>>>>>> +{
>>>>>>> +	return 0;
>>>>>>> +}
>>>>>>> +#endif
>>>>>>>  
>>>>>>>  static int check_unaligned_access_all_cpus(void)
>>>>>>>  {
>>>>>>> -	bool all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
>>>>>>> +	bool all_cpus_emulated;
>>>>>>> +	int cpu;
>>>>>>> +
>>>>>>> +	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICCLSM)) {
>>>>>>> +		for_each_online_cpu(cpu) {
>>>>>>> +			per_cpu(misaligned_access_speed, cpu) = RISCV_HWPROBE_MISALIGNED_FAST;
>>>>>>
>>>>>> - const: zicclsm
>>>>>>   description:
>>>>>>     The standard Zicclsm extension for misaligned support for all regular
>>>>>>     load and store instructions (including scalar and vector) but not AMOs
>>>>>>     or other specialized forms of memory access. Defined in the
>>>>>>     RISC-V RVA Profiles Specification. 
>>>>>>
>>>>>> Doesn't, unfortunately, say anywhere there that they're actually fast :(
>>>>>
>>>>> Oh no! That is unfortunate that the ISA does not explicitly call that
>>>>> out, but I think that acceptable.
>>>>>
>>>>> If a vendor puts Zicclsm in their isa string, they should expect
>>>>> software to take advantage of misaligned accesses. FAST is our signal to
>>>>> tell software that they should emit misaligned accesses.
>>>>
>>>> AFAIK, Zicclsm is not even an ISA extension, simply a profile
>>>> specification which means that only the execution environment which
>>>> provides the profile support misaligned accesses (cf
>>>> https://lists.riscv.org/g/tech-profiles/message/56).
>>>
>>> I dunno, the specification status page used to describe it as an
>>> extension:
>>> https://wiki.riscv.org/display/HOME/Specification+Status+-+Historical
>>> My understanding was that these could be considered extensions, just
>>> like we are considering svade to be one.
>>>
>>>> . I don't think we
>>>> can extrapolate that the misaligned accesses will be fast at all.
>>>
>>> That is my opinion on it too. If it doesn't say "fast" and give a
>>> definition for what that means in the binding, then we can't assume that
>>> it is fast. I'm also wary of extending definitions of extensions in the
>>> binding, because a) I am 90% sure that people writing devicetrees don't
>>> care and b) it'd be a potential difference between DT and ACPI without a
>>> real justification (unlike the zkr or svade/svadu situations).
>>
>> BTW, the profile spec [1] has a note that states the following for Zicclsm:
>>
>> "Even though mandated, misaligned loads and stores might execute
>> extremely slowly. Standard software distributions should assume their
>> existence only for correctness, not for performance."
>>
>> Which was also quoted in patch 1, so I guess that settles it.
> 
> The intention here was to allow vendors to configure an option to skip
> the probing. This extension does not seem useful as it is written! A way
> around this would be to add a kernel arg to set the access speed but
> maybe it doesn't matter. For the sake of this patch, it looks like we
> should get rid of this Zicclsm check.

I think a parameter could be appropriate for vendors that want to skip
the probing and gain a bit of time on boot time. Other options already
exists to force specific settings so, why not !

Thanks,

Clément

> 
> - Charlie
> 
>>
>> Thanks,
>>
>> Clément
>>
>> Link:
>> https://github.com/riscv/riscv-profiles/blob/main/src/profiles.adoc?plain=1#L524
>> [1]
>>
>>>
>>>>> This allows for a generic kernel, like the one a distro would compile, to
>>>>> skip the probing when booting on a system that explicitly called out
>>>>> that the hardware supports misaligned accesses.

