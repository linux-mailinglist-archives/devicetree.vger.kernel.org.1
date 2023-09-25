Return-Path: <devicetree+bounces-2907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7677ACDE4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:07:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 405DA1C203D9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ACCDED6;
	Mon, 25 Sep 2023 02:07:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A4EA9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:07:02 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F07EBD;
	Sun, 24 Sep 2023 19:07:01 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38P1vjgG027512;
	Mon, 25 Sep 2023 02:06:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=qNTbe9QPoO8/21t+BidYpK4KyX9AdYBCfl0XfTl0JQA=;
 b=AYst2SWD+q1sl2JSnCHXFEMXr5+j2ZQk5L/w8PQqPyEJsw2PQb8BvjnOJcmT3HPwgWh+
 kNKcl1ATmYE1HMEWATznYVHJerrT+d+CHjic3Vq0+NHG4UBQRE91QMXH00gC8NrIJN6I
 5lhl4i5oHp7eq5KCPTGxGutCQwDy9SpN/0lICS+85obfHxRJSKlCu+DFfsnltbPYrb3G
 jGOoz2wAVleqS5bG/wfwTT2A9BoV6GahEdgOz2FQPB3PQCmZkih0JacPr1IhnKqlibLo
 LhRDjeoSMJrtbXdp7IcXiw2/YSjm70i+caXoWdfsX9u1N3Ko/qss8n785pvJy5N6lAMn 2A== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t9pywatn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 02:06:46 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38P26joO013617
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 02:06:45 GMT
Received: from [10.216.19.6] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Sun, 24 Sep
 2023 19:06:39 -0700
Message-ID: <21caae64-b8db-ed1f-2275-a7279227cf92@quicinc.com>
Date: Mon, 25 Sep 2023 07:36:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH V3 1/4] dt-bindings: thermal: qcom-tsens: Add ipq5018
 compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <thara.gopinath@gmail.com>, <rafael@kernel.org>,
        <daniel.lezcano@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <dmitry.baryshkov@linaro.org>,
        Sricharan R <quic_srichara@quicinc.com>
References: <20230922115116.2748804-1-srichara@win-platform-upstream01.qualcomm.com>
 <20230922115116.2748804-2-srichara@win-platform-upstream01.qualcomm.com>
 <f4fa94ab-78fb-d01b-7188-c498ec3053ff@linaro.org>
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <f4fa94ab-78fb-d01b-7188-c498ec3053ff@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 44b3brw9kUK5IUMPCod9XMBp1HhIuf3z
X-Proofpoint-ORIG-GUID: 44b3brw9kUK5IUMPCod9XMBp1HhIuf3z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-24_21,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 impostorscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309250010
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/23/2023 5:14 PM, Krzysztof Kozlowski wrote:
> On 22/09/2023 13:51, Sricharan R wrote:
>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>
>> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.
> 
> Then why do you allow two interrupts?
> 
  infact there is only one interrupt. Will fix in the binding
  description.

>>
>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> ---
>>   [v3] Added the tsens-ipq5018 as  new binding without rpm
>>
>>   Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
>> index 27e9e16e6455..a02829deeb24 100644
>> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
>> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
>> @@ -44,6 +44,10 @@ properties:
>>                 - qcom,qcs404-tsens
>>             - const: qcom,tsens-v1
>>   
>> +      - description: v1 of TSENS without rpm
>> +        enum:
>> +          - qcom,ipq5018-tsens
> 
> You miss now description of interrupts, like the other variants have.
> 

  ok, will add it.

Regards,
  Sricharan

