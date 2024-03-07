Return-Path: <devicetree+bounces-49061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FA5874CC1
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B0D0B20FD1
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714328626A;
	Thu,  7 Mar 2024 10:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IdD8ojq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB1683CAF
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 10:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709808888; cv=none; b=MRhpJJXSlmGcGUF40jtV940QJFoL4gC0eEhCtoMic1lvMhuLVujA0zmdtIPut+/duUGD1ca5PR/PSbJaLyY2UbUiMH5tqNxvTUvyVu+ClGW1U8f5KvjqfDeZEvz8XaKFEojP+HBnRUOgQLKK1aOQE2Txn7UeDV/RiRnmqnAJg30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709808888; c=relaxed/simple;
	bh=hFENZOecmZ2fiZ6Ikwhql99wba8osU4H003EBkgSnws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F8s+pblWz7+Kt5U1uHcAOJX9RBx8Vx/ya0ogfWP8zxyvW57ed84u1KgL/gTg4phpNlCNrDJ7PePUEL/uJunL8sCviDz106LgoyX481BvDRDy8YLzPgcJHrgkjnDyT5kDFF91w/alI4PI3y0azkdtxUrCCa9kbhRYUwO1+eOtxBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IdD8ojq3; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a28a6cef709so118580266b.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 02:54:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709808885; x=1710413685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L92e8PXyuWLhf1oxm+/VjaGzKgXNS1PJSpZ6PcMT0dU=;
        b=IdD8ojq3Zb0CugVzeo2ezkccm3AmH+WVDSicbqFNjla+sdoM1R5Y9dUqYwSs19/hrd
         XEkFG8sU9A24tmdBb1omIBjahaQ7bX3hGA+NwtsXx6cPhIuLPYfBtsmGdtCA5mgar9G7
         wgcFvqHq7GC4NEjfaYECIVLwvzve/qyFm+QJmH/KEF8wjo2m5auRvGqvgMKIpC09Cht2
         FhyB6vgbLsIxESr6uDX2y7OpoG0YBugaJX4S6CiwmK6cSHrAjZA9rXHz5aMgaLPkg75p
         iszKs9l721CRkML+ybbL3kIGuse3LrGm4cjDDFMRvmDQDWFUCgpDCbsBDp6UCpv5ujhJ
         7Mog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709808885; x=1710413685;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L92e8PXyuWLhf1oxm+/VjaGzKgXNS1PJSpZ6PcMT0dU=;
        b=c+wlhYrRyxSBp0y5ISHnzfJ8uJfUmDrFCWv13NTt1o64Jr6afLnc5heu/KOhl1nvaA
         y7DtX6L3QxNKbQWpkMlWvhsIqTakt84eh59F8h8YdgbIWxWYqCLAB3M6YqIyT6L1FW0z
         +DaUvF6YfHHehUlA1YTaj0bgnXxi1ZBqWHeS/+h1BYkIKZSZ8q1vzFo8P+A0zro+trGa
         EhmG1I9TjtSOfeL+UFFuFc020+w43hxD5jlPXsUxovP57vNg7F4Jrm15CcjxtFj7HxDr
         LmR6f0K9gnXd7DQE9801HOdha6pAgDDYciQSaOiyr6AveLJo3wzV5L2OBtXSDV2wNWZp
         N/cA==
X-Forwarded-Encrypted: i=1; AJvYcCV2ZydSvG1SoibsD+RlWS/e9FHzEvql2vxa3YoBZYitrUlBx0GkczJspvdiEZbIcSNm1dl2+oaxMb3pV0AfyMgAD1wtSH5QlPLpZg==
X-Gm-Message-State: AOJu0YwcUv4LRF6cBKXY2cbzdG67wChFGAmWv2SX+VwnkodyRYLKXMVC
	b72BiZI0NlvCC8L0+E4VjpaB/U+mQIr8WgnYBXgNj2Owo+/uAANE3TyyR++7fPU=
X-Google-Smtp-Source: AGHT+IGX6N7QAb3+6kthKk65wUR0Pc37C7ZfiplFTI7BuL4eC0f5BpvpsplXQ/9t573QnbWKr6EcXA==
X-Received: by 2002:a17:906:6c8:b0:a45:6422:ea2a with SMTP id v8-20020a17090606c800b00a456422ea2amr7746920ejb.41.1709808884851;
        Thu, 07 Mar 2024 02:54:44 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id me12-20020a170906aecc00b00a45af5df0f3sm2200401ejb.112.2024.03.07.02.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 02:54:44 -0800 (PST)
Message-ID: <b9d41b76-cfdc-459c-a48b-2dd37358d495@linaro.org>
Date: Thu, 7 Mar 2024 11:54:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v8 4/9] dt-bindings: net: convert hisi-femac.txt
 to YAML
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240305-net-v8-0-166aaeea2107@outlook.com>
 <20240305-net-v8-4-166aaeea2107@outlook.com>
 <66cf4c42-5b8e-41b8-bbdb-7fb2c6bb9e66@linaro.org>
 <SEZPR06MB69594BB6F24CF86E859D698196212@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <66f578b4-5e1b-4cc3-b39c-3b61797cacd3@linaro.org>
 <SEZPR06MB695907832BFAF8108053976B96202@SEZPR06MB6959.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SEZPR06MB695907832BFAF8108053976B96202@SEZPR06MB6959.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/03/2024 11:33, Yang Xiwen wrote:
> On 3/7/2024 3:48 PM, Krzysztof Kozlowski wrote:
>> On 06/03/2024 10:28, Yang Xiwen wrote:
>>> On 3/6/2024 3:39 PM, Krzysztof Kozlowski wrote:
>>>> On 05/03/2024 08:51, Yang Xiwen via B4 Relay wrote:
>>>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>>>
>>>>> Convert the old text binding to new YAML.
>>>>>
>>>>> While at it, make some changes to the binding:
>>>>> - The version numbers are not documented publicly. The version also does
>>>>> not change programming interface. Remove it until it's really needed.
>>>>> - A few clocks are missing in old binding file. Add them to match the real
>>>>> hardware.
>>>>>
>>>>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>>>>> ---
>>>>>    .../bindings/net/hisilicon,hisi-femac.yaml         | 89 ++++++++++++++++++++++
>>>>>    .../devicetree/bindings/net/hisilicon-femac.txt    | 41 ----------
>>>>>    2 files changed, 89 insertions(+), 41 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml b/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
>>>>> new file mode 100644
>>>>> index 000000000000..ba207f2c9ae4
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
>>>>> @@ -0,0 +1,89 @@
>>>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>>>> +%YAML 1.2
>>>>> +---
>>>>> +$id: http://devicetree.org/schemas/net/hisilicon,hisi-femac.yaml#
>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>> +
>>>>> +title: Hisilicon Fast Ethernet MAC controller
>>>>> +
>>>>> +maintainers:
>>>>> +  - Yang Xiwen <forbidden405@foxmail.com>
>>>>> +
>>>>> +allOf:
>>>>> +  - $ref: ethernet-controller.yaml
>>>>> +
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    items:
>>>>> +      - enum:
>>>>> +          - hisilicon,hi3516cv300-femac
>>>>> +      - const: hisilicon,hisi-femac
>>>> Drop this fallback, your later driver change does not use it, so neither
>>>> should have binding. Explain in commit msg, that old binding was
>>>> incorrect (we discussed it a lot) thus you are making such change during
>>>> conversion.
>>>
>>> What about deprecating "hisilicon,hisi-femac-vn" compatibles and
>>> introduce a new generic compatible "hisilicon,hisi-femac" instead? This
>>> way, We can keep backward compatibility.
>> What backward compatibility? Didn't you say bindings and driver are
>> broken and you are going to break ABI to fix them up?
> 
> 
> Yes, indeed the old binding is broken. I'm just wondering why you say 
> "hisilicon,hisi-femac" should be removed. The FEMAC core on both SoCs 
> are compatible afaik.

You don't use that fallback. What is the point of having it? You express
compatibility via SoC compatibles.


Best regards,
Krzysztof


