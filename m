Return-Path: <devicetree+bounces-50476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF4D87BCE6
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 13:35:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51F811C20308
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C278A51C49;
	Thu, 14 Mar 2024 12:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="TySt/F4c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C32B4176C
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 12:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710419743; cv=none; b=RmTrToLrwcD6+AX5uMre2cOIvpObHXXLtU9ffoz5Q5U4y7WacJdkodYpWQaAOmhrtwNeGBaKW1ryon7LtqALm6L8+58RDCjxPYpXsyHPDF3l42yWufLFclZK0CDcQdwOg5GRD130+lVcfE9WCXm79J/VjteNzyzyFuxz/UCzisw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710419743; c=relaxed/simple;
	bh=9mX7IfBWj0BS0Msj4iqCE+r5WS4pj/ftO94zHw383Nc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=sAZaelJD+6PEqcblwLl1M8yMXGopdh74CtNzOQbRJZu43wvQ8MemxmWFKZhsMzrRlaMk/o6DTKpEtXAC9HnK0kWG3yP/ztnsR4MKG27N0B5gISccSdTiIgb/T5xfZIsfZJmGcRvNSovphfxyYfxqR4AODLKN2T8St2iBKVyK1zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=TySt/F4c; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42ECC865005258;
	Thu, 14 Mar 2024 12:35:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=j05YZba3YAOhm0MwWEPHPb6kdN/RK8HTcQolxHUVHMY=; b=Ty
	St/F4cmoNR2Z8mHMB+uafhrqDptJIMF5dm5w3MZ+D8F4g2BdoWddAJgcCQAFnanG
	Cs5wfbA9pZAV9g4GitoW6O8s14b9wnJsxCZVW1wbhIdyNGWys9ARXgWt/akbfUH9
	BsX57Sk7TZTXlaegcF3rPpPf5PE5Ddo++W7XH4Zv0MfTOg5ltduB307kp0kpbxhB
	MwbRTIZe0to4Z21MnFTWuNft5SJY9l9iAp1PdiHo2+fXl7RwyQP6cl9yB1p71NAl
	rm8C2OBrfTG9TwpupBNcQ+59SRnKngb9+I2JwXXhm64LwMkkIIvOjxcSs4Mj/cUA
	KegpxoJ8bSqUk9gi1vnQ==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wuujsruff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Mar 2024 12:35:35 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42ECZYCN021644
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Mar 2024 12:35:34 GMT
Received: from [10.216.28.71] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 14 Mar
 2024 05:35:29 -0700
Message-ID: <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
Date: Thu, 14 Mar 2024 05:35:23 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>
CC: Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        "Trilok Soni (QUIC)" <quic_tsoni@quicinc.com>
References: <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus> <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZfLXsCaeycRlQg3I@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: mGgFQR4awBNxUU-JQcDrRptXa3hGG-Rq
X-Proofpoint-GUID: mGgFQR4awBNxUU-JQcDrRptXa3hGG-Rq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-14_11,2024-03-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 mlxlogscore=965 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403140091


On 3/14/2024 3:55 AM, Sudeep Holla wrote:
> On Wed, Mar 13, 2024 at 01:04:15PM +0000, Srinivas Kandagatla wrote:
>>
>> On 13/03/2024 11:04, Sudeep Holla wrote:
>>> On Tue, Mar 12, 2024 at 09:52:56AM -0700, Nikunj Kela wrote:
>>>> +Trilok
>>>>
>>>> On 3/4/2024 3:01 AM, Sudeep Holla wrote:
>>>>> arch/arm64/boot/dts/arm/juno-scmi.dts
>>>>>
>>>>> One is with old firmware interface and -scmi is with SCMI. No new top
>>>>> level compatible change is needed. I understand it was switch from one
>>>>> interface to the another and not like Qcom platforms which is moving
>>>>> from in-kernel solution to firmware solution. But the general rule applies
>>>>> here as well unless there are specific reasons for needing that exception.
>>>>> I am not against it or ruling that out, just curious to understand them.
>>>> Thank you all for all your inputs on this. I discussed this with Srini and
>>>> he suggested that we could use a new optional DT property like "qcom,
>>>> fw-managed" to ascertain if we are running on firmware managed variant. Thus
>>>> each device node in the dts can add this. I did ask him if, instead of
>>>> putting it to each device node, we can use it at the board level however he
>>>> thinks that it would not be easy to update yaml documentation on DT nodes
>>>> with board level property. So if everyone here agrees with this approach, I
>>>> would like to close this thread.
>>> The counter argument from me for that is simple. If you are OK to manage with
>>> one board level compatible/property(doesn't matter for this discussion), then
>>> why can't that be the compatible of the firmware itself(SCMI and RPMI both
>>> must have their own compatible already). The main point is why do you need
>>> any extra information when they are already present. My comment is just for
>>> this one board level compatible/property.
>> Board specific compatible might not scale, as this will bring in changes to
>> every driver and bindings with new board addition.
>>
>> BoardLevel property, how are we going to reflect this each device DT
>> bindings?
>>
>> Is this new property going to be part of scmi/rpmi firmware node?
>>
> Nope, the point was will the presence of (available) scmi/rpmi device
> node suffice if we are thinking of single board level property or
> compatible. I was not mixing the discussion of whether adding such
> a property to each needed device node in this discussion to keep it
> simple. I have already expressed my opinion on that.
>
> I am sure qcom will go and do what they want which may work fine for
> qcom specific drivers but it will not work for a generic IP driver
> used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
> specific IPs or they do have some generic non-Qcom IPs. Lets us take
> SMMU as example. If the SCMI/RPMI controls the power to it, would you
> go and add this new compatible in the generic SMMU bindings and add
> support in the driver for that ? That is big NO as the driver would
> just need to use std framework interface(doesn't matter Runtime PM/Clock/
> Reset/genpd/PM OPP). That means they don't need any specific bindings
> to inform SMMU driver that the power is f/w managed.
For SMMU, we dont need to make any changes in the existing driver. 
Simple power-domain over SCMI will suffice since we don't need to do 
clock scaling etc. for SMMU. We will use this new property in Qualcomm 
emac, UFS, USB, QUPs(i2c,spi,uart) drivers.
>
> Hope I have conveyed my point better with example this time.
>
> --
> Regards,
> Sudeep

