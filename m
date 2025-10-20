Return-Path: <devicetree+bounces-228782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AD1BF0AFD
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B53594EFBA5
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4180924DCFD;
	Mon, 20 Oct 2025 10:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uBhbmlaS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E57254876
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760957771; cv=none; b=It+HDHoGpDnasTmHT3Qr3jYdn5WYvqKyn/YJBLfoN4u03B35Yf0bH0MXAWjuHJZiIPFbMTQVKnUbLzey+H3q4WB/nfqDF0aYQhWy5gVNzDlJe8W7s8XNlMC2PPFzKUkEGMPfPWAYWgmOh6b+WKVilGHxlZVua+utxtZm4B3JACM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760957771; c=relaxed/simple;
	bh=IydQHlopurRsMIlFXXQnBsVqX59j3tYYZ9wp3B4KoGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qYEeDxUC9CdoJD5OU2eQkAFJ3JoUA47EDVEYEPE8wZLibwGts0fEhC641c3Y2k7nujiK3E9n7CkpTOOLTjNBU33tRBfr4nC9QUyB+2S+F98HRg8D83VM8pM5Vl6DHU2F9ureZR240TGNDm4Wek5aoJY4tb9550vnfQSAfxc8btM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uBhbmlaS; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e542196c7so33590405e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760957767; x=1761562567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O50PUVrDxE9ib0IbMfL05smlWaDICzzt8kT2K5/ErZQ=;
        b=uBhbmlaSfddAoMrlIpZt99EKU4O+QzROEHKWlEWVOhpxCcHpRkv8nGt+Y5c6WPzV4O
         Ol1gyPNixSQGIIbgldDyhQcmbCTP1shIv9qiScdknkmRQ217UZGu6jTtMJoORQ0XKzoD
         T+5xbOh8wSiGQutwtzoEABqZYK8C2/MbM57QU7+lmbf7sHUAR6Mw6SEWV7dE78JpYlsq
         8XQqm+3k2JV6XqGP9uS8wmlKDgBAIApSOziEQ8np6CfKWrIBJ1L94zj+gddnFf2WxKim
         qT5konw3qIMntlha4nYJMt1ei7UWkhFmRhJf7RnKwAR8lcQT3OPy4O1Qml8FtGi4FFme
         Pa2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760957767; x=1761562567;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O50PUVrDxE9ib0IbMfL05smlWaDICzzt8kT2K5/ErZQ=;
        b=wtX0u0eRx5Vjsvc7dk0UpqjgaWq0n/e9iHxusti5hMeyRqVa/pmfnFseuVUo0/2sem
         W7nEeX5qsmXDE1ceXRNVTdiOsIBye4eWyj01jbSzPE6f9pZovxO+Tvk5ueU/VsxZKzOg
         15HqPuM+xSgTULMIvd0k8gnko2YtS4RCd+4SitHTpk4IJlaUnq+RD12mpOFOlKHJq4j4
         7T0S0wdQSTsc4lWVS+wLNCneR4BeOm7eHSY65Os5UD0OJbyqbc3roETtd5wY8X1bKPOR
         0509AkEGYETxsk5xUvsO45GAGyr8W4wgLLxSvGG57G2VuALu0rCmGMqao9OyskfN7Kf3
         QOQA==
X-Forwarded-Encrypted: i=1; AJvYcCWEicHQYOI2qIy6TOBkUnwp3bIRtBq65hgAEHaVsd87TTUTpxHwXBG1jKHN9uVpl1oFBvUbBxFR1FNX@vger.kernel.org
X-Gm-Message-State: AOJu0YyoBeowiLB1xoFyctZ0OMnNHCKa8FdbvsuLb0m/GZT4+jZfu8Hm
	3BBhQ0PFKIEaQ1iXlPNtMPPCDtcM/uZv1OK9n87h19muq76ERODdwMHAsXxzyU14Rok=
X-Gm-Gg: ASbGncs11GPx+wEgeEWAnkOtImbk+udcFY6D6fuzh+PzrF6gCl6GkNizWrGWl7k/UkP
	zAwG08ISxo41X7cafWm3FiX2/Sv1pEQ+5MFQnKSoxtWwIx65/pTbLT1e6dK3mlmtv1ADKjv2AkG
	VUHMSKGyYxgDWXg99ul7ThDgFAWP8yIoZJQs0nkNABFcUiNYMr3yJls32RusT//oLAYMrzxdhQL
	BODerHj/xz77iKe7tQhwo11VVXVWU6Q2lE7I8u25UC0fABG0jn+IMTshbkOwY9UJtdpoQunmwmm
	7Lp5YmXyHFKnEIL9Cq44ZtaTbgJaS/eNGbUMdkR8Gg8hXIKQWb37MCSI2DBM8wfroEFCtyhXPV8
	4saRv939SuvN2kWJ+EhbeBXanCX+7RzJkJnmZ6UFE3f2dB99C7O7nEguewU7+Nxpp+Wi9Ex+xda
	JfNBNJM3ZMJ9jvzeq65WhlhYfVjXcGkHx+uFMzLRQSXTQ=
