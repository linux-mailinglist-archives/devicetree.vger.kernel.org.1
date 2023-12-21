Return-Path: <devicetree+bounces-27610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4E581B01C
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 09:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AA0D282945
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 08:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E723015AF5;
	Thu, 21 Dec 2023 08:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="crn3yRrw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2F815AE7;
	Thu, 21 Dec 2023 08:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BL63E9e032221;
	Thu, 21 Dec 2023 08:15:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=KL+TOBRizPISzdUdw7ZDXWtoScBjTWnCW+t23zAUOco=; b=cr
	n3yRrwoOCciWpchiKu2K9uC8w3/fj8zWHpkIgDUdko5lJSzFoK8mA6Xun9oqZZ1Z
	9bTvQjKD8+PnzAnXoF4akKnCxoNRuVx2CITH7z0nHz9PnDdiyzJaehHwyM1CMZjn
	5RQY4gnFxizmuqsuoLr+gNLXlm9gKf/bzduXcT9F63DDkPn4iAb8lai2gAwvYpxA
	CNKNIkuzwe7d9DQ3o4uIOpoqwmA7O5NUBlpin5LyEIdtAXykhhLYc+iUQlfe3+km
	w1mXH9oO4OtPiFQO0YGOzP4Bci/nXVG6KDmWadBRzso+6v4781Pvr48/kK6/8gdL
	9uxd5KL4aNMJtrbMUdZQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3v4837hte3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Dec 2023 08:15:51 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BL8FnPb003883
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Dec 2023 08:15:49 GMT
Received: from [10.239.133.49] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 21 Dec
 2023 00:15:44 -0800
Message-ID: <f2f983b7-4c57-4b1b-925d-ffb18f6350a0@quicinc.com>
Date: Thu, 21 Dec 2023 16:15:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: arm: coresight: Update the pattern of
 ete node name
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Mathieu Poirier
	<mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        "Mike Leach" <mike.leach@linaro.org>,
        James Clark <james.clark@arm.com>, Leo
 Yan <leo.yan@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Tao Zhang
	<quic_taozha@quicinc.com>, <coresight@lists.linaro.org>
References: <20231220140538.13136-1-quic_jinlmao@quicinc.com>
 <20231220140538.13136-2-quic_jinlmao@quicinc.com>
 <79f88d35-17cc-43b0-bb22-3c854f89d961@linaro.org>
 <8e5e9603-456b-4956-be03-b866feeeafb4@quicinc.com>
 <c41ff7c8-48d6-4f4f-a9df-aafe953a2e98@linaro.org>
From: Jinlong Mao <quic_jinlmao@quicinc.com>
In-Reply-To: <c41ff7c8-48d6-4f4f-a9df-aafe953a2e98@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: e8GOJJL8c1-P_bxigN6Fibx4lJdzQx9D
X-Proofpoint-ORIG-GUID: e8GOJJL8c1-P_bxigN6Fibx4lJdzQx9D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 mlxscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 spamscore=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312210059



On 12/21/2023 4:12 PM, Krzysztof Kozlowski wrote:
> On 21/12/2023 04:28, Jinlong Mao wrote:
>>>> diff --git a/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml b/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml
>>>> index f725e6940993..cbf583d34029 100644
>>>> --- a/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml
>>>> @@ -23,7 +23,7 @@ description: |
>>>>    
>>>>    properties:
>>>>      $nodename:
>>>> -    pattern: "^ete([0-9a-f]+)$"
>>>> +    pattern: "^ete-([0-9a-f]+)$"
>>>
>>> My concerns are not resolved. Why is it here in the first place?
>>
>> Hi Krzysztof,
>>
>> ETE is acronym of embedded trace extension. The number of the name is
>> the same as the number of the CPU it belongs to.
> 
> This is obvious and was not my question.

Do you mean why the pattern match of the node name is added here ?

This node should not have the node name match, right ?

Thanks
Jinlong Mao

> 
> Best regards,
> Krzysztof
> 

