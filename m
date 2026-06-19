Return-Path: <devicetree+bounces-313967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E3vsFT3TNWoR5AYAu9opvQ
	(envelope-from <devicetree+bounces-313967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 01:39:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4267E6A80A0
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 01:39:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=Y3WZgT3H;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313967-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313967-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 173C33007AEC
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 23:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3243438AF;
	Fri, 19 Jun 2026 23:39:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF2E33B6FC
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 23:39:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781912373; cv=none; b=ceDGpyxdvcCSNOiLWgTpTxpRDnalZvDGtzF5zAc0AuDmthHa7gYWTdZEKc4dvCxYD9unTZU+gmbfU2TaBTFwyEWTS0JE7m6dFbNIxMAi3Z3kUnrHNBsq9voQfrN6CJBnPl9OHdocOAjmLg3dGBUFPXfSypMwugv8/zBulqzfFqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781912373; c=relaxed/simple;
	bh=C1Y3OdP/bAcdNgU5rQcA7TEt7rhXSGoAbUtrrGhKV2Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MlDTS3is8SD1PZIXMB0Tj7QtMryInIhVSDmolg/428xr9a2KiKfAKENCxF58IBMvnp8fG3XJQEG2k4XVA358TtQQxm684OQPpiqw0jKp27fOE8yqXJyrxUymH4whU7/zutUn8umVjMjg3eqDsJ/Zcnxl8fdR4aS6vOdSFAXlz+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Y3WZgT3H; arc=none smtp.client-ip=95.215.58.172
Message-ID: <4a08c2ca-8137-428d-9f27-337401b62f11@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781912359;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NNpb7L2Dqpu2wyeTGuiQDnyk9igjFskq57DPZVvFEao=;
	b=Y3WZgT3H8P0jSvw93j3YMzpV/qRHSkpIE/CwHlCo0dnsmtnb9lwv5yEH5kyMBbH5WIycxb
	ruxLtUN44dm46SUyssPaguRnQC0ML7g2GWdK1u9ger8I6xD12OOvCGrRc4Nu6/sF/iB9tV
	eqpxZ5ploHhn096cDxFDp9B52Cn2vvk=
Date: Fri, 19 Jun 2026 16:39:05 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 04/21] RISC-V: Define indirect CSR access helpers
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org,
 linux-perf-users@vger.kernel.org, conor+dt@kernel.org
References: <20260608-counter_delegation-v6-4-285b72ed65a9@meta.com>
 <20260609061511.276E31F00893@smtp.kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <20260609061511.276E31F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313967-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linux.dev:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4267E6A80A0


On 6/8/26 11:15 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Unsafe statement-expression macro definitions causing delayed evaluation and variable shadowing hazards.
> --
>
> commit 572b7555547c1b5bc07701482ba67d379f6a2177
> Author: Atish Patra <atishp@rivosinc.com>
>
> RISC-V: Define indirect CSR access helpers
>
> This commit introduces helper macros to read, write, and perform WARL
> operations on indirect CSRs. The macros use statement-expressions to handle
> the multiple instructions required while disabling interrupts.
>
>> diff --git a/arch/riscv/include/asm/csr_ind.h b/arch/riscv/include/asm/csr_ind.h
>> new file mode 100644
>> index 0000000000000..6fd7d44dc640a
>> --- /dev/null
>> +++ b/arch/riscv/include/asm/csr_ind.h
>> @@ -0,0 +1,44 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (C) 2024 Rivos Inc.
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
> [Severity: Medium]
> Will these generic variable names (__value, __flags) cause shadowing issues if
> the caller passes in arguments with the same names?
>
> Evaluating macro arguments into unique local variables before entering the
> IRQ-disabled region would avoid this regression.
>
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
> [Severity: Medium]
> Since value is evaluated here after CSR_ISELECT has been programmed, what
> happens if a caller passes an expression that accesses another indirect CSR,
> such as a nested csr_ind_read(), as the value argument?
>
> It appears the nested call would overwrite CSR_ISELECT, causing the write to
> silently corrupt the wrong hardware register. Evaluating arguments into local
> variables before disabling interrupts would prevent this, and also avoid the
> risk of evaluating expressions with side effects while interrupts are disabled.
>
>> +	local_irq_restore(__flags);				\
>> +})
>> +
>> +#define csr_ind_warl(iregcsr, iselbase, iseloff, warl_val) ({	\
>> +	unsigned long __old_val = 0, __value = 0;		\
>> +	unsigned long __flags;					\
> [Severity: Medium]
> Do these generic local variables risk shadowing caller arguments?
>
>> +	local_irq_save(__flags);				\
>> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
>> +	__old_val = csr_read(iregcsr);				\
>> +	csr_write(iregcsr, (warl_val));				\
> [Severity: Medium]
> Is there a risk that evaluating warl_val here could overwrite CSR_ISELECT if
> the caller provides an expression that performs another indirect CSR access?
>
>> +	__value = csr_read(iregcsr);				\
>> +	csr_write(iregcsr, __old_val);				\
>> +	local_irq_restore(__flags);				\
>> +	__value;						\
>> +})
>> +
>> +#endif

Given the callers, I don't think the possibilities raised by Sashiko can 
actually happen.
It's a macro. So the new callers should ensure they are invoking it with 
proper argument.

N/A.



