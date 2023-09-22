Return-Path: <devicetree+bounces-2337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A71D7AA957
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1C3EC1C20845
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D3E15AF5;
	Fri, 22 Sep 2023 06:52:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231DC4433
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:52:08 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10837100;
	Thu, 21 Sep 2023 23:52:07 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38M6F6qt017118;
	Fri, 22 Sep 2023 06:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : from : subject : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=QrFI+LL+qZNMwtBZMTKshk+weo88lynbxPxp1R/ewT8=;
 b=A+KcsVsNaNHIV9N6pkMc6P6JPsPXF46zcKzmIpN6ButECkRGXy1pzPX+nxlbqISFGZw4
 Vbhc0xNkaiKUbrxZB0+btcYLj5IxWkq710N1T63TqeQ9/iTU1e1bynDmfmCSnSqcsIyv
 lFrlq8JkCCGWLnUeNHLvvkpkm+4sFdaYn8DyAx6YKeVQcktspaSxVWCMsN6gMVVcbhue
 fBZKVp7fpU9JjtgJpq8yrl2eDkZHYKWynjXGmxxhJtZsfG32ddb+wyxA+UE3sS4P7wRV
 GRrgEvxSmVeBxheOIMg9WlQb2y6B1/VM9m6jhq0BkerOZkNyLVc4hW3PPeus2oHjWU48 mA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8u6ah5qf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 06:52:03 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38M6q2Bl025115
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 06:52:02 GMT
Received: from [10.218.28.253] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Thu, 21 Sep
 2023 23:51:58 -0700
Message-ID: <23d0ef96-ca51-4fe0-b2e6-af0e188fbb6d@quicinc.com>
Date: Fri, 22 Sep 2023 12:21:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Raghavendra Kakarla <quic_rkakarla@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: Enable RPMh Sleep stats
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <quic_mkshah@quicinc.com>, <quic_lsrao@quicinc.com>
References: <20230920052349.9907-1-quic_rkakarla@quicinc.com>
 <68fb2f4f-ba21-21b0-ddbe-aab92991ec44@linaro.org>
Content-Language: en-US
In-Reply-To: <68fb2f4f-ba21-21b0-ddbe-aab92991ec44@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: S08FMbPyEiKG-p_0sW-WmlnncyumFY46
X-Proofpoint-ORIG-GUID: S08FMbPyEiKG-p_0sW-WmlnncyumFY46
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_04,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=730 priorityscore=1501 lowpriorityscore=0 spamscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 mlxscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309220056
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Konrad,

Thank you for your review. will address your comments in next patch.


Regards,

Raghavendra K.

On 9/20/2023 3:15 PM, Konrad Dybcio wrote:
>
>
> On 9/20/23 07:23, Raghavendra Kakarla wrote:
>> Add device node for Sleep stats driver which provides various
>> low power mode stats on sa8775p SoC.
>>
>> Signed-off-by: Raghavendra Kakarla <quic_rkakarla@quicinc.com>
>> ---
> The subject must include the platform name
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi 
>> b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> index 9f4f58e831a4..23ae404da02e 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -1912,6 +1912,11 @@
>>               #clock-cells = <0>;
>>           };
>>   +        sram@c3f0000 {
>> +            compatible = "qcom,rpmh-stats";
>> +            reg = <0x0c3f0000 0x400>;
> Please test your patches before sending. This one has clearly
> hasn't been.
>
> Konrad

