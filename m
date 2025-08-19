Return-Path: <devicetree+bounces-206268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 424B4B2BE1A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 319377B55DA
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CCE0321F53;
	Tue, 19 Aug 2025 09:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iVzwx3MT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C109031E108
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597177; cv=none; b=HwdK3l8P3N1zXdLk8gmFelvEwS2od4mXRaSVHSSc+SgKY1iwXb2EEnqT27RV6FuBOWJ7cVDaEtr7sriWjpflZ9IYxJaz4M1DvPA3hNF952wr6LYMw8Kv61FR1sHZqFr1ao4Ry9pBlSBq1FAd+7JdgvCNPoOANb3MKnfrXIkpOxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597177; c=relaxed/simple;
	bh=D7ULAKtYONClt57a6AjnjqdTGtyDYDEhUbl2DruBwCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lb2ZAliSvCXdZR80HnsjT+mBygGmvflB9sOp89fzW7WpKqJTJPoabUl9w4OBxLY2uA37nnpBT4Lm9FvCLR/9dBv/Kn/2FRXFxaZ3/CZ+59/NoGpBdMkInBoEFEUBwODwrtKngFAAUh+TuqQsNdQYu8/dGQ5M4y+1iUOhxCPab38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iVzwx3MT; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b0becf5so27608195e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755597174; x=1756201974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0h1IqL/4MIVenVvNd5Jvok7Pym6fhE62Ycqm04pTo+s=;
        b=iVzwx3MTbZ48iIyb+5hBFgD4VEmw33zcAx2aGEXSo0cs8IZFPihvcHm4n4DcM0wF2M
         UgGtDTyTmNBclcIFKWH3bmyuQBLCJWDLBnvWJzuQ6daDkL4FV6IQNITZpLnRudr++SJg
         PgEhYy2fBBoIYGezYghQHaxqjbU3w5NRozhJZCxBIJHIuXWcaI6BFj8hRIduMLfUU2/7
         Irq/4TJoyidlDIuzl2E+9NLgPzQq5uRZcmdmU0lXakKPptwjHOfpyuCqzzMJp64Q9LTD
         yRfAzU7T2rY4owrm2eNCg+0UeUuYogPMQaF8LeFKPCbekoOd6vW0poRE+wZHQesV9MmE
         Hm9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597174; x=1756201974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0h1IqL/4MIVenVvNd5Jvok7Pym6fhE62Ycqm04pTo+s=;
        b=Ic0+4cKlhQDnPKgezNwrCesAtUQ8ZgjgJczpNKPCxAQ4ILJVgGEqQvgBBNZcg17Ohm
         /d8LrKf4CThoHqJXbHqp7xXT/d8eN55yvIrJfJBFLCAIKedK/MdUanAmB1sgEAW8SctW
         naUh4e9qzvrBBFsX17Dk28GSbpfPniIDMOix95LibfGIQgvHyqhb2luikjhPdVq7nTIj
         ZP4HBg8xUSZ2ct7c27oGCxVbSs8spnn/8r0vOLEAbVB5QSpZYZsTOfPWgJWl/ZIixs1l
         luUUrIEOMW/QzrBy+mHCf2WqfkbO9kwbR9fteAT6kXdee9ijbw7JXFx8N0DbWE4nm9+j
         2wtg==
X-Forwarded-Encrypted: i=1; AJvYcCUOyZmG0cHzpUg4xhD0E5ymDGfoQXjluQ3X+y9lBtbv6XA3T8R8Ke9Z65fR/DXZBSuKgksycsZFbkaf@vger.kernel.org
X-Gm-Message-State: AOJu0YzMlRI1IH9W+jG5vRQukPl512hknNAwPxEetgNjiYLDrCON9B3S
	2zIOOqGubdUdBd4oEtZK2diMcLvwI1QReybTRyGam/PgNi1dt5jyjJ+gp3DeIaLtQ1g=
X-Gm-Gg: ASbGncuupMTCvl8nBk0sA+5+yLXD0NeLXkbHho272S8SJn8xozwppkXqd/Biu4NoTpo
	3oXF1dMeAfGTut87ludw+TKaD/4xuUBij7nYTPq0nJg8SyvfSiQCJbn9e0LYDo+Gj2M3DbEY+19
	qy4zUVt2Z6h6RP46B6ZX0J5L0Ar0iPEuPYO1FDWM4TxSin2V8apVZUXuZ1hMGIJR7EQ6/YuHyYa
	jDXo3qJr+gDwDafFgUEE8028ngUdKxd2+VBsgwxROohCuplO27jATpIDdhR1nGpknN8CV7D9+J1
	4Vs8s6e7S10U7aHF9ZBTWXceFMfVyy/+7e9K/vfFmOUvC8vGeSjcE0E6JL9iD0MkzVuKqzgdNnD
	JOb44x1K9EEXo9dArfEugeG/cjLU=
