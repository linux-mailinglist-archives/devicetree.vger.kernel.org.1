Return-Path: <devicetree+bounces-22438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E3880769B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65B7928202C
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DFCB697B8;
	Wed,  6 Dec 2023 17:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V/envTsS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B0E7D4F
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 09:29:37 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3316a4bc37dso22189f8f.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 09:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701883775; x=1702488575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uD7RjeKdAZaGT1cax9DSB3xM1yd/b50YPQNcl8/BWLM=;
        b=V/envTsSgPNAvkoUejBg0ZoE6Ja165/KZ5CyfQLpzGStUwl2fiKMmcXFJ3j9GDKOPS
         aH6ByJwIr7wAuB4o6TUGdJGYsC2GWbC6b9O8SZAUHk0g5t+L1xaDYl0VBtAHpbLnDRi+
         tPCLZnm/JyMUMFSMofySoIhrGmjuwghxnjfMbrdNMYggTU1baVPVGV0xSNQnD5BnZbTy
         Q7T00d+o+3/sNPgYk5a9wxLUkmw8rXZf/Live4IYtQlOuKsBYO9mgiKQOBeq1VGuqYvx
         kLQ+JSmAqfXGo0lvlFm2CXv0i4xvK5l970CgghoVDLaCDZZgfyXu+IMCIcppKYlR6VO8
         RRDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701883775; x=1702488575;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uD7RjeKdAZaGT1cax9DSB3xM1yd/b50YPQNcl8/BWLM=;
        b=PlSpC4pIB3ZC/9i/kTN9ZD+a17v5MHcs2oXlE7uTxkspaWhhG1n2zRjetcNqJ3BIQq
         CPwgDD5jbc+29NvDXOpVepCK3Nl/mOrxSJVg6dtZOh3ejPJhy+iS8iU558+1ow9vFvkC
         Sr/LCI0BVQU9whDOjJoB+1ISA+HPvIHkVo8WRbGwEFILNv26wDo0ckEFZGu1Hne4knvi
         UqrpmRYDPr7oR+BvFL3adyzRlThCt1bTjDq21W/eD/w25Orhzc8L9wr1d+8RHCvoHoei
         5xiXWM9p2pow5I+Dgm/iU/LC0wKQVClOuErK7oSZLaM1qSraeubmygXfm1SinyR4v3t2
         R7Jw==
X-Gm-Message-State: AOJu0YwxbAV2pdimbycUBbT9pAMR2WoKWcgpLom4rEjOYYUYzS6/SdWu
	cpCWc46LqKNHI9DVOC32m4V9ow==
X-Google-Smtp-Source: AGHT+IHTwaIBS5u4dij3LeoHE4cGO1itLNwWLMkAgmyO0gNvwGcvuRjfgnup84sNqmcC4lIPEiiPiA==
X-Received: by 2002:a5d:45c8:0:b0:333:3b91:19c0 with SMTP id b8-20020a5d45c8000000b003333b9119c0mr569712wrs.129.1701883775470;
        Wed, 06 Dec 2023 09:29:35 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id dp8-20020a0560000c8800b003334a0513dbsm175605wrb.67.2023.12.06.09.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 09:29:35 -0800 (PST)
Message-ID: <5497447c-023b-4837-a5e2-b465ba2f624d@linaro.org>
Date: Wed, 6 Dec 2023 18:29:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: memory: additional compatible strings
 for Broadcom DPFE
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 Markus Mayer <mmayer@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-2-mmayer@broadcom.com>
 <f17dcd86-7f87-4433-a106-eb7bfdfb05ab@linaro.org>
 <42677f2d-190c-4043-a61d-8bfba581a764@broadcom.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <42677f2d-190c-4043-a61d-8bfba581a764@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/12/2023 17:32, Florian Fainelli wrote:
> 
> 
> On 12/6/2023 3:09 AM, Krzysztof Kozlowski wrote:
>> On 05/12/2023 19:47, Markus Mayer wrote:
>>> Add versioned compatible strings for Broadcom DPFE. These take the form
>>> brcm,dpfe-cpu-v<N> where <N> is a number from 1 to 4.
>>>
>>> These API version related compatible strings are more specific than the
>>> catch-all "brcm,dpfe-cpu" and more generic than chip-specific compatible
>>> strings.
>>
>> None of this explains: Why? I don't see any point in this and commit
>> does not explain.
>>
>>>
>>> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
>>> ---
>>>   .../bindings/memory-controllers/brcm,dpfe-cpu.yaml        | 8 +++++++-
>>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
>>> index 08cbdcddfead..6dffa7b62baf 100644
>>> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
>>> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
>>> @@ -16,6 +16,11 @@ properties:
>>>         - enum:
>>>             - brcm,bcm7271-dpfe-cpu
>>>             - brcm,bcm7268-dpfe-cpu
>>> +      - enum:
>>> +          - brcm,dpfe-cpu-v1
>>> +          - brcm,dpfe-cpu-v2
>>> +          - brcm,dpfe-cpu-v3
>>> +          - brcm,dpfe-cpu-v4
>>
>> No, that's just wrong. So you want to say bcm7271 is brcm,dpfe-cpu-v4?
> 
> No as the example shows it "speaks" API v1.

Example is not a binding. It does not matter except of validating the
binding. This is just incorrect.

> 
> I would be inclined to completely remove the chip specific compatible 
> strings from the binding because they are not sufficient or descriptive 
> enough to determine which API version is being spoken, since the 
> firmware is unfortunately allowed to change major APIs (and the 
> messaging format, because why not?) at a moments notice.

Then versions do not give you anything more.

Best regards,
Krzysztof


