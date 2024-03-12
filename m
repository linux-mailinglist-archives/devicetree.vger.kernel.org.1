Return-Path: <devicetree+bounces-50114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D756A879A93
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:25:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77D781F22942
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681AE1386C1;
	Tue, 12 Mar 2024 17:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="GrgqxhUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CF71386BC
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 17:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710264313; cv=none; b=hnhnao3AoPdTRxu3dKYHCELLW/mFGfx/b2nZmShMWt/VHtyGu3/NlYOU6+DIPLx6wytjqaT7MLvOv9TEyLRS47nZlCT1GSwTIj82bOMtrooAWIdAsy1eNALCR4Z8uRJpZKg8zHzjrTbGCBBH84uXT9dNcu7bwUTcL116URgWiOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710264313; c=relaxed/simple;
	bh=D1ycDW2GXTxqV4UTi9X7/rKnBNWWfofL7HCxVtZICaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=usMF36n4qtArd6x8TwDFEYAtR+Cm6gwPKa7dx0n+5sGQaMDHHHXzt9f5wZgcRdgXwXCh9YVkXU3KjFTOFzms2BPRxMGiNHni1bOy5EfpZYP2typ77zM3wDbLJJUlmUuA21qgqHE/yblIzoU9pBw2J0p0OIASvUSCOzB6DRSez/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=GrgqxhUy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42CHLdWK028511;
	Tue, 12 Mar 2024 17:25:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=MpBNgYN+Q9orK/jeA0rp+o/aUk7t5Z2tMwKfwRVDVg4=; b=Gr
	gqxhUyM3CQQ7Nl7SFgOCMXzoBzvFB63hybfSCW0rs+us+udZQA+R44nAvULa6Na8
	YEjdcj6suKzq873hklxjNlhe4vGfSNljQapoE2fjK1yNGrK0X1kCg/gpw2G89FtK
	m0K8y37d0yfrVa18ND2zNCElMxsB39lbzsHaBL/XBKoBrMVJJrQNIJ1Ho9uGlrOz
	5oz1imkEbUUAb9RR1SI/g/RovZq8vUdaJoBNXDJcLUkI4rIC+gLXdivZdkLQxVcr
	wQq+DH2Xk7hXERpZPvsun8PT1X0Ivssq4K2X+OgPocHfh93g3R3e49GOJfOiPYpa
	r2ABzbfK0AviHY9JwWgw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wtmpd11m3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Mar 2024 17:25:04 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42CHP4SM028534
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Mar 2024 17:25:04 GMT
Received: from [10.110.120.226] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 12 Mar
 2024 10:25:01 -0700
Message-ID: <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
Date: Tue, 12 Mar 2024 10:25:00 -0700
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
From: Trilok Soni <quic_tsoni@quicinc.com>
In-Reply-To: <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: yKQHQIlfHTolgSerDqlhA13r4HllXhqX
X-Proofpoint-ORIG-GUID: yKQHQIlfHTolgSerDqlhA13r4HllXhqX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-12_10,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=966 mlxscore=0
 spamscore=0 clxscore=1015 malwarescore=0 impostorscore=0 adultscore=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403120131

On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
> 
>> Basically, I would prefer better than "qcom, fw-managed" since this is not
>> a qcom specific problem.
> 
> 
> We already have something like this in mainline where the BAM DMA controller is remotely powered.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
> 

As you can see it is already fragmented. Why we need to create one more approach
which is not scalable and specific to SOC vendor? 

SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction
when I see drivers modified w/ if (fw_managed) {..} but that is a discussion
for some other day. 


-- 
---Trilok Soni


