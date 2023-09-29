Return-Path: <devicetree+bounces-4625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9397B34CD
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:22:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F25F7281FCD
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2AC74F14B;
	Fri, 29 Sep 2023 14:22:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926D74123C
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:22:30 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1164B1AC;
	Fri, 29 Sep 2023 07:22:27 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38T9q4fB011558;
	Fri, 29 Sep 2023 14:22:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=uel0KbMalDjHMwSQ7GdbifduKXHuQtJEkwaFOppR4OA=;
 b=bExpVf4++NQPRGlhHJa1C/CT1WlKE0vjhknyaXaM1DYF46odSnz9irIrOEDI918IflLB
 66OCrU2hp7oUMZ9kNiD55wyp9/be+fmmpHk7azs32RbRkBHHAg75EbR1+o9eANp5s+/A
 j1puJeGPskA7jhoD5/Yza0VVz23Z0wWm2MQ4O1FYv/Iul/lKEgDJ16mNTJLJoZ900wIN
 5WNVwBK4AHPD9Qn0ZdwL8kBOi4ohetdja5iL8embj0qC+9qqSk6T/OIps2Re5St34K5w
 vKH0IDDnAsRiG8zqengQokVKfX6xvsJEIxiWMyI7PxHkAqApY8dINW7XrqUTrUlqSvLx nw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3td3ggbv2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 14:22:15 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38TEME1W032607
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 14:22:15 GMT
Received: from [10.218.45.181] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Fri, 29 Sep
 2023 07:22:10 -0700
Message-ID: <162b61dc-6304-353b-e9be-9ff941ab3e9b@quicinc.com>
Date: Fri, 29 Sep 2023 19:52:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH V4 3/4] arm64: dts: qcom: sc7280: Add UFS nodes for sc7280
 IDP board
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <mani@kernel.org>, <alim.akhtar@samsung.com>,
        <bvanassche@acm.org>, <avri.altman@wdc.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <cros-qcom-dts-watchers@chromium.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20230929131936.29421-1-quic_nitirawa@quicinc.com>
 <20230929131936.29421-4-quic_nitirawa@quicinc.com>
 <ed61f6a1-a21d-cc23-b995-7692a2e8530a@linaro.org>
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ed61f6a1-a21d-cc23-b995-7692a2e8530a@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 1RUuwAXoNCMWU-LHXJ03zpttm34mrTy7
X-Proofpoint-ORIG-GUID: 1RUuwAXoNCMWU-LHXJ03zpttm34mrTy7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_11,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=470
 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2309180000 definitions=main-2309290123
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/2023 6:56 PM, Konrad Dybcio wrote:
> 
> 
> On 9/29/23 15:19, Nitin Rawat wrote:
>> Add UFS host controller and PHY nodes for sc7280 IDP board.
>>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> I did not add these tags to this patch, drop them.

My Apologies.Actually Patch 2 and Patch3 review tag got swapped.
Will update and send new patchset
> 
> Konrad

Thanks,
Nitin

