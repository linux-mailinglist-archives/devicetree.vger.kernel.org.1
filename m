Return-Path: <devicetree+bounces-4037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE8B7B11EC
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 338122815A9
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 05:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F1AF50B;
	Thu, 28 Sep 2023 05:07:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5718471
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 05:07:04 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051C1199
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 22:07:00 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9ae75ece209so1420389066b.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 22:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695877619; x=1696482419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iharTJU5Bifx1z2hCCj9/iXAdTatfSCs/y5PbcRu+IM=;
        b=COUt88vdnfwCvukUQ6iRyOSbAv4Yf1C6/+Uv8ywThKn35I4djYP94gYDFka6+bO0OW
         iJpLtnxRpL58/0ly8IGkNF3nCpi72N2QV9rvmZ/LinAJlPvPdHQA4HXQd/hQlWS5OEAg
         SjhJuqffP5p6jzcv8cxdSJq64nRC4tkLCSW6675QEqXFicaJAzlLAG2M1qV8UqrXbx+m
         Btp3chGzhXsz8d330c4ONP8NCjfTCAymVXhf+zmU4kc8xRQW1RhiDQL0kyoY9Z7pAhO4
         ElkNhjkd87rW2jK1OIoQcHEWwvVQ1gWLZLlxFcGulcnN2GdG0W0kuXlE16yKlYO1wpdM
         TOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695877619; x=1696482419;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iharTJU5Bifx1z2hCCj9/iXAdTatfSCs/y5PbcRu+IM=;
        b=AVA3zAWYs5N0jpSBjLDYVkI2ri8hCrG1PyxGmuWJWJ0x+RQNin0ZBrsBv1vHxqUOal
         AVYY3ukJgSqpMxkpNVrSJaIKaQCOvqW4PoDJGFLrGMzEzUK1aWwG3o6DgWR24skq1ESX
         9Zl3jDj8dV5RKrRpn0jtAuj0A9GN+eGMIxUKwmmMhwSIMsQHe/tDAzstnm6V0yQOtK5b
         xwhw3wC93PcffZt4H4CJXB/TT5+qkAfD3dLkHUVXw8Y2hpdZkPrXhMuuNW8GtiBrGxC5
         Vf+HHX7GXu5sQTR2Mm6lrW8yGT3ySoAONQtNOkcNv6CAdcsPi77+mVxAjLUG2wXJEHFT
         WJww==
X-Gm-Message-State: AOJu0YwgGnfvlTL5zL/qbnKLG5H9yQkl2yCWwRF5k+DCwgynjcmj3d3+
	8scoElVBPthihAqiX4FUKQ5omw==
X-Google-Smtp-Source: AGHT+IEDIkYhRtbBw3Mzn5spS8ZQv67kDmvuQX0UfKumFs9KpLvHbUtItvXsOR6yd3K2sN6A2avD/A==
X-Received: by 2002:a17:907:b10:b0:9b2:78bf:d8d4 with SMTP id h16-20020a1709070b1000b009b278bfd8d4mr151066ejl.5.1695877618796;
        Wed, 27 Sep 2023 22:06:58 -0700 (PDT)
Received: from [192.168.1.234] (host-87-4-82-94.retail.telecomitalia.it. [87.4.82.94])
        by smtp.gmail.com with ESMTPSA id gx10-20020a170906f1ca00b0099cb349d570sm10279642ejb.185.2023.09.27.22.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 22:06:58 -0700 (PDT)
Message-ID: <e243a285-156f-4947-8932-45f2a8e3ec93@linaro.org>
Date: Thu, 28 Sep 2023 07:06:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXT] Re: [PATCH v4 2/2] dt-bindings: media: imx-jpeg: Assign
 slot for imx jpeg encoder/decoder
