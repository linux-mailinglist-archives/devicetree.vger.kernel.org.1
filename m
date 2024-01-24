Return-Path: <devicetree+bounces-34594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2EF83A46D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ACA8281F25
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071AA179A6;
	Wed, 24 Jan 2024 08:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pXAG2CLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8031799D
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706085911; cv=none; b=FbuCA5vz0edR4rgWAyCzl0k7WZcdkBeSmIamHdc/PS8RbY7N9clbyhP+7sRKsITSk7GMu0pJBJfI5d3kANO43ysgFBaAsJovJOIjbuz2w9WduKpJIHOaweq0TvUEj0axPoawRbGQSQcarJa14eOMegvUz+luKghcPyM4MWRj4bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706085911; c=relaxed/simple;
	bh=H7FcCLyL1MxS3dpDuBIUYNy05ERRwtSQXEGmvtuiFJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nh00KSTg9NM0uLXo5Hsr/UYHchlf5ENJz99EDbl/HRve/eFpM/Z/QoxD0fW3buyhDf2cwA1sbYdsoNO7eoAZxJbmbN1VgPtun2k25RTEY2gBfY6Atino+zPz/VDiWP3tRL0mWbwHo9EB6EbKY+5yQahPpAZTY54RaPj2OEFquVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pXAG2CLs; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2cf19f65271so15428971fa.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 00:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706085907; x=1706690707; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HjwhuJKMXUOaSCxbfwXGIZsuQLCVB0RcIFx2qcPByrQ=;
        b=pXAG2CLso/bJsy3r3A0XZOBpN4muAA8nxQ5/Q+RJmvZjW6sOmAD+owG7WqqQP05X9F
         2+JN7SRSh7oFl5FTU1j7Z451saRqbVWyANwwlol94VkelQyFa3cXYWsc+d+wfy4K9PFU
         eTlznzZphKvNsmYZoC57PGi4siQEjQVBQA/0eccSsnDHxxl6X6uqAYiun9Axa6o5taN7
         Wta4RCLBNIG6UAAdYakj/Ni3UDb+GG9sCPxXyT2urnkm7POeR1MHuOYz2tfap4RWCSbh
         GFy3TsdM6xDHceyx/btc3OZznOZXepVJNXX+9s1ljVS24SFsKtB8yeK838FD8HaUVK+m
         wJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706085907; x=1706690707;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjwhuJKMXUOaSCxbfwXGIZsuQLCVB0RcIFx2qcPByrQ=;
        b=K98aDyNRb1VVFsekMeYqE2qqo4i3/glE38/4ZpeAIToHkN/wmBHEtUJ8jiStMRIduz
         yMK9d9D8pobF2SatFkQyusgQvW/2By1SBEQx8eHbWBF/iV7qdlSWP5q9SIdCQiZg9EIY
         HFNLialSnzOXaa8ggOmQafS1nfIJyiSt3msqOTRUBNTHC8vbfpFHAFNImggJxNCqjFi7
         2rZy1QDyFnfHq0jYRccFvLVjgCa6bINeyU7t64Pyv4M4URe6i2sg8OmDVi2tBzEtE32n
         olc6LF6QVHtA6wp0q5hvBnaVUt2r3STKSS0lzQHaloCx5gtLtkVC+CXNSxlanQxpGrkz
         WVCA==
X-Gm-Message-State: AOJu0Yx1H+eWnLn8hdJWdpO/apYykow08th8NhuU462yx+0H1YTSDtrZ
	MJisLrlYTS921Z6TAOs9IUq9RRZbWYy1dp/ku84QbyLeqVRGLYTVeQ9n4OqDdUQ=
X-Google-Smtp-Source: AGHT+IFYiUFlipblYHwnsmFJb3hLAD61umR69H9dlOIxmbXI91/YoAFIfsfRSixEiIpRhgDBzjisvA==
X-Received: by 2002:a2e:9d88:0:b0:2cd:354e:2483 with SMTP id c8-20020a2e9d88000000b002cd354e2483mr655857ljj.4.1706085907438;
        Wed, 24 Jan 2024 00:45:07 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id tj4-20020a170907c24400b00a311082cd00sm518950ejc.37.2024.01.24.00.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 00:45:07 -0800 (PST)
Message-ID: <7980834a-6bdf-4d6c-9f76-71b156e143d3@linaro.org>
Date: Wed, 24 Jan 2024 09:45:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
 srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>
 <20240124083919.GC4906@thinkpad>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240124083919.GC4906@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24/01/2024 09:39, Manivannan Sadhasivam wrote:
> On Wed, Jan 24, 2024 at 09:02:16AM +0100, Krzysztof Kozlowski wrote:
>> On 23/01/2024 17:12, Manivannan Sadhasivam wrote:
>>> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
>>>>
>>>> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
>>>>> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
>>>>>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
>>>>>>> + Linaro team
>>>>>>>
>>>>>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
>>>>>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
>>>>>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
>>>>>>>>> existing platform therefore need to make changes in certain drivers to
>>>>>>>>> work with that firmware. We need to make a distinction between two
>>>>>>>>> different variants of the FW. In one case, some resources will be
>>>>>>>>> abstracted while in other case, they won't be abstracted. My query is -
>>>>>>>>> "should we define a new compatible string for the variant with
>>>>>>>>> abstracted resources(in FW) or we should add a new DT property keeping
>>>>>>>>> the compatible same?"
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> Usually change in the interface or behavior warrants new compatible.
>>>>>>>> Property would be suitable if the same device, e.g. same SoC component
>>>>>>>> with same FW, was configured differently on different boards.
>>>>>>>>
>>>>>> Here, the hardware is going to be the same, but the resources (clocks,
>>>>>> regulators, etc...) will be controlled by the firmware instead of OS.
>>>>> Yeah, that's the problem with generic questions, instead of specific...
>>>>> "Talk is cheap."
>>>>>
>>>>> OK, so the hardware is exactly the same? Does FW bring any
>>>>> incompatibilities in the interface or is it just about the clocks? I
>>>>> guess I should not have included "with same FW" in my last statement.
>>>>> It's true, but way too narrow. Therefore let me rephrase it:
>>>>
>>>> HW is exactly the same. Let me give more insight on the setup. We have been
>>>> using the HW in virtual environment but now the ownership of certain
>>>> resources (e.g. clock controller etc.) is handed over to a different VM(non
>>>> Linux VM). Earlier the ownership of the resources was local to the same
>>>> VM(Linux VM) via passthrough mode so it could directly access them however
>>>> now Linux VM talks to non-Linux VM for its operations for resources that it
>>>> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
>>>> use property like 'qcom, controlled-remotely' or do we need a new compatible
>>>> for such setup?
>>>>
>>>
>>> Krzysztof, just a ping on this thread.
>>>
>>> To summarise, the hardware is exactly same. We can consider the case of UFS. The
>>> UFS controller is exactly same in this proposed setup but the resources of the
>>> UFS controller are taken care by the VM. So instead of enabling the resources
>>> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
>>>
>>> Due to this difference, we need to make the changes in the UFS controller
>>> driver. So we want to know if we can use a different compatible for the UFS
>>> controller altogether in DT (this will allow Linux kernel to have a separate
>>> driver and will simplify things) or just use a property like
>>> "remotely-controlled" to let the driver detect this setup and take action
>>> accordingly.
>>
>> What devices do we talk about? Are they released? For which other
>> devices you want to use it?
> 
> If you are referring to "peripherals" as "devices", then this new interface is
> going to be applicable to most of the peripherals in the SoC like PCIe, UFS, USB
> etc...
> 

And what about SoCs and final products?

Best regards,
Krzysztof


