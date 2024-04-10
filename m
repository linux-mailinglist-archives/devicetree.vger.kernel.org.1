Return-Path: <devicetree+bounces-57991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A1389FD77
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 18:53:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3ACAC286906
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 16:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E286817B4F2;
	Wed, 10 Apr 2024 16:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ETRaqBZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FB637168
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 16:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712768024; cv=none; b=HZYuo6rMcIVkOj4GVeDbWZehl/431IL3ngy9jEWc4trq/hyM1TluGpl9EpZLxAFK3OZ4pYk9Zuo/Y3KLPoZJHTogEujTC3uPi7qO4AcWK8fB+q5gvIS4/QvF3NnL1sCu4gpd6claVxI6+/mPnopK9u/WIEZVlwAJotGqRP1V8R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712768024; c=relaxed/simple;
	bh=5bOurnSRMqsyIxKq9/YsTzUipiI/V7FtCSD+5pn1WjE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=J2PercxX8cmW+uFA/VyppVHDX96p2Zd8viGa2GkXYNFj0QJsQHVx3No4RbRT03ACZ8CF9WDYlxgda8zi4fUU5fR9v9b+zvOCp6ZhXJlDKLq5VkUK76FoJTnVbPS0BCjlE7qpsozUxrgdSG2INuXo6CxF/9WCo0r20QXZbJXHvoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=ETRaqBZv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43AGCO0k026602;
	Wed, 10 Apr 2024 16:53:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=87W4GcgzgrWrR01PFdb1dSmHSQ4oxX7r91iBqx19EKY=; b=ET
	RaqBZvMaRGaZ/OqnihfwICH09VR6GVc22nv3hW43X1ZIA3BKN8amxyaKFguB45Is
	3wzUCU1gdEKQbaEuY3Q6+A/WwylSrhIB3K5AewZwyWFwtsuOYz5LU+NoyXxUO9bi
	zYdHFE8wUBxi4/tZuIfCnPDd8opq2rYWcw/J0aTGcOa0a1zMoC4UJTVJfwLeMyT9
	njhA7qQTzuwJyFoAzHd88OLDc+QUvc3qQr24nF8YG/txe/hAGlm46RT7dFruL+0d
	iaIy2S20c+t4nV17s7Sxb6uyXm44bDK1nQysU9L9pVtSG8/wG+XkHdQMbcyXifQv
	nJPf2hx8nWi9TrtwxnmQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xdquht5ky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Apr 2024 16:53:37 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43AGraEA001509
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Apr 2024 16:53:36 GMT
Received: from [10.71.80.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 10 Apr
 2024 09:53:36 -0700
Message-ID: <ad457e65-aee4-44ce-bf41-2568c335d910@quicinc.com>
Date: Wed, 10 Apr 2024 09:53:36 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Trilok Soni <quic_tsoni@quicinc.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        "Ulf
 Hansson" <ulf.hansson@linaro.org>
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
 <c02952a7-20a1-be77-35a5-d6a8b760e2f0@quicinc.com>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <c02952a7-20a1-be77-35a5-d6a8b760e2f0@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4XofdlKlbfe3MFHyg9IRRa-kHN4TJVs_
X-Proofpoint-GUID: 4XofdlKlbfe3MFHyg9IRRa-kHN4TJVs_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_04,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 adultscore=0 clxscore=1011 mlxscore=0 malwarescore=0 mlxlogscore=999
 phishscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404100123


On 3/13/2024 3:40 PM, Trilok Soni wrote:
> On 3/13/2024 4:49 AM, Srinivas Kandagatla wrote:
>> On 12/03/2024 17:25, Trilok Soni wrote:
>>> On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
>>>>> Basically, I would prefer better than "qcom, fw-managed" since this is not
>>>>> a qcom specific problem.
>>>>
>>>> We already have something like this in mainline where the BAM DMA controller is remotely powered.
>>>>
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
>>>>
>>> As you can see it is already fragmented. Why we need to create one more approach
>>> which is not scalable and specific to SOC vendor?
>> The whole issue around this new checks is that the driver/binding is not designed to expect same set of resources from different TYPES of providers.
>> If the driver was designed to support opp's and power domains and make the resources handle in a unified way then some/all of these changes will naturally fit in.
>>
>>
>>> SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction
>> I agree this are not QC specific, am fine with generic dt-binding like firmware-managed-resources or something on those lines if DT-maintainers are happy with.
>>
>> What is your suggestion?
> Yes, DT-spec will be a good start.
>
>>
>>> when I see drivers modified w/ if (fw_managed) {..} but that is a discussion
>> I don't think we have a choice here, either we do this check at compatible level or dt-property level or resource level in every drivers.
> I don't understand yet why we don't have any other choices but do the conditional checks? Maybe explaining
> with the example will help? Start w/ clocks?

We are not using SCMI in traditional way in that, we are not dealing 
with individual resources(clocks, regulators, phy, gpio, interconnect 
etc.). We are defining logical/modelled domains(power and performance). 
We need to think in terms of device states. For example, emac device 
might have two states like this:

Clock C1 running at frequency F1 + Regulators R running at voltage V1 + 
Interconnect I running at B1 bandwidth --> Lets call it a level-1 (for 
the performance domain)

Clock C1 running at frquuency F2 + Regulators R running at voltage V1 + 
Interconnect I running at B1 bandwidth --> Lets call it a level-2

Now if the emac driver needs to set the device performance state to 
Level-1, it will call the OPP APIs to set the device performance state 
to Level-1.

Similarly, emac may also define power domains like this:

Power_on --> enable ‘n’ clocks + enable ‘m’ regulators + set ICB 
bandwidth to default ‘b’ + setting some GPIO pin + Enabling n` phy 
clocks + enabling m` phy regulators + follow phy_init sequence and 
caliberation

Power_off --> does just the opposite.

So now you can see dealing with individual clocks etc. would not be 
always possible in our scenario. Therefore, we need to use ‘qcom, 
firmware-managed-resources’ property to figure out if we are abstracting 
resources or not.
>

