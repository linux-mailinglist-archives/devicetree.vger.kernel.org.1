Return-Path: <devicetree+bounces-49109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D45874E42
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7AE71C20F89
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23452129A9E;
	Thu,  7 Mar 2024 11:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fJ/lk8uH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32B129A87
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 11:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709812213; cv=none; b=VzAb5obzF2hl5kR2DLs+7PLVPJhVNRRpUD/4nWuIjyO1yX+YB2kh1n6ioc5RnUm60hrIi7Rmoa8K1OYOOh56N8buq07cnPjL3fstcnE4p694Nm+Hise5TypgXYENaVtYKiEOno9axxLtClyk4sVr0TfVlBZ0ydKUC/pz9VQS33Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709812213; c=relaxed/simple;
	bh=c62K5oPh61vCveDvQf0OpOvXF4WeEmn4VK50d27H8EA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M9LLqw0Q8zYW/urZDfoeBga7El0obx+T00imx9Nj4tlKzwg34aMxTccBwbuX0RLNpqB1htWsuUj5mINYs6tqyMI7voLmOyzjayaSr3kCsOERJy9JBIrPY1jrRTObOmY4X4msh5ta1612bfcc5jv9PJay06R1QZYZab9KAdgs+LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fJ/lk8uH; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51364c3d5abso818947e87.2
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 03:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709812209; x=1710417009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e6uts5XAuJGMgcS3q5Z9N3SGrS49osI0Xq6KbzVVrfg=;
        b=fJ/lk8uHB8PjTgDVNicH9xnL5Fy6XT4hrGjlqd3YIZKTy0U5zF1Js0cA7gSs7Ag6+O
         3OmlXTi2/2XQJJhk87DpzVXOj2hmnAfc0lzsDF7a2gW8Yj35wEMz71GtaXbi0ah+8Yjz
         UwMv+dVHN/FfpgJVnXkdXUzql1+VJU/Ldz6z9Ktj9hQpSzFZCC6Z/Qqbbq6bZL8yxtNl
         7Lo+/hjklFOUEa5JIkCvt41H2hrN9PyYbyHSoWqgp59lhzQbkn2TOGwQ367OSgPS/gRj
         e4OwBd3Fv4dA5JY4ToJm9CNYbgLeV/FKqwxHf82ExaYngUKMcH0narl5rAfGXKqWWxBA
         a6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709812209; x=1710417009;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e6uts5XAuJGMgcS3q5Z9N3SGrS49osI0Xq6KbzVVrfg=;
        b=ommo2Z1n1GdV5hxodIIYzUFHE+JiXi2zYe6hjnnn7vlqs8KEXz0Tgr501jdOGvoZfk
         YtxqPTSjsi9FXJ/imcoidmpwTpv7Y0IRvGqCgO7RaXKOlTEZVQAlQ42Uyo2uA171xOkd
         ncYq1Sq22YEwCcIRMKD9fbCN5XSaRn24KCAJlamYB+YjUoW3linYtY8z5l0F9WqBlF9i
         FHFtLSUnr0G2Ij/y2orMHUuJUQuw+uu8n2KPbPHSJrk8RaGEqgr3t3aCvpEqJQ9qxomE
         9zTDLqHSwmE5Or0IUzsV7u7W8I3kbNGvhOPjvxQg5briB8a6ih9FnkZULW3rhwzwxxii
         eEgA==
X-Forwarded-Encrypted: i=1; AJvYcCWWy2NNTPS6/ffaqcP+BxPjqtQf1WTMjIjxpoI0chIGs5KkrcpniUGPHoY+N69n1++/Pj82I2huezzReN+z3S/2vvUPtOZOkh3JZA==
X-Gm-Message-State: AOJu0YyNRF0awiUluwVSCrfJqPSNVRHhJfASyWYalNG37hE2dNem70QG
	bEs9W6R/n3B+rnqsC52e0SDc5euZlORLrTDczWXfOJEVQO3Y6EJQLN13cejXRFw=
X-Google-Smtp-Source: AGHT+IG4bzS87kZ3geSfi5mpqxwhIKXkroOdY/OO1oaxjjX8DMoKWY9bpC3ELNXCuGKGxX1lM0ohTA==
X-Received: by 2002:ac2:5b44:0:b0:513:5217:6201 with SMTP id i4-20020ac25b44000000b0051352176201mr1333056lfp.59.1709812208871;
        Thu, 07 Mar 2024 03:50:08 -0800 (PST)
