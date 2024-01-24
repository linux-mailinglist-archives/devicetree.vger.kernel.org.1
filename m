Return-Path: <devicetree+bounces-34622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6296D83A5CC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7D06B2B1CF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6136818057;
	Wed, 24 Jan 2024 09:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E4qY0vlq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7104218054
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706089259; cv=none; b=ZgAILArr3scaHERht7y8RrXzsgwWFn6atbJKZetfBiLxFiHImDyKq83EXVlwF8y1xtnmHFxGFoBmRHqjyhYaeoFRr9b7uCJhcoadTtpRb0vMKtFH/zwHbbERhHD29j1QNafDb88RUfynR51IY+uwUZIpw9BMyrpBPQ8TLBxerAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706089259; c=relaxed/simple;
	bh=sFiMOiFI47NIVB5VQji7PG+gQzuk4I5LB0IlIsT4zhI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kRV6pgago3DCZvVoEomJxAljSf5611IYFSzxs1q+/HRAwL1rgpkffgXlI684ewOFGsrpNSXiRLT9f3Db2NRv2AAMkduk0TTbEgtnYgLhBY4E/D+WCkvUhUs2dPaNWRaJT5s/XSNgjrbraD9YT0qd0B4URnz4RM6oHWSMD+z9Anw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E4qY0vlq; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a28a6cef709so533509566b.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706089255; x=1706694055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ek3HeWOG9r4HpggmA6Pu/iinaI8Qi9sthE+Zw0eeLM0=;
        b=E4qY0vlqfjxzMg7Ap6/rpgGgzzir8oS85EHzI+DC/G9pmk2t7SyAgAUyJoNJm2wzzy
         bi4HpYQWMta+deMb+Q3J3b/kRCT5/kPRmQddRrHlCgKXST3pbzvXSGv/9pr5UM1luDY7
         VfhadlF5UnboAli7aumvmpjXUGD2KzNyuLAaHT3cjU0uTq0A5PX/tby6lfB70gv9tLpJ
         USVukPq60HVgeOwI8My+ZkXlr21N5Q9to0iQ+FMSsoJSGXy9Iee42MobEcFOMDTxepBr
         RwHuxEJaW8Yzh6YmSqdt6y7FHwOhGQuqSvZ4BzvzYfwO/iIplSZ+sJiu765ophrPvi8R
         xfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706089255; x=1706694055;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ek3HeWOG9r4HpggmA6Pu/iinaI8Qi9sthE+Zw0eeLM0=;
        b=R84ey+VgfFdrzRSbpDJs8QOlOgJiv4t9q6IavhCpgDRioLCtXSAXpIKTx3MQ0cX4+y
         n9LolYz2rMMLDssAO0n8CubD97oqqY53Xn1KO1xgkCzJrL+Apv+RVmSVRmHTI6UeFSJI
         I2rcX4fXclB5vSq9g9YIJSMhKkD2wKMcYiFOd7nY1ll/fYRniG1yq2bKMWLyCfanQ9Mg
         RQmJUL5OsY/rJyFAzcnK9HP8zklKXeac08ydmW8cysVsdW9STQk5KkIDdA361HyzhMGG
         WbpeMvovVVYVPyB6nhlW6ccr8XpvI6wjUB/5+2iXIRCuAcZ18kG0/Ur/E+zei6y0cOoZ
         GzOA==
X-Gm-Message-State: AOJu0YyVGWlEMJSbEl4mvrvBDPg30eVhoEDBP/cbPgmdjiWbOll2qagF
	v5AlFFdr7CwZbwnU2Z1Tm8L2NiFp2cDzHJgJH3HnDxQufSI954nkZptxfOh4gRw=
X-Google-Smtp-Source: AGHT+IE2ArhQt2g4d3xYLUMOcwC/shX9Z4o4/7QCyVovYo3pmtRl2s8nMwYNdEctzruFZCbipCykSw==
X-Received: by 2002:a17:907:3345:b0:a23:8918:2399 with SMTP id yr5-20020a170907334500b00a2389182399mr592910ejb.130.1706089255481;
        Wed, 24 Jan 2024 01:40:55 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id vh3-20020a170907d38300b00a2e7d1b6042sm9311593ejc.196.2024.01.24.01.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 01:40:54 -0800 (PST)
Message-ID: <74b9b07c-dd28-4825-b367-d702a1adfb0d@linaro.org>
Date: Wed, 24 Jan 2024 10:40:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
 srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org
References: <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>
 <20240124083919.GC4906@thinkpad>
 <7980834a-6bdf-4d6c-9f76-71b156e143d3@linaro.org>
 <20240124085306.GG4906@thinkpad>
 <597b7aeb-79f1-4d34-94f6-965adfed9eb0@linaro.org>
 <20240124092708.GI4906@thinkpad>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240124092708.GI4906@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24/01/2024 10:27, Manivannan Sadhasivam wrote:
> On Wed, Jan 24, 2024 at 10:01:05AM +0100, Krzysztof Kozlowski wrote:
>> On 24/01/2024 09:53, Manivannan Sadhasivam wrote:
>>> On Wed, Jan 24, 2024 at 09:45:05AM +0100, Krzysztof Kozlowski wrote:
>>>> On 24/01/2024 09:39, Manivannan Sadhasivam wrote:
>>>>> On Wed, Jan 24, 2024 at 09:02:16AM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 23/01/2024 17:12, Manivannan Sadhasivam wrote:
>>>>>>> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
>>>>>>>>
>>>>>>>> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
>>>>>>>>> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
>>>>>>>>>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
>>>>>>>>>>> + Linaro team
>>>>>>>>>>>
>>>>>>>>>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
>>>>>>>>>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
>>>>>>>>>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
>>>>>>>>>>>>> existing platform therefore need to make changes in certain drivers to
>>>>>>>>>>>>> work with that firmware. We need to make a distinction between two
>>>>>>>>>>>>> different variants of the FW. In one case, some resources will be
>>>>>>>>>>>>> abstracted while in other case, they won't be abstracted. My query is -
>>>>>>>>>>>>> "should we define a new compatible string for the variant with
>>>>>>>>>>>>> abstracted resources(in FW) or we should add a new DT property keeping
>>>>>>>>>>>>> the compatible same?"
>>>>>>>>>>>> Hi,
>>>>>>>>>>>>
>>>>>>>>>>>> Usually change in the interface or behavior warrants new compatible.
>>>>>>>>>>>> Property would be suitable if the same device, e.g. same SoC component
>>>>>>>>>>>> with same FW, was configured differently on different boards.
>>>>>>>>>>>>
>>>>>>>>>> Here, the hardware is going to be the same, but the resources (clocks,
>>>>>>>>>> regulators, etc...) will be controlled by the firmware instead of OS.
>>>>>>>>> Yeah, that's the problem with generic questions, instead of specific...
>>>>>>>>> "Talk is cheap."
>>>>>>>>>
>>>>>>>>> OK, so the hardware is exactly the same? Does FW bring any
>>>>>>>>> incompatibilities in the interface or is it just about the clocks? I
>>>>>>>>> guess I should not have included "with same FW" in my last statement.
>>>>>>>>> It's true, but way too narrow. Therefore let me rephrase it:
>>>>>>>>
>>>>>>>> HW is exactly the same. Let me give more insight on the setup. We have been
>>>>>>>> using the HW in virtual environment but now the ownership of certain
>>>>>>>> resources (e.g. clock controller etc.) is handed over to a different VM(non
>>>>>>>> Linux VM). Earlier the ownership of the resources was local to the same
>>>>>>>> VM(Linux VM) via passthrough mode so it could directly access them however
>>>>>>>> now Linux VM talks to non-Linux VM for its operations for resources that it
>>>>>>>> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
>>>>>>>> use property like 'qcom, controlled-remotely' or do we need a new compatible
>>>>>>>> for such setup?
>>>>>>>>
>>>>>>>
>>>>>>> Krzysztof, just a ping on this thread.
>>>>>>>
>>>>>>> To summarise, the hardware is exactly same. We can consider the case of UFS. The
>>>>>>> UFS controller is exactly same in this proposed setup but the resources of the
>>>>>>> UFS controller are taken care by the VM. So instead of enabling the resources
>>>>>>> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
>>>>>>>
>>>>>>> Due to this difference, we need to make the changes in the UFS controller
>>>>>>> driver. So we want to know if we can use a different compatible for the UFS
>>>>>>> controller altogether in DT (this will allow Linux kernel to have a separate
>>>>>>> driver and will simplify things) or just use a property like
>>>>>>> "remotely-controlled" to let the driver detect this setup and take action
>>>>>>> accordingly.
>>>>>>
>>>>>> What devices do we talk about? Are they released? For which other
>>>>>> devices you want to use it?
>>>>>
>>>>> If you are referring to "peripherals" as "devices", then this new interface is
>>>>> going to be applicable to most of the peripherals in the SoC like PCIe, UFS, USB
>>>>> etc...
>>>>>
>>>>
>>>> And what about SoCs and final products?
>>>>
>>>
>>> Sorry, I don't understand what you mean. This interface is still under
>>> development and going to be available in future SoCs. At that time, we need
>>> changes to the drivers to adapt to this interface.
>>
>> Hm, confused... The message was saying: the same hardware. Same hardware
>> means for example Qualcomm SM8550 SoC.
>>
> 
> Same hardware means all the peripherals are same as of previous gen SoCs apart
> from usual improvements. Maybe I confused you by saying that this interface is
> only applicable for newer SoCs, that is not accurate.
> 
> So for instance, even if you take SM8550, Qcom can use this interface (VM) and
> ship it to a customer. The VM is just part of the bootloader package. So if the
> VM is shipped with an SoC, then Linux should not try to handle resources for the
> peripherals and instead request VM to do so using the SCMI interface. Much like
> how ACPI behaves in the x86 world. But how the OS should be made aware of the
> presence of VM is the question here. Qcom likes to convey that information using
> DT.

So this is not an existing SoC? Then why do you need to change the
meaning of compatible? You have new compatible.

> 
>> OK, I think we are way past possible theoretical discussions. Please
>> send patches and we will discuss it from there.
>>
> 
> Well, this decision (whether to use a different compatible or a property)
> impacts all the peripheral teams inside Qcom as the driver update heavily
> depends on this decision. So let's try to conclude the decision here itself.
> If something is not clear, please say as you said above. I'll try my best to
> clarify.

Then again - list exact existing SoCs which will be affected. If this is
for future SoCs, then why we are even discussing this? Everything
started - first sentence! - with:
"existing platform"

Sorry guys, I am getting more and more confused.

Best regards,
Krzysztof


