Return-Path: <devicetree+bounces-50928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FD887DB4E
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 20:30:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2575281C60
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 19:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E4B1B963;
	Sat, 16 Mar 2024 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Z+986IKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311521843
	for <devicetree@vger.kernel.org>; Sat, 16 Mar 2024 19:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710617433; cv=none; b=sEuBuMJnFQqzadvfHuu3o73ZeRgFEnds1Q5yBw9RwBZIC/iOoXDhLBND+55tYs2cgY2HUuu44/ag0ZAA99kJLOwUVL1o6Ly4a1P95mfT0XCsPlBpNUthznmb7tF9X1Pc7B10lbKJnLsmzTcXqUdKuezRGX59gnpmQ9N2OL1YVr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710617433; c=relaxed/simple;
	bh=Z/Ado4D8W5tuGgm5CS0KEQsRgjzkEvtmsRP5h6Ech2U=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=bJe4OBlY5pA1t5eYAktKMU+vm+yWfY8s1xFWSb36JJds0a0PiQXzRtsXGVwbdqerWxeBWGphrhJJgXaLJs6RqjVcmXK5RgXiSzLAxpGj2V0hD1TJ1XM5RTqL0GW19Q5tT3SfSTwbU0wsjZSa0HiQs1x53H1Zha/BZwnb3zqtF3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Z+986IKr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42GJUIBS023008;
	Sat, 16 Mar 2024 19:30:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=/3LlxFr+n5rCRJ7tAnNAyM7rghFjCBvyq78RJg6G1GA=; b=Z+
	986IKrkifz1ESGidH+DOn7IboE/QhTrrbcwk8dmL9z03/gNM0b2sTmdKt415Dmt5
	+IqClTw7Qi9nefrobjwMeFfsXJhd27OWYUn545VrxIQHduPs1bxb1dKvvdSj3B/u
	cUVIY9sb1V0UpS1GREsq+CCb9Z7wKdCz3kAqsQC5i7LlmO6hQ1ehpd/pOcj7/Fzu
	jSiiaUpUJSnb6QZZk9qC2fmYht02h5yzA3uFdmSdw4dJdUxndImkaGIlohu06/R2
	x+cmo3tzZTydSxY6enlwJD5ssdAoyvYLvZ8x/PgQVHBriyUyFuYc0iYMdFFPEaTA
	Ug5f7epTg3yk6ZU5LIDQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ww3150wy6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Mar 2024 19:30:18 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42GJUGbR017580
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Mar 2024 19:30:16 GMT
Received: from [10.110.96.96] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Sat, 16 Mar
 2024 12:30:15 -0700
Message-ID: <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
Date: Sat, 16 Mar 2024 15:30:13 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>, Nikunj Kela <quic_nkela@quicinc.com>
CC: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Ulf Hansson
	<ulf.hansson@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>
References: <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus> <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus> <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus>
Content-Language: en-US
From: Trilok Soni <quic_tsoni@quicinc.com>
In-Reply-To: <ZfMZ9ATxuvONcGpz@bogus>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: zHH1S8ndh03Tnf5XxcuXSpOo8XnWjrkx
X-Proofpoint-ORIG-GUID: zHH1S8ndh03Tnf5XxcuXSpOo8XnWjrkx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-16_17,2024-03-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 spamscore=0 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0
 mlxlogscore=762 clxscore=1015 lowpriorityscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403140001 definitions=main-2403160154

On 3/14/2024 11:38 AM, Sudeep Holla wrote:
> On Thu, Mar 14, 2024 at 05:35:23AM -0700, Nikunj Kela wrote:
>>
>> On 3/14/2024 3:55 AM, Sudeep Holla wrote:
>>>>
>>> Nope, the point was will the presence of (available) scmi/rpmi device
>>> node suffice if we are thinking of single board level property or
>>> compatible. I was not mixing the discussion of whether adding such
>>> a property to each needed device node in this discussion to keep it
>>> simple. I have already expressed my opinion on that.
>>>
>>> I am sure qcom will go and do what they want which may work fine for
>>> qcom specific drivers but it will not work for a generic IP driver
>>> used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
>>> specific IPs or they do have some generic non-Qcom IPs. Lets us take
>>> SMMU as example. If the SCMI/RPMI controls the power to it, would you
>>> go and add this new compatible in the generic SMMU bindings and add
>>> support in the driver for that ? That is big NO as the driver would
>>> just need to use std framework interface(doesn't matter Runtime PM/Clock/
>>> Reset/genpd/PM OPP). That means they don't need any specific bindings
>>> to inform SMMU driver that the power is f/w managed.
>>
>> For SMMU, we dont need to make any changes in the existing driver. Simple
>> power-domain over SCMI will suffice since we don't need to do clock scaling
>> etc. for SMMU. We will use this new property in Qualcomm emac, UFS, USB,
>> QUPs(i2c,spi,uart) drivers.
> 
> Sure, as I mentioned in the beginning itself, it is all in the Qcom
> specific drivers, well you can hack it in any ugly way you want to get
> things working even in the upstream.
> 
> But just stop and think for a moment how would you solve this problem
> if you had few Synopsys Designware IPs instead of all those Qcom specific
> IPs. Will your suggested solution work or if it works will that even scale ?
> 
> As I said I will shut up and you can do whatever in your drivers, but I
> just don't want this to set bad example for other vendors who may not have
> all their own IPs and may use some generic ones which means they will now
> follow your solution and go and change those drivers now.
> 
> The main point I am trying to make is the provide blocks/nodes should
> have the information that it is firmware managed. The consumer nodes
> have no business to know that information.
> 
> I will leave it to you now as I can't stop what you define as Qcom specific
> and what changes you can make in those Qcom specific drivers.

I agree with what Sudeep has brought up for the SMMU and USB is another example
where we can have 3rd party phy / Synopsys IPs on the QC devices.

From the QCOM side my concern is that I don't want to have QC specific hacks,
because today's on-SOC IP can be tomorrow's discrete IP attached over
PCIe or USB. Think of NPU or Video IP attached to third party
Application processor (though it may not exist today but we never know).


-- 
---Trilok Soni