Received: from [172.30.204.36] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q12-20020ac25a0c000000b00513360b4f1esm2435370lfn.305.2024.03.07.03.50.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 03:50:08 -0800 (PST)
Message-ID: <48fd9457-d092-4226-9a6c-13dea81694f5@linaro.org>
Date: Thu, 7 Mar 2024 12:50:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/1] arm64: dts: qcom: ipq6018: add sdhci node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Robert Marko <robimarko@gmail.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240306123006.724934-1-amadeus@jmu.edu.cn>
 <20240306123006.724934-2-amadeus@jmu.edu.cn>
 <CAA8EJpqYjutM1Kh6QxysB6XNAmXywtOtRJ7KP0LbY5E36kCPvA@mail.gmail.com>
 <78b1a1a2-a9fa-4b28-9d96-d65bb5517199@gmail.com>
 <CAA8EJppJBOQh19r4A-igsh5znDE_R6mDNy+ao5ximx7vtsZZvA@mail.gmail.com>
 <CAOX2RU4W-zV3A8eW0A+1V838Fm=tUkXY=Bs3j4VJ8Jo9mxrOAw@mail.gmail.com>
 <CAA8EJpq=-r4XhnFJset0=X=YO5QNUpuw+e1r6DTsPvzNAZCyNw@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJpq=-r4XhnFJset0=X=YO5QNUpuw+e1r6DTsPvzNAZCyNw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/7/24 08:50, Dmitry Baryshkov wrote:
> On Thu, 7 Mar 2024 at 09:38, Robert Marko <robimarko@gmail.com> wrote:
>>
>> On Thu, 7 Mar 2024 at 08:28, Dmitry Baryshkov
>> <dmitry.baryshkov@linaro.org> wrote:
>>>
>>> On Wed, 6 Mar 2024 at 22:35, Robert Marko <robimarko@gmail.com> wrote:
>>>>
>>>>
>>>> On 06. 03. 2024. 20:43, Dmitry Baryshkov wrote:
>>>>> On Wed, 6 Mar 2024 at 14:31, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>>>>>> Add node to support mmc controller inside of IPQ6018.
>>>>>> This controller supports both eMMC and SD cards.
>>>>>>
>>>>>> Tested with:
>>>>>>     eMMC (HS200)
>>>>>>     SD Card (SDR50/SDR104)
>>>>>>
>>>>>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>>>>>> ---
>>>>>>    arch/arm64/boot/dts/qcom/ipq6018.dtsi | 19 +++++++++++++++++++
>>>>>>    1 file changed, 19 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>>>>> index 322eced0b876..420c192bccd9 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>>>>> @@ -441,6 +441,25 @@ dwc_1: usb@7000000 {
>>>>>>                           };
>>>>>>                   };
>>>>>>
>>>>>> +               sdhc: mmc@7804000 {
>>>>>> +                       compatible = "qcom,ipq6018-sdhci", "qcom,sdhci-msm-v5";
>>>>>> +                       reg = <0x0 0x07804000 0x0 0x1000>,
>>>>>> +                             <0x0 0x07805000 0x0 0x1000>;
>>>>>> +                       reg-names = "hc", "cqhci";
>>>>>> +
>>>>>> +                       interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
>>>>>> +                                    <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
>>>>>> +                       interrupt-names = "hc_irq", "pwr_irq";
>>>>>> +
>>>>>> +                       clocks = <&gcc GCC_SDCC1_AHB_CLK>,
>>>>>> +                                <&gcc GCC_SDCC1_APPS_CLK>,
>>>>>> +                                <&xo>;
>>>>>> +                       clock-names = "iface", "core", "xo";
>>>>>> +                       resets = <&gcc GCC_SDCC1_BCR>;
>>>>>> +                       max-frequency = <192000000>;
>>>>> If I understand correctly, GCC_SDCC1_APPS_CLK support frequencies up
>>>>> to 384 MHz, but here you are limiting it to 192 MHz. Why is it so?
>>>>>
>>>>> I am not sure that 384MHz is actually supported as IPQ6018 datasheet
>>>>> clearly indicates that HS400 mode is not supported.
>>>
>>> I didn't check the datasheet, I opened the gcc-ipq6018.c
>>
>> I understand that, I just pointed it out, it wouldn't surprise me if
>> the frequency table
>> was just copy/pasted from IPQ8074.
> 
> Then it might be fixed instead, making the max-frequency property unnecessary.

The clock driver contains clock settings that were either autogenerated
or manually included, or copypasted. These settings, and particularly
downstream, only describe the known-working clock rates and the minimum
required voltage setting just to keep them ticking nicely (think running
a car with the clutch pressed, no real load), a subset (which may be an
improper subset) of which gets translated into the device OPPs (or frequency
levels downstream). We should have an OPP table here.

Konrad

