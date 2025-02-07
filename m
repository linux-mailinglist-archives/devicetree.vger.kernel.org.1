Return-Path: <devicetree+bounces-143886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3730A2BF5A
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0E3A7A3344
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 09:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25CA1DE2C9;
	Fri,  7 Feb 2025 09:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LYDnjM0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBC7481B6
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 09:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738920646; cv=none; b=YV8rfdqOTiuPGFCguw35Ysg38ka7Q6aH/gpME7lif4j7syUl9G7oo5nuD+mueRWlNtUAalpk7Q3XpqBlfVzhoaUChL1mQLBGSrUCdj9gBsy+Bg27oTUlaHKmc5mbkNhnz9kc0zCsDMUGn1EvY+d2GjtXWId0LXxBxMsmilXOx+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738920646; c=relaxed/simple;
	bh=3T3FNEMDS87D9bzr1Wj8zuVHAVXHeuIwGxQ786Nx1qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DxDJM0vPu2z5fuxdHHcxnWPr9GQ3gy782zXuWeQpzU7b1totzjjmy4gBpIE5mtTfu+gZXlCyvdtuxouZMprR3rI/gCuUA7p6VIvzw5D7YWQv80lfKbH7sTawMLEU9sD4zCj5siewiqd5Bxkam5hYCh97o+NLhwQ19xhlmz/oxY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LYDnjM0J; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38dc627eba6so684861f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 01:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738920642; x=1739525442; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3a+d7uyoeApEWBBfKQwFeZRvjtQlKPA0vvhD7J7Rfb0=;
        b=LYDnjM0JCg0h7Ocrho+6E1W2jxX+f4kFtJ7N6eXuQNB0KSTUrZ0ZnwY7yNWHQ6y9Mo
         FRMXqGYCaBY1kWCzBMJgQsYDyGBdrJhHNo4rYf8Dzlxtzpalf7rovZRPkWlohUhd29KU
         cPh+Bq84LH6LTE+8BZP6P5oa+CI4p4BYAq6cKsU2R9vesAVyQ1PkIUFJY5iDBu5Nkrm4
         NtoXRED/IjV8Nocw977ed8xHgZlm23odiuPj1sNlmw2gFUsoffRnvmMw17sMepgFA2+e
         wVrdsCE18q+NAVFCAHrqrwLsPaJzHNF3icPsTsazwHm2QngC2HPDWKDcvu2yNV6dsEUn
         OHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738920642; x=1739525442;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3a+d7uyoeApEWBBfKQwFeZRvjtQlKPA0vvhD7J7Rfb0=;
        b=h8jqZe823PlZVJY8xxL7NuswMou8ZA3u7Uxt/kLtsT8rF7xtotM79QBSSWCm6mCRkD
         z58r1+lDIlLlCtUlI6e+OxY4sFw0zTosdW9/PECJdoQrrRehQzM3/O5qXrt7GAxCVQYp
         ya/uTOgjlbyN6ShTxUb+te1M3smdO+CTNeMHu4GOuy9YxVQvnd+m4XNkDhLUYx8V3inA
         iTpsBzGqV5z0agOxedhPwoBmhkvBl+OC4ok9Zu5Q2jwW7c1Bn9vmOctSWlV9fDlKaQ8I
         aSpyJebbObpt9gpV0fMl5oo9WyEW7oMdvjIVhYyLBv0MrhQ+g2GUojTsdmK0caZzSpjr
         ypiw==
X-Forwarded-Encrypted: i=1; AJvYcCU67HOFyTmy5i5RGcnuWLtgTeS5D8R6+C7+pVio/WV1jnlOL/zuG9ruXTekKdS60sC1PWWrg2VP3Aoc@vger.kernel.org
X-Gm-Message-State: AOJu0YysdquSbSTepVvu/Ew2+ALiMr3G75s8y9Q2OcRhPSBvk+n4kaOy
	64c04T5G6tVfOLXtO4ux85oJusimM7IKU0JXNuf2DFC6zwgUErdGXX4QPkHDJ2k=
X-Gm-Gg: ASbGnctk+kc0P8EKh9gvU7ePpFQe3ROjJu060NjHR5RrsZzL1QMpuze/tkcUF/VBsGT
	uzv/trcT73zry/YFAkOq9UkoHjd452Wna2DCTb1QYhaEz9QufPTOB/jgpCcyUk3nTGvcap1bMyV
	LblZbSgoeE2xbYdaxzguq2UHNnult3U9cN16XiXPIbPLNTnGe6HLq7INibNJBr39veETDEUldZa
	5yCc/2jV/IOKhU/SXMK62NpPSp6ZMMusVcvCIf8jylEQAPxiyrcsA0YJYMMKMgKk89pAhjWSp1A
	cS+1ur0NNo1PaQ0gz98OMgXHTe7nuWftv4BRijhscuG234ekZhgdpLNPJp54
