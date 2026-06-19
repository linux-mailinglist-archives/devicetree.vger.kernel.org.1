Return-Path: <devicetree+bounces-313971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UzV9Ko3VNWqq5AYAu9opvQ
	(envelope-from <devicetree+bounces-313971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 01:49:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 008086A80E1
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 01:49:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=qcWl5Rk5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313971-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313971-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2A9B30480CA
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 23:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 697C831F9B4;
	Fri, 19 Jun 2026 23:49:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21BA228CB8
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 23:49:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781912970; cv=none; b=Xf8OX7svBnlWRWPLBQ/QZWPlvFnNilk49Vwa6BaaP40Irf53M+vEqmc2aATMHJkJyJZo3pexIHJ3X+Iu4fG/8s6Fl0vfbHR9zqPKKp+ls/fxADI8WU44lHLlEmQwuIramb/qrtLyhrRLpRooUIbwDm1AuFaiGqksxVHJ1U55EdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781912970; c=relaxed/simple;
	bh=iAaQXQfyyez7M9huvHEEK5f4DTZlorcC+Cw0pos3tdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=frLGLI+4yyFiwTkl3c6l6WDG1XjqfYfnhhm8/ybYwk/rKpNGaAPMCZnhQKphvzi49PvmdurAy+HfiL8DBzvtHM+Zw7GYPsz1GcT1qrU4KGSkq/Y/JL0MxV+nSAdMM13xOmUKkWEbyqot4Esm5o3f4Gbt2uNQsMQdtz0Psd4/5Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=qcWl5Rk5; arc=none smtp.client-ip=91.218.175.184
Message-ID: <d997993c-5383-414c-bf07-9316ea956404@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781912967;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lBI6Yu5z162t9+MmhDRgf4ObBGTmChunkGVdzdlyXuw=;
	b=qcWl5Rk5hEd52czj3AJO03YxYK7AgrwV/IcN7vZkEFltt2pRfU56JXe8nbMcM/SCP48KVA
	o9qVJoXyCO/nlGa+lXZRmTyjUHx79tgHOaDohNTL6qnwASZeyDquEAp5RrR37KXzepJFRV
	vgCTjvR2eGLFe8caXuH9mDElnIjILoI=
Date: Fri, 19 Jun 2026 16:49:23 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 09/21] dt-bindings: riscv: add Counter delegation ISA
 extensions description
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, linux-perf-users@vger.kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org
References: <20260608-counter_delegation-v6-9-285b72ed65a9@meta.com>
 <20260609061239.160901F00893@smtp.kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <20260609061239.160901F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313971-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rivosinc.com:email,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 008086A80E1


On 6/8/26 11:12 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [Medium] Incorrect dependency for smcdeleg: depends on sscsrind instead of smcsrind.
> - [Medium] The ssccfg extension is over-constrained by strictly requiring smcntrpmf.
> - [Low] Contradictory description for the smcdeleg extension.
> --
>
> commit 53fb261803de68f9caaa685d63588c9cac6c0f5c
> Author: Atish Patra <atishp@rivosinc.com>
>
> dt-bindings: riscv: add Counter delegation ISA extensions description
>
> This commit adds device tree binding descriptions for the Smcdeleg and
> Ssccfg RISC-V ISA extensions. It also specifies the conditional dependencies
> required for these extensions to pass schema validation.
>
>> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> index ece3edccee42c..2845e8e2999a7 100644
>> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> @@ -181,6 +181,13 @@ properties:
>>               changes to interrupts as frozen at commit ccbddab ("Merge pull
>>               request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
>>   
>> +        - const: smcdeleg
>> +          description: |
>> +            The standard Smcdeleg supervisor-level extension for the machine mode
> [Severity: Low]
> This isn't a bug, but should this say machine-level instead of
> supervisor-level? Since it has an Sm prefix and is meant for machine mode,
> calling it a supervisor-level extension might be a copy-paste typo.

In this case, it is not true. Quoting the RISC-V spec.
For a RISC-V hardware platform, Smcdeleg and Ssccfg must always be 
implemented in tandem.

https://docs.riscv.org/reference/isa/v20260120/priv/smcdeleg.html

>> +            to delegate the hpmcounters to supervisor mode so that they are
>> +            directly accessible in the supervisor mode as ratified in the
>> +            20240213 version of the privileged ISA specification.
> [ ... ]
>
>> @@ -1135,6 +1150,36 @@ properties:
>>               allOf:
>>                 - const: zilsd
>>                 - const: zca
>> +      # Smcdeleg depends on Sscsrind, Zihpm, Zicntr
>> +      - if:
>> +          contains:
>> +            const: smcdeleg
>> +        then:
>> +          allOf:
>> +            - contains:
>> +                const: sscsrind
> [Severity: Medium]
> Does smcdeleg actually depend on sscsrind here?
>
> Since smcdeleg is a machine-mode extension that uses M-mode indirect CSRs to
> delegate counters, shouldn't it depend on the smcsrind extension instead of
> sscsrind? If a valid hardware configuration implements smcsrind and smcdeleg
> without sscsrind, would this schema incorrectly reject it?

Yes. Answered above.


>> +            - contains:
>> +                const: zihpm
>> +            - contains:
>> +                const: zicntr
>> +      # Ssccfg depends on Smcdeleg, Sscsrind, Zihpm, Zicntr, Sscofpmf, Smcntrpmf
>> +      - if:
>> +          contains:
>> +            const: ssccfg
>> +        then:
>> +          allOf:
>> +            - contains:
>> +                const: smcdeleg
>> +            - contains:
>> +                const: sscsrind
>> +            - contains:
>> +                const: sscofpmf
>> +            - contains:
>> +                const: smcntrpmf
> [Severity: Medium]
> Is smcntrpmf a strict requirement for ssccfg?
>
> The ssccfg extension provides supervisor-mode access to delegated counters,
> but the kernel implementation seems to only conditionally expose
> cyclecfg/instretcfg CSRs if smcntrpmf is present. If ssccfg can exist
> independently, will requiring smcntrpmf in this binding incorrectly fail
> validation for valid hardware that omits it?

While it is ideal to have that, we can relax that dependency.

Smcntrpmf is strictly dependant on Smcdeleg/Ssccfg extensions 
implementation but not the other way around.

>> +            - contains:
>> +                const: zihpm
>> +            - contains:
>> +                const: zicntr