X-Google-Smtp-Source: AGHT+IGlP+6ysDxLZ9KBBa3uZiR0t6DXx2J2w37t28LWBAiGheosRQfe24PXM+YBFSqepDRsvanIuQ==
X-Received: by 2002:a05:6000:2881:b0:3a4:f70e:abda with SMTP id ffacd0b85a97d-3c0ea5ba0b6mr1523055f8f.10.1755597173972;
        Tue, 19 Aug 2025 02:52:53 -0700 (PDT)
Received: from [192.168.1.3] ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c78b33csm214351585e9.25.2025.08.19.02.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 02:52:53 -0700 (PDT)
Message-ID: <05701887-f78c-4de5-b7fa-d34afdb53af9@linaro.org>
Date: Tue, 19 Aug 2025 10:52:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] dt-bindings: lpspi: Document nxp,lpspi-pincfg
 property
To: Frank Li <Frank.li@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>
Cc: Mark Brown <broonie@kernel.org>, Clark Wang <xiaoning.wang@nxp.com>,
 Fugang Duan <B38611@freescale.com>, Gao Pan <pandy.gao@nxp.com>,
 Fugang Duan <fugang.duan@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Larisa Grigore <larisa.grigore@oss.nxp.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com,
 linux-spi@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
 <20250814-james-nxp-lpspi-v1-12-9586d7815d14@linaro.org>
 <aJ4ox8+OLhIir2bU@lizhi-Precision-Tower-5810>
 <bd59344b-9dc0-42bd-98c8-80ab9ca97123@linaro.org>
 <aKNJFJDf1Clnkbex@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aKNJFJDf1Clnkbex@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 18/08/2025 4:39 pm, Frank Li wrote:
> On Mon, Aug 18, 2025 at 03:47:45PM +0100, James Clark wrote:
>>
>>
>> On 14/08/2025 7:19 pm, Frank Li wrote:
>>> On Thu, Aug 14, 2025 at 05:06:52PM +0100, James Clark wrote:
>>>> Document the two valid pincfg values and the defaults.
>>>>
>>>> Although the hardware supports two more values for half-duplex modes,
>>>> the driver doesn't support them so don't document them.
>>>
>>> binding doc should be first patch before drivers.
>>>
>>> binding descript hardware not driver, you should add all regardless if
>>> driver support it.
>>>
>>
>> Replied to same on "[PATCH 10/13] spi: spi-fsl-lpspi: Add compatible for
>> S32G"
>>
>>>>
>>>> Signed-off-by: James Clark <james.clark@linaro.org>
>>>> ---
>>>>    Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 14 ++++++++++++++
>>>>    1 file changed, 14 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>>>> index ce7bd44ee17e..3f8833911807 100644
>>>> --- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>>>> +++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>>>> @@ -70,6 +70,19 @@ properties:
>>>>      power-domains:
>>>>        maxItems: 1
>>>>
>>>> +  nxp,pincfg:
>>>> +    description:
>>>> +      'Pin configuration value for CFGR1.PINCFG.
>>>> +        - "sin-in-sout-out": SIN is used for input data and SOUT is used for
>>>> +                             output data
>>>> +        - "sout-in-sin-out": SOUT is used for input data and SIN is used for
>>>> +                             output data
>>>> +      If no value is specified then the default is "sin-in-sout-out" for host
>>>> +      mode and "sout-in-sin-out" for target mode.'
>>>
>>> why need this? are there varible at difference boards? look like default
>>> is more make sense.
>>>
>>
>> + Larissa. I think this might also be a question for the hardware designers
>> about why the feature to swap the pins was deemed worth including.
>>
>> I'm assuming the flexibility is given for routing reasons. If you have
>> another device with the pins in one order then you can route it without a
>> via if they happen to be in the same order.
> 
> DT team need reason to judge if a new property is reasonable/neccesary. You
> need  mention the reason why need this property. Here, some board design
> swap sin/sout.
> 

Let's wait for Larisa to reply. If there's no board and it was only for 
testing maybe we can drop it.


