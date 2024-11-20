Return-Path: <devicetree+bounces-123365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F69D443D
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 00:03:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED65628104D
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 23:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A241D3628;
	Wed, 20 Nov 2024 22:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Wr5WcVdQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2501CEAA7
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 22:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732143509; cv=none; b=gDIC8OOS1l1+wVac6e/iKdaZTcCyFdwDLWEg4vOEp/aWy5lRvnXuSn8nHLPztY5U9VzcQancNItEcb0IyikVwR5OfQyci5dfPVn1KQBLdx2S1rmgHT5wCmkWwpN7oaAM85ZcMyWZ1fhyL8wdp0ZKNkuQoi/kClTTVfu3UuYL9ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732143509; c=relaxed/simple;
	bh=1skV2qFAGfSvbe534zMjcl+hBxCjgXktPRELDMeL1ZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pvqKN9fRqMT8mB1m+FRjdUzFHHkvu4mrKGpGDl/8w+D2h9SWBNbTeMQWrWLP4j37YwlQOvjqrWMl3D/xqUju7WlFEctYA6s8NVM7GEAm9sxwMZUP2Czh3N86JX791fHwZPhm6qxL1qgmw3Nr2TY4pngWnVlNtJ6zZWlzSlvWttc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Wr5WcVdQ; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3a777958043so846235ab.2
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 14:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1732143507; x=1732748307; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zbBxCzNBeFc+wnUmMcmZVchDz/UBEx2euh7K944pRho=;
        b=Wr5WcVdQBsQBlMssvpQqYREzhQo3o+X9GWr1mOzxZ9IBpXRRQd1KPXtVUBoJbG/XA8
         gnV1VNAAHbArw24jUx5WM7IkHTrWJaxI1Suzb8xVBMK7GxbCokmAE3HF+plwiVulNID6
         mRPbHCZ44eHyDF62zo7E1zOkgNXlO6Gm+0AeM5+1jJK89VYJM9Mb9vY2VdE8mxYDFBas
         sloCK2Y3MHluVGIwbsM0mbPtTipMjHzT61Ft21LioY07XNyrSXKEFqVN/kWo2s1t8NiJ
         t1Brzga3kuhYc7aMUq4/BGe/FMhjdHFC9xYj/50hktDl1dmbX6e3l2EYkJ67Y8wxslJd
         TX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732143507; x=1732748307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zbBxCzNBeFc+wnUmMcmZVchDz/UBEx2euh7K944pRho=;
        b=m5mH9fIl75Uc4tVmPnWKz8pSf9PcXH91/T1WsP6pJ/RiWSZkSjqLWAkP4TDqVLiP93
         Nq1aw0NOfXRFlW4ua373SxhsBpsrUWXa0XxnJ3hS/hLxGz+BRbGQ6DBes6zbs6B9QoT2
         p9Pr++74BHMd4r1VP+Bk1B4dgfR7XR96NSeyLflFXsffyNXye1g2vOnKjtOHFo/bZpwS
         cpUBUWKhG0wd5hSsI7g0MCwl8ea2zvNdgL4tphukc/QN9ufEUEnfuISWAOZfqFBaZpcU
         4YfRUjzfEzUgEAb+CvACCIxfrqLkZ9szyPHGvpla5tFmJngKytFpnIvz9wvEz0Cpls0b
         s1Ow==
X-Forwarded-Encrypted: i=1; AJvYcCV1o4ZTNiHbbK7Ltq+EGRm1KeCTZOi24r0sF4WCJ2tshUjBUJUn2+w0bnpVXCvi6PsgO3UOmVJ61ISl@vger.kernel.org
X-Gm-Message-State: AOJu0YwoaNWf/LVgwW+GCh8O95I4Vjy3FvPap3KOmXDKyhKGBmeYIf3f
	uzOLdIi6K0pElRJCCV0cnWb0QttokZk0hqrrPTeAvpd1bBmWstz50vaMrGstBGk=
X-Gm-Gg: ASbGncsCGe1ss+hwWrDJe8PCMK6HUzZC2JSlopN9grn+ecQSLisl3z+MLebrRKhT9T2
	YDNFVRJomOSTdtbcBHpFjib/VMbqDougQ0ErgBm6Ooaf+dXMVR9/u8lvJjxnyq5gTzNbxqMzYDf
	mo+HghS7trjJiBZzVrDXdvoLgGMWc0Hbc3/PJ4S+enSn+u+vSPkcv/gDoqMLcGDEpWlt6MQRgur
	r8efKFWxUGElSTxqQfgu2VTLKEHpNYnJZ9h8JuMY0Ma/skedBpzMGye2eTI083is9G0DOLxH2Y=
