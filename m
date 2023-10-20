Return-Path: <devicetree+bounces-10283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 866557D0A54
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DCF2B210A3
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9221094E;
	Fri, 20 Oct 2023 08:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Zk7UZ9cl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB5E1094A
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:13:47 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78C3C115;
	Fri, 20 Oct 2023 01:13:46 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39K53Vik013976;
	Fri, 20 Oct 2023 08:13:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=hAa5xP/zdHOwe7AgtEatMAaLbQt+GDy2dBJpf3+UuxQ=;
 b=Zk7UZ9clYBucjamfluEsZinQJCrvv2v2KTj1m1RVrZftfMXf7drsXuPaovnCQb/YX86E
 DE3KCViIQz2XLtt5cTd1H1ZD1xdhMz7tkpPfrhXpr0PI88eO9RHTL4EhxvdbduFRwZjx
 +18io9KMv35PXBkfxvbETOBoHtA3Suok11ZY4h9cao7lcwp2yBX/axu0UW1NlfbTB7by
 3Ey/l4EbjztJaVt7eQ2A8fdmH8iRqnB/F56w3NjcFI07txJtkvStwllyOBN3JwRPOSO4
 zh+gTQTiapZB1CD2HAo3ovi7d6MBsluyFu8TKmcVB70kuu7/h1VAXAX7gB+TqThdc9cp Dg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tubxgh62k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 08:13:33 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39K8DVtn029798
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 08:13:31 GMT
Received: from [10.239.133.211] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Fri, 20 Oct
 2023 01:13:27 -0700
Message-ID: <d6cba576-5b65-425a-b769-e26a2595b391@quicinc.com>
Date: Fri, 20 Oct 2023 16:13:25 +0800
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
Content-Language: en-US
From: Tao Zhang <quic_taozha@quicinc.com>
In-Reply-To: <07ef7cf2-c5dc-4248-b72b-bad913f4508d@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 7uMxeR5VRkq4q85BZUA38aaC4_sAOoWx
X-Proofpoint-ORIG-GUID: 7uMxeR5VRkq4q85BZUA38aaC4_sAOoWx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_07,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310200067


On 10/20/2023 2:55 PM, Krzysztof Kozlowski wrote:
> On 20/10/2023 04:51, Tao Zhang wrote:
>> Correct the property name of the DSB MSR number that needs to be
>> read in TPDM driver. The right property name is
>> "qcom,dsb-msrs-num".
> Missing Fixes tag.
I will add it in the next patch.
>
>> This patch depends on patch series "Add support to configure TPDM DSB
>> subunit"
>> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=788353
> This is not suitable for commit msg. Dependencies are noted under ---.
>
> And how is this depending on that patch? Your buggy code was applied
> long time ago!
Yes, no need to depend on the patch series and it has been applied. I 
will remove this comments

in the next patch.

>> Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-tpdm.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
>> index b25284e..97654aa 100644
>> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
>> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
>> @@ -892,7 +892,7 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
>>   
>>   	if (drvdata && tpdm_has_dsb_dataset(drvdata))
>>   		of_property_read_u32(drvdata->dev->of_node,
>> -			   "qcom,dsb_msr_num", &drvdata->dsb_msr_num);
>> +			   "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
> So you never tested your DTS... We can keep asking about this but still
> testing does not happen :/

Since this new property has not been applied on the exist upstream DTS, 
I tested this driver with the

local DTS. Unfortunately, the property name in the local DTS is not 
updated, this is why it is not found

in the tests.


Best,

Tao

>
> Best regards,
> Krzysztof
>

