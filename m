Return-Path: <devicetree+bounces-10714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3EA7D28F6
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 05:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C3B21C2074D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C6015D2;
	Mon, 23 Oct 2023 03:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="JckPCHre"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD71F15C9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:17:45 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBD1BD67;
	Sun, 22 Oct 2023 20:17:43 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39N1OgMv014626;
	Mon, 23 Oct 2023 03:17:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ui8PfI4as8d/g70koofScTcWpt8bVff/TzAUGYePUnw=;
 b=JckPCHredHPCfHGp3qCzRHrRCzBPBpnVstdcR3Pxg+/VVS8dKqv2ZrWCq6uumgH97bcy
 NesUPlSNViIFANLlMoPFgUlxAlq/3mRwNV4M+VrXWOSfKsDxG9gFSiw7DOx1Dc0BCynH
 loL6+wQN2ZH6kvNOFNKP9tXu1UmXyhp/ROIj4L3YfX5eEIbRhQA5LS9IYD15P1oar1G3
 jOAyU++a+SE36ydhcRrUZUskZQAQ2NN9SyGqYl/WTKvF/+DhkcFWxaWKx8ViuimqWB7H
 R6vm8eQCmk30GXwCHBljlwvmZ5KJK+Bbd35d6jN7bA7CehD/THE1KE+rFh/q2v0UXDJy 8w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tv7xfuajg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 03:17:29 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39N3HTY1028838
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 03:17:29 GMT
Received: from [10.239.133.211] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Sun, 22 Oct
 2023 20:17:24 -0700
Message-ID: <81d4dd90-81e6-4048-901f-b3d5c7d35dcc@quicinc.com>
Date: Mon, 23 Oct 2023 11:17:21 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] coresight-tpdm: Correct the property name of MSR number
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Mathieu Poirier
	<mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Konrad Dybcio
	<konradybcio@gmail.com>,
        Mike Leach <mike.leach@linaro.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Jinlong Mao <quic_jinlmao@quicinc.com>, Leo Yan <leo.yan@linaro.org>,
        "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        <coresight@lists.linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Tingwei Zhang
	<quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Hao Zhang <quic_hazha@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <andersson@kernel.org>
References: <1697770311-15392-1-git-send-email-quic_taozha@quicinc.com>
 <07ef7cf2-c5dc-4248-b72b-bad913f4508d@linaro.org>
 <d6cba576-5b65-425a-b769-e26a2595b391@quicinc.com>
 <2bc15792-78f7-4498-b397-d8cf6053d864@linaro.org>
Content-Language: en-US
From: Tao Zhang <quic_taozha@quicinc.com>
In-Reply-To: <2bc15792-78f7-4498-b397-d8cf6053d864@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: uRCvsxINPKtPPInfyQ2MhXl1eMDit0kF
X-Proofpoint-GUID: uRCvsxINPKtPPInfyQ2MhXl1eMDit0kF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-22_23,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310230026


On 10/20/2023 4:59 PM, Krzysztof Kozlowski wrote:
> On 20/10/2023 10:13, Tao Zhang wrote:
>>>> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
>>>> index b25284e..97654aa 100644
>>>> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
>>>> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
>>>> @@ -892,7 +892,7 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
>>>>    
>>>>    	if (drvdata && tpdm_has_dsb_dataset(drvdata))
>>>>    		of_property_read_u32(drvdata->dev->of_node,
>>>> -			   "qcom,dsb_msr_num", &drvdata->dsb_msr_num);
>>>> +			   "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
>>> So you never tested your DTS... We can keep asking about this but still
>>> testing does not happen :/
>> Since this new property has not been applied on the exist upstream DTS,
>> I tested this driver with the
>>
>> local DTS. Unfortunately, the property name in the local DTS is not
>> updated, this is why it is not found
> But your local DTS would not pass dtbs_check tests, so that's why I am
> saying - you never tested it on mainline kernel.

Thanks, we will add this test in the future to ensure that DTS, doc and 
driver are consistent.


Best,

Tao

>
> Best regards,
> Krzysztof
>

