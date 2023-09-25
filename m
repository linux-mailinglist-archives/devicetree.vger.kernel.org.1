Return-Path: <devicetree+bounces-3046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 271367AD373
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CB66C281792
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF6610A33;
	Mon, 25 Sep 2023 08:33:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D62910A21
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:33:33 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 475DFC4
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:33:31 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5310a63cf7bso6823391a12.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695630810; x=1696235610; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XJHSZ26T3MOsUizLOBZhGM+0h1d7T5Ujoo+fZj6JV3g=;
        b=d5o96ZdoFftzNJAVZmgUlLPYKvS8Mh9Fw1CkDrM2suFptCT6NG3eLRZMOmJ83Whgdk
         hrm8OtycYnm62nBABKCe4puWGnhhsXo7QbZcaQr2ZG/V3GqKR19xaYsJrluw2NS4H8CT
         XjCc9hrTCxAWUCheTk8k03BkeoGbRWJvcSUNImMXoPp0PVk8/Q5eclseqQEmqDa3ky71
         75MTeQdrAeVJZcMOo8CdXjfgEYjOPsbJ0RmlyZU5bkZgXhDXQhAo6SQqYVkL4XjpXddl
         UQ7oNdyBKcD16vHtXtj+btsJHN9iUyDwzlakbesl7wds+jMEFDfcme1OatUeCHR7dlXO
         UVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695630810; x=1696235610;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XJHSZ26T3MOsUizLOBZhGM+0h1d7T5Ujoo+fZj6JV3g=;
        b=vSOO8ryID1q65tT2kCAlV5HcjYZNFfjSa2zFLLV44HmEoTd9ThRHtcl4u7iFXsRj0Q
         0vlwTBVE4F39B7kgTHPhFszHHiFmu3YIiC8Db3F7Diqm/WpLR2p4tLT5DJSBXmqS6HGd
         PC4XNl8jx1XWoYNREosv9wF3EfNaN7qQZHmvhAVtT2OcPKvrDQB6nJGTa/eFeJD1jjpw
         EA3l+Yi0xfRq3bbXeOhqL4NzO2V0WaGPsrKYfCV4jnqD+a/l+Nus4Ywz1WLt98O6arav
         rAJTkaZ8rqfhj4V/AEadObli38+ONXbKbPhKWYZpDeJzGemKF3WPPrzV2qCShfReLdKI
         TTLA==
X-Gm-Message-State: AOJu0Ywq3kgDrWP8h6RmEBD7rqdfYWdO5nmxVaiP7vz/FpMtJp0mITEE
	pBEh4LHbSAwTy0d9uyqFx7bGMw==
X-Google-Smtp-Source: AGHT+IFfuv30iJKFaQZblE5W2CuoAPDtpaqHfR9cl7zQ99pN7d4jonBQ0udhcCD4y3K2MN621drBuA==
X-Received: by 2002:a17:906:3389:b0:9a5:9f8d:770 with SMTP id v9-20020a170906338900b009a59f8d0770mr5378906eja.46.1695630809684;
        Mon, 25 Sep 2023 01:33:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id hs35-20020a1709073ea300b009b28ad521f4sm542452ejc.4.2023.09.25.01.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 01:33:28 -0700 (PDT)
