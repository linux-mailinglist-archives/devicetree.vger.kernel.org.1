Return-Path: <devicetree+bounces-111878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB0B9A0351
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 476411C280DB
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30F2B1D1319;
	Wed, 16 Oct 2024 07:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="depyvZa7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C1F1C4A3B;
	Wed, 16 Oct 2024 07:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729065416; cv=none; b=RULnEJxZLHxTYsfROPyfVwPs1l4IiVZjagt4smhiQ2QsrG8D7/zj8yQ9g5Dhq5C4+RrRMotNKk9q8zBM1jnbLKBDhqy2blaWrLhiMd0RdN/K6KFly1EP1yJnyRdlblNH/IXSKNGCSaQDRP4rMFtVmadVohpDEvBRIXkJ7UT163c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729065416; c=relaxed/simple;
	bh=YqL74olZT3BLUQw+1lIKGl4Y46U0hCeVmqVpRVGkuRs=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=I6QIeyNuWdy11zbET4QCjPYBN7qRKOy5vAR3TP8koAQa9AcvSsxUt08BWgHN5opT+969AHXTwYtOjB/ytAHF4VLwzv4NzUlDYfNobfMp7M5003gLxL8uodRuT6fGhOkwvSy6CkCFq7tB2YtXDyIV3mtOeAENufoRTk6APu1SvxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=depyvZa7; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49G6skv5018459;
	Wed, 16 Oct 2024 09:56:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	h6vGd2oGBXjp3LNF/ZKw/vXaPHEfmCmhPVsuuoUPWew=; b=depyvZa7mGSXdNw8
	yhclXZax0Axo/lHoHn1i24hp+ok9KMlz+PK6qfri9cPONBSVd7JHVCQh4CdyDXWT
	D4sIa/LBgGnOZ7yXGdqDQ+MRmb1jgbs0dlHlCcizb6GtxFGPq7jXNJslyhoSq8p1
	z6CvY5QmMo/nBblCTm9uX6eKORPLEaUWbeFH65iAW3LbbRsyb2hOZ/gRcG0t5d8i
	a0N79pI/rDFQoqUl3+3oHX3afqlL6BWkKCjxSz1ObcSGFWkRKjFrQ6bPeVJC242P
	jiT/TyhpFZaNoAnv65F/t9XmptqrR+cWArmmwrlNR1gADK99hVUpGFlktYg4P6Ys
	VsEg7Q==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 42a8mv8ah1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Oct 2024 09:56:30 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id CBC414004B;
	Wed, 16 Oct 2024 09:55:16 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0B0F6239453;
	Wed, 16 Oct 2024 09:54:28 +0200 (CEST)
Received: from [10.48.86.225] (10.48.86.225) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 16 Oct
 2024 09:54:27 +0200
Message-ID: <90ce2c1e-6e8b-43ba-9313-8b5560cb8e4d@foss.st.com>
Date: Wed, 16 Oct 2024 09:54:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] hwrng: stm32 - implement support for STM32MP25x
 platforms
To: Marek Vasut <marex@denx.de>, Olivia Mackall <olivia@selenic.com>,
        Herbert
 Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Lionel Debieve <lionel.debieve@foss.st.com>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20241011-rng-mp25-v2-v2-0-76fd6170280c@foss.st.com>
 <20241011-rng-mp25-v2-v2-2-76fd6170280c@foss.st.com>
 <318dbd5e-f547-4d78-b42e-4dcacc08d328@denx.de>
 <f191d034-4116-4169-8c05-201450412bbd@foss.st.com>
 <8c13b0aa-7fb1-493c-9abc-5e5cfd982855@denx.de>
 <d862765e-e396-4f7c-97ff-76df9aa03216@foss.st.com>
 <dca83197-3484-4d6b-8507-118bf9e80e19@denx.de>
 <b06b5d09-190b-4567-aecd-4be1f1dee172@foss.st.com>
 <e5a21bb8-00c3-41f1-9a4d-856eb1465d45@denx.de>
Content-Language: en-US
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <e5a21bb8-00c3-41f1-9a4d-856eb1465d45@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01



