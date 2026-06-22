Return-Path: <devicetree+bounces-314222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZUsDEO3ZOGpFjAcAu9opvQ
	(envelope-from <devicetree+bounces-314222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:45:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C96ACFF2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:45:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=m1HVsc1E;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314222-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314222-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E1D4301917B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA8235F610;
	Mon, 22 Jun 2026 06:44:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6719E35F191
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:44:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782110698; cv=none; b=AijfBu+loEQ1nS2Dn9jgmNk62/aIXMESqCyX8onmU44u18NBcZWZFekueDAspDIQvkMW7Pm8cznY/4wV9TPmv+XQugSWmx3mld64Kmd2IK5wq7eFtsBIZEkfkMJB7VtCBJktGeCZvzDP4m8OXiv2kkVIl+qkpaEF2LcXL8EAoPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782110698; c=relaxed/simple;
	bh=LICWX8VvjMCF3+yTM/KcPxOo2+T8+d57s8x2WoNszEA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rtrH9PP7hUVg07DcX9paC9sc3c3PEy5ILL9lHZ2J/DigdmML0gBGh4jIXDOo318h+xGtyWtUxndn36tq2QZO+JpZKDNBXC/JJdTcK4MtVhwwAkzeYm0vh0fAp7sET2e3qGtX/Q69mD6KUGZvRiLqxBvMFkk1ArfWgvgkuXJuNaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m1HVsc1E; arc=none smtp.client-ip=74.125.82.174
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-30c001b21feso3579834eec.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 23:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782110696; x=1782715496; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O89IWiz4+jst6WssmkXWLaT7xtJNIW5Q681+XiS4VbI=;
        b=m1HVsc1E4wIKgMg29rGxveKTUS27NfVFBN+VQX6jBuCN/A+BJupQZlO9Lgm7EGZsYG
         SLsYu/TgkheqyNBDF/pYbSVsJ9Wl3HhJrdwa+IMjnMIsRjeWNNnmhKAy7OUQGEEyyhk/
         a97jpRmY6/71+ksG1JMX5LITN3/xNXga8OS5g8Za4S0nFvM6s2tBVZDSRo3zB4d+dajW
         wg90cNCsK8brnojnzfx12wcXNJ0zWezmXJAvdc1Y2nwKimpueu3zJxMME11QWwHz1YJj
         yUMc25I7kZJW2jdVLBgE5BLE9BucOJYupbRARYZBoH1P2mp/+tS4k3u5Tv9b6RsZbyuL
         Gkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782110696; x=1782715496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O89IWiz4+jst6WssmkXWLaT7xtJNIW5Q681+XiS4VbI=;
        b=Yvds563Fid8Uymqx1IFA2o/8xJlnNYdiGVaCmu6Gy53ClkLNIgjBWIh5Z0ik/cm6VE
         VtQbGZSj7cOZskH5Eu9CqrKxr2pnGlYyX4wOSNztncAusPZUGLiD6bGglhoo2JHysF5U
         lXpIqlD6g6tGXitYDOXBhzRrktzubL+uwYCBHHBWlAp4+A2z2SO8jSxlX6RA9OWr1jWM
         UgMbgMWjKgFdIgymUCrLktceuWZEGgvK7OFapUD/9x7XRuX8m+7qOB2TV9TYLk7+gpco
         PaZZzhiCTpQS+MkgqH5UdLyw351oxEabmnfXPgW/y/36JqXJ1pas0mt/gb1ZDhCLkPF7
         zWfQ==
X-Forwarded-Encrypted: i=1; AHgh+RpsiAnVrMI74eY/wwQB6BlTzQJxQEHuWzVOj9YSPOQOYSgY719LNuuOS8tXkW3h+9Pl7DHU6c5Mv1YX@vger.kernel.org
X-Gm-Message-State: AOJu0YwRXI6T6CPqN9q4gBox3/6DB+3+08YE8VjzdHoTXurnZdakaqmX
	QHx0XVnA9oStd5dALPsFZ0jyNlhX+SbVy+sKEhgpfSab/dRdREGgNoDB
X-Gm-Gg: AfdE7clFh81484b5oBekTE6TGKw/SH6Z+HA50Gi+HzxIRY4AkJD9T8ysz0RNij/RN49
	gMjNXtwI7YaNBg7TU7iOQjeGoYipBFlb5ZAWtraJ6ul/lHbtkYy0uQQwn/dARDXkKD0x43ZtEXr
	dyM/ifgoaxd8iXahV9HOLYq7891UF/cxLY4q4i+IH0exNJeFFe4yYr4UTu9LQmV2ca2TGbipPLQ
	zrfYBUfSJFXiML7Rz5s1TFdtl/6TvpnHGV1bsRH63TFGhKFHSMkn0uoTEPZur7RzWZqNWhxFrSN
	fGLHwdHny/oFvhl58TCwQl7uOSiM9Bi0b4j5XYr1cLYokpuEAkUgCoaAamP/LxiSG7ShUzvEt2W
	gzn/vw/uk0h2A/pLfb+OYPr9nk7/epfRUuyIKbyvWtmjGw0iSJZZbUwMAehPHcnKFFXYUnYQkg3
	FL
X-Received: by 2002:a05:7300:dc10:b0:304:df8b:71ee with SMTP id 5a478bee46e88-30c06ffd9e8mr7952599eec.7.1782110696380;
        Sun, 21 Jun 2026 23:44:56 -0700 (PDT)
Received: from blinky ([2601:647:6700:64d0::92d1])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c1bd8d78esm8370076eec.18.2026.06.21.23.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2026 23:44:55 -0700 (PDT)
Date: Sun, 21 Jun 2026 23:44:52 -0700
From: Charlie Jenkins <thecharlesjenkins@gmail.com>
To: Atish Patra <atish.patra@linux.dev>
Cc: James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Jiri Olsa <jolsa@kernel.org>, Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Anup Patel <anup@brainfault.org>,
	Namhyung Kim <namhyung@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ian Rogers <irogers@google.com>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 17/21] RISC-V: perf: Add Qemu virt machine events