X-Google-Smtp-Source: AGHT+IFvnDSs0nypxasHrAqHXfd62zgZW+seKpuOYdOy+I7WC2wqrJzw+E6F2xuiWGwbF5BKh5ZUTQ==
X-Received: by 2002:a05:6e02:1a43:b0:3a7:6c6a:e2a2 with SMTP id e9e14a558f8ab-3a78645638fmr49953825ab.9.1732143507343;
        Wed, 20 Nov 2024 14:58:27 -0800 (PST)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e06d707c12sm3421896173.41.2024.11.20.14.58.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 14:58:26 -0800 (PST)
Message-ID: <15a6ecb8-ca6b-46bd-a065-0f35c488628e@sifive.com>
Date: Wed, 20 Nov 2024 16:58:25 -0600
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
 <1f78898b-f703-4fd9-8f68-c0835a85de9e@sifive.com>
 <CAL_JsqJ0K5z9rNHKNF1Xq8XnAkrxZaG-Th-e-G-zy5bo9_8=QA@mail.gmail.com>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <CAL_JsqJ0K5z9rNHKNF1Xq8XnAkrxZaG-Th-e-G-zy5bo9_8=QA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2024-11-19 11:49 AM, Rob Herring wrote:
> On Tue, Nov 19, 2024 at 10:47 AM Samuel Holland
> <samuel.holland@sifive.com> wrote:
>>
>> Hi Rob,
>>
>> On 2024-11-19 9:41 AM, Rob Herring wrote:
>>> On Thu, Nov 14, 2024 at 11:56:49AM -0800, Samuel Holland wrote:
>>>> commit 7f00be96f125 ("of: property: Add device link support for
>>>> interrupt-parent, dmas and -gpio(s)") started adding device links for
>>>> the interrupt-parent property. Later, commit f265f06af194 ("of:
>>>> property: Fix fw_devlink handling of interrupts/interrupts-extended")
>>>> added full support for parsing the interrupts and interrupts-extended
>>>> properties, which includes looking up the node of the parent domain.
>>>> This made the handler for the interrupt-parent property redundant.
>>>>
>>>> In fact, creating device links based solely on interrupt-parent is
>>>> problematic, because it can create spurious cycles. A node may have
>>>> this property without itself being an interrupt controller or consumer.
>>>> For example, this property is often present in the root node or a /soc
>>>> bus node to set the default interrupt parent for child nodes. However,
>>>> it is incorrect for the bus to depend on the interrupt controller, as
>>>> some of the bus's childre may not be interrupt consumers at all or may
>>>
>>> typo
>>>
>>>> have a different interrupt parent.
>>>>
>>>> Resolving these spurious dependency cycles can cause an incorrect probe
>>>> order for interrupt controller drivers. This was observed on a RISC-V
>>>> system with both an APLIC and IMSIC under /soc, where interrupt-parent
>>>> in /soc points to the APLIC, and the APLIC msi-parent points to the
>>>> IMSIC. fw_devlink found three dependency cycles and attempted to probe
>>>> the APLIC before the IMSIC. After applying this patch, there were no
>>>> dependency cycles and the probe order was correct.
>>>>
>>>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>>>
>>> I assume this should go to stable? It needs Fixes tags.
>>
>> What commit should I put in the Fixes tag? f265f06af194 ("of: property: Fix
>> fw_devlink handling of interrupts/interrupts-extended"), because it finished
>> making this code redundant? That commit didn't introduce any new bugs--this code
>> was always wrong--but I would be hesitant to backport this change any further,
>> because it might cause regressions without the "interrupts" property parsing in
>> place.
> 
> I'd guess that f265f06af194 has been backported to everything with
> 7f00be96f125. I think we want either all 3 commits or none of them. If
> something only works with a subset, then upstream is broken.

Of the current LTS branches, v5.10 has only 7f00be96f125. f265f06af194 was only
backported as far as v5.15, since it Fixes: 4104ca776ba3 ("of: property: Add
fw_devlink support for interrupts"), which was merged for v5.12. I will add this
same Fixes: tag for v2.

Regards,
Samuel


