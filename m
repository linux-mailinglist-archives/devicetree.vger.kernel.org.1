Return-Path: <devicetree+bounces-66735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE4B8C46D8
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 20:31:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC94F1F21D6F
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE9EB39AEC;
	Mon, 13 May 2024 18:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DxLkD53q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B0433CF1
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 18:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715625091; cv=none; b=BqZzI8VQVgyAFYubkTsPVhfMzcq+zN8xOBrl7gpZKgLxldwA2L4Vn7SipD1HjUBh9D/ZwsbFu8/xb4QOxG8FT5curak+UbgK5+kiX5ZkuBIE5UHcndC4oHgh5krJ0nhhQ0yrgv4z3ng0gyZd8HLUEcmGE/gPDGe36/XSbIVF6Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715625091; c=relaxed/simple;
	bh=YfDtAh3JmrRp+3O5lVAjzeyWvRESXw22+V2fb9MAXtM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hH7q4WKn17lnbD6IfQ5ZGXLC0dz0eLu6fivAPeEYsqFf6GZJ0XJ3oV6DrFq2eEIn5HPEFzY2768HNEUiLS63P21qNEu8WTRl3QqV7CzL0WBIMlQKQZlHQZNP9sVlMOh+Z8Wmmcp5ggSUZsHOL1AXq9GsVzNN6HnYA4b83cH5JGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DxLkD53q; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6f453d2c5a1so3824219b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 11:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715625088; x=1716229888; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9lfxB6TGC4fu8lY9DVlJ3Uo04rJaZ2CFPzF6bJyMTII=;
        b=DxLkD53qGG4HiMANQa3H1wVcGWvMT5md7OLT/QabV4n2wpK0mEB1fVj7yKE+aWlTk8
         1zHhVm7Mrm8Cv6sLtr4HpKx/pQdiTWsA+q+8TZdt+0W0WOd0XxdOS8OmNkZDCA4K95aT
         KjUoPv3Q4I89VvkLizhsUzRZMuJQmb4OeTpg7+t961xn519rUk1K+4ZR3RdmwsGi+S5n
         FLkJUol5041uG62+CeNymUKPzsGB3LHYK6yNK1oauPBNwQ6YEJYG3gD1Ry1NBkqmjAJK
         EnpDjGpqAkgPTFoeQF9Qyvm7QO+Q6EF7KC8+7gxa7b+p+xHxd3vD0yjQSZbC4ivOgutD
         ZBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715625088; x=1716229888;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lfxB6TGC4fu8lY9DVlJ3Uo04rJaZ2CFPzF6bJyMTII=;
        b=oWMv7R4Ow1vjwE71Ueycx6qYImQ0C87Tcm49KJoEX88hmDdbepKKGwQcLG/fjtATDI
         4iytv4EwiG+IwfzinboqFow6Rb+0TJEuysxKEBwEtwjW3GwGucGYAF04p9oMeVsjNMRy
         ck3fIoUJbDRb91ksk3oS8e8htphsYv+CnskcFVdDu6O/ngsATIzmcmBiDVF8QKqdkxqk
         vuX8XLQYWiOOqWXcpUSUTSvZjkTeQpAdp8jv/ilmo6v1IYRde607wfX9IP3crK9uv+gH
         0D6Dg+wfbPKNhHmOdP3X719exgFVDiJM/s+NIamEDqlcymkE/f6Bbng01rTayFF7DWTG
         YKJw==
X-Forwarded-Encrypted: i=1; AJvYcCWQwrjB9P9LCmGXAibdTHpTkqOaeo3+ZwpanWjhYlggnO1LZxcbsKJD0CQShehY/5w2Lzg4qkuyHpM0KR4rcq5m2E/zylSbZnOxDA==
X-Gm-Message-State: AOJu0Ywokl+5AwTQHpj1RyBA00CNAlYUqrmGEOMgze7YhLyqPbgwKkkt
	IF3HupA6VwQK1gghc7t+UTRMRDl7vcq8t/4X5fcvmLWmWBgtTzBl7vmhtAUX+YY=
X-Google-Smtp-Source: AGHT+IH1OSRQPwx8UUxBA+2NIldqGQBfyQNuOaQuzBWIoDTXDv4FJlctQ5Ean61dJ4G8ZeTtENbZeA==
X-Received: by 2002:a05:6a20:8428:b0:1a9:d9bb:acdc with SMTP id adf61e73a8af0-1afde10df02mr12897298637.28.1715625088408;
        Mon, 13 May 2024 11:31:28 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6340b48a152sm8067572a12.20.2024.05.13.11.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 May 2024 11:31:28 -0700 (PDT)
