Return-Path: <devicetree+bounces-91584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F70C949F5C
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 07:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 250621F25F53
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 05:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3600819753F;
	Wed,  7 Aug 2024 05:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6RndzNe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F283538F91;
	Wed,  7 Aug 2024 05:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723009732; cv=none; b=ZnYA+cdBMx1yPW8aC+fs1Sc6d9DtI9HzX9vHfT5PgtnK5rRrd8Kgz8AGc9/rxbGBFWM2FKNOITjkpJHmaIO+UL48+odiOyr9eTNDSH/rca7i4MCB64EN9c3im8QbU3kdSCX1ergg48nHgT3+GVYp2cTf+vqjWCcCUG4m8HQEdNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723009732; c=relaxed/simple;
	bh=7TOy/TGX7VYmu/wSfP6QxOUeNZrbY4x1S85hALiXO+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FL/duBzPYTGwU1rL+gANBYjvPc/A/5kapyJE0tQnqd6hOpCGTyCOjMpqYu6JaFmEZotNEOXubqEhOF3+lzPrJaQLkpluWVbkTLmgPXtTvce6Akd+hLJ4eSn/QruUDkMpq2UHyL7c8rKsVbYVDZeAPN34eUH/CWVAx6/Q/hd+W/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6RndzNe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD96CC32782;
	Wed,  7 Aug 2024 05:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723009731;
	bh=7TOy/TGX7VYmu/wSfP6QxOUeNZrbY4x1S85hALiXO+8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=M6RndzNeQcxllWw9gQpD/pGRPhF5ceywT9a0uhA2XgozMkn7Nb8N5LjdaAiyGm92i
	 h1jk4khpwi6XsHE5VKuYErHSkKDDFb2dUuNvX17mB8Grfx0v1hvreyfguxXJwLcTDg
	 y5nTdbSWId2ImSs798jloU/u/40YvzfsRdAn3WOZzZqYv0K80kUgC9Yhxc/jdaZZpW
	 YvbLCRgqu3W7wYc07vlV6Et3OqOd7tD5iSE1WjKxG9JZ/WRvGEYjDxU+vnfqW7DkyZ
	 ezhV5bBjFWJn0/oUYMUi/NdU4eboexdn/eFG0ufuBUaJtfhQnHs+7nZfQ1tmy+CjW2
	 bKlJ/TGVgTwSQ==
Message-ID: <bfe6430c-a022-4e8f-ab7f-8d8e8cb10fca@kernel.org>
Date: Wed, 7 Aug 2024 07:48:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: imx8mq-usb: add compatible
 "fsl,imx95-usb-phy"
To: Frank Li <Frank.li@nxp.com>
Cc: Xu Yang <xu.yang_2@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, jun.li@nxp.com,
 l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com,
 alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
References: <20240806050639.1013152-1-xu.yang_2@nxp.com>
 <160dd5fc-83ba-4311-a173-44521342a3d8@kernel.org>
 <ZrJLS37GFmvkQpml@lizhi-Precision-Tower-5810>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <ZrJLS37GFmvkQpml@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/08/2024 18:11, Frank Li wrote:
> On Tue, Aug 06, 2024 at 10:29:47AM +0200, Krzysztof Kozlowski wrote:
>> On 06/08/2024 07:06, Xu Yang wrote:
>>> The usb phy in i.MX95 is compatible with i.MX8MP's, this will add a
>>> compatible "fsl,imx95-usb-phy" for i.MX95. Also change reg maxItems
>>> to 2 since i.MX95 needs another regmap to control Type-C Assist (TCA)
>>> block. Since i.MX95 usb phy is able to switch SS lanes, this will also
>>> add orientation-switch and port property to the file.
>>>
>>> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
>>>
>>> ---
>>> Changes in v2:
>>>  - replace minItems with description in reg property
>>>  - remove orientation-switch and port
>>>  - refer to usb-switch.yaml
>>>  - use unevaluatedProperties
>>> ---
>>>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 42 ++++++++++++++++---
>>>  1 file changed, 37 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
>>> index dc3a3f709fea..6d6d211883ae 100644
>>> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
>>> @@ -11,12 +11,17 @@ maintainers:
>>>
>>>  properties:
>>>    compatible:
>>> -    enum:
>>> -      - fsl,imx8mq-usb-phy
>>> -      - fsl,imx8mp-usb-phy
>>> +    oneOf:
>>> +      - enum:
>>> +          - fsl,imx8mq-usb-phy
>>> +          - fsl,imx8mp-usb-phy
>>> +      - items:
>>> +          - const: fsl,imx95-usb-phy
>>> +          - const: fsl,imx8mp-usb-phy
>>>
>>>    reg:
>>> -    maxItems: 1
>>> +    minItems: 1
>>> +    maxItems: 2
>>>
>>>    "#phy-cells":
>>>      const: 0
>>> @@ -89,7 +94,34 @@ required:
>>>    - clocks
>>>    - clock-names
>>>
>>> -additionalProperties: false
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - fsl,imx95-usb-phy
>>> +    then:
>>> +      properties:
>>> +        reg:
>>> +          items:
>>> +            - description: USB PHY Control range
>>> +            - description: USB PHY TCA Block range
>>> +    else:
>>> +      properties:
>>> +        reg:
>>> +          maxItems: 1
>>> +
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - fsl,imx95-usb-phy
>>> +    then:
>>> +      $ref: /schemas/usb/usb-switch.yaml#
>>
>> ref should be rather in top-level. You can always disallow certain
>> properties for devices, if they are really not applicable.
> 
> There are some "required" in usb-switch.yaml,
> 
> oneOf:
>   - required:
>       - port
>   - required:
>       - ports
> 
> If put on the top, it may cause DTB check warning for other compatible
> strings, which have not support usb-switch.

Hm, indeed, that's unusual case to have such different devices in one
schema. Did you test that above $ref in if: actually works?

Best regards,
Krzysztof


