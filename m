Return-Path: <devicetree+bounces-315061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rrBPF5Z/O2pTYwgAu9opvQ
	(envelope-from <devicetree+bounces-315061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:56:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B276C6BBEFA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:56:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=YcHVNIIQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315061-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315061-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B93A9302D0BE
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 06:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05536389E1A;
	Wed, 24 Jun 2026 06:55:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4803890F7
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:55:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782284149; cv=none; b=NDSRlC4/mSJmHRv2XRy64coUBn66+pXdLnhuOmqYFeA4PluNPRucWMEjiNuAkIZTaRFkyWpvIQij2l24ijesjnbSpwkXUDo0GkroRD/MXo1xA2kLraDB6mwljEy8EsrHBtMyJqOI/U71gJnygwdZHe0JQc2HHaS3xbaru9o2fUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782284149; c=relaxed/simple;
	bh=rLH9ynL6Uvxn7RnSmUHLRZRTqjWpsodZDL+nLrHffhY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QZXTtBU6MzajneV+2v7ykV1daTdJcmXOGqIT+oJgkxCoeHd1EQIEQMIauUvDw8+OUbPsN+nCaFSPQDlgr+QrNAmnGclyyPIWHkQmwrbNddfcKbYiTqYbHxnEF0A2DMvfRqalBp/3wSSDarJjvh8pSISYyglki+YXhFbQWSoIRNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=YcHVNIIQ; arc=none smtp.client-ip=91.218.175.177
Message-ID: <df40cc47-98ec-44b6-afda-76f483b788f9@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782284135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yWm8hwbOHYEuIVgePKE1QjEJreKex9TPU9yjx6MzZcc=;
	b=YcHVNIIQIPlkM4Otj/PcpwiswIuKazAwMKCk9ChENUfKCwBT6Gh/wiQr0oNjKrv1nipBGG
	ct24V6l0dxWtjw8Rc02pGLqDchRSQLB/o2NKzC0FKFohLycg4yJTIH0RPJbw0uwB5DODaP
	v0GqAVxtEwq+zjEoS/Pic5q81ZOQ9Ic=
Date: Tue, 23 Jun 2026 23:55:28 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 04/21] RISC-V: Define indirect CSR access helpers
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
 <20260608-counter_delegation-v6-4-285b72ed65a9@meta.com>
 <ajjZR-R11yPYWuDp@blinky>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <ajjZR-R11yPYWuDp@blinky>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
	TAGGED_FROM(0.00)[bounces-315061-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,infradead.org:url,infradead.org:email,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B276C6BBEFA


On 6/21/26 11:42 PM, Charlie Jenkins wrote:
> On Mon, Jun 08, 2026 at 11:01:18PM -0700, Atish Patra wrote:
>> From: Atish Patra <atishp@rivosinc.com>
>>
>> The indriect CSR requires multiple instructions to read/write CSR.
> indirect
>
>> Add a few helper functions for ease of usage.
>>
>> Signed-off-by: Atish Patra <atishp@rivosinc.com>
>> ---
>>   arch/riscv/include/asm/csr_ind.h | 44 ++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 44 insertions(+)
>>
>> diff --git a/arch/riscv/include/asm/csr_ind.h b/arch/riscv/include/asm/csr_ind.h
>> new file mode 100644
>> index 000000000000..6fd7d44dc640
>> --- /dev/null
>> +++ b/arch/riscv/include/asm/csr_ind.h
>> @@ -0,0 +1,44 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (C) 2024 Rivos Inc.
> I don't think it makes sense to introduce this copyright in new commits.
Yeah. I will update these.
> - Charlie
>
>> + */
>> +
>> +#ifndef _ASM_RISCV_CSR_IND_H
>> +#define _ASM_RISCV_CSR_IND_H
>> +
>> +#include <linux/irqflags.h>
>> +
>> +#include <asm/csr.h>
>> +
>> +#define csr_ind_read(iregcsr, iselbase, iseloff) ({		\
>> +	unsigned long __value = 0;				\
>> +	unsigned long __flags;					\
>> +	local_irq_save(__flags);				\
>> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
>> +	__value = csr_read(iregcsr);				\
>> +	local_irq_restore(__flags);				\
>> +	__value;						\
>> +})
>> +
>> +#define csr_ind_write(iregcsr, iselbase, iseloff, value) ({	\
>> +	unsigned long __flags;					\
>> +	local_irq_save(__flags);				\
>> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
>> +	csr_write(iregcsr, (value));				\
>> +	local_irq_restore(__flags);				\
>> +})
>> +
>> +#define csr_ind_warl(iregcsr, iselbase, iseloff, warl_val) ({	\
>> +	unsigned long __old_val = 0, __value = 0;		\
>> +	unsigned long __flags;					\
>> +	local_irq_save(__flags);				\
>> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
>> +	__old_val = csr_read(iregcsr);				\
>> +	csr_write(iregcsr, (warl_val));				\
>> +	__value = csr_read(iregcsr);				\
>> +	csr_write(iregcsr, __old_val);				\
>> +	local_irq_restore(__flags);				\
>> +	__value;						\
>> +})
>> +
>> +#endif
>>
>> -- 
>> 2.53.0-Meta
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
>>

