Return-Path: <devicetree+bounces-122909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A22249D2C08
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 18:03:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA5E1B2C320
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 16:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E11BE1D0E07;
	Tue, 19 Nov 2024 16:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PjEu+lGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF141D0B9B
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 16:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732034824; cv=none; b=ZAmD5na38cXVkXHKoPH0Jbwc1Mlovw5ay6d1Gq3zv8HGtwL/rcIIGwMV92mpE5d+T1Mxzt+XinvbqWcPM4Sbd6cujJ0t+8DrqfBi17YIIxsK6iGWPwVqhq0UlNqxaAgT2LpysSeaHXWVSS1gjKv1rRns2KRqGDgDZjP42xHHsyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732034824; c=relaxed/simple;
	bh=J5QDN8JdsHXfHxo98F94Q5C5AznjK1VSyDRrBBfkGQs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MrPUSYGaail82YPFku8OJsm1dmwVj0fUm6DgsDh2P2RAr15uAoCqV1cqho/WY7WvR4HewcJpmugjNLGSy1NOq/ufqMTQ3gMTCy/XTJ+OHtfYjpvlib1r39CmEJeN6gk58FW49fH/z9h/dq21Np8G83c4+Kf1C+hcfgdC5WqN+zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PjEu+lGN; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7180f2f5fb0so1971504a34.1
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 08:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1732034822; x=1732639622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RTjgUeIXtnnbb8jLhO593lKL4OnpMuAwrEWhmEGjO2I=;
        b=PjEu+lGNN2hxZwSQG6pDEXwCtEFdZzl90yrkQtkAwbWxDuorgmeIWrtocq+gxWQxMB
         FD5eMD9P65rqoviXhpa+5jmpU+DknOwteVS2MUfrrDl0NrfT82zw7PSjRMlj96EsHJVa
         xKXiBMY5yWjqEQCGr5vxmsSHYp4OoW8s+d0PsEEJbnmF2P65BTlrWDArhkxXI0GWs8vA
         CrqZ7sqq2EL8auPDXKoFJ6v3KAdcotdxnMw/lqcwlVuWuqedkAXIAE3LZOo3BQc4ss8d
         q7aC1ApR4xW9ZJule4TXH071cCUGYUDov+eyYeanMaLqxLv7kLGv4r4qMF4rB3UrArIS
         gfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732034822; x=1732639622;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RTjgUeIXtnnbb8jLhO593lKL4OnpMuAwrEWhmEGjO2I=;
        b=BIYBiDseIp1CpDwVOJ43zAz08R261awsNDEPQqKhbq0jZPPa7TN6P9FQvdrbK17Bi+
         yU70n6olPAswEwD/KgCFAeIaDlOLcl1zFcYwZ43t5dFPq9d3GvUfRE8qA4d5hYO1so7G
         WPGYBsNQFuNjxtRuiC0PNrz3D0u+rDW1S2Ze7Ek/h120GqWOWtySSpOty/LKxoJDlp2l
         G34Eaauf1V4ekjjNUkJGsWb/R8B+hHzLIxpaAGauKBBxg+C/IXcKGJvneaxRXmHg6e6U
         V/UXSpLX1rBt5zya5UPfnk0H5gmy+DQiI7NYkcy5us9i7B4Ud97Tgx4rjaAR8YJzP36x
         0rmg==
X-Forwarded-Encrypted: i=1; AJvYcCVnPUb0z5ITT9KAzqDbjX2zyiSlTld1BHkPEj0Pmjpsqfa5KQbTb4f/A0T9Shf1QE/JGgHpz9zbKjty@vger.kernel.org
X-Gm-Message-State: AOJu0YwUxTeG3xlxbrUDsH0fNCNi27rON9na2obJ1F03vrEvmO2kpvED
	NO4X7jGoJ6JYqaBSv5DE7hedjo+DIipRFDOjrsWfHgvGlt87nZD0Ncl+LR53dI0=
X-Google-Smtp-Source: AGHT+IHjqisLA9RIroKpernk7R7pMjqnZ0rgNei0SO58TWfsWov0SG3Oy9qUF0rzM1RhGR0pSMoXTg==
X-Received: by 2002:a05:6830:4885:b0:718:2eb7:4ebe with SMTP id 46e09a7af769-71a77a2aaa9mr14697086a34.27.1732034822166;
        Tue, 19 Nov 2024 08:47:02 -0800 (PST)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e06d72dcf8sm2724842173.73.2024.11.19.08.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 08:47:01 -0800 (PST)