X-Google-Smtp-Source: AGHT+IEnxRa9WBYZ/xihOvJBRUTwTryLwgmhlm6XUxYYKxvIXYWvfiDdFtfoAj1aZpKnj7X7vI055g==
X-Received: by 2002:a5d:588b:0:b0:427:1ae:abc7 with SMTP id ffacd0b85a97d-42701aeaffemr10842435f8f.2.1760957767322;
        Mon, 20 Oct 2025 03:56:07 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ce06bsm14495252f8f.45.2025.10.20.03.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 03:56:06 -0700 (PDT)
Message-ID: <f5a1076f-f06c-404d-88d4-fef4f7694c82@linaro.org>
Date: Mon, 20 Oct 2025 11:56:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: media: camss: Add qcom,kaanapali-camss
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
 <20250924-knp-cam-v1-2-b72d6deea054@oss.qualcomm.com>
 <CAFEp6-1o11B9o3HjdJY-xQhDXquOTknXo0JeW=HfpTxXcEaK3g@mail.gmail.com>
 <a7be3a42-bd4f-46dc-b6de-2b0c0320cb0d@oss.qualcomm.com>
 <d8dfe11f-c55a-4eb2-930a-bfa31670bef0@kernel.org>
 <CAFEp6-1zpobZNLHt1192Ahtn2O7bV+As0P1YvVHrkRsORyH_Aw@mail.gmail.com>
 <ac96922e-d2a3-4a99-8f34-a822c3dd2d02@kernel.org>
 <7140b8a8-1380-4859-84a3-681b3f1ce505@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <7140b8a8-1380-4859-84a3-681b3f1ce505@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 20/10/2025 11:16, Krzysztof Kozlowski wrote:
> On 16/10/2025 12:43, Krzysztof Kozlowski wrote:
>> On 16/10/2025 10:47, Loic Poulain wrote:
>>> On Thu, Oct 16, 2025 at 7:52 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>
>>>> On 15/10/2025 05:21, Hangxiang Ma wrote:
>>>>>>> +      - const: csiphy4
>>>>>>> +      - const: csiphy5
>>>>>>> +      - const: vfe0
>>>>>>> +      - const: vfe1
>>>>>>> +      - const: vfe2
>>>>>>> +      - const: vfe_lite0
>>>>>>> +      - const: vfe_lite1
>>>>>> Wouldn't it make sense to simplify this and have different camss nodes
>>>>>> for the 'main' and 'lite' paths?
>>>>>>
>>>>>> [...]
>>>>> No such plan till now. Other series may take this into consideration.
>>>>
>>>> We don't care much about your plan. You are expected to send correct
>>>> hardware description.
>>>
>>> To be fair, other platforms like sc8280xp-camss already have the
>>> all-in big camss node.
>>> Point is that if Lite and Main blocks are distinct enough we could
>>> have two simpler nodes.
>>> Would it make things any better from a dts and camss perspective?
>>>
>>>   camss: isp@9253000 {
>>>      compatible = "qcom,kaanapali-camss";
>>>      [...]
>>> }
>>>
>>> camss-lite:ips@9273000 {
>>>     compatible = "qcom,kaanapali-lite-camss";
>>>      [...]
>>> }
>>>
>>> That approach would create two distinct CAMSS instances and separate
>>> media pipelines.
>>> However, it may not work with the current implementation, as the CSI
>>> PHYs would need to be shared between them.
>>>
>>> I guess this should be part of the broader discussion around
>>> splitting/busifying CAMSS.
>>
>> And this discussion CAN happen now, stopping this camss and any future
>> camss till we conclude the discussion. Whatever internal plans of that
>> teams are, rejecting technical discussion based on "no plans for that"
>> is a really bad argument, only stalling this patchset and raising eyebrows.
> 
> 
> To be clear, I expect Loic's comment to be fully and technically
> addressed, not with "no plan for that".
> 
> This blocks this patchset and any new versions.
> 
> Best regards,
> Krzysztof

I think we should stick with the existing bindings.

There is no "lite" ISP there are so-called lite blocks within the CAMSS 
block.

It makes sense to split out the PHYs from this block as they have their 
own power-rails but, if you look at the block diagrams for this IP there 
is no specific ISP lite, there are merely blocks within the camera 
called lite.

It might be nice to structure things like this 
arch/arm64/boot/dts/rockchip/rk356x-base.dtsi with each component 
separated out into its own node with its own compat string but, I'd have 
a hard time justifying changing up the bindings we already have for that 
reason - aside from anything else - all of those components in CAMSS 
live inside of the TITAN_TOP_GDSC which is the power-domain for the 
whole camera system.

So not meaning to answer for Hangxiang but, I think the compelling logic 
here is to stick to and extend the existing bindings.

So in fact I have no problem with the bindings as submitted - not 
including the regular fixups these types of submissions entail.

---
bod



