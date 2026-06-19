Return-Path: <devicetree+bounces-313969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XXZkOXzTNWof5AYAu9opvQ
	(envelope-from <devicetree+bounces-313969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 01:40:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5686A80A9
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 01:40:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=xjYjHJe3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313969-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313969-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C01E4303C639
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 23:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA7136923B;
	Fri, 19 Jun 2026 23:40:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD07A361DC3
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 23:40:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781912441; cv=none; b=ar84hNxr3cLqW5xMtIaRkhDzwBUyptxT53aZUS4d+BtBQRaJaVqajfjSMPGLhKRuWe33v1stOfRbuxk+Nllbhp2Z5dcwujMFZyqONN0wDnQkTKhhP0JybUB188c+CYEehaWoOWxerT6WIFqb3ZfzQGAf4qAxV7hmzlvSzWm3yfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781912441; c=relaxed/simple;
	bh=PbW3fqVzRPhO55V63DAT6NbmDMlHINxLcNP6wxIIMnc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AInkkPSjwqNvVrFWfRj4L0vWqetGmMU5vdma3+7XPlrrr/95sENt55pn4SH71jSSHA20vBtwkMJ2NGyjgGii7dRFddwjdvPUsS92RdWSplWeKvfSDNa/c37eoPF9IDwyg/IWpgBSNoTzikeHCyPGFYmqLbDkzboXuk9FHQ+dfgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=xjYjHJe3; arc=none smtp.client-ip=91.218.175.183
Message-ID: <437b1be4-1c01-4dc1-95b5-033d38ec20cf@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781912437;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dr93Mt28IFAycdde0QN62JpVudutzw3MoBCesVJIkok=;
	b=xjYjHJe3hmK2x9giGnzyvyLU8FCuR8eAlEtYVPe8YrKEAJ3ar+xVqs8G/oVYvwDZfFAENB
	YfcbX2M/CCl+7IR8WADaTr7LQj+NeM8ukjNgebsE8h1a76KaWv+Vuq10G/NfadxW/xlEmv
	NpzNpHvZFmHKghspU35McHvEydQ8TUs=
Date: Fri, 19 Jun 2026 16:40:34 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 06/21] dt-bindings: riscv: add Smcntrpmf ISA extension
 description
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-perf-users@vger.kernel.org
References: <20260608-counter_delegation-v6-6-285b72ed65a9@meta.com>
 <20260609060915.6C7461F00893@smtp.kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <20260609060915.6C7461F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313969-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linux.dev:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 2C5686A80A9


On 6/8/26 11:09 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Low] The `smcntrpmf` extension is inserted in the wrong alphabetical order.
> - [Low] The description incorrectly refers to `Smcntrpmf` as a 'supervisor-level' extension.
> --
>
> commit 9fd028f70a33e1a78db2f635eed4200c33b6b90d
> Author: Atish Patra <atishp@rivosinc.com>
>
> dt-bindings: riscv: add Smcntrpmf ISA extension description
>
> Add the description for the Smcntrpmf ISA extension.
>
>> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> index 4be557dc215de..ece3edccee42c 100644
>> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> @@ -189,6 +189,12 @@ properties:
>>               mechanism in M-mode as ratified in the 20240326 version of the
>>               privileged ISA specification.
>>   
>> +        - const: smcntrpmf
> [Severity: Low]
> Is this inserted in the correct alphabetical order?
>
> The multi-letter extensions list in this file explicitly requires entries to be
> sorted alphanumerically. Alphabetically, smcntrpmf ("c-n") should come before
> the preceding extension (smcsrind, "c-s").
>
>> +          description: |
>> +            The standard Smcntrpmf supervisor-level extension for the machine mode
> [Severity: Low]
> Is "supervisor-level" accurate here?
>
> In the RISC-V ISA naming convention, the "Sm" prefix denotes a standard
> machine-level extension, while "Ss" denotes a supervisor-level extension.
>
> Calling it a "supervisor-level extension for the machine mode" seems
> contradictory. Could this be a copy-paste error?
>
>> +            to enable privilege mode filtering for cycle and instret counters as
>> +            ratified in the 20240326 version of the privileged ISA specification.
>> +
>>           - const: smmpm
>>             description: |
>>               The standard Smmpm extension for M-mode pointer masking as


Fixed in v7.