Message-ID: <1f78898b-f703-4fd9-8f68-c0835a85de9e@sifive.com>
Date: Tue, 19 Nov 2024 10:46:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: property: fw_devlink: Do not use interrupt-parent
 directly
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241114195652.3068725-1-samuel.holland@sifive.com>
 <20241119154117.GA1537069-robh@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20241119154117.GA1537069-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Rob,

On 2024-11-19 9:41 AM, Rob Herring wrote:
> On Thu, Nov 14, 2024 at 11:56:49AM -0800, Samuel Holland wrote:
>> commit 7f00be96f125 ("of: property: Add device link support for
>> interrupt-parent, dmas and -gpio(s)") started adding device links for
>> the interrupt-parent property. Later, commit f265f06af194 ("of:
>> property: Fix fw_devlink handling of interrupts/interrupts-extended")
>> added full support for parsing the interrupts and interrupts-extended
>> properties, which includes looking up the node of the parent domain.
>> This made the handler for the interrupt-parent property redundant.
>>
>> In fact, creating device links based solely on interrupt-parent is
>> problematic, because it can create spurious cycles. A node may have
>> this property without itself being an interrupt controller or consumer.
>> For example, this property is often present in the root node or a /soc
>> bus node to set the default interrupt parent for child nodes. However,
>> it is incorrect for the bus to depend on the interrupt controller, as
>> some of the bus's childre may not be interrupt consumers at all or may
> 
> typo
> 
>> have a different interrupt parent.
>>
>> Resolving these spurious dependency cycles can cause an incorrect probe
>> order for interrupt controller drivers. This was observed on a RISC-V
>> system with both an APLIC and IMSIC under /soc, where interrupt-parent
>> in /soc points to the APLIC, and the APLIC msi-parent points to the
>> IMSIC. fw_devlink found three dependency cycles and attempted to probe
>> the APLIC before the IMSIC. After applying this patch, there were no
>> dependency cycles and the probe order was correct.
>>
>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> 
> I assume this should go to stable? It needs Fixes tags.

What commit should I put in the Fixes tag? f265f06af194 ("of: property: Fix
fw_devlink handling of interrupts/interrupts-extended"), because it finished
making this code redundant? That commit didn't introduce any new bugs--this code
was always wrong--but I would be hesitant to backport this change any further,
because it might cause regressions without the "interrupts" property parsing in
place.

Regards,
Samuel

> Otherwise, the change makes sense to me.
> 
>> ---
>>
>>  drivers/of/property.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/of/property.c b/drivers/of/property.c
>> index 11b922fde7af..7bd8390f2fba 100644
>> --- a/drivers/of/property.c
>> +++ b/drivers/of/property.c
>> @@ -1213,7 +1213,6 @@ DEFINE_SIMPLE_PROP(iommus, "iommus", "#iommu-cells")
>>  DEFINE_SIMPLE_PROP(mboxes, "mboxes", "#mbox-cells")
>>  DEFINE_SIMPLE_PROP(io_channels, "io-channels", "#io-channel-cells")
>>  DEFINE_SIMPLE_PROP(io_backends, "io-backends", "#io-backend-cells")
>> -DEFINE_SIMPLE_PROP(interrupt_parent, "interrupt-parent", NULL)
>>  DEFINE_SIMPLE_PROP(dmas, "dmas", "#dma-cells")
>>  DEFINE_SIMPLE_PROP(power_domains, "power-domains", "#power-domain-cells")
>>  DEFINE_SIMPLE_PROP(hwlocks, "hwlocks", "#hwlock-cells")
>> @@ -1359,7 +1358,6 @@ static const struct supplier_bindings of_supplier_bindings[] = {
>>  	{ .parse_prop = parse_mboxes, },
>>  	{ .parse_prop = parse_io_channels, },
>>  	{ .parse_prop = parse_io_backends, },
>> -	{ .parse_prop = parse_interrupt_parent, },
>>  	{ .parse_prop = parse_dmas, .optional = true, },
>>  	{ .parse_prop = parse_power_domains, },
>>  	{ .parse_prop = parse_hwlocks, },
>> -- 
>> 2.45.1
>>