Content-Language: en-US
To: Ming Qian <ming.qian@nxp.com>,
 "Mirela Rabulea (OSS)" <mirela.rabulea@oss.nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Cc: "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "X.H. Bao" <xiahong.bao@nxp.com>,
 Eagle Zhou <eagle.zhou@nxp.com>, Tao Jiang <tao.jiang_2@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20230926101000.13392-1-ming.qian@nxp.com>
 <20230926101000.13392-2-ming.qian@nxp.com>
 <2c351ca0-cee4-4c1b-956b-6134ad101a9a@linaro.org>
 <AM6PR04MB63415CF2EDCF0AF33F778774E7C2A@AM6PR04MB6341.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <AM6PR04MB63415CF2EDCF0AF33F778774E7C2A@AM6PR04MB6341.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 27/09/2023 11:10, Ming Qian wrote:
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: 2023年9月27日 16:06
>> To: Ming Qian <ming.qian@nxp.com>; Mirela Rabulea (OSS)
>> <mirela.rabulea@oss.nxp.com>; robh+dt@kernel.org; shawnguo@kernel.org
>> Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>> mchehab@kernel.org; hverkuil-cisco@xs4all.nl; s.hauer@pengutronix.de;
>> kernel@pengutronix.de; festevam@gmail.com; X.H. Bao
>> <xiahong.bao@nxp.com>; Eagle Zhou <eagle.zhou@nxp.com>; Tao Jiang
>> <tao.jiang_2@nxp.com>; dl-linux-imx <linux-imx@nxp.com>;
>> devicetree@vger.kernel.org; linux-media@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
>> Subject: [EXT] Re: [PATCH v4 2/2] dt-bindings: media: imx-jpeg: Assign slot for
>> imx jpeg encoder/decoder
>>
>> Caution: This is an external email. Please take care when clicking links or
>> opening attachments. When in doubt, report the message using the 'Report
>> this email' button
>>
>>
>> On 26/09/2023 12:10, Ming Qian wrote:
>>> There are total 4 slots available in the IP, and we only need to use
>>> one slot in one os, assign a single slot, configure interrupt and
>>> power domain only for 1 slot, not for the all 4 slots.
>>>
>>> Signed-off-by: Ming Qian <ming.qian@nxp.com>
>>> ---
>>> v4
>>> - improve commit message
>>> - don't make an ABI break
>>> v3
>>> - add vender prefix, change property slot to nxp,slot
>>> - add type for property slot
>>>
>>>  .../bindings/media/nxp,imx8-jpeg.yaml         | 45 +++++++++----------
>>>  1 file changed, 21 insertions(+), 24 deletions(-)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>>> b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>>> index 3d9d1db37040..4bcfc815c894 100644
>>> --- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>>> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>>> @@ -32,19 +32,26 @@ properties:
>>>      maxItems: 1
>>>
>>>    interrupts:
>>> -    description: |
>>> -      There are 4 slots available in the IP, which the driver may use
>>> -      If a certain slot is used, it should have an associated interrupt
>>> -      The interrupt with index i is assumed to be for slot i
>>> -    minItems: 1               # At least one slot is needed by the driver
>>> -    maxItems: 4               # The IP has 4 slots available for use
>>> +    description:
>>> +      Interrupt number for slot
>>> +    maxItems: 1
>>>
>>>    power-domains:
>>>      description:
>>>        List of phandle and PM domain specifier as documented in
>>>        Documentation/devicetree/bindings/power/power_domain.txt
>>> -    minItems: 2               # Wrapper and 1 slot
>>> -    maxItems: 5               # Wrapper and 4 slots
>>> +    minItems: 1               # VPUMIX
>>> +    maxItems: 2               # Wrapper and 1 slot
>>> +
>>> +  nxp,slot:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description:
>>> +      Integer number of slot index used. There are 4 slots available in the IP,
>>> +      and driver can use a certain slot, it should have an associated interrupt
>>> +      and power-domain. In theory, it supports 4 os or vm. If not specified, 0
>>> +      is used by default.
>>> +    minimum: 0
>>> +    maximum: 3
>>
>> NAK, you still did not answer concerns why this is needed and justified.
>> I keep asking and you keep ignoring...
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
>> Nothing explains what is a slot and nothing explains why do you need this property.
> 
> I thought I had answered that question, but seems you don't agree with that explanation. 
> Would the following description be any better?

No, you didn't. I don't see any explanation in the commit msg. You just
say you have "4 slots".

Best regards,
Krzysztof


