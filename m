Return-Path: <devicetree+bounces-144164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9EDA2D178
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 00:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34F03188B626
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 23:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9EF1DE2B6;
	Fri,  7 Feb 2025 23:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="jx6Uu/3Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29DF1C700F
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 23:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738970738; cv=none; b=EUb+qVz8+QEJK12GFDCj+Vkw+q1S4ijZoLxKCMSKj0QyVdzZmBpMd5hVz8S3B60zAUX0L3NoSmFvc2UGoIaL+xN5Tp1ilQbYawcAmgaGQVX6talp1fFh9gdXMEJ2fPtEWNGw/AAbLmDRYj1UUq1dJcqqEdU5fBG1BsIfwrJUGOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738970738; c=relaxed/simple;
	bh=Y+nBP1ws7F9BAb3YRV7arhbrJpPcf71k0EpDEmHvPdg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=afP6JKcYrvmmqUoemKQ0nzH2rCVkce+YXNR5W1P/CWjVwkcYjUhzlPgQz7DjT9xrc9M3+mLvitDK+JSWF4JmzURYRksvIFqRsnsastrGe9zmh7rxsLFNH/2v1/3gsqtycXEhgMhshYk2aGJd0tlFbgBhImnV52mpsuTBZzRDm94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=jx6Uu/3Q; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2163dc5155fso54488505ad.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 15:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738970735; x=1739575535; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NNlAmhG4r3/Civ4C+1dYrzk4uNPcGHra0U2geeoELN8=;
        b=jx6Uu/3Q/Jgc79KW5z1e/L5NKYSUouoGuqhRY3YbDkaQkJhsdqeEASUci74bcXg7f6
         BdkeT0cy5Q4nUYNboOcWvtLChdjmVSC1t5qRDGJ31dC9SPngVs5UQOwpP+gJLO/fOdzk
         rgXfZWehqwN1igebvRU5ILBxMdJvNrdnt4M+XnY/T0JfGlG/9VNJoa/ithaL6NUx+PYW
         HYG535PmyRlIWBCYPonJ+8AG/DHNqZfsmy3L/ru9B2KWlEAzmh6MqRa4RkESwjcb7aMl
         gNOonjsg0UxOMw/iCW0G651xiDtsaxRX2jR1W6dpRfveHZhe00jb7Sc7FQE5Cj+X7YHN
         18WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738970735; x=1739575535;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NNlAmhG4r3/Civ4C+1dYrzk4uNPcGHra0U2geeoELN8=;
        b=iqonw4coB5HWFOo9L0j2vi9yO0QJrxb7j5z6MBc4r8BLUDqHGUeC6OS5WxX0l+nCSj
         9yGbsRNAgoPsM8HHr9ni2mIvTac1djC0U+PU43wMoPXjoMplb3MNgeztO0HkPcGFSXKp
         wwue37RSb1G3CAHooBa55joqGa/cSgfL7dxfhByC43bT40NknUVWARUPnu2tzkHO91ZX
         kCQvYBPNnE+cEo5RZRslLnqv6u0l0h3sgITVgr3PcYg/XSWf5AKtfeuvplV9A65EzyZD
         2uiAuINGE4YmvuioF72ZyapdA9x5qYF9sapw+1DLtLFd8YifRYpToQR/TbrbGcj1gfG+
         SYzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWl2w1RV79Z1SBIBHl6uZ+sPCOoyph3tV7U+G0wd93fr8hD7jr4SMaVIeZhI3RxlvGDdDvQFzbKJGtO@vger.kernel.org
X-Gm-Message-State: AOJu0YxP8gIxwUUpzln7ktnb5Ifw5e6jKRhe87APN4OLk7T26YO0ioFq
	z3HtD1N0NQHjI0xSMGt7b1ipGB3zf/b+wRh+FZonMxXu5xuviakKHx227zngj00=
