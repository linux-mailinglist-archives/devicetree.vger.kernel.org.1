Return-Path: <devicetree+bounces-50198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7771987A506
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 10:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72EBFB21362
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 09:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03DB20309;
	Wed, 13 Mar 2024 09:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="LPtJGufS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6166A224C7
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710322292; cv=none; b=CpGkN9ezscx04xfbWgzGqCNkaE46uL70jh+gBEcgoGS9KiLNZpO+wvX5xdRIgRrg3P2WbUayP7eszLsKOUYlFSdH6bmf83Mmj6IFarLgjWwxkFGjo2umDG785QRp1GWCHBaNEMXCNbBplOgiI6KhSnnK1pcv5VAjPnI/cJOaICM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710322292; c=relaxed/simple;
	bh=mDMb14t9XVbOW7NkL0VbREYZ2duW2O7QPAm7fUJbm04=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=e2J6ao/KtgkuxLMTyt7eaykw94YGcpwrM+AXq6Hp48mz73p8VnQ1R69hCFDd64hUDdsa5QwAKy2zL0Fes+Y8TTa3rzp2bKFLy/WPUsnV5KU4rCOMQ8tQNVr622rmb3h3h+sSsYmks578iWYRIqGshwfeVNcj8uBpWmAMFF+G1SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=LPtJGufS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42D2wLnF029540;
	Wed, 13 Mar 2024 09:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=bBz4pwvDGjx/XDRgFeGGbVpralabP38T7RemDdC4ebo=; b=LP
	tJGufSEj1Q82qZxS/b8eg3568fQIIIFk9vNgAHutsoykjSUNSC9NlmZpsXAs6N5Y
	MWecXfsRmggypY6s1ozzkw5l+GJperwcfjjUlfObJBXs5xwkCk46JcgZWj6KJzyZ
	UbnMP5zEVzO3SORRZa9UldmOPaIZMp8sxEAaCjHatZIpWuErWKX7A/BqOc2zcOMP
	36bPE5JjqVGeN7A7h2KYW+9DGAJAoxiuzH65DKck2Qlycjfbc5hnVyA0afrFFZFF
	dE4SzRXd4gwdk5bNPBozX3wn2ut4wfnn7CBC+IW70xzO/xoKqBZgtxSGWH3avGcD
	SCIKIYaRTv4KmCn5rthQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wu3jn0px8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Mar 2024 09:31:24 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42D9VNi7023194
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Mar 2024 09:31:23 GMT
Received: from [10.216.51.194] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 13 Mar
 2024 02:31:18 -0700
Message-ID: <f287f44a-2c57-4ad5-b5d7-77a189897ebc@quicinc.com>
Date: Wed, 13 Mar 2024 02:31:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Ulf Hansson <ulf.hansson@linaro.org>,
        Trilok Soni
	<quic_tsoni@quicinc.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>
CC: Sudeep Holla <sudeep.holla@arm.com>,
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
 <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
 <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
 <CAPDyKFpNo1g9j-JojzN3sbq==mnaKsamrd9EyskDUDZS=AB3mg@mail.gmail.com>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <CAPDyKFpNo1g9j-JojzN3sbq==mnaKsamrd9EyskDUDZS=AB3mg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: MBSYrX-5MF-FiVeMYlqIENeZgKBT6ijv
X-Proofpoint-GUID: MBSYrX-5MF-FiVeMYlqIENeZgKBT6ijv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-13_07,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403130069


On 3/13/2024 2:19 AM, Ulf Hansson wrote:
> On Tue, 12 Mar 2024 at 18:25, Trilok Soni <quic_tsoni@quicinc.com> wrote:
>> On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
>>>> Basically, I would prefer better than "qcom, fw-managed" since this is not
>>>> a qcom specific problem.
>>>
>>> We already have something like this in mainline where the BAM DMA controller is remotely powered.
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
>>>
>> As you can see it is already fragmented. Why we need to create one more approach
>> which is not scalable and specific to SOC vendor?
>>
>> SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction
>> when I see drivers modified w/ if (fw_managed) {..} but that is a discussion
>> for some other day.
>>
>>
> For the record, I fully agree with Trilok here.
>
> More importantly, why is the other suggested approach(es) a problem? I
> don't get it.

Hi Ulf,

Srini mentioned that the option of "every driver checking for board 
level compatible/board-id" was once tried before and was rejected in 
upstream. So I didn't want to embark upon something that was already 
rejected once. Srini can provide pointers on that.

>
> Kind regards
> Uffe

