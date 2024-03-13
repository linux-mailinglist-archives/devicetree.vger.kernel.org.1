Return-Path: <devicetree+bounces-50358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D487B47E
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 23:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93E61B20D7D
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 22:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4A6F59B56;
	Wed, 13 Mar 2024 22:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="SoaLwdCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18515B217
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 22:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710369668; cv=none; b=KmfaCixmyl8dZ3FQdQql66FEFePehK94xdgeI0AcgOfQXn2i8NQmdkrBk9qKKoxUMaduebOs4/z0HXkpILhMtpJ5WisG3URCH6hvt6KXsDd1tMz8mB2xPmrM1LPrnzg8m+ZnmY76Grv6k4FOoub49c8k2LeGP2udApnqcL903R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710369668; c=relaxed/simple;
	bh=uw6Ae9+4FTL+l8wPsgiJnucIGWCSRqIvOzK52JAP9cQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=HntL0QuA4iHw+sYEfi77jaz7zAvgPYX3CUCZtIez/414QTm8QTG+Nirvd2V3SHj7Y8+dJf9iS6wj7HR5df8EVSQUijt8q3Qb4Heo68Dk+dMk57l0lWYql4qhqYufpGkWh8y0bBDgdSOVxbRAVbiaQ5Iq/KHzgN2fw/rFnMQprTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=SoaLwdCI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42DEp3Of011147;
	Wed, 13 Mar 2024 22:40:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=WUQEyhBudyITsPOzfVrA3lmTUxRNo7WtKjVlIUvl+DQ=; b=So
	aLwdCIRi50MxBGKtkYpds+0TRMrz6bENsb/uiYotSDlmd1FCA/qKSYGE5XTf4Nrq
	GCNYCu1pV9yw/uNuKhWbtV2w1cKgCeUGwUDE7buYc5GfRdEPQNJgkXop/A/rccwH
	kLJMVNzgMnnNWnXSyOZIKaTrWsx4MZizcLf/F44GpX14qzkKryjpmn05KI8iM72n
	RkuO0t1xGKS4K2815Zqpd66ygB6O99WIdsvvrL38AFteIwcVjYWaHgdrA7Tlbb76
	MpvwSnAyQCPIBczUywimO4/dDaYjNwsbzmAzx321leYwaPbusGAXrMp/r33U2uHe
	o9RHFWImCqNm6l7+2vmA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wub3nhjds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Mar 2024 22:40:53 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42DMeqXi000669
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Mar 2024 22:40:52 GMT
Received: from [10.110.34.198] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 13 Mar
 2024 15:40:51 -0700
Message-ID: <c02952a7-20a1-be77-35a5-d6a8b760e2f0@quicinc.com>
Date: Wed, 13 Mar 2024 15:40:51 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Nikunj Kela
	<quic_nkela@quicinc.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Ulf Hansson
	<ulf.hansson@linaro.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "Manivannan
 Sadhasivam" <manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot
	<vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>
References: <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com>
 <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
 <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
 <bc1c7152-e46a-47f0-9bad-d524fb624ae8@linaro.org>
From: Trilok Soni <quic_tsoni@quicinc.com>
In-Reply-To: <bc1c7152-e46a-47f0-9bad-d524fb624ae8@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YYOMKbqCknMFW5XLmx6RWvUIR_o7HSGU
X-Proofpoint-ORIG-GUID: YYOMKbqCknMFW5XLmx6RWvUIR_o7HSGU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-13_09,2024-03-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 impostorscore=0 mlxlogscore=999 malwarescore=0
 phishscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2402120000
 definitions=main-2403130172

On 3/13/2024 4:49 AM, Srinivas Kandagatla wrote:
> 
> On 12/03/2024 17:25, Trilok Soni wrote:
>> On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
>>>
>>>> Basically, I would prefer better than "qcom, fw-managed" since this is not
>>>> a qcom specific problem.
>>>
>>>
>>> We already have something like this in mainline where the BAM DMA controller is remotely powered.
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
>>>
>>
>> As you can see it is already fragmented. Why we need to create one more approach
>> which is not scalable and specific to SOC vendor?
> 
> The whole issue around this new checks is that the driver/binding is not designed to expect same set of resources from different TYPES of providers.
> If the driver was designed to support opp's and power domains and make the resources handle in a unified way then some/all of these changes will naturally fit in.
> 
> 
>>
>> SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction
> 
> I agree this are not QC specific, am fine with generic dt-binding like firmware-managed-resources or something on those lines if DT-maintainers are happy with.
> 
> What is your suggestion?

Yes, DT-spec will be a good start.

> 
> 
>> when I see drivers modified w/ if (fw_managed) {..} but that is a discussion
> 
> I don't think we have a choice here, either we do this check at compatible level or dt-property level or resource level in every drivers.

I don't understand yet why we don't have any other choices but do the conditional checks? Maybe explaining
with the example will help? Start w/ clocks?


-- 
---Trilok Soni