X-Gm-Gg: ASbGnct0kiMM1tqohIZd6gMmaIcHjyB48Mk3RZloyA449OxT4FlXBVzs9iXXWPFVjWr
	lEv21LW2+m90vLPrr37mWY3rKSamF7cVi4AA7YkT8DeCmSlIqQbgpauQmup0YlR2MEZizQYJpsU
	njYI01a/I65Ry3rNnTRGnTRfG+5UVcGbK21Z0vcvKnh/s42m2cCd/8x5nzk0kMIWS3xdo4RD3Zs
	jbE2EkWFxgkQlGblCY5vQgqy8DRu4r8E+Cman+TIoWppGqtCzL7A80wkvOERBvZRuXX7YAfwSVM
	UussBDhIAiuzd8OYcRe3ICDipQ==
X-Google-Smtp-Source: AGHT+IE4XMWCRo3zMaE+9a8gR9bTeN800JXvztmc6v9Xr7sz0lD3zlNhQ59QeV7lPxe5ncZAuS2TtQ==
X-Received: by 2002:a17:902:c942:b0:216:4c88:d939 with SMTP id d9443c01a7336-21f4e746803mr74840445ad.38.1738970735073;
        Fri, 07 Feb 2025 15:25:35 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3683db30sm36005905ad.138.2025.02.07.15.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 15:25:34 -0800 (PST)
Date: Fri, 7 Feb 2025 15:25:31 -0800
From: Deepak Gupta <debug@rivosinc.com>
To: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christian Brauner <brauner@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Oleg Nesterov <oleg@redhat.com>,
	Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
	alistair.francis@wdc.com, richard.henderson@linaro.org,
	jim.shu@sifive.com, andybnac@gmail.com, kito.cheng@sifive.com,
	charlie@rivosinc.com, atishp@rivosinc.com, evan@rivosinc.com,
	alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org,
	rick.p.edgecombe@intel.com
Subject: Re: [PATCH v9 03/26] riscv: zicfiss / zicfilp enumeration
Message-ID: <Z6aWa+gt/WafPxbu@debug.ba.rivosinc.com>
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
 <20250204-v5_user_cfi_series-v9-3-b37a49c5205c@rivosinc.com>
 <782ef14c-e7c4-435e-adc6-9559ce3cc06d@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <782ef14c-e7c4-435e-adc6-9559ce3cc06d@rivosinc.com>