On 10/15/24 17:39, Marek Vasut wrote:
> On 10/15/24 5:10 PM, Gatien CHEVALLIER wrote:
>>
>>
>> On 10/14/24 20:55, Marek Vasut wrote:
>>> On 10/14/24 2:36 PM, Gatien CHEVALLIER wrote:
>>>>
>>>>
>>>> On 10/14/24 10:52, Marek Vasut wrote:
>>>>> On 10/14/24 10:38 AM, Gatien CHEVALLIER wrote:
>>>>>>
>>>>>>
>>>>>> On 10/11/24 18:17, Marek Vasut wrote:
>>>>>>> On 10/11/24 5:41 PM, Gatien Chevallier wrote:
>>>>>>>
>>>>>>> [...]
>>>>>>>
>>>>>>>> @@ -551,6 +565,41 @@ static int stm32_rng_probe(struct 
>>>>>>>> platform_device *ofdev)
>>>>>>>>       priv->rng.read = stm32_rng_read;
>>>>>>>>       priv->rng.quality = 900;
>>>>>>>> +    if (!priv->data->nb_clock || priv->data->nb_clock > 2)
>>>>>>>> +        return -EINVAL;
>>>>>>>> +
>>>>>>>> +    priv->clk_bulk = devm_kzalloc(dev, priv->data->nb_clock * 
>>>>>>>> sizeof(*priv->clk_bulk),
>>>>>>>> +                      GFP_KERNEL);
>>>>>>>> +    if (!priv->clk_bulk)
>>>>>>>> +        return -ENOMEM;
>>>>>>>
>>>>>>> Try this:
>>>>>>>
>>>>>>> ret = devm_clk_bulk_get(dev, priv->data->nb_clock, priv->clk_bulk);
>>>>>>> ...
>>>>>>> // Swap the clock if they are not in the right order:
>>>>>>> if (priv->data->nb_clock == 2 &&
>>>>>>>      strcmp(__clk_get_name(priv->clk_bulk[0].clk), "core"))
>>>>>>> {
>>>>>>>   const char *id = priv->clk_bulk[1].id;
>>>>>>>   struct clk *clk = priv->clk_bulk[1].clk;
>>>>>>>   priv->clk_bulk[1].id = priv->clk_bulk[0].id;
>>>>>>>   priv->clk_bulk[1].clk = priv->clk_bulk[0].clk;
>>>>>>>   priv->clk_bulk[0].id = id;
>>>>>>>   priv->clk_bulk[0].clk = clk;
>>>>>>> }
>>>>>>>
>>>>>>
>>>>>> Hi Marek,
>>>>>>
>>>>>> This won't work as the name returned by this API is clk->core->name.
>>>>>> AFAICT, it doesn't correspond to the names present in the device tree
>>>>>> under the "clock-names" property.
>>>>>> Any other idea or are you fine with what's below?
>>>>> Hmmm, it is not great, but at least it reduces the changes 
>>>>> throughout the driver, so that is an improvement.
>>>>>
>>>>> I guess one could do some of_clk_get() and clk_is_match() in probe 
>>>>> to look up the clock in OF by name and then compare which clock is 
>>>>> which before swapping them in clk_bulk[] array, but that might be 
>>>>> too convoluted?
>>>>
>>>> Yes, probably too much. What's present in the patch is not close to
>>>> perfection but has the advantage of being straightforward. If we agree
>>>> on that, I'll send a V3 containing the modifications in the bindings
>>>> file.
>>> Errr, I'm sorry, maybe there is a way to do this better. Look at 
>>> drivers/clk/clk-bulk.c :
>>>
>>>   15 static int __must_check of_clk_bulk_get(struct device_node *np, 
>>> int num_clks,
>>>   16                                         struct clk_bulk_data *clks)
>>>   17 {
>>>   18         int ret;
>>>   19         int i;
>>>   20
>>>   21         for (i = 0; i < num_clks; i++) {
>>>   22                 clks[i].id = NULL;
>>>   23                 clks[i].clk = NULL;
>>>   24         }
>>>   25
>>>   26         for (i = 0; i < num_clks; i++) {
>>>   27                 of_property_read_string_index(np, "clock-names", 
>>> i, &clks[i].id);
>>>   28                 clks[i].clk = of_clk_get(np, i);
>>>
>>> If I read this right, then clks[i].id should be the DT clock name. So 
>>> the swap conditional above could use .id to identify whether the 
>>> first position is core clock or not, like this:
>>>
>>> if (priv->data->nb_clock == 2 &&
>>>      strcmp(__clk_get_name(priv->clk_bulk[0].id), "core"))
>>>                                              ^^
>>>
>>> You might need to use devm_clk_bulk_get_all() to access the 
>>> of_clk_bulk_get() .
>>>
>>> Or am I missing something still ?
>>
>> Oooooh I see, devm_clk_bulk_get() and devm_clk_bulk_get_all() use
>> a different path. I don't understand why, to be honest... The doc
>> doesn't state this difference either.
> 
> Indeed, but maybe git log could clarify that ? I learnt about this 
> useful trick at last year Embedded Recipes:
> 
> $ git log -L:clk_bulk_get_all:drivers/clk/clk-bulk.c
> 

Will definitely keep that somewhere, thanks.

>> I'll give this a try while also correcting the issue that the robot
>> highlighted.
> Thank you !

