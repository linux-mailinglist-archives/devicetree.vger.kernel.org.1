Return-Path: <devicetree+bounces-260964-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEzzOB+Ue2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260964-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:08:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E93E0B2A76
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD4523048B31
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398D0344033;
	Thu, 29 Jan 2026 17:06:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349AA3469F7;
	Thu, 29 Jan 2026 17:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769706368; cv=none; b=LiAVLiPHNEyR9I9V5MOVt5X/jc5iX9s9vBCofu5ISF3UdikxkFenS+w17sk6UB/QHnfxAEmPz6h9xy35SJaNka16IuXT8ZdwP6g4KMYSITnQYgkOmQ7YGxTPzP0f2BNcbR3Gqx8qwRgjKp3359fsJiR8CTIBmMj71Ro+B4BKao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769706368; c=relaxed/simple;
	bh=Bj+6EzKaz2HdsMGmdFcp3gynrSLuJENGKgJTVdXR3xc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eEr0IvEMD+5FO5Afo2DobqexFamMhYGdfJHlaFE/V8BRMLYOy6qNvaYVzpGn0nfaThj/0Zf63Uup/9+L/oQsXOApsfNtIZuhpYdqQpctxA/yItkOfkaCtINmjq754GJERGHtdiUjWV4iR/K6jIvv1dCFRW8aeSbvo/NIGDd77s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2820153B;
	Thu, 29 Jan 2026 09:05:58 -0800 (PST)
Received: from [10.1.196.85] (e121345-lin.cambridge.arm.com [10.1.196.85])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC81F3F73F;
	Thu, 29 Jan 2026 09:06:02 -0800 (PST)
Message-ID: <2f1f48c6-ad75-4e7d-89a2-c93bb1c1d067@arm.com>
Date: Thu, 29 Jan 2026 17:06:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1.1 4/7] dt-bindings: iommu: Add spacemit/t100 features
To: Conor Dooley <conor@kernel.org>, =?UTF-8?B?6YOR5b6L?=
 <lv.zheng@spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>,
 iommu <iommu@lists.linux.dev>,
 linux-perf-users <linux-perf-users@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 spacemit <spacemit@lists.linux.dev>, devicetree <devicetree@vger.kernel.org>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1769666438.git.lv.zheng@spacemit.com>
 <15209d7b8c5a5055f8944ab7261e440d70a18a03.1769666438.git.lv.zheng@spacemit.com>
 <20260129-evolution-femur-84eb5668f4a7@spud>
 <a4684b7f094a6a5ee87d9db722b75594f851b9fb.d4fb292a.1570.47af.8025.bf9af089dc8a@feishu.cn>
 <20260129-grandly-compare-e8e3a105f690@spud>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20260129-grandly-compare-e8e3a105f690@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_FROM(0.00)[bounces-260964-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[18]
X-Rspamd-Queue-Id: E93E0B2A76
X-Rspamd-Action: no action

On 29/01/2026 4:41 pm, Conor Dooley wrote:
> On Thu, Jan 29, 2026 at 06:43:03PM +0800, 郑律 wrote:
>>> From: "Conor Dooley"<conor@kernel.org>
>>> Date:  Thu, Jan 29, 2026, 18:08
>>> Subject:  Re: [PATCH v1.1 4/7] dt-bindings: iommu: Add spacemit/t100 features
>>> To: "Lv Zheng"<lv.zheng@spacemit.com>
>>> Cc: "Tomasz Jeznach"<tjeznach@rivosinc.com>, "Joerg Roedel"<joro@8bytes.org>, "Will Deacon"<will@kernel.org>, "Robin Murphy"<robin.murphy@arm.com>, "Rob Herring"<robh@kernel.org>, "Krzysztof Kozlowski"<krzk+dt@kernel.org>, "Conor Dooley"<conor+dt@kernel.org>, "Paul Walmsley"<pjw@kernel.org>, "Palmer Dabbelt"<palmer@dabbelt.com>, "Albert Ou"<aou@eecs.berkeley.edu>, "Alexandre Ghiti"<alex@ghiti.fr>, "Jingyu Li"<joey.li@spacemit.com>, "Zhijian Chen"<zhijian@spacemit.com>, <iommu@lists.linux.dev>, <linux-perf-users@vger.kernel.org>, <linux-riscv@lists.infradead.org>, <spacemit@lists.linux.dev>, <devicetree@vger.kernel.org>
>>> On Thu, Jan 29, 2026 at 02:09:13PM +0800, Lv Zheng wrote:
>>>> Adds device tree bindings for SpacemiT T100 specific features.
>>>>   
>>>> vendor-hpm-events: Allow vendor events to be customized in the device
>>>>                     tree.
>>>> global-filter: The feature saves silicon area by reducing filters to
>>>>                 one and use it as a global filter across all events.
>>>>                 This usually is sufficient for real applications.
>>>   
>>> Why can these not be determined from a device specific compatible?
>>
>> The specification only defines less than 10 standard event types while the
>> real silicons should have implemented many other event types based on
>> their micro-architecture. I tried to provide a common mechanism for all
>> vendor specific event types across different vendors.
> 
> Given that the variance is based on uarch, it sounds like it can be
> determined from the compatible.
> 
>> It is similar for the global filter, the global filter mechanism actually
>> complies to the IOMMU specification, users can alter the iohpmevt
>> registers as is what is specified in the IOMMU specification. It only
>> provides slight application difference between the final effection. Thus
>> this could also be a non-device specific option.
> 
> What is a "user" in this context? Given you're talking about reducing
> silicon area, it sounds like this will be set in stone for each SoC, and
> therefore can be determined by compatible. If other devices do this,
> they can also determine it from their compatible.
> 
> Properties for things that can be determined based on compatible are
> generally not permitted, so you'll need to provide a compelling
> rationale. Common mechanism isn't one, since determining based on
> compatible would be a common mechanism based on match data that people
> can tack onto for their devices.

Also, reinventing jevents via devicetree is pretty grim anyway - the PMU 
can simply expose an "identifier" attribute that uniquely identifies the 
vendor implementation, and perf tooling can match that to a set of event 
definitions in userspace, with the added bonus that jevents can also 
encode meaningful descriptions, metrics and suchlike. There doesn't 
*need* to be a sysfs alias for every possible event. I see the RISC-V 
CPU PMUs are already on-board with this approach - note the 
"Unit"/"Compat" matching for system/uncore PMUs is a little different 
from the mapfile used for CPUs, but see other architectures for examples.

Thanks,
Robin.


