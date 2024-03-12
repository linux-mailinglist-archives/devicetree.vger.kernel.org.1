Return-Path: <devicetree+bounces-50107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6ED879A59
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 405E31F229EA
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97520137C59;
	Tue, 12 Mar 2024 17:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="kEza4o2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075F47D409
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 17:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710263347; cv=none; b=cU/WFJ8B7sH9l5HCBgwL61Y6jMOi5mgcI91OadyeKIIxL6Y9Y7Q6oQlPDZpg/ZIr96YxRqpXPbs+HQXXEqZJ1RTYFxhDluXUdFN7UQPsrSGno9YLD4/j9PquLAgwysw4+08KI5uEj4FYfD8BORqFmyo+JsrM6EFVR9k5MF8h758=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710263347; c=relaxed/simple;
	bh=YTMiJ4fRVOfs4n5Xzsnu1pa4t9WToAaFoMHVMHXZXOs=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=F1pVKviN8vEOjQBmnTUgXCeDxjodBUcIukKIUstLOiNIQsm8t5WGxMt89LrtuB5C90wfKZQxHT/dA+eeCg+q5Ebn9yci1IpJK0guqqyglDQTg2ZMKioNFGJ6Kf5fe/uTsXwQWH6sUVO7l6NFxAYVD6UtAUnZqjKaPO/gWnpZd/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=kEza4o2A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42CDMBTU009980;
	Tue, 12 Mar 2024 17:08:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=7GIQEeGPvbFoEaQDqjHXsdKF7VxUGvfshJgESSuf73Q=; b=kE
	za4o2AV3a9/8jEE8CMYYQNfQiScWnGOBEJQAG5KYckYkZc2HaOAyd9WHo7wo35Fg
	aAOnfGlE56Qn8OnJxWKmszoLjBZOa1nzmzxpA1YJ56VWb5Y/q4s4LxcvQE/8hI10
	EYu8JFTFsHufAGNAsaD5B5D9SGUrEYip69vlIr2KYMPgkPQael8VKYNwgj9kdCHA
	I4Tcd2tHJpTnJyfHio2QSClwOnLy3GUwc8xP+ZkbplvjOSGfmKevFkdjnSAkDF41
	BhHcx9moBQEl11iX+TVP7yfJgiuBAugxG6Pz3TXPTK9isvZRsjIgv3w4UNRolnPE
	kExNjT2ckwRYdjyrKITw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wtckh1xvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Mar 2024 17:08:58 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42CH8va9010158
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Mar 2024 17:08:57 GMT
Received: from [10.216.51.194] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 12 Mar
 2024 10:08:53 -0700
Message-ID: <e531d606-f1ea-4b79-bdfe-c6dc9c4e040e@quicinc.com>
Date: Tue, 12 Mar 2024 10:08:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Trilok Soni <quic_tsoni@quicinc.com>, Sudeep Holla <sudeep.holla@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>
CC: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
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
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4-rdJPXH_7IZDI-oVsqviEqfoUWkbnIN
X-Proofpoint-GUID: 4-rdJPXH_7IZDI-oVsqviEqfoUWkbnIN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-12_10,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 suspectscore=0 spamscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403120130


On 3/12/2024 9:58 AM, Trilok Soni wrote:
> On 3/12/2024 9:52 AM, Nikunj Kela wrote:
>>> One is with old firmware interface and -scmi is with SCMI. No new top
>>> level compatible change is needed. I understand it was switch from one
>>> interface to the another and not like Qcom platforms which is moving
>>> from in-kernel solution to firmware solution. But the general rule applies
>>> here as well unless there are specific reasons for needing that exception.
>>> I am not against it or ruling that out, just curious to understand them.
>>>
>>> -- 
>>> Regards,
>>> Sudeep
>> Hi All,
>>
>> Thank you all for all your inputs on this. I discussed this with Srini and he suggested that we could use a new optional DT property like "qcom, fw-managed" to ascertain if we are running on firmware managed variant. Thus each device node in the dts can add this. I did ask him if, instead of putting it to each device node, we can use it at the board level however he thinks that it would not be easy to update yaml documentation on DT nodes with board level property. So if everyone here agrees with this approach, I would like to close this thread.
>>
>> Thank you!
> Is "fw-managed" name restricted to SCMI based approaches? Why it needs to be per
> driver device-tree node? What happens when I attach the same SOC-IP
> along w/ the RISC-V Application core and use the RPMI?
In theory, fw-managed is not restricted to SCMI based approach however 
currently, we are using it with SCMI based approach only.
>
> Should not have fw-managed defined at the devicetree spec? This is not a
> ARM specific problem since the drivers which are going to use this flag/property
> are generic shouldn't care about SCMI/RPMI.
This requires more discussion I guess, I am not opposed to it.
>
> Basically, I would prefer better than "qcom, fw-managed" since this is not
> a qcom specific problem.
Sure, we can remove qcom if you think that's a better name.