Message-ID: <df86ea4b-d389-4060-bd3b-830bacabde1c@linaro.org>
Date: Mon, 25 Sep 2023 10:33:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXT] Re: [PATCH v3 2/2] dt-bindings: media: imx-jpeg: Assign
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
References: <20230925074131.10133-1-ming.qian@nxp.com>
 <20230925074131.10133-2-ming.qian@nxp.com>
 <bbc8dd05-8589-44ec-87dd-f2d7b4368245@linaro.org>
 <AM6PR04MB63418AE18D3D0ED98CCC1A0FE7FCA@AM6PR04MB6341.eurprd04.prod.outlook.com>
 <751a552e-5209-4d5e-9292-23339a06f8a9@linaro.org>
 <AM6PR04MB63410BEA725DDBF1D1B7814FE7FCA@AM6PR04MB6341.eurprd04.prod.outlook.com>
 <10c50df3-9a99-4552-9b25-0844b87e28f5@linaro.org>
 <AM6PR04MB6341C8E7553F66695467C398E7FCA@AM6PR04MB6341.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <AM6PR04MB6341C8E7553F66695467C398E7FCA@AM6PR04MB6341.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 25/09/2023 10:20, Ming Qian wrote:
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: 2023年9月25日 16:14
>> To: Ming Qian <ming.qian@nxp.com>; Mirela Rabulea (OSS)
>> <mirela.rabulea@oss.nxp.com>; robh+dt@kernel.org; shawnguo@kernel.org
>> Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>> mchehab@kernel.org; hverkuil-cisco@xs4all.nl; s.hauer@pengutronix.de;
>> kernel@pengutronix.de; festevam@gmail.com; X.H. Bao
>> <xiahong.bao@nxp.com>; Eagle Zhou <eagle.zhou@nxp.com>; Tao Jiang
>> <tao.jiang_2@nxp.com>; dl-linux-imx <linux-imx@nxp.com>;
>> devicetree@vger.kernel.org; linux-media@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
>> Subject: Re: [EXT] Re: [PATCH v3 2/2] dt-bindings: media: imx-jpeg: Assign slot
>> for imx jpeg encoder/decoder
>>
>> Caution: This is an external email. Please take care when clicking links or
>> opening attachments. When in doubt, report the message using the 'Report
>> this email' button
>>
>>
>> On 25/09/2023 10:13, Ming Qian wrote:
>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Sent: 2023年9月25日 16:10
>>>> To: Ming Qian <ming.qian@nxp.com>; Mirela Rabulea (OSS)
>>>> <mirela.rabulea@oss.nxp.com>; robh+dt@kernel.org;
>> shawnguo@kernel.org
>>>> Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>>>> mchehab@kernel.org; hverkuil-cisco@xs4all.nl; s.hauer@pengutronix.de;
>>>> kernel@pengutronix.de; festevam@gmail.com; X.H. Bao
>>>> <xiahong.bao@nxp.com>; Eagle Zhou <eagle.zhou@nxp.com>; Tao Jiang
>>>> <tao.jiang_2@nxp.com>; dl-linux-imx <linux-imx@nxp.com>;
>>>> devicetree@vger.kernel.org; linux-media@vger.kernel.org; linux-
>>>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
>>>> Subject: Re: [EXT] Re: [PATCH v3 2/2] dt-bindings: media: imx-jpeg:
>>>> Assign slot for imx jpeg encoder/decoder
>>>>
>>>> Caution: This is an external email. Please take care when clicking
>>>> links or opening attachments. When in doubt, report the message using
>>>> the 'Report this email' button
>>>>
>>>>
>>>> On 25/09/2023 10:07, Ming Qian wrote:
>>>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>> Sent: 2023年9月25日 16:02
>>>>>> To: Ming Qian <ming.qian@nxp.com>; Mirela Rabulea (OSS)
>>>>>> <mirela.rabulea@oss.nxp.com>; robh+dt@kernel.org;
>>>> shawnguo@kernel.org
>>>>>> Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>>>>>> mchehab@kernel.org; hverkuil-cisco@xs4all.nl;
>>>>>> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
>>>>>> X.H. Bao <xiahong.bao@nxp.com>; Eagle Zhou <eagle.zhou@nxp.com>;
>>>>>> Tao Jiang <tao.jiang_2@nxp.com>; dl-linux-imx <linux-imx@nxp.com>;
>>>>>> devicetree@vger.kernel.org; linux-media@vger.kernel.org; linux-
>>>>>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
>>>>>> Subject: [EXT] Re: [PATCH v3 2/2] dt-bindings: media: imx-jpeg:
>>>>>> Assign slot for imx jpeg encoder/decoder
>>>>>>
>>>>>> Caution: This is an external email. Please take care when clicking
>>>>>> links or opening attachments. When in doubt, report the message
>>>>>> using the 'Report this email' button
>>>>>>
>>>>>>
>>>>>> On 25/09/2023 09:41, Ming Qian wrote:
>>>>>>> There are total 4 slots available in the IP, and we only need to
>>>>>>> use one slot in one os, assign a single slot, configure interrupt
>>>>>>> and power domain only for 1 slot, not for the all 4 slots.
>>>>>>
>>>>>> No changelog and I do not see much of improvements. Do not ignore
>>>>>> the feedback but respond to it or fix the patch. Really, what happened
>> here?
>>>>>>
>>>>>
>>>>> Hi Krzysztof,
>>>>>    What do you mean wrap commit message? Do you mean line wrapped
>> at
>>>> 75 columns?
>>>>>
>>>>>   - The body of the explanation, line wrapped at 75 columns, which will
>>>>>     be copied to the permanent changelog to describe this patch.
>>>>
>>>> I gave you clear link to the doc explaining this. What is unclear there?
>>>>
>>>> And you decide to ignore all the rest of the comments here as well?
>>
>> So this is still ignored? Can you respond to all my comments?
>>
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>> The link content is as below:
>>>
>>>   - The body of the explanation, line wrapped at 75 columns, which will
>>>     be copied to the permanent changelog to describe this patch.
>>>
>>> I'm sorry that I didn’t get your point.
>>
>> Wrap
>> your
>> commit
>> according
>> to
>> coding
>> style.
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
>     I opened your link about the Linux coding style / submission process, but I only find the following message:
> 
>   - The body of the explanation, line wrapped at 75 columns, which will
>     be copied to the permanent changelog to describe this patch.
> 
>      So I don't know what do you mean the coding style.


Linked document explains what is a patch, how it is formatted. Just read
entire doc, not one sentence.

You keep ignoring my other comments all the time, so I will stop asking
you to respond to them. Instead I will be NAK-ing your patches till you
decide to respond.

Best regards,
Krzysztof


