Return-Path: <devicetree+bounces-16455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 497C07EEBB5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 05:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E27001F235A4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 04:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99860CA6B;
	Fri, 17 Nov 2023 04:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="D7d9F09D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D121A1;
	Thu, 16 Nov 2023 20:29:56 -0800 (PST)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AH2r1Kb022534;
	Fri, 17 Nov 2023 04:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=UMZOIO9trN3OtwWbqyrliZaioQtUGn+fkfAHSFLVDpw=;
 b=D7d9F09Du5Gk6iuwjy/PdYgQkI36DHQKXFKO6K6rpEG6BVCTJ+S5ibncM/B++i+tU8N6
 ftseZ/N4p8r+y6HaJusUIMxQEWSFYejhbc7N7YmeB70exm2kqCNGkyqXUXH5OtXD3BHh
 LpPWMHLE+k31IDKkVlVwdstkqRY0OuqYiDE6XexKIeUF59IJdqGBtP1r2z4GF3Uglpih
 ZXTjgO4pHLWXMpZ0uL9+AwokgFDY9H8F7X4TH40fNe2BCRUyTIqQ+imtp964Gyip0K2z
 ktywBNxLEtd9SOyPGkQgrZ0pfryFpEZ3+gAM7CaHA46fMlYYCGyi3M1bkCeIQU/dG2OO 1A== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3udxs3880j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 04:29:53 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AH4Tq28015854
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 04:29:52 GMT
Received: from [10.79.43.91] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Thu, 16 Nov
 2023 20:29:47 -0800
Message-ID: <d01ea2be-176c-aa0e-38d6-f721a1a29edb@quicinc.com>
Date: Fri, 17 Nov 2023 09:59:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: Add Qualcomm SC8380XP SoC
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <andersson@kernel.org>, <djakov@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <agross@kernel.org>, <conor+dt@kernel.org>, <quic_rjendra@quicinc.com>,
        <abel.vesa@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_tsoni@quicinc.com>,
        <neil.armstrong@linaro.org>
References: <20231025134049.9734-1-quic_sibis@quicinc.com>
 <20231025134049.9734-2-quic_sibis@quicinc.com>
 <67345a93-2c29-4b66-95dc-34917affd3b1@linaro.org>
From: Sibi Sankar <quic_sibis@quicinc.com>
In-Reply-To: <67345a93-2c29-4b66-95dc-34917affd3b1@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: VG2Dv0oFjuG4lKVWFbs7MvnkNCIVrd4Q
X-Proofpoint-ORIG-GUID: VG2Dv0oFjuG4lKVWFbs7MvnkNCIVrd4Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_01,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 clxscore=1011 mlxlogscore=893 mlxscore=0
 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311170031

Hey Krzysztof,


On 10/25/23 19:20, Krzysztof Kozlowski wrote:
> On 25/10/2023 15:40, Sibi Sankar wrote:
>> From: Rajendra Nayak <quic_rjendra@quicinc.com>
>>
>> The Qualcomm SC8380XP SoC has several bus fabrics that could be controlled
>> and tuned dynamically according to the bandwidth demand.
> 
> 
> ...
> 
>> +  reg:
>> +    maxItems: 1
>> +
>> +allOf:
>> +  - $ref: qcom,rpmh-common.yaml#
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sc8380xp-clk-virt
>> +              - qcom,sc8380xp-mc-virt
>> +    then:
>> +      properties:
>> +        reg: false
>> +    else:
>> +      required:
>> +        - reg
>> +
>> +required:
>> +  - compatible
> 
> By convention we put required: block before allOf: and that's what
> existing recent code has (qcom,sc8280xp-rpmh.yaml or
> qcom,sc7280-rpmh.yaml' for example). Please use recent files as a
> template for new bindings, so there will not be a need to fix the same
> things again.
> 
> With fixes like in qcom,sc7280-rpmh.yaml:

Thanks will fix ^^

-Sibi

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
>> +
>> +unevaluatedProperties: false
> Best regards,
> Krzysztof
> 

