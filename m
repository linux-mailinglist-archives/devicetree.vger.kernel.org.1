Return-Path: <devicetree+bounces-51660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B6D87FFCA
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 15:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C86961F262FC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 14:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9692541A88;
	Tue, 19 Mar 2024 14:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="US+5jJOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACC12206E
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710859238; cv=none; b=J5dq3Sn4wMyZa6w1kveJZJ9khZhu1rKKMh+d0P9H8IAEAj1BEdhmAfGzjzzd1YgR1uHluWENo6V51B3OczEsOXoc0psMZjfwemX3ZQJkOPzrDq8DQX7K5uI3DI62FN6DoUWQ2i4L6hoQePO2SDIPcfOk8IPWiRs/fiv44IngGUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710859238; c=relaxed/simple;
	bh=hUvlXYHXRbSbYEuIAM8dh2+qf7I4NiCSYFgAwXELc8k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nyWVCurisIlG3e62zBJIJm+Ha7PZ10D+U76N+fRBiIcqGp7X4iCfsKWtQftqnIrdQg4eBo0b2XfsW9XL7OxJc9xc4DJKT7SJcH7WQwiLwVI0pVHJm4OhxaK9U6TxOz8M52iKMbCGsvYsv1HadBSytqzqeTupDYUq21nJ6MIpECA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=US+5jJOS; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4146172fb7eso13236445e9.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 07:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710859235; x=1711464035; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ES8cWh0TyGb6bofcqbZEpvBHsCjAR4bIdkDGwwT2Bhg=;
        b=US+5jJOSuCVXFZm62MARJDmt6JiOxF8hMdtRBCDEwxnoBbz4StMnUxZWG9WPXtuRch
         V5+h/o+oBjAqxxzAigrHsRlg0wK9mrd+NoCo6B0yNbBu556EXfv6VRFTS2KnCeiFDDf8
         QrSztfqNi53vLIciDIrzGLm4wNBoiPsyxMMKqOS1/EwmAuMJWTXQ22FnGzGP5DjT4LTq
         LC34K87Lgi/TTs8D3bpXJSczojjoDbbPmdIiVYvTKL2m+tUFqgOw7tCIawimBXYYSpxV
         e42e8M6d4fvTQ+m4W9Ds/rih7SSHCw+lzngI4MzFqwcyFkQJJvPkpvDMuQUsSb+cj6aB
         2r+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710859235; x=1711464035;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ES8cWh0TyGb6bofcqbZEpvBHsCjAR4bIdkDGwwT2Bhg=;
        b=aIBmtK2RMJj4nbolDrcZVQaUa8Z4+exuD4hSm4Zur5oF/bYpwXwld8duiFbd9u18+Z
         ut+/qvs0St0sIk238iBNPBgTPZulzNGlCRSPayne1eDhmGI8fz95+lRkgbQyLQ6qyyVz
         CO/ytqFBMtwF30dJbnVgYLOTkArDVkyNrHgJtNn0oQrSLUKS73MpAuXrHE2jbomJgpW8
         QeywPf0fG6J0Lf7R6N6R6zMqGtvhkiOotLKqGuRnwHJ9hFBvKdMQPZc78zZr2Z4omDkX
         EYjnFPnCJMAty9tHPzSCf4eE9tvX295hDfWvk8v6ixn6BJf1JDc7kXS6F4D2OPjBDWHE
         wGtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlv6yvxP4tyzl3FbPrteKoQCa/oe5wTnKCGeKITNFMhdhbEDSj63ZpPIs+PeJW7rhJKYeqwXklZkhKHTgW27fcJJX1R48k8LTSXA==
X-Gm-Message-State: AOJu0YwvDGchcn1YQI5tDT+Yel2lkeoXghWmsUWQdYW7psyXIOUaQxVT
	mkjC6XJzd9CllFqcbed/2VDJeBLUQ2t0hu8MTLaa+tWjcePnmAYCvI3lrfLLHOI=
X-Google-Smtp-Source: AGHT+IGHndA8tx67uD48ne/gqcgoZLf5qfLqKFjxE51IgZi7umF/F6ZPLdpXbUvt6xaHKcgzLEkPpA==
X-Received: by 2002:a7b:cbc5:0:b0:413:f3c4:4d95 with SMTP id n5-20020a7bcbc5000000b00413f3c44d95mr8506407wmi.10.1710859234109;
        Tue, 19 Mar 2024 07:40:34 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id fm24-20020a05600c0c1800b00414650448a7sm2223566wmb.11.2024.03.19.07.40.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 07:40:33 -0700 (PDT)
Message-ID: <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
Date: Tue, 19 Mar 2024 14:40:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Trilok Soni <quic_tsoni@quicinc.com>, Nikunj Kela
 <quic_nkela@quicinc.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus> <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus> <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus> <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org> <Zfl-Z3vm-3sQ5TN5@bogus>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <Zfl-Z3vm-3sQ5TN5@bogus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 19/03/2024 12:00, Sudeep Holla wrote:
