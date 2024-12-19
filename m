Return-Path: <devicetree+bounces-132791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE119F81DD
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 956837A2927
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3D219E965;
	Thu, 19 Dec 2024 17:31:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F015313B59A;
	Thu, 19 Dec 2024 17:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734629466; cv=none; b=YeU6Upgver3NW7hBZwhLqkic14tuspmPSXcdljewx3PRcWJlaTRN51Y0YcHwkhNWgHs9KBgjfbdOvDkDyssFzh09Xt+3vJ+jy2KEwFzuHX3ykisqa38D842jv+yrDAgicoY18V62IpthO+aYNfqQv46Mv0XmgPtZ5oP1XJLQGvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734629466; c=relaxed/simple;
	bh=CpTk07fv0BVDdJ3AzH3B9ulCuQynYC7GH7ywepL9S7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MRqAOQWa0UoqdGTtLcH1FgmlrcNNl++VCnTIwRHNXIxhqqkrz4DePxNEoL5PtlYbgx4pk9jD9qwwxiDLnBPsiszyWPVMfrQzz+wTJYK/6KkJTa0vbFdzPsts06aTTa2xQU0CFVYyAtc9ekX0ttGwGaeerB442CzAlgPkZNSsxiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3916F1480;
	Thu, 19 Dec 2024 09:31:32 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6118D3F528;
	Thu, 19 Dec 2024 09:31:03 -0800 (PST)
Message-ID: <a7f9dc73-6ec7-4c72-9c10-afaca727e961@arm.com>
Date: Thu, 19 Dec 2024 17:31:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: Add Arm Morello System Development
 Platform support
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-7-vincenzo.frascino@arm.com>
 <bc4ff071-ffc5-4b16-8e3a-977e47475816@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <bc4ff071-ffc5-4b16-8e3a-977e47475816@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14/12/2024 10:14, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>> The Morello architecture is an experimental extension to Armv8.2-A,
>> which extends the AArch64 state with the principles proposed in
>> version 7 of the Capability Hardware Enhanced RISC Instructions
>> (CHERI) ISA.
>>
>> Introduce Arm Morello System Development Platform support.
>>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/boot/dts/arm/Makefile | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
>> index d908e96d7ddc..0a821808692e 100644
>> --- a/arch/arm64/boot/dts/arm/Makefile
>> +++ b/arch/arm64/boot/dts/arm/Makefile
>> @@ -7,3 +7,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
>>  dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
>>  dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
>>  dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
>> +dtb-$(CONFIG_ARCH_MORELLO) += morello-soc.dtb
> 
> No, you organize patches in insane way. Makefile is never, never
> separate entry.
> 
> Look how all existing submissions were done.
> 
> Squash the patches.
> 

Generally in v1 I tend to make evident things on which I want comments to make
sure they are not missed.

Here and in the previous patch I wanted to know if ARCH_MORELLO could live as a
separate entity.

Now that you replied, it will be squashed where it belongs in v2.

> You also did not CC several people and at least arm kernel list. Use
> standard tools for development instead of inventing your own process.
> 
> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.
> 
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> </form letter>
> 
> 
> 
> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