On Thu, Feb 06, 2025 at 02:50:29PM +0100, Cl�ment L�ger wrote:
>
>
>On 05/02/2025 02:21, Deepak Gupta wrote:
>> This patch adds support for detecting zicfiss and zicfilp. zicfiss and
>> zicfilp stands for unprivleged integer spec extension for shadow stack
>> and branch tracking on indirect branches, respectively.
>>
>> This patch looks for zicfiss and zicfilp in device tree and accordinlgy
>> lights up bit in cpu feature bitmap. Furthermore this patch adds detection
>> utility functions to return whether shadow stack or landing pads are
>> supported by cpu.
>>
>> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
>> ---
>>  arch/riscv/include/asm/cpufeature.h | 13 +++++++++++++
>>  arch/riscv/include/asm/hwcap.h      |  2 ++
>>  arch/riscv/include/asm/processor.h  |  1 +
>>  arch/riscv/kernel/cpufeature.c      |  2 ++
>>  4 files changed, 18 insertions(+)
>>
>> diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
>> index 569140d6e639..69007b8100ca 100644
>> --- a/arch/riscv/include/asm/cpufeature.h
>> +++ b/arch/riscv/include/asm/cpufeature.h
>> @@ -12,6 +12,7 @@
>>  #include <linux/kconfig.h>
>>  #include <linux/percpu-defs.h>
>>  #include <linux/threads.h>
>> +#include <linux/smp.h>
>>  #include <asm/hwcap.h>
>>  #include <asm/cpufeature-macros.h>
>>
>> @@ -137,4 +138,16 @@ static __always_inline bool riscv_cpu_has_extension_unlikely(int cpu, const unsi
>>  	return __riscv_isa_extension_available(hart_isa[cpu].isa, ext);
>>  }
>>
>> +static inline bool cpu_supports_shadow_stack(void)
>> +{
>> +	return (IS_ENABLED(CONFIG_RISCV_USER_CFI) &&
>> +		riscv_cpu_has_extension_unlikely(smp_processor_id(), RISCV_ISA_EXT_ZICFISS));
>> +}
>> +
>> +static inline bool cpu_supports_indirect_br_lp_instr(void)
>> +{
>> +	return (IS_ENABLED(CONFIG_RISCV_USER_CFI) &&
>> +		riscv_cpu_has_extension_unlikely(smp_processor_id(), RISCV_ISA_EXT_ZICFILP));
>> +}
>> +
>>  #endif
>> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
>> index 869da082252a..2dc4232bdb3e 100644
>> --- a/arch/riscv/include/asm/hwcap.h
>> +++ b/arch/riscv/include/asm/hwcap.h
>> @@ -100,6 +100,8 @@
>>  #define RISCV_ISA_EXT_ZICCRSE		91
>>  #define RISCV_ISA_EXT_SVADE		92
>>  #define RISCV_ISA_EXT_SVADU		93
>> +#define RISCV_ISA_EXT_ZICFILP		94
>> +#define RISCV_ISA_EXT_ZICFISS		95
>>
>>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
>>
>> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
>> index 5f56eb9d114a..e3aba3336e63 100644
>> --- a/arch/riscv/include/asm/processor.h
>> +++ b/arch/riscv/include/asm/processor.h
>> @@ -13,6 +13,7 @@
>>  #include <vdso/processor.h>
>>
>>  #include <asm/ptrace.h>
>> +#include <asm/hwcap.h>
>>
>>  #define arch_get_mmap_end(addr, len, flags)			\
>>  ({								\
>> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
>> index c6ba750536c3..e72de12e5b99 100644
>> --- a/arch/riscv/kernel/cpufeature.c
>> +++ b/arch/riscv/kernel/cpufeature.c
>> @@ -333,6 +333,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>>  	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicboz, RISCV_ISA_EXT_ZICBOZ, riscv_xlinuxenvcfg_exts,
>>  					  riscv_ext_zicboz_validate),
>>  	__RISCV_ISA_EXT_DATA(ziccrse, RISCV_ISA_EXT_ZICCRSE),
>> +	__RISCV_ISA_EXT_SUPERSET(zicfilp, RISCV_ISA_EXT_ZICFILP, riscv_xlinuxenvcfg_exts),
>> +	__RISCV_ISA_EXT_SUPERSET(zicfiss, RISCV_ISA_EXT_ZICFISS, riscv_xlinuxenvcfg_exts),
>
>Hey Deepak,
>
>I think these definitions can benefit from using a validation callback:
>
>static int riscv_cfi_validate(const struct riscv_isa_ext_data *data,
>				  const unsigned long *isa_bitmap)
>{
>	if (!IS_ENABLED(CONFIG_RISCV_USER_CFI)
>		return -EINVAL;
>		
>	return 0;
>}

Yes this is a good idea.
I'll add that.

>
>__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicfilp, RISCV_ISA_EXT_ZICFILP,
>riscv_xlinuxenvcfg_exts, riscv_cfi_validate),
>__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicfiss, RISCV_ISA_EXT_ZICFISS,
>riscv_xlinuxenvcfg_exts, riscv_cfi_validate),
>
>That way, ZICFISS/ZICFILP wont be enable if the kernel does not have
>builtin support for them. Additionally, this solve a bug you have with
>your hwprobe patch (19/26) that exposes ZICFILP/ZICFISS unconditionally
>(ie, even if the kernel does not have CONFIG_RISCV_USER_CFI).
>

Yes good catch.

>BTW, patch 23/26 introduce CONFIG_RISCV_USER_CFI but it is used in that
>patch.
>Thanks,
>
>Cl�ment
>
>>  	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
>>  	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
>>  	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
>>
>