X-Google-Smtp-Source: AGHT+IESXZlQ/7J7RVMhXOtjbNkCC7bnZBXGkym1nxwIOsNsCdWy/rEEkXcjomIH6pUgz9UpP8gZ8g==
X-Received: by 2002:a05:6000:154e:b0:385:e1e8:40db with SMTP id ffacd0b85a97d-38dc8dd0a8amr1292514f8f.24.1738920641731;
        Fri, 07 Feb 2025 01:30:41 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbdd3856fsm3892845f8f.28.2025.02.07.01.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 01:30:41 -0800 (PST)
Message-ID: <bcb10a3a-162b-4a8c-a479-38f4168cea9a@rivosinc.com>
Date: Fri, 7 Feb 2025 10:30:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/21] RISC-V: Add Sscfg extension CSR definition
To: Atish Patra <atishp@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>,
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org,
 Kaiwen Xue <kaiwenx@rivosinc.com>
References: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
 <20250205-counter_delegation-v4-8-835cfa88e3b1@rivosinc.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20250205-counter_delegation-v4-8-835cfa88e3b1@rivosinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 06/02/2025 08:23, Atish Patra wrote:
> From: Kaiwen Xue <kaiwenx@rivosinc.com>
> 
> This adds the scountinhibit CSR definition and S-mode accessible hpmevent
> bits defined by smcdeleg/ssccfg. scountinhibit allows S-mode to start/stop
> counters directly from S-mode without invoking SBI calls to M-mode. It is
> also used to figure out the counters delegated to S-mode by the M-mode as
> well.
> 
> Signed-off-by: Kaiwen Xue <kaiwenx@rivosinc.com>
> ---
>  arch/riscv/include/asm/csr.h | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 2ad2d492e6b4..42b7f4f7ec0f 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -224,6 +224,31 @@
>  #define SMSTATEEN0_HSENVCFG		(_ULL(1) << SMSTATEEN0_HSENVCFG_SHIFT)
>  #define SMSTATEEN0_SSTATEEN0_SHIFT	63
>  #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
> +/* HPMEVENT bits. These are accessible in S-mode via Smcdeleg/Ssccfg */
> +#ifdef CONFIG_64BIT
> +#define HPMEVENT_OF			(_UL(1) << 63)
> +#define HPMEVENT_MINH			(_UL(1) << 62)
> +#define HPMEVENT_SINH			(_UL(1) << 61)
> +#define HPMEVENT_UINH			(_UL(1) << 60)
> +#define HPMEVENT_VSINH			(_UL(1) << 59)
> +#define HPMEVENT_VUINH			(_UL(1) << 58)
> +#else
> +#define HPMEVENTH_OF			(_ULL(1) << 31)
> +#define HPMEVENTH_MINH			(_ULL(1) << 30)
> +#define HPMEVENTH_SINH			(_ULL(1) << 29)
> +#define HPMEVENTH_UINH			(_ULL(1) << 28)
> +#define HPMEVENTH_VSINH			(_ULL(1) << 27)
> +#define HPMEVENTH_VUINH			(_ULL(1) << 26)

Hi Atish,

Could you use BIT_UL/BIT_ULL() ? With that fixed,

Reviewed-by: Clément Léger <cleger@rivosinc.com>

Thanks,

Clément

> +
> +#define HPMEVENT_OF			(HPMEVENTH_OF << 32)
> +#define HPMEVENT_MINH			(HPMEVENTH_MINH << 32)
> +#define HPMEVENT_SINH			(HPMEVENTH_SINH << 32)
> +#define HPMEVENT_UINH			(HPMEVENTH_UINH << 32)
> +#define HPMEVENT_VSINH			(HPMEVENTH_VSINH << 32)
> +#define HPMEVENT_VUINH			(HPMEVENTH_VUINH << 32)
> +#endif
> +
> +#define SISELECT_SSCCFG_BASE		0x40
>  
>  /* mseccfg bits */
>  #define MSECCFG_PMM			ENVCFG_PMM
> @@ -305,6 +330,7 @@
>  #define CSR_SCOUNTEREN		0x106
>  #define CSR_SENVCFG		0x10a
>  #define CSR_SSTATEEN0		0x10c
> +#define CSR_SCOUNTINHIBIT	0x120
>  #define CSR_SSCRATCH		0x140
>  #define CSR_SEPC		0x141
>  #define CSR_SCAUSE		0x142
> 


