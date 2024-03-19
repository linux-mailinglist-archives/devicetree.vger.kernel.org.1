Return-Path: <devicetree+bounces-51572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 826A987FBA5
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B42061C21D0C
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92C987E0F1;
	Tue, 19 Mar 2024 10:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="psfEZpry"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCC97C6CC
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710843457; cv=none; b=lzDuyqift1BVeuSPuVkNvCWNa1OQkr9SviXHjs3sVBWWzN895r1UjMpHIrwzD4dvPPU+9Be5WaQBC4glBqzMXDBHX2nuGOlZcAooUXPZWqXZirKoBr65nMBGL78CaBiChN3cZzQ+R6a4zgnyXXQyj0MMZqa8yl47gw46AMGpDh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710843457; c=relaxed/simple;
	bh=F41o6KetD8To+HlNPuUvQfD6/ojeEou5MpQbcieNSIU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X9L4MnE2o3OLzo9+073ZBmf1LWxzEcRZ3Q3DyXGZoXZsuEMFJMvb36DWBZ1/hFEj/u23gUsILAOoOEVV1q1b79xrzzCaqoVXMVkg6lSGKEQiTjjXOCMDFi3qbEwnN7tzEwQHIAMoAFUlLcK0Nq6VtJIWF6+HjYOaAi+hAbOsBl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=psfEZpry; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33e162b1b71so4701388f8f.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710843454; x=1711448254; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zpu88Fui2Cr1/3OVNxv2tktVC22ec43+iqIEUyWUkfU=;
        b=psfEZpryBS1sqKiKvHvby22fw6mMRDbd5VVCqF1oWRVfjhGvQi4+jrSSTOvN7OfjzP
         c6atyCOqXOcxXr+FTgKSW+opI5ImJ7VSwlctEKAvMDus/J8gZX6Y5CyxmZmEjx9ZlTfD
         6qD25UGSxjJV2mfM18H4+bw+3B5TZWUnqpjFNKJk7521TJ5dTzazjTUX54m4C266FOZ8
         bWbYAcjG+Z4L+pTAsZQhHrQr1BIMvONMv53pIZlfmvmZPs0cuxKu5W84/g3I4oAYJ5JF
         SxhoTQe0oaj5ERH9PwHtDhEJF/vGJDAJVhWyQcvQMsOPScXpOnO5XIfUn77F27qkeLcY
         syeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710843454; x=1711448254;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zpu88Fui2Cr1/3OVNxv2tktVC22ec43+iqIEUyWUkfU=;
        b=IVfYvfBw05wGyOwLyMEYvla62vSxjhg/DZF9IyTzrufXX5YLoBKXRBiWst1DHGglvd
         mJW57zeq6hbaqunJv2yokamwG5zaJZlsUITs6s55QSnnzN9J9/DwTx5XkagwmxqRPe3h
         J8l2s25k88X9rFkUOFbnk0lYqXbpRFlBBWctRil5H7KkDgMJQs8QepI1MxrADnthDHz6
         wZuUXfv/6UusPASxAbvCpRaMxAZ1vWjSgKw9uEffpEJqh8C17jtIGvTW890822DHB8eZ
         G9QwkFTJVxeT14KTtl7yraq3q4s88MTXAlFt8lYWKipLy3XrIgCWjr04XCp9LB/KWQmN
         r22g==
X-Forwarded-Encrypted: i=1; AJvYcCUK001rVO8SXatOLAdp8qN9n++mHh29VC1ORZPzlcMm4FDh19fZMSr8VCb1fefydUIHaWiTYSaeXwL+758ANXgYI3zKFXgiICqUhA==
X-Gm-Message-State: AOJu0YzSPouIBmlkrsF6WnRCYDSNC2U53OtTcrslkh/L+XaR8XRk0tU2
	jZIjOvBsHajtZSao+dYiDezv2K7kGhkbChuXQk4nliY5dTwa2Ka1ju0ruNxvFUs=
X-Google-Smtp-Source: AGHT+IFEbffKxN2C7YnT/xV4P4+N1qKweZ2B+0Z55nY2d7GrVFmGS6mzJlIKDdtp8FiKVHkBNrQiBA==
X-Received: by 2002:a05:6000:18a6:b0:33e:c261:62a9 with SMTP id b6-20020a05600018a600b0033ec26162a9mr1692138wri.66.1710843454068;
        Tue, 19 Mar 2024 03:17:34 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id az1-20020adfe181000000b0033ed7181fd1sm9145315wrb.62.2024.03.19.03.17.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 03:17:33 -0700 (PDT)
