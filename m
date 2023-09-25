Return-Path: <devicetree+bounces-3116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D6D7AD5FF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:31:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id A43CD1F24981
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7A810A31;
	Mon, 25 Sep 2023 10:31:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D555E11CA1
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:31:42 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB92A9B;
	Mon, 25 Sep 2023 03:31:41 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38P8dbDH009835;
	Mon, 25 Sep 2023 10:31:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=6ahpxHAe9uPRFOWahBTPR3rP3XTiEzodzSyuBb9vMko=;
 b=gYZhrgnL7uc1UAJ3fk9UC4zZeGfm+wXj4HXcJpbVR4u9hrKs3YhS3vCnrEU//DcZ05e2
 IT37nP3Yn5iGuCdXxLn/yzPIseK89F9VQWtLiWoX2Q0VdU3C9aI1SItU26/M1Z4tTreW
 abii1yDvFXsKPiYp38nE/qnnA8bIJXF7jVxUYrnwCCPtkdLzj8WNonShuzPh34/rLIsj
 LRmwSf3YA5/L1JIcXatOqV2b6yR5KjfZjSXTzazOTw9niyx6pLJr1kzJ7Ik7VtY0nKis
 E157tuBp9aOLz6B0j1rG609nFZfD7dMFKMbe0/MFjLVZtQAZmCAtXBBl5ulQNUSa5BZO 7g== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t9safbsxx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 10:31:33 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38PAVW6R002722
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 10:31:32 GMT
Received: from [10.201.203.60] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Mon, 25 Sep
 2023 03:31:27 -0700
Message-ID: <8922b2f1-7869-409c-8974-d2560d72f454@quicinc.com>
Date: Mon, 25 Sep 2023 16:01:24 +0530
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
        <linux-pm@vger.kernel.org>, <dmitry.baryshkov@linaro.org>
References: <20230922115116.2748804-1-srichara@win-platform-upstream01.qualcomm.com>
 <20230922115116.2748804-2-srichara@win-platform-upstream01.qualcomm.com>
 <f4fa94ab-78fb-d01b-7188-c498ec3053ff@linaro.org>
 <21caae64-b8db-ed1f-2275-a7279227cf92@quicinc.com>
 <a225833f-e645-48cc-a0e9-103999064548@linaro.org>
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <a225833f-e645-48cc-a0e9-103999064548@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: NSKKkb9ysLa7uV1MxPtBLDqHjZOyOqgs
X-Proofpoint-GUID: NSKKkb9ysLa7uV1MxPtBLDqHjZOyOqgs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-25_07,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 mlxscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 phishscore=0 malwarescore=0 mlxlogscore=564 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309250077
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/25/2023 12:16 PM, Krzysztof Kozlowski wrote:
> On 25/09/2023 04:06, Sricharan Ramabadhran wrote:
>>
>>
>> On 9/23/2023 5:14 PM, Krzysztof Kozlowski wrote:
>>> On 22/09/2023 13:51, Sricharan R wrote:
>>>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>>
>>>> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.
>>>
>>> Then why do you allow two interrupts?
>>>
>>    infact there is only one interrupt. Will fix in the binding
>>    description.
> 
> Description? So you still allow two interrupts? No, this must be
> constrained in allOf:if:then.
> 

  ok, it should be fine to add this new compatible to the existing
  allof:if:then block of v1 targets ? (Because they also have same
  single interrupt (uplow) constraint)

Regards,
  Sricharan

