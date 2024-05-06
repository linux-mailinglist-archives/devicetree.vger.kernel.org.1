Return-Path: <devicetree+bounces-65229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBE78BD239
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 18:14:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F59DB21D49
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 16:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C965C155A55;
	Mon,  6 May 2024 16:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="ul3ihFHV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EEB762D2
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 16:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715012079; cv=none; b=BGkIzkVpBVjRjO+4+MkWTLRmv2/JRX8SPSOs5bJf1cYM9b4PH6HXJvSIBsZyMVGARMpJBzahXclG1IEygzmvedXaZeIXPSObntpRKWUqIwD33p53ntPw1JVCMYbYGAjhqMeO2UMLS/GDSVsKnFEjryPTZgE8S8a+8lSuJd+s6dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715012079; c=relaxed/simple;
	bh=rAQ7znbFu0VNsAK/JAArOiyCdUHS/gS3L/4dtOvRdW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f+UVu0LrAQflhCKQbpap2dYfVP9Jwrz8tTcelQPrz0rl5DU35aqMzzf4BFxzl2S/8t7Q7h2cAvByVmf9lWPkpLubXsqVTnNxfZmuxkjDDCybzsLA68fuMOPiN+on4one3ylwKyRZQewX4KadLuhlM9nI9wnqqc8iO5318wl5NI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=ul3ihFHV; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1715012056;
 bh=N/kMPXOW+9pj2iXbtfmhz5wAtX8HuIAcCJSd79oIR9Y=;
 b=ul3ihFHV4SbKwJnLGHOHuXodFg8JiSVR38YAEVKiCAj/Fuwcj3kTIRiqmfoviRFYbRwAJwRk2
 FgugDDjnKi2J6AfLVfbnmt48aZpU+XgvoAxC7Wp+zrkffUe1XKbPocI6r2PcakkC6YMORSSDusv
 lZpyOnkDi306aDmUidqZiI6z9aDaVMTNbHyx9YEpVl/n3cfMvHSBKFLSMc2TrmIeVwN9xj9EEHZ
 KJWBm9+AyAv+z0duMXdynYov0kdpJ/RGXIqnK1NPZ3kvBv/kdvex87C9A+XC/fJJ14cEuyk0JsS
 t4bg2sMIwX9G6c4BSJK5RTpUurNa6rokI7siotj24tMQ==
Message-ID: <76519e53-a226-497b-9db1-4f11ea83151a@kwiboo.se>
Date: Mon, 6 May 2024 18:14:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec properties
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Heiko
 Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Chris Zhong
 <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-3-jonas@kwiboo.se>
 <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 663901d049216dcdc6f4249f

Hi Krzysztof,

On 2024-05-06 12:47, Krzysztof Kozlowski wrote:
> On 05/05/2024 15:41, Jonas Karlman wrote:
>> Similar to RK817 the RK809 also integrates a complete audio system.
>>
>> Add audio codec properties to binding to reflect this.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Except sending untested patches...

This patch was a 1:1 copy from rockchip,rk817.yaml so I expected
everything to already be correct, my bad.

Guess rockchip,rk817.yaml also needs same fixes/changes as listed below.

Will send a v2 with example fixed in a separate patch and try to fix
your remarks on this patch in v2.

> 
>> ---
>>  .../bindings/mfd/rockchip,rk809.yaml          | 34 ++++++++++++++++++-
>>  1 file changed, 33 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> index c951056b8b4d..b78e1b090105 100644
>> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> @@ -12,7 +12,7 @@ maintainers:
>>  
>>  description: |
>>    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
>> -  that includes regulators, an RTC, and power button.
>> +  that includes regulators, an RTC, a power button and an audio codec.
>>  
>>  properties:
>>    compatible:
>> @@ -93,6 +93,34 @@ properties:
>>          unevaluatedProperties: false
>>      unevaluatedProperties: false
>>  
>> +  clocks:
>> +    description:
>> +      The input clock for the audio codec.
> 
> No, this allows anything. You must be here specific, see example-schema.
> maxItems: 1
> 
> Drop description, redundant.
> 
>> +
>> +  clock-names:
>> +    description:
>> +      The clock name for the codec clock.
> 
> Drop description, redundant.
> 
>> +    items:
>> +      - const: mclk
>> +
>> +  '#sound-dai-cells':
>> +    description:
>> +      Needed for the interpretation of sound dais.
> 
> Drop description, redundant. Do you see it anywhere for such properties?
> 
>> +    const: 0
> 
> 
> Missing ref to dai-common in your allOf (again: take a look how other
> bindings are doing it).
> 
> 
>> +
>> +  codec:
>> +    description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 
>> +      The child node for the codec to hold additional properties. If no
>> +      additional properties are required for the codec, this node can be
>> +      omitted.
> 
> That's useless description. Describe hardware, not syntax. This must say
> what this node represents.
> 
> Anyway drop it. You do not have any resources there, so put properties
> in top level.

This just tries to follow the rockchip,rk817 binding, not fully sure
about the reasoning behind this node in the the rk817 binding.

RK809/RK817 are very similar and their schema files could possible be
merged.

> 
> 
>> +    type: object
>> +    additionalProperties: false
>> +    properties:
>> +      rockchip,mic-in-differential:
>> +        type: boolean
>> +        description:
>> +          Describes if the microphone uses differential mode.
> 
> Your description copies property name. Do not describe the syntax
> "Description describes", but say what is it.
> 
>> +
>>  allOf:
>>    - if:
>>        properties:
>> @@ -284,5 +312,9 @@ examples:
>>                      };
>>                  };
>>              };
>> +
>> +            rk809_codec: codec {
>> +                rockchip,mic-in-differential;
> 
> Missing all other properties. Make your example complete.

Noticed that the example used in this schema file is for RK808 and not
RK809 so will also add a patch that replaces/fixes the example in v2.

Regards,
Jonas

> 
> Best regards,
> Krzysztof
> 