Message-ID: <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
Date: Tue, 19 Mar 2024 10:17:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Trilok Soni <quic_tsoni@quicinc.com>, Sudeep Holla
 <sudeep.holla@arm.com>, Nikunj Kela <quic_nkela@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus> <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus> <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus> <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 16/03/2024 19:30, Trilok Soni wrote:
> On 3/14/2024 11:38 AM, Sudeep Holla wrote:
>> On Thu, Mar 14, 2024 at 05:35:23AM -0700, Nikunj Kela wrote:
>>>
>>> On 3/14/2024 3:55 AM, Sudeep Holla wrote:
>>>>>
>>>> Nope, the point was will the presence of (available) scmi/rpmi device
>>>> node suffice if we are thinking of single board level property or
>>>> compatible. I was not mixing the discussion of whether adding such
>>>> a property to each needed device node in this discussion to keep it
>>>> simple. I have already expressed my opinion on that.
>>>>
>>>> I am sure qcom will go and do what they want which may work fine for
>>>> qcom specific drivers but it will not work for a generic IP driver
>>>> used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
>>>> specific IPs or they do have some generic non-Qcom IPs. Lets us take
>>>> SMMU as example. If the SCMI/RPMI controls the power to it, would you
>>>> go and add this new compatible in the generic SMMU bindings and add
>>>> support in the driver for that ? That is big NO as the driver would
>>>> just need to use std framework interface(doesn't matter Runtime PM/Clock/
>>>> Reset/genpd/PM OPP). That means they don't need any specific bindings
>>>> to inform SMMU driver that the power is f/w managed.
>>>
>>> For SMMU, we dont need to make any changes in the existing driver. Simple
>>> power-domain over SCMI will suffice since we don't need to do clock scaling
>>> etc. for SMMU. We will use this new property in Qualcomm emac, UFS, USB,
>>> QUPs(i2c,spi,uart) drivers.
>>
>> Sure, as I mentioned in the beginning itself, it is all in the Qcom
>> specific drivers, well you can hack it in any ugly way you want to get
>> things working even in the upstream.
>>
>> But just stop and think for a moment how would you solve this problem
>> if you had few Synopsys Designware IPs instead of all those Qcom specific
>> IPs. Will your suggested solution work or if it works will that even scale ?
>>
>> As I said I will shut up and you can do whatever in your drivers, but I
>> just don't want this to set bad example for other vendors who may not have
>> all their own IPs and may use some generic ones which means they will now
>> follow your solution and go and change those drivers now.
>>
>> The main point I am trying to make is the provide blocks/nodes should
>> have the information that it is firmware managed. The consumer nodes
>> have no business to know that information.
>>
>> I will leave it to you now as I can't stop what you define as Qcom specific
>> and what changes you can make in those Qcom specific drivers.
> 
> I agree with what Sudeep has brought up for the SMMU and USB is another example
> where we can have 3rd party phy / Synopsys IPs on the QC devices.

This needs more discussion before we even consider adding scmi perf to 
these drivers.

Big question here is implementation details of the Device SCMI perf

With new SCMI Perf changes all the driver resources handling are moved 
to perf or power domains.

But is this abstraction correct?

Any standards followed Or Is any of this documented?

AFAIU, The whole resources moving to SCMI perf are done in pretty adhoc 
way.(ex: making regulators as power domains, and clks as perf domains.. 
and in some cases clks are power domains, ...)

How can we make sure that other vendors also abstract device resources 
exactly like what Qualcomm SCMI Server?

What I feel so far is that all of the resources are moved to scmi perf 
in a very Qualcomm implementation way.

I have no objections to having a generic property or way to determine 
this more generically. As long as this is explicitly documented as part 
of Device tree binding for all the devices and done correctly.

thanks,
Srini

> 
>  From the QCOM side my concern is that I don't want to have QC specific hacks,
> because today's on-SOC IP can be tomorrow's discrete IP attached over
> PCIe or USB. Think of NPU or Video IP attached to third party
> Application processor (though it may not exist today but we never know).
> 
> 

