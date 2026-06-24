Return-Path: <devicetree+bounces-315087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hiErMpSJO2qpZQgAu9opvQ
	(envelope-from <devicetree+bounces-315087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:39:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF936BC3C8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:39:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=Mn96eHRe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315087-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315087-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19CDC30479D0
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37C0E2ECD1D;
	Wed, 24 Jun 2026 07:36:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E66638A715
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 07:36:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782286593; cv=none; b=oly9cXxJ22xy4OYhuvYduoCNp7nauZWDNIDe+Uyh59/v+4nyKlofqUq2ECZSWc/v76K0C2uRQCkVHZK9r15ECmJpUYZWvsSB3mRpive2ljsksmydmZMjPWpmGPwdbTG671gllebaQKv2Uc0dP+R1S9ETT4PtLdOUTS29RZzjqaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782286593; c=relaxed/simple;
	bh=GORlTa1Wgra6WRKUL+MJ+MsIYPj7Gc8sihpxBAOTIMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pg5xABZYussAKaAnKeOPws1uGaOYqXgPbEJDx2Vdy5vdB+82XbVKEKzWksexqRNJA3bRxEAeIbsmKVPG9EVgt3Cju3xC+3+EBckiiv4PV+FgbZsHWS7oJOx080+RA3LnYfPDNgO3cwJ3ljqI3yWkS0UcYUJNJZEvpBszLiLPCS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Mn96eHRe; arc=none smtp.client-ip=91.218.175.178
Message-ID: <85b09fd7-f849-46e5-a04d-1e76524943b8@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782286587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9T0Fze3KpG06xnYvjmlUmzBODU53xtqtwO9Goa0J3Rc=;
	b=Mn96eHResPBSCyPsmN5dNm1kiNQkCTSsU33kbZpT8C88/niYY9SZETrVoJxvV+a+zTZQIC
	+YvG/pf77lfyNVlF2y2HVKLafVkhr5dbK5jEpC043M26er9EcAK98KijzhbYZyI+bDoG/p
	KKKDAelxFmIFAoDN70FKLxT6PT9CdjE=
Date: Wed, 24 Jun 2026 00:36:17 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 07/21] RISC-V: Add Sscfg extension CSR definition
To: Charlie Jenkins <thecharlesjenkins@gmail.com>
Cc: James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Anup Patel <anup@brainfault.org>, Namhyung Kim <namhyung@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Ian Rogers <irogers@google.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
 <20260608-counter_delegation-v6-7-285b72ed65a9@meta.com>
 <ajjZkRxoh2F3vUAS@blinky>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <ajjZkRxoh2F3vUAS@blinky>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-315087-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:thecharlesjenkins@gmail.com,m:james.clark@linaro.org,m:robh@kernel.org,m:acme@kernel.org,m:jolsa@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:anup@brainfault.org,m:namhyung@kernel.org,m:pjw@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime,infradead.org:url,infradead.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FF936BC3C8


On 6/21/26 11:43 PM, Charlie Jenkins wrote:
> On Mon, Jun 08, 2026 at 11:01:21PM -0700, Atish Patra wrote:
>> From: Kaiwen Xue <kaiwenx@rivosinc.com>
>>
>> This adds the scountinhibit CSR definition and S-mode accessible hpmevent
>> bits defined by smcdeleg/ssccfg. scountinhibit allows S-mode to start/stop
>> counters directly from S-mode without invoking SBI calls to M-mode. It is
>> also used to figure out the counters delegated to S-mode by the M-mode as
>> well.
>>
>> Signed-off-by: Kaiwen Xue <kaiwenx@rivosinc.com>
>> Reviewed-by: Clément Léger <cleger@rivosinc.com>
>> ---
>>   arch/riscv/include/asm/csr.h | 26 ++++++++++++++++++++++++++
>>   1 file changed, 26 insertions(+)
>>
>> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
>> index b4551a6cf7cb..26cb78dee2fd 100644
>> --- a/arch/riscv/include/asm/csr.h
>> +++ b/arch/riscv/include/asm/csr.h
>> @@ -241,6 +241,31 @@
>>   #define SMSTATEEN0_HSENVCFG		(_ULL(1) << SMSTATEEN0_HSENVCFG_SHIFT)
>>   #define SMSTATEEN0_SSTATEEN0_SHIFT	63
>>   #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
>> +/* HPMEVENT bits. These are accessible in S-mode via Smcdeleg/Ssccfg */
>> +#ifdef CONFIG_64BIT
>> +#define HPMEVENT_OF			(BIT_ULL(63))
>> +#define HPMEVENT_MINH			(BIT_ULL(62))
>> +#define HPMEVENT_SINH			(BIT_ULL(61))
>> +#define HPMEVENT_UINH			(BIT_ULL(60))
>> +#define HPMEVENT_VSINH			(BIT_ULL(59))
>> +#define HPMEVENT_VUINH			(BIT_ULL(58))
>> +#else
>> +#define HPMEVENTH_OF			(BIT_ULL(31))
>> +#define HPMEVENTH_MINH			(BIT_ULL(30))
>> +#define HPMEVENTH_SINH			(BIT_ULL(29))
>> +#define HPMEVENTH_UINH			(BIT_ULL(28))
>> +#define HPMEVENTH_VSINH			(BIT_ULL(27))
>> +#define HPMEVENTH_VUINH			(BIT_ULL(26))
> Since these are rv32 bits for a 32-bit register, I think these should be
> BIT() instead of BIT_ULL()
>
>> +
>> +#define HPMEVENT_OF			(HPMEVENTH_OF << 32)
>> +#define HPMEVENT_MINH			(HPMEVENTH_MINH << 32)
>> +#define HPMEVENT_SINH			(HPMEVENTH_SINH << 32)
>> +#define HPMEVENT_UINH			(HPMEVENTH_UINH << 32)
>> +#define HPMEVENT_VSINH			(HPMEVENTH_VSINH << 32)
>> +#define HPMEVENT_VUINH			(HPMEVENTH_VUINH << 32)
> These definitions are identical to the rv64 ones, can these be removed
> and can you move the rv64 definitions to be global?

Good catch. Will fix this and the above in v8.

> - Charlie
>
>> +#endif
>> +
>> +#define SISELECT_SSCCFG_BASE		0x40
>>   
>>   /* mseccfg bits */
>>   #define MSECCFG_PMM			ENVCFG_PMM
>> @@ -322,6 +347,7 @@
>>   #define CSR_SCOUNTEREN		0x106
>>   #define CSR_SENVCFG		0x10a
>>   #define CSR_SSTATEEN0		0x10c
>> +#define CSR_SCOUNTINHIBIT	0x120
>>   #define CSR_SSCRATCH		0x140
>>   #define CSR_SEPC		0x141
>>   #define CSR_SCAUSE		0x142
>>
>> -- 
>> 2.53.0-Meta
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv

