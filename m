Return-Path: <devicetree+bounces-48028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567F86FC74
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:55:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 877011C21A59
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 518693839A;
	Mon,  4 Mar 2024 08:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="fEU1JPvC"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-251-84.mail.qq.com (unknown [203.205.251.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A720B2E
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 08:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.251.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709542276; cv=none; b=H0LXmWQ/kuHqq5rYxA+ZyJ0ebVkJGwBX1LxfRi258rfMvBu+rbtP/1fY1nu7Nap4WbEDDJfm92LZGIVQAmZkEBMAOQm5Cm6hYpI6azxpZ8+/YImjZ5gXKqZIwVXnR4pVzA5GaB6HjnAgNbEvK0z0e55tMb2Gp95r60KJHeI48z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709542276; c=relaxed/simple;
	bh=dFdLZwzVb32v1eTbKWoNzytYjuFHCSDRMkVJM58ZX+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YCP05AsxtY73W8inuFk8VybedHBlPrxTTxFKA5uVWCLX9O94U09NJuLFxul6i22Dpf+EGjAeyXAQwZ9pjco0/hN1WzJOJIFiqfyz4xwniyfyTJtOzzP0HhZaWc3pgd0NmV1e/EqKs83xiUfOoWTRKisvX1Sf3WeFd+6JhCoc1SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=fEU1JPvC; arc=none smtp.client-ip=203.205.251.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709542269; bh=mbuvwZO50R9Q6N8yNmFTfgRFRn2FhfRiifIW8jkWut0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=fEU1JPvCJDyBjMsGBpqHwtmWIffVba9r6eWWKqZqfpo92s+ZiJSXgXpr1tMfoRS5s
	 Q2Vo07Keg/2j867oHx4fp/cjAJfO3sXgTB058H4o4eaa+PxpIu1XwdbeyDiDi5yZO5
	 M42IO3dePXnxlAsS9T/SzU8bEjF9l9Ff4SIZONnU=
Received: from [IPV6:2001:da8:c800:d084:f0c8:5d03:8100:4abe] ([2001:da8:c800:d084:f0c8:5d03:8100:4abe])
	by newxmesmtplogicsvrsza7-0.qq.com (NewEsmtp) with SMTP
	id CC5BCEE2; Mon, 04 Mar 2024 16:51:05 +0800
X-QQ-mid: xmsmtpt1709542265tg1r7o721
Message-ID: <tencent_BF607C338244DA7F8EB2B8F2314A218B8D08@qq.com>
X-QQ-XMAILINFO: M1rD3f8svNznan3rGAt6euEY2qNi8leQ7tpHeu6fo+m9tItMjXsZj8H0v9S+83
	 qpSGVhUnE1gxye9pkJ0kgG5xMB8tC2p3Wk67WyeosYwmYPqyax2KEBjVppVuZ8pEiYWBL1BDz849
	 Z3hnL53It3BNVZxnk04A1fZ14wE7yPGDF0bDyjoiySIKzQfCq9HPTCWw/fDzvTdIXyypX2QQ05kf
	 8ABXE7ywGTdlBkPaZq6c3JCznPaYAQL+TxWKdOUPGxmmbSQ6nYxV8ouM64rtTdoUbhs0+fTmt9P3
	 7gPwLbV4kyXZArCozSJ92Ikp41cJPbbCCVxzjq+HFdP5lXBI/IJbmiZ92WRQ92qGO/N7nT8/j/I1
	 2LfvF+q39t6UDiWbu8ZefO06zHn7lh8fKjpe52ZlaUGtIjt7UNk6v+YBQix56MlVSQwBMdWzRF+a
	 pZVGgO+SoL5Xv2eks5aATQPV5QWdbtG/8maE3y7njD6RY3wc8U7AId/1Z8BMmKmgCTRRbigMiuLY
	 l22NeZNjMBYs8GRYLmlbhgQCHS+hb4WFb9yzRbcmraQxzaFK19J/RPDz3XjmEQbfUPjTj9rxhkCB
	 eXDOKp4XFV/o/8mlmP9zPR0/WaKTmyzOUBupFdCXVI/QHX/NEzAe7XYoWH2kzjUSb4MpAxTpibB1
	 VYKTqtNpC2zvkNZvBvl4HNbke6E0R2sF/jTFTjWRYbPClfFs1+E70Md+BZOwEhLMo+0AdMkSs5w/
	 WZlqgPI4Qmg58sj3wXS0ic0YU+yb9xjLNX+xp7In4oRDRWq7S0+1fcJQGxJTsLtk1S3TBDjtMSzy
	 x8HCu/yX5tANxqGl07MR6bsQZ0b46G0q4kszlAsFKoJq47/m5GHAd6vJN12QdjOtKmkGcxvkQ8gn
	 7W/60Jz1cee332QVexi9+o6YeJZCxnRgV7oMZoJ/pmrpzzumqBygCvJ4NvQkIrkIwC/CY/ZNH2Im
	 rTDIXeDlRvswf0j8UrTGqBd09Y8nYznWGYBnRbuGLHI69voorfkB/+eQCg/HM7
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-OQ-MSGID: <db0272a3-ee70-4de8-85ce-1b65d7dfdaa9@cyyself.name>
Date: Mon, 4 Mar 2024 16:51:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: add Canaan K230 boards compatible
 strings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <guoren@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <tencent_E15F8FE0B6769E6338AE690C7F4844A31706@qq.com>
 <tencent_D5188EA5B85A31AC21588DBD7C7482ACDA08@qq.com>
 <7c3c578a-d662-4485-ad15-47250ad0e935@linaro.org>
From: Yangyu Chen <cyy@cyyself.name>
In-Reply-To: <7c3c578a-d662-4485-ad15-47250ad0e935@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024/3/4 16:11, Krzysztof Kozlowski wrote:
> On 03/03/2024 14:26, Yangyu Chen wrote:
>> Since K230 was released, K210 is no longer the only SoC in the Kendryte
>> series, so remove the K210 string from the description. Also, add two
>> boards based on k230 to compatible strings to allow them to be used in the
>> dt.
>>
>> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
>> ---
>>   Documentation/devicetree/bindings/riscv/canaan.yaml | 13 ++++++++++++-
>>   1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
>> index 41fd11f70a49..444758db964e 100644
>> --- a/Documentation/devicetree/bindings/riscv/canaan.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
>> @@ -10,7 +10,7 @@ maintainers:
>>     - Damien Le Moal <dlemoal@kernel.org>
>>   
>>   description:
>> -  Canaan Kendryte K210 SoC-based boards
>> +  Canaan Kendryte SoC-based boards
>>   
>>   properties:
>>     $nodename:
>> @@ -42,6 +42,17 @@ properties:
>>         - items:
>>             - const: canaan,kendryte-k210
>>   
>> +      - items:
>> +          - const: canaan,k230-usip-lp3-evb
>> +          - const: canaan,kendryte-k230
>> +
>> +      - items:
>> +          - const: canaan,canmv-k230
> 
> Why this is not part of previous entry in an enum?
> 
>> +          - const: canaan,kendryte-k230
>> +
>> +      - items:
>> +          - const: canaan,kendryte-k230
> 
> Usually you cannot run SoCs alone. What does it represent (in real life)?
> 

I'm not sure what it means.

If you wonder why should I add a compatible string for soc, that is 
although we cannot run SoCs alone, adding a soc compatible will allow 
some bootloaders or SBI on RISC-V to choose an errata for a soc. Such as 
this opensbi patch. [1]

If you wonder why I should allow a soc-compatible string with soc alone, 
that is because k210 did it previously. And provide a k210_generic.dts 
to use it. I haven't provided generic dts now but allowing only 
soc-compatible string alone would also be acceptable I think.

[1] 
https://github.com/cyyself/opensbi/commit/b113c1c01d700314a4a696297ec09031a9399354

Thanks,
Yangyu Chen

> Best regards,
> Krzysztof
> 