> On Tue, Mar 19, 2024 at 10:17:32AM +0000, Srinivas Kandagatla wrote:
>>
>> On 16/03/2024 19:30, Trilok Soni wrote:
>>> On 3/14/2024 11:38 AM, Sudeep Holla wrote:
>>>> On Thu, Mar 14, 2024 at 05:35:23AM -0700, Nikunj Kela wrote:
>>>>>
>>>>> On 3/14/2024 3:55 AM, Sudeep Holla wrote:
>>>>>>>
>>>>>> Nope, the point was will the presence of (available) scmi/rpmi device
>>>>>> node suffice if we are thinking of single board level property or
>>>>>> compatible. I was not mixing the discussion of whether adding such
>>>>>> a property to each needed device node in this discussion to keep it
>>>>>> simple. I have already expressed my opinion on that.
>>>>>>
>>>>>> I am sure qcom will go and do what they want which may work fine for
>>>>>> qcom specific drivers but it will not work for a generic IP driver
>>>>>> used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
>>>>>> specific IPs or they do have some generic non-Qcom IPs. Lets us take
>>>>>> SMMU as example. If the SCMI/RPMI controls the power to it, would you
>>>>>> go and add this new compatible in the generic SMMU bindings and add
>>>>>> support in the driver for that ? That is big NO as the driver would
>>>>>> just need to use std framework interface(doesn't matter Runtime PM/Clock/
>>>>>> Reset/genpd/PM OPP). That means they don't need any specific bindings
>>>>>> to inform SMMU driver that the power is f/w managed.
>>>>>
>>>>> For SMMU, we dont need to make any changes in the existing driver. Simple
>>>>> power-domain over SCMI will suffice since we don't need to do clock scaling
>>>>> etc. for SMMU. We will use this new property in Qualcomm emac, UFS, USB,
>>>>> QUPs(i2c,spi,uart) drivers.
>>>>
>>>> Sure, as I mentioned in the beginning itself, it is all in the Qcom
>>>> specific drivers, well you can hack it in any ugly way you want to get
>>>> things working even in the upstream.
>>>>
>>>> But just stop and think for a moment how would you solve this problem
>>>> if you had few Synopsys Designware IPs instead of all those Qcom specific
>>>> IPs. Will your suggested solution work or if it works will that even scale ?
>>>>
>>>> As I said I will shut up and you can do whatever in your drivers, but I
>>>> just don't want this to set bad example for other vendors who may not have
>>>> all their own IPs and may use some generic ones which means they will now
>>>> follow your solution and go and change those drivers now.
>>>>
>>>> The main point I am trying to make is the provide blocks/nodes should
>>>> have the information that it is firmware managed. The consumer nodes
>>>> have no business to know that information.
>>>>
>>>> I will leave it to you now as I can't stop what you define as Qcom specific
>>>> and what changes you can make in those Qcom specific drivers.
>>>
>>> I agree with what Sudeep has brought up for the SMMU and USB is another example
>>> where we can have 3rd party phy / Synopsys IPs on the QC devices.
>>
>> This needs more discussion before we even consider adding scmi perf to these
>> drivers.
> 
> Agreed.
> 
> 
>> Big question here is implementation details of the Device SCMI perf
>>
>> With new SCMI Perf changes all the driver resources handling are moved to
>> perf or power domains.
>>
> 
> Correct and matches my understanding.
> 
>> But is this abstraction correct?
>>
> 
> Don't know, patches were on the list. But I agree only interested parties
> reviewed it back then and now more are interested in it and their views
> may differ. Open to hear them all.
> 
>> Any standards followed Or Is any of this documented?
>>
> 
> Not sure what you are looking for as answer here TBH.
> 
>> AFAIU, The whole resources moving to SCMI perf are done in pretty adhoc
>> way.(ex: making regulators as power domains, and clks as perf domains.. and
>> in some cases clks are power domains, ...)
>>
> 
> Hmm, do we have examples for there ? Because I am interested to know more.

here is a patch series that does conversion.

https://lore.kernel.org/lkml/1a47c20a-abda-4493-a8f0-ff7b4e144d9c@quicinc.com/T/

> 1. Regulators as power domains
> 	IMO this may have happened before the dedicated regulator protocol
> 	was added to the SCMI specification.
> 2. Clocks as perf domains
> 	Not sure if this ever happened, though I admit clocks property
> 	were used to refer SCMI perf domains in the DT but they(perf/OPP
> 	domains) were never integrated into clock framework.
> 3. Clocks as power domains
> 	Again this hasn't happened in DT or Linux SCMI implementation
> 	side. I can't speak about firmware implementation side but
> 	not conforming to the spec may make it hard to work well with
> 	generic drivers. Conformance tests must catch them ideally but
> 	writing the conformance tests and running them on the real
> 	hardware are 2 things that probably not happening at all(not
> 	even to some extent).
> 
>> How can we make sure that other vendors also abstract device resources
>> exactly like what Qualcomm SCMI Server?
>>
> 
> We can't. That is the advantage of platform specific firmware
> implementation. But that said, the firmware should be conformant to the
> specification. They can't go wild and implement things in a way that
> makes it incompatible or non-conformant to the specification. In which
> case the standard upstream SCMI drivers can't simply support that platform.
> 
>> What I feel so far is that all of the resources are moved to scmi perf in a
>> very Qualcomm implementation way.
>>
> 
> It depends on what exactly this "very Qualcomm implementation way" mean
> when we break down to individual details. Sorry there is no other way
> to answer or address this. Anything you see as Qcom specific can be
> either put into conformant or non-conformant bucket with respect to the
> SCMI specification.
> 
>> I have no objections to having a generic property or way to determine this
>> more generically. As long as this is explicitly documented as part of Device
>> tree binding for all the devices and done correctly.
>>
> 
> OTH, my argument so far is that the presence of SCMI node indicates some
> or more SCMI features are available on this platform. The SCMI node itself
> then will have the resource provider nodes(like clock, power, perf, reset,
> regulator,...etc). If the individual device nodes are consumers of those
> resources, they will be pointing to those instead of non-SCMI clock, reset,
> ...etc resource providers. So ideally we don't need anything more in the
> DT.

The situation that you described is perfect case of SCMI.

With SCMI perf device support case,  combination of these clks, 
regulators and reset are moved under the perf domain. Its no more the 
same type of resource provider. So the DT bindings will change drastically.

so the existing driver that was expecting clk/regulators/resets now has 
to deal with perf domain.

--srini



> 
> --
> Regards,
> Sudeep