Message-ID: <ajjZ5NljehUXERN1@blinky>
References: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
 <20260608-counter_delegation-v6-17-285b72ed65a9@meta.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260608-counter_delegation-v6-17-285b72ed65a9@meta.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314222-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[thecharlesjenkins@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:james.clark@linaro.org,m:robh@kernel.org,m:acme@kernel.org,m:jolsa@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:anup@brainfault.org,m:namhyung@kernel.org,m:pjw@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thecharlesjenkins@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,blinky:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E4C96ACFF2

On Mon, Jun 08, 2026 at 11:01:31PM -0700, Atish Patra wrote:
> From: Atish Patra <atishp@rivosinc.com>
> 
> Qemu virt machine supports a very minimal set of legacy perf events.
> Add them to the vendor table so that users can use them when
> counter delegation is enabled.
> 
> Signed-off-by: Atish Patra <atishp@rivosinc.com>
> ---
>  arch/riscv/include/asm/vendorid_list.h |  4 ++++
>  drivers/perf/riscv_pmu_sbi.c           | 36 ++++++++++++++++++++++++++++++++++
>  2 files changed, 40 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
> index 7f5030ee1fcf..603aa2b21c0b 100644
> --- a/arch/riscv/include/asm/vendorid_list.h
> +++ b/arch/riscv/include/asm/vendorid_list.h
> @@ -11,4 +11,8 @@
>  #define SIFIVE_VENDOR_ID	0x489
>  #define THEAD_VENDOR_ID		0x5b7
>  
> +#define QEMU_VIRT_VENDOR_ID		0x000
> +#define QEMU_VIRT_IMPL_ID		0x000
> +#define QEMU_VIRT_ARCH_ID		0x000

Palmer proposed a change to this a while ago to set the archid for qemu
as 42 but it looks like it was never merged in qemu, but it was merged
into the riscv spec.

Here is the spec PR: https://github.com/riscv/riscv-isa-manual/pull/1213
Here is the current spec: https://github.com/riscv/riscv-isa-manual/blob/main/marchid.md
Here is the QEMU patch: https://lore.kernel.org/all/20240131182430.20174-1-palmer@rivosinc.com/

Should we follow up with this/maybe this should be accounted for here as
an alternate id?

- Charlie

> +
>  #endif
> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 00b84b28117a..74acac54328e 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c
> @@ -26,6 +26,7 @@
>  #include <asm/sbi.h>
>  #include <asm/cpufeature.h>
>  #include <asm/vendor_extensions.h>
> +#include <asm/vendorid_list.h>
>  #include <asm/vendor_extensions/andes.h>
>  #include <asm/hwcap.h>
>  #include <asm/csr_ind.h>
> @@ -453,7 +454,42 @@ struct riscv_vendor_pmu_events {
>  	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map, \
>  	  .attrs_events = _attrs },
>  
> +/* QEMU virt PMU events */
> +static const struct riscv_pmu_event qemu_virt_hw_event_map[PERF_COUNT_HW_MAX] = {
> +	PERF_MAP_ALL_UNSUPPORTED,
> +	[PERF_COUNT_HW_CPU_CYCLES]		= {0x01, 0xFFFFFFF8},
> +	[PERF_COUNT_HW_INSTRUCTIONS]		= {0x02, 0xFFFFFFF8}
> +};
> +
> +static const struct riscv_pmu_event qemu_virt_cache_event_map[PERF_COUNT_HW_CACHE_MAX]
> +						[PERF_COUNT_HW_CACHE_OP_MAX]
> +						[PERF_COUNT_HW_CACHE_RESULT_MAX] = {
> +	PERF_CACHE_MAP_ALL_UNSUPPORTED,
> +	[C(DTLB)][C(OP_READ)][C(RESULT_MISS)]	= {0x10019, 0xFFFFFFF8},
> +	[C(DTLB)][C(OP_WRITE)][C(RESULT_MISS)]	= {0x1001B, 0xFFFFFFF8},
> +
> +	[C(ITLB)][C(OP_READ)][C(RESULT_MISS)]	= {0x10021, 0xFFFFFFF8},
> +};
> +
> +RVPMU_EVENT_CMASK_ATTR(cycles, cycles, 0x01, 0xFFFFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(instructions, instructions, 0x02, 0xFFFFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(dTLB-load-misses, dTLB_load_miss, 0x10019, 0xFFFFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(dTLB-store-misses, dTLB_store_miss, 0x1001B, 0xFFFFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(iTLB-load-misses, iTLB_load_miss, 0x10021, 0xFFFFFFF8);
> +
> +static struct attribute *qemu_virt_event_group[] = {
> +	RVPMU_EVENT_ATTR_PTR(cycles),
> +	RVPMU_EVENT_ATTR_PTR(instructions),
> +	RVPMU_EVENT_ATTR_PTR(dTLB_load_miss),
> +	RVPMU_EVENT_ATTR_PTR(dTLB_store_miss),
> +	RVPMU_EVENT_ATTR_PTR(iTLB_load_miss),
> +	NULL,
> +};
> +
>  static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
> +	RISCV_VENDOR_PMU_EVENTS(QEMU_VIRT_VENDOR_ID, QEMU_VIRT_ARCH_ID, QEMU_VIRT_IMPL_ID,
> +				qemu_virt_hw_event_map, qemu_virt_cache_event_map,
> +				qemu_virt_event_group)
>  };
>  
>  static const struct riscv_pmu_event *current_pmu_hw_event_map;
> 
> -- 
> 2.53.0-Meta
> 
> 

