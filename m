Return-Path: <devicetree+bounces-29646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA2C823F96
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 11:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D6FB287462
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 10:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E8F20DC7;
	Thu,  4 Jan 2024 10:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="OzmUnB4r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DBA20DCD;
	Thu,  4 Jan 2024 10:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4046QW0r029609;
	Thu, 4 Jan 2024 10:41:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=F8/8VaDHGms/Lqzr39o9HKXgHc46WovuoUXE1O+NyPk=; b=Oz
	mUnB4r22RSHEuLv/QA+M/UAU7PZ3LC5ajPEGEFbK+pQLl/ht142jJzMdFVUIZSd0
	t0IZrO4PFhZBThTzXxtcfZrmUhVTW8BLmlskuOqnrqiq1joMj0ziKsSDWJ1uUfgq
	L3lUcoFRsk5AbcGkaEz0Cl7lDLWRxqfa7HWbWCVsaUnVI2MFza/vAioz6n8fq3bm
	KJMUAZJpsLUJsFoAmeWB6JekImHG6Aq/4xHd8FYuFLv+GXbGrVCzG7uUpt8lIx7A
	auW3Srpn5RbnRSFN4jRXT1nrfnYybI3Jsl1y6n75thW+VTLmGDedVOolwvwKqyN0
	liA7IBxD4DSKk6duMljA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vdqb1rn42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jan 2024 10:41:03 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 404Af2L6006811
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 Jan 2024 10:41:02 GMT
Received: from [10.239.154.73] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 4 Jan
 2024 02:40:56 -0800
Message-ID: <a8012b92-6072-406d-8aab-ecb167ea44d2@quicinc.com>
Date: Thu, 4 Jan 2024 18:40:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq6018: add #power-domain-cells for
 gcc node
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        <quic_tdas@quicinc.com>, <quic_aiquny@quicinc.com>
CC: <kernel@quicinc.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20240104-gcc-docs-update-v1-1-127e4816b798@quicinc.com>
 <CAA8EJprsGke9zZBy_x=YSxz7R1aSpx8r3ndjjXVVKhjKBxd=QQ@mail.gmail.com>
 <724f608a-cbfe-48f6-a1f7-59b961a7d724@quicinc.com>
 <56ee556d-ec31-4553-bce3-0c1e12c111ed@linaro.org>
 <685f45d9-48e8-49c6-9de0-6771777ba62e@gmail.com>
From: Fenglin Wu <quic_fenglinw@quicinc.com>
In-Reply-To: <685f45d9-48e8-49c6-9de0-6771777ba62e@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: eB8CLUkVl2nVs5OaaL68yTxwIrX8iCpK
X-Proofpoint-ORIG-GUID: eB8CLUkVl2nVs5OaaL68yTxwIrX8iCpK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1011
 malwarescore=0 phishscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2401040080



On 1/4/2024 6:32 PM, Robert Marko wrote:
> 
> On 04. 01. 2024. 11:16, Konrad Dybcio wrote:
>> On 4.01.2024 11:13, Fenglin Wu wrote:
>>>
>>> On 1/4/2024 5:53 PM, Dmitry Baryshkov wrote:
>>>> On Thu, 4 Jan 2024 at 10:06, Fenglin Wu via B4 Relay
>>>> <devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
>>>>> From: Fenglin Wu <quic_fenglinw@quicinc.com>
>>>>>
>>>>> Property '#power-domain-cells' is required as per defined in 
>>>>> qcom,gcc.yaml
>>>>> so add it for ipq6018 gcc device node to eliminate following 
>>>>> warning in
>>>>> dtbs_check:
>>>>>
>>>>> arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dtb: gcc@1800000:
>>>>>           '#power-domain-cells' is a required property
>>>>> from schema $id: 
>>>>> http://devicetree.org/schemas/clock/qcom,gcc-ipq6018.yaml#
>>>> But ipq6018 doesn't implement GDSC support. So for the sake of fixing
>>>> the warning you are adding a bogus property.
>>>>
>>> I agree. However, there are also some gcc drivers not implementing 
>>> GDSC support but the bindings are adding '#power-domain-cells' in the 
>>> DT example, such as: qcom,gcc-apq8064.yaml, qcom,gcc-ipq4019.yaml, 
>>> qcom,gcc-ipq6018.yaml, qcom,gcc-ipq8064.yaml, qcom,gcc-msm8660.yaml.
>>>
>>> Actually I thought that maybe we should do a clean up by removing 
>>> '#power-domain-cells' out of the qcom,gcc.yaml binding and only 
>>> adding it into individual qcom,gcc-xxx.yaml for the driver which has 
>>> implemented GDSC support. I checked this with Taniya offline, but she 
>>> prefers only fixing it in ipq6018.dtsi as it doesn't hurt anything by 
>>> adding the property, and she expects the GDSC support should be 
>>> existing in most of qcom,gcc drivers especially the newer Qcom chipsets.
>> Before we start changing anything, we should assess whether these
>> platforms actually have GDSCs within this clock controller block,
>> even if they are (currently) not described in the clk driver.
> Hi,
> IPQ6018 has GDSC-s, at least for the USB-s.
> I tried configuring them a while ago, but the USB2.0 GDSC seems to 
> either have a HW bug or
> it uses some special configuration as its status bits never show that 
> its ON [1].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-arm-msm/patch/20231025104457.628109-2-robimarko@gmail.com/
> 
Thanks for the link! I checked the spec internal, and I did see GDSC 
device for USB0/USB1 controller is present in GCC clock controller.
So considering there is a patch ongoing to add GDSC device for ipq6018 
gcc driver, can the DT commit which adds '#power-domain-cells' be accepted?

> Regards,
> Robert
> 
>>
>> Konrad

