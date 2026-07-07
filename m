Return-Path: <devicetree+bounces-321788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2b0gEXuwTGrCoAEAu9opvQ
	(envelope-from <devicetree+bounces-321788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:53:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9690718B8B
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:53:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=picoheart.com header.s=feishu2604151535 header.b=elfqFTmn;
	dmarc=pass (policy=quarantine) header.from=picoheart.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321788-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321788-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 863453007B92
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25503161AD;
	Tue,  7 Jul 2026 07:53:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-40.ptr.blmpb.com (va-2-40.ptr.blmpb.com [209.127.231.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB532EC09B
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 07:53:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783410795; cv=none; b=byAPmMEswcziOckX1evjQPzW+pwy3ozwKDPhTlE4/bV0w9rIBcZH4jFftgxAs9gucoCKizA+YNvgzieqvW1b99ts70Rdqcu4lHLd6LdW35QKlj8CXRMbYOeV13oilfYL+hk9wYpzt4nldZ2EpG4z/M6G9MOjH+qqYxzIUtU7jRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783410795; c=relaxed/simple;
	bh=Wpe7fkXT+95VAtoHGYdX2JMOKPoZIDuUWh7n0LRXp/Y=;
	h=In-Reply-To:To:Date:Message-Id:Mime-Version:Content-Type:Cc:From:
	 Subject:References; b=l1cZ5InGKgXvdB5SoIzQdZPKzGCNfcF6vfRhUq0Phj7oye0qGjeiFuvkccOmKY0WdDt6nDJ/DSWkDOYtCmaCmGu4oWDiFBEDYIOWtOcDfBEDiA61kCkKdvbq2oEbfHM9Fd2TOxhUuaWB24zhZ7/KrVuglHq/3/yWnk0rh+USQrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=picoheart.com; spf=pass smtp.mailfrom=picoheart.com; dkim=pass (2048-bit key) header.d=picoheart.com header.i=@picoheart.com header.b=elfqFTmn; arc=none smtp.client-ip=209.127.231.40
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=feishu2604151535; d=picoheart.com; t=1783410674; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=ULuVIoxEWXZu1rfH0FMv5nh5UQ+aWvunAFu7u1u17eE=;
 b=elfqFTmnN/A60URpSOqttk/CCxb1DCNwKvhvbKFyqz7TWTMZbCjsaOJqa52fpOKR+JJpUd
 SKYogMqeYFO9PlykXfVO/hMuA35RmzlCLIcubxvprDXNcOu/eJVPcd3dANe4jl0xjsTC0T
 wZrTVJ1VdOGf4tv99xK9v77MXZAiN3zYMCFS8ucoYfx1gwZwpL0l3/0PWQCmxMxKnDiBAK
 d8ss4Sq0Ucdim+08JGulZufS8UH2fuekhiwrkkKnJHLXOVaVfkxxWMLFYT+/uzaMOyT9PZ
 nD/JznZE+CwvO2L22Yt+kjNAOAB+AY6w60nvYUPgWsRdGrV2Sz08sZsPR4Vsfw==
Received: from [100.86.219.172] ([61.141.241.109]) by smtp.feishu.cn with ESMTPS; Tue, 07 Jul 2026 15:51:11 +0800
In-Reply-To: <20260701-counter_delegation-v8-13-7909f863a645@meta.com>
X-Lms-Return-Path: <lba+26a4caff0+d5c186+vger.kernel.org+yang.yicong@picoheart.com>
X-Original-From: Yicong Yang <yang.yicong@picoheart.com>
Content-Transfer-Encoding: 7bit
Content-Language: en-US
To: "Atish Patra" <atish.patra@linux.dev>
Date: Tue, 7 Jul 2026 15:51:09 +0800
Message-Id: <37db8fc7-4702-4af6-878a-b46572d6f2f4@picoheart.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Type: text/plain; charset=UTF-8
Cc: "Jiri Olsa" <jolsa@kernel.org>, "Paul Walmsley" <pjw@kernel.org>, 
	"Mark Rutland" <mark.rutland@arm.com>, "Rob Herring" <robh@kernel.org>, 
	"Anup Patel" <anup@brainfault.org>, "Namhyung Kim" <namhyung@kernel.org>, 
	"Arnaldo Carvalho de Melo" <acme@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Ian Rogers" <irogers@google.com>, "Will Deacon" <will@kernel.org>, 
	"James Clark" <james.clark@linaro.org>, <yang.yicong@picoheart.com>, 
	<linux-arm-kernel@lists.infradead.org>, 
	<linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>, 
	<devicetree@vger.kernel.org>, <linux-perf-users@vger.kernel.org>, 
	"Conor Dooley" <conor@kernel.org>
From: "Yicong Yang" <yang.yicong@picoheart.com>
Subject: Re: [PATCH v8 13/22] RISC-V: perf: Add a mechanism to defined legacy event encoding
References: <20260701-counter_delegation-v8-0-7909f863a645@meta.com> <20260701-counter_delegation-v8-13-7909f863a645@meta.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[picoheart.com,quarantine];
	R_DKIM_ALLOW(-0.20)[picoheart.com:s=feishu2604151535];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321788-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[yang.yicong@picoheart.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:jolsa@kernel.org,m:pjw@kernel.org,m:mark.rutland@arm.com,m:robh@kernel.org,m:anup@brainfault.org,m:namhyung@kernel.org,m:acme@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:will@kernel.org,m:james.clark@linaro.org,m:yang.yicong@picoheart.com,m:linux-arm-kernel@lists.infradead.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yang.yicong@picoheart.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[picoheart.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,rivosinc.com:email,picoheart.com:from_mime,picoheart.com:dkim,picoheart.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9690718B8B

On 7/1/26 4:47 PM, Atish Patra wrote:
> From: Atish Patra <atishp@rivosinc.com>
> 
> RISC-V ISA doesn't define any standard event encodings or specify
> any event to counter mapping. Thus, event encoding information
> and corresponding counter mapping fot those events needs to be
> provided in the driver for each vendor.
> 
> Add a framework to support that. The individual platform events
> will be added later.
> 
> Signed-off-by: Atish Patra <atishp@rivosinc.com>
> ---
>  drivers/perf/riscv_pmu_sbi.c | 70 +++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 69 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index c20f1e33c65d..2568c6808f5d 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c
> @@ -10,6 +10,7 @@
>  
>  #define pr_fmt(fmt) "riscv-pmu-sbi: " fmt
>  
> +#include <linux/limits.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/perf/riscv_pmu.h>
>  #include <linux/platform_device.h>
> @@ -379,6 +380,71 @@ static int pmu_sbi_check_event_info(void)
>  	return result;
>  }
>  
> +/*
> + * Vendor specific PMU events.
> + */
> +struct riscv_pmu_event {
> +	u64 event_id;
> +	u32 counter_mask;

could we name it as counterid_mask to match to the PMU format
name (introduced in patch 16/22)?

thanks.

> +};
> +
> +#define HW_OP_UNSUPPORTED		U64_MAX
> +#define CACHE_OP_UNSUPPORTED		U64_MAX
> +
> +#define PERF_MAP_ALL_UNSUPPORTED					\
> +	[0 ... PERF_COUNT_HW_MAX - 1] = {HW_OP_UNSUPPORTED, 0x0}
> +
> +#define PERF_CACHE_MAP_ALL_UNSUPPORTED					\
> +[0 ... PERF_COUNT_HW_CACHE_MAX - 1] = {					\
> +	[0 ... PERF_COUNT_HW_CACHE_OP_MAX - 1] = {			\
> +		[0 ... PERF_COUNT_HW_CACHE_RESULT_MAX - 1] = {		\
> +			CACHE_OP_UNSUPPORTED, 0x0			\
> +		},							\
> +	},								\
> +}
> +
> +struct riscv_vendor_pmu_events {
> +	unsigned long vendorid;
> +	unsigned long archid;
> +	unsigned long implid;
> +	const struct riscv_pmu_event *hw_event_map;
> +	const struct riscv_pmu_event (*cache_event_map)[PERF_COUNT_HW_CACHE_OP_MAX]
> +						       [PERF_COUNT_HW_CACHE_RESULT_MAX];
> +};
> +
> +#define RISCV_VENDOR_PMU_EVENTS(_vendorid, _archid, _implid, _hw_event_map, _cache_event_map) \
> +	{ .vendorid = _vendorid, .archid = _archid, .implid = _implid, \
> +	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map },
> +
> +static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
> +};
> +
> +static const struct riscv_pmu_event *current_pmu_hw_event_map;
> +static const struct riscv_pmu_event (*current_pmu_cache_event_map)[PERF_COUNT_HW_CACHE_OP_MAX]
> +							   [PERF_COUNT_HW_CACHE_RESULT_MAX];
> +
> +static void __init rvpmu_vendor_register_events(void)
> +{
> +	int cpu = raw_smp_processor_id();
> +	unsigned long vendor_id = riscv_cached_mvendorid(cpu);
> +	unsigned long impl_id = riscv_cached_mimpid(cpu);
> +	unsigned long arch_id = riscv_cached_marchid(cpu);
> +
> +	for (int i = 0; i < ARRAY_SIZE(pmu_vendor_events_table); i++) {
> +		if (pmu_vendor_events_table[i].vendorid == vendor_id &&
> +		    pmu_vendor_events_table[i].implid == impl_id &&
> +		    pmu_vendor_events_table[i].archid == arch_id) {
> +			current_pmu_hw_event_map = pmu_vendor_events_table[i].hw_event_map;
> +			current_pmu_cache_event_map = pmu_vendor_events_table[i].cache_event_map;
> +			break;
> +		}
> +	}
> +
> +	if (!current_pmu_hw_event_map || !current_pmu_cache_event_map) {
> +		pr_info("No default PMU events found\n");
> +	}
> +}
> +
>  static void rvpmu_sbi_check_event(struct sbi_pmu_event_data *edata)
>  {
>  	struct sbiret ret;
> @@ -1670,8 +1736,10 @@ static int __init rvpmu_devinit(void)
>  	 */
>  	if (riscv_isa_extension_available(NULL, SSCCFG) &&
>  	    riscv_isa_extension_available(NULL, SMCDELEG) &&
> -	    riscv_isa_extension_available(NULL, SSCSRIND))
> +	    riscv_isa_extension_available(NULL, SSCSRIND)) {
>  		static_branch_enable(&riscv_pmu_cdeleg_available);
> +		rvpmu_vendor_register_events();
> +	}
>  
>  	if (!(riscv_pmu_sbi_available_boot() || riscv_pmu_cdeleg_available_boot()))
>  		return 0;