Date: Mon, 13 May 2024 11:31:23 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: paul.walmsley@sifive.com, rick.p.edgecombe@intel.com,
	broonie@kernel.org, Szabolcs.Nagy@arm.com, kito.cheng@sifive.com,
	keescook@chromium.org, ajones@ventanamicro.com,
	conor.dooley@microchip.com, cleger@rivosinc.com,
	atishp@atishpatra.org, alex@ghiti.fr, bjorn@rivosinc.com,
	alexghiti@rivosinc.com, samuel.holland@sifive.com, conor@kernel.org,
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mm@kvack.org, linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org, corbet@lwn.net, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, oleg@redhat.com,
	akpm@linux-foundation.org, arnd@arndb.de, ebiederm@xmission.com,
	Liam.Howlett@oracle.com, vbabka@suse.cz, lstoakes@gmail.com,
	shuah@kernel.org, brauner@kernel.org, andy.chiu@sifive.com,
	jerry.shih@sifive.com, hankuan.chen@sifive.com,
	greentime.hu@sifive.com, evan@rivosinc.com, xiao.w.wang@intel.com,
	apatel@ventanamicro.com, mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com, sameo@rivosinc.com,
	shikemeng@huaweicloud.com, willy@infradead.org,
	vincent.chen@sifive.com, guoren@kernel.org, samitolvanen@google.com,
	songshuaishuai@tinylab.org, gerg@kernel.org, heiko@sntech.de,
	bhe@redhat.com, jeeheng.sia@starfivetech.com, cyy@cyyself.name,
	maskray@google.com, ancientmodern4@gmail.com,
	mathis.salmen@matsal.de, cuiyunhui@bytedance.com,
	bgray@linux.ibm.com, mpe@ellerman.id.au, baruch@tkos.co.il,
	alx@kernel.org, david@redhat.com, catalin.marinas@arm.com,
	revest@chromium.org, josh@joshtriplett.org, shr@devkernel.io,
	deller@gmx.de, omosnace@redhat.com, ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: Re: [PATCH v3 17/29] prctl: arch-agnostic prctl for indirect branch
 tracking
Message-ID: <ZkJce/hix5kRhubS@debug.ba.rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
 <20240403234054.2020347-18-debug@rivosinc.com>
 <Zj6tzxWFj4H+250p@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Zj6tzxWFj4H+250p@ghost>

