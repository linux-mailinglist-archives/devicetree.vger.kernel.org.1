Return-Path: <devicetree+bounces-7516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FDC7C4958
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9D631C20C85
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 05:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5263D53F;
	Wed, 11 Oct 2023 05:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eJFwD9/8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C293D30E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:44:33 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C9D18E;
	Tue, 10 Oct 2023 22:44:32 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B3wFvI005760;
	Wed, 11 Oct 2023 05:44:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=JXUvqj7ucdpFgR3f/39nj4RnJXbXYFegLK8trvcC5SU=;
 b=eJFwD9/87fWqVAoZzyrqXvGh055ONaYK8UZMOd/g8cW0y2pS0r94XoF+FekZr17fP4mf
 QIKWcO+DV5Z5Jjz0bGBpfs2rlFomFEeoBaL9ZaZ/t3zwgWTy9r0mKUB234jh1vFaur0l
 LCBazOZlrssJzTbgezjtN7UB3mhqBCqP3xaIohaaUHsKeRi32oD1ReOby1TDAO4sbPDM
 2HTfOpoOWzuocwoXPmKfLEe0KylLXzsfjK1pCiD6lx/oQpqaWmfn/X/cec86179d0HMa
 oMY2j29V3Mw4lLBLB0mtU0D63QJbndqj/tsqE/3kntvDJ7Y3Vk2D2Azumgyt5V0pBFZb PQ== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tne0q0r42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 05:44:26 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39B5iJOb006218
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 05:44:19 GMT
Received: from [10.214.66.81] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 10 Oct
 2023 22:44:15 -0700
Message-ID: <82703121-ee55-57b3-6c70-bd0c861d2513@quicinc.com>
Date: Wed, 11 Oct 2023 11:14:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] dt-bindings: mfd: qcom,tcsr: Add compatible for
 sm8{2|3|5}50
Content-Language: en-US
To: <neil.armstrong@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn
 Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <1696954157-16327-1-git-send-email-quic_mojha@quicinc.com>
 <8ccbeb04-9671-4414-810e-70d4c3690e0c@linaro.org>
From: Mukesh Ojha <quic_mojha@quicinc.com>
In-Reply-To: <8ccbeb04-9671-4414-810e-70d4c3690e0c@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: vRV1S9MM0EUIOWtci8P2BWREvMstG6Eo
X-Proofpoint-ORIG-GUID: vRV1S9MM0EUIOWtci8P2BWREvMstG6Eo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_03,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 spamscore=0 mlxscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 adultscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=961 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110051
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/2023 11:23 PM, Neil Armstrong wrote:
> On 10/10/2023 18:09, Mukesh Ojha wrote:
>> Document the compatible for sm8{2|3|5}50 SoCs.
>>
>> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
>> ---
>>   Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml 
>> b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>> index 33c3d023a106..f328ddd6c566 100644
>> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>> @@ -29,7 +29,10 @@ properties:
>>             - qcom,sdx65-tcsr
>>             - qcom,sm4450-tcsr
>>             - qcom,sm8150-tcsr
>> +          - qcom,sm8250-tcsr
>> +          - qcom,sm8350-tcsr
>>             - qcom,sm8450-tcsr
>> +          - qcom,sm8550-tcsr
> 
> This is already documented in:
> Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml

Oh, will remove it from here.
Thanks.

-Mukesh
> 
>>             - qcom,tcsr-apq8064
>>             - qcom,tcsr-apq8084
>>             - qcom,tcsr-ipq5332
> 

