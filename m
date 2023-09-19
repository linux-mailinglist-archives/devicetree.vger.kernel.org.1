Return-Path: <devicetree+bounces-1439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E05AF7A63A6
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E27F41C20AF9
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3094D37C9B;
	Tue, 19 Sep 2023 12:48:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CB5180
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:48:36 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68492FB;
	Tue, 19 Sep 2023 05:48:34 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38JBvO0k015567;
	Tue, 19 Sep 2023 12:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=cCBIhOvHbguyufU7F6I6MOWIY40uCdrpgt/ywg0x7S8=;
 b=N6Uq9akmizpoyta+fd6rpPuvlk1vGd0nNFdqgHNv+O2tstcVVpfwZYJd1vDgutF+RsOo
 QCLaeWWR2jfmMBgKfV1dRXmXf8wSjzmS/FXF0tZzykSPf3skb1L3IIMBiMEqt4nuediX
 eyMkn7WbDu8P6drATSqb82DULZVFa6CPEXvw7yEZDmfiKT8ht13e0IPilLFNEgTSXBiG
 8f9Uz01QtKfugrtxjK8hoYgwIko2Gvh2FnocG9xitARMr/qqX47MGumNEk6n3+bf1W1W
 BIbx7dbxVYu5+43wYT3aNyfb8VcBS52fnvgvgXrk5MDAajiTrW6UaRoAbBX26247AXvj Yw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t72pf8yw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 12:48:30 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38JCmSH0014125
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 12:48:28 GMT
Received: from [10.201.203.60] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Tue, 19 Sep
 2023 05:48:24 -0700
Message-ID: <affb1f63-c1ed-f0cc-ea79-887ae61b9b90@quicinc.com>
Date: Tue, 19 Sep 2023 18:18:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH V2 1/4] dt-bindings: thermal: qcom-tsens: Add ipq5018
 compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <thara.gopinath@gmail.com>, <rafael@kernel.org>,
        <daniel.lezcano@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <dmitry.baryshkov@linaro.org>
References: <20230915121504.806672-1-quic_srichara@quicinc.com>
 <20230915121504.806672-2-quic_srichara@quicinc.com>
 <03b0cafa-49c7-8838-b116-927c9649cbd3@linaro.org>
 <f5aee51d-0345-1294-a85b-ea96ed937685@linaro.org>
 <1f09339e-b3b5-874c-4874-199e8c7ae890@quicinc.com>
 <ee19e076-8f9c-c5b2-3e25-2832dbdab25b@linaro.org>
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <ee19e076-8f9c-c5b2-3e25-2832dbdab25b@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Kk__yoQJDu6oiW2B9S5ilhoUNdPbw37Y
X-Proofpoint-ORIG-GUID: Kk__yoQJDu6oiW2B9S5ilhoUNdPbw37Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_06,2023-09-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 mlxlogscore=565
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309190109
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/19/2023 6:02 PM, Krzysztof Kozlowski wrote:
> On 19/09/2023 09:22, Sricharan Ramabadhran wrote:
>>
>>
>> On 9/15/2023 6:15 PM, Krzysztof Kozlowski wrote:
>>> On 15/09/2023 14:43, Krzysztof Kozlowski wrote:
>>>> On 15/09/2023 14:15, Sricharan Ramabadhran wrote:
>>>>> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.
>>>>>
>>>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>>> ---
>>>>>    [v2] Sorted the compatible and removed example
>>>>>
>>>>
>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> No, unreviewed. Your driver says it is not compatible with
>>> qcom,tsens-v1. This does not look right :/
>>>
>>
>>    Yes it is V1 IP, but since there is no RPM, to enable the IP/SENSORS
>>    have to do those steps after calling init_common. Similar reason
>>    added a new feat as well in patch #2 as well. Hence for this,
>>    new compatible was required.
> 
> I dud not write about new or old compatible ("compatible" as noun). I
> wrote that it is not compatible ("compatible" as adjective) with v1.
> 

  Ho, in that case, yes it is not compatible with V1 init and features
  because of 'no rpm'. So in that case, should this be documented
  as a separate version of 'V1 without rpm' ?

Regards,
  Sricharan