On Fri, May 10, 2024 at 04:29:19PM -0700, Charlie Jenkins wrote:
>On Wed, Apr 03, 2024 at 04:35:05PM -0700, Deepak Gupta wrote:
>> Three architectures (x86, aarch64, riscv) have support for indirect branch
>> tracking feature in a very similar fashion. On a very high level, indirect
>> branch tracking is a CPU feature where CPU tracks branches which uses
>> memory operand to perform control transfer in program. As part of this
>> tracking on indirect branches, CPU goes in a state where it expects a
>> landing pad instr on target and if not found then CPU raises some fault
>> (architecture dependent)
>>
>> x86 landing pad instr - `ENDBRANCH`
>> aarch64 landing pad instr - `BTI`
>> riscv landing instr - `lpad`
>>
>> Given that three major arches have support for indirect branch tracking,
>> This patch makes `prctl` for indirect branch tracking arch agnostic.
>>
>> To allow userspace to enable this feature for itself, following prtcls are
>> defined:
>>  - PR_GET_INDIR_BR_LP_STATUS: Gets current configured status for indirect
>>    branch tracking.
>>  - PR_SET_INDIR_BR_LP_STATUS: Sets a configuration for indirect branch
>>    tracking.
>>    Following status options are allowed
>>        - PR_INDIR_BR_LP_ENABLE: Enables indirect branch tracking on user
>>          thread.
>>        - PR_INDIR_BR_LP_DISABLE; Disables indirect branch tracking on user
>>          thread.
>>  - PR_LOCK_INDIR_BR_LP_STATUS: Locks configured status for indirect branch
>>    tracking for user thread.
>>
>> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
>> ---
>>  include/uapi/linux/prctl.h | 27 +++++++++++++++++++++++++++
>>  kernel/sys.c               | 30 ++++++++++++++++++++++++++++++
>>  2 files changed, 57 insertions(+)
>>
>> diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
>> index 3c66ed8f46d8..b7a8212a068e 100644
>> --- a/include/uapi/linux/prctl.h
>> +++ b/include/uapi/linux/prctl.h
>> @@ -328,4 +328,31 @@ struct prctl_mm_map {
>>   */
>>  #define PR_LOCK_SHADOW_STACK_STATUS      73
>>
>> +/*
>> + * Get the current indirect branch tracking configuration for the current
>> + * thread, this will be the value configured via PR_SET_INDIR_BR_LP_STATUS.
>> + */
>> +#define PR_GET_INDIR_BR_LP_STATUS      74
>> +
>> +/*
>> + * Set the indirect branch tracking configuration. PR_INDIR_BR_LP_ENABLE will
>> + * enable cpu feature for user thread, to track all indirect branches and ensure
>> + * they land on arch defined landing pad instruction.
>> + * x86 - If enabled, an indirect branch must land on `ENDBRANCH` instruction.
>> + * arch64 - If enabled, an indirect branch must land on `BTI` instruction.
>> + * riscv - If enabled, an indirect branch must land on `lpad` instruction.
>> + * PR_INDIR_BR_LP_DISABLE will disable feature for user thread and indirect
>> + * branches will no more be tracked by cpu to land on arch defined landing pad
>> + * instruction.
>> + */
>> +#define PR_SET_INDIR_BR_LP_STATUS      75
>> +# define PR_INDIR_BR_LP_ENABLE		   (1UL << 0)
>> +
>> +/*
>> + * Prevent further changes to the specified indirect branch tracking
>> + * configuration.  All bits may be locked via this call, including
>> + * undefined bits.
>> + */
>> +#define PR_LOCK_INDIR_BR_LP_STATUS      76
>> +
>>  #endif /* _LINUX_PRCTL_H */
>> diff --git a/kernel/sys.c b/kernel/sys.c
>> index 242e9f147791..c770060c3f06 100644
>> --- a/kernel/sys.c
>> +++ b/kernel/sys.c
>> @@ -2330,6 +2330,21 @@ int __weak arch_lock_shadow_stack_status(struct task_struct *t, unsigned long st
>>  	return -EINVAL;
>>  }
>>
>> +int __weak arch_get_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>> +{
>> +	return -EINVAL;
>> +}
>> +
>> +int __weak arch_set_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>> +{
>> +	return -EINVAL;
>> +}
>> +
>> +int __weak arch_lock_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>> +{
>> +	return -EINVAL;
>> +}
>> +
>
>These weak references each cause a warning:
>
>kernel/sys.c:2333:12: warning: no previous prototype for 'arch_get_indir_br_lp_status' [-Wmissing-prototypes]
> 2333 | int __weak arch_get_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>kernel/sys.c:2338:12: warning: no previous prototype for 'arch_set_indir_br_lp_status' [-Wmissing-prototypes]
> 2338 | int __weak arch_set_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>kernel/sys.c:2343:12: warning: no previous prototype for 'arch_lock_indir_br_lp_status' [-Wmissing-prototypes]
> 2343 | int __weak arch_lock_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>
>Can the definitions be added to include/linux/mm.h alongside the
>*_shadow_stack_status() definitions?

Noted. Will work on a fix for this.

>
>- Charlie
>
>>  #define PR_IO_FLUSHER (PF_MEMALLOC_NOIO | PF_LOCAL_THROTTLE)
>>
>>  #ifdef CONFIG_ANON_VMA_NAME
>> @@ -2787,6 +2802,21 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
>>  			return -EINVAL;
>>  		error = arch_lock_shadow_stack_status(me, arg2);
>>  		break;
>> +	case PR_GET_INDIR_BR_LP_STATUS:
>> +		if (arg3 || arg4 || arg5)
>> +			return -EINVAL;
>> +		error = arch_get_indir_br_lp_status(me, (unsigned long __user *) arg2);
>> +		break;
>> +	case PR_SET_INDIR_BR_LP_STATUS:
>> +		if (arg3 || arg4 || arg5)
>> +			return -EINVAL;
>> +		error = arch_set_indir_br_lp_status(me, (unsigned long __user *) arg2);
>> +		break;
>> +	case PR_LOCK_INDIR_BR_LP_STATUS:
>> +		if (arg3 || arg4 || arg5)
>> +			return -EINVAL;
>> +		error = arch_lock_indir_br_lp_status(me, (unsigned long __user *) arg2);
>> +		break;
>>  	default:
>>  		error = -EINVAL;
>>  		break;
>> --
>> 2.43.2
>>

