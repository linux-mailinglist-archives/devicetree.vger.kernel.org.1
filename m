Return-Path: <devicetree+bounces-136493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B42A055C9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A5441888584
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E6A1EBFF0;
	Wed,  8 Jan 2025 08:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lsu/ymBp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAADE1D47A2;
	Wed,  8 Jan 2025 08:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736326300; cv=none; b=E8dTQBHVm+DGRIPYar88XSVZNB3Ivb75vecoujSXM3cFewEfU5ebbU2zS9KpX9QaZfzM1osj9SYoHbv+01Jyu3A44MfbzDwA2qUZ5kAb252Rn8F60EBPLEON52TNWhDc4EKwNc+JYc1CGYlz5x7/TQP7LdF1fM6D/kZRcDR2xr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736326300; c=relaxed/simple;
	bh=xt7HRg+SHTwUxvYOWoNuFKGEB36Fv5XsmYv2ii2dvzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=lWXlB5Jg5ASFeHgYOFoZuDRr7BK5dciFLHsscZF7TOPAB1/pUmF349yCqdGhoYddSqCgh5sBSh3bighoHWBxIXWM2hJeha9k5LSeceFwIkUWNq22JF90lRRjXqxAcD8brLBYY58jKURQHHJT3fmz8jZlZByHth2kQyK4iEIpmSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=lsu/ymBp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5086l8eo025097;
	Wed, 8 Jan 2025 08:51:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jB2VZGZ0NrAYMJdEFSaYBCLl8kbrmmkj5XE+wuVhsdM=; b=lsu/ymBpHqheZTg0
	PFxda+b88BKxsOHLU3Fi/1Xz9aoQz7kDAWzEGZyKOlwg7Gl5CVYUrLdNF2SGG4qV
	EO3EXOGiIwkQalaybHpqyHkw3/uZ7C0AQmpb/sD2vBzq1h83QIsLjojqSPb+KITE
	ECbuTywl5gA1KK4qvZTb64b/V34USzjQsckJ3ldRofpn+xzTtpAT8KH8nnrVSJXb
	4a8LxD4LUkE9ALwyqwwijjmI3gEn3ONt02StmBt+MwI2AKaop/3SQwKADjk3BG0h
	mxAzyMWbaAEE4nwUeexehYEmEWgT1oz9zoOxYi32ZayrJ3hV5MHQG0NdxSmiM1hZ
	TU/XpQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 441md309rx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 08:51:28 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5088pRQH000657
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 Jan 2025 08:51:27 GMT
Received: from [10.50.21.116] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 8 Jan 2025
 00:51:19 -0800
Message-ID: <9fc76dd1-ef49-a9d2-0271-eacb50943b03@quicinc.com>
Date: Wed, 8 Jan 2025 14:21:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v9 27/28] media: iris: enable video driver probe of SM8250
 SoC
Content-Language: en-US
To: Hans Verkuil <hverkuil@xs4all.nl>,
        Nicolas Dufresne
	<nicolas@ndufresne.ca>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Sebastian Fricke <sebastian.fricke@collabora.com>
CC: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Rob
 Herring" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "Bryan
 O'Donoghue" <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@baylibre.com>,
        Jianhua Lu
	<lujianhua000@gmail.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        <linux-media@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20241212-qcom-video-iris-v9-0-e8c2c6bd4041@quicinc.com>
 <20241212-qcom-video-iris-v9-27-e8c2c6bd4041@quicinc.com>
 <20241223113027.21b8f7ab@foz.lan>
 <fbe0d935-a3cf-dfa0-aad8-56834a0a002c@quicinc.com>
 <635ce4ed82aaca422b869f467300b0eccf9c8703.camel@ndufresne.ca>
 <c0f59149-713b-45e4-3755-4a52cfaa93f6@quicinc.com>
 <498a99e1-77ca-4acf-8850-cb74417ae88c@xs4all.nl>
From: Dikshita Agarwal <quic_dikshita@quicinc.com>
In-Reply-To: <498a99e1-77ca-4acf-8850-cb74417ae88c@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: GfDLBmQb8nwhRNTSpDMuc9MPZqnxBXIe
X-Proofpoint-ORIG-GUID: GfDLBmQb8nwhRNTSpDMuc9MPZqnxBXIe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080071



On 1/8/2025 1:17 PM, Hans Verkuil wrote:
> On 08/01/2025 08:43, Dikshita Agarwal wrote:
>>
>>
>> On 1/7/2025 7:27 PM, Nicolas Dufresne wrote:
>>> Le lundi 23 décembre 2024 à 16:21 +0530, Dikshita Agarwal a écrit :
>>>>
>>>> On 12/23/2024 4:00 PM, Mauro Carvalho Chehab wrote:
>>>>> Em Thu, 12 Dec 2024 17:21:49 +0530
>>>>> Dikshita Agarwal <quic_dikshita@quicinc.com> escreveu:
>>>>>
>>>>>> +	.dma_mask = GENMASK(31, 29) - 1,
>>>>>
>>>>> Setting a mask to GENMASK() - 1 sounds weird. Is it really what you want?
>>>>> I so, why?
>>>>>
>>>> Hi Mauro,
>>>>
>>>> the value of this dma mask should be 0xe0000000 -1.
>>>>
>>>> The background for the same is, 0xe0000000 onward memory space is allocated
>>>> for IO register space so we are restricting the driver buffer allocations
>>>> to 0xe0000000 - 1.
>>>>
>>>> Based on the comments received in the past, we are using GENMASK to
>>>> generate 0xe0000000.
>>>>
>>>> Does this answer your query or I missed something?
>>>
>>> I'm not sure it will do what you want. (0xe0000000 -1) matches ~BIT(29). Perhaps
>>> you wanted to use ~0xe0000000. 
>>>
>> value of dma mask is coming as expected with GENMASK(31, 29) - 1
>>
>> qcom-iris aa00000.video-codec: dma_mask DFFFFFFF (0xe0000000 -1)
> 
> Isn't this just the equivalent of GENMASK(28, 0)? Can't you use that?
> 
> It's much easier to understand than GENMASK()-1.

Sure, I can use either ~GENMASK(29, 29) or ~BIT(29),
Please let me know which would be better?

Thanks,
Dikshita

> 
> Regards,
> 
> 	Hans
> 
>>
>> Thanks,
>> Dikshita
>>> Nicolas
>>>
>>>>
>>>> Thanks,
>>>> Dikshita
>>>>> Thanks,
>>>>> Mauro
>>>
> 
> 

