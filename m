Return-Path: <devicetree+bounces-146370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E485FA34B0E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E72F61779D6
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFB528A2DC;
	Thu, 13 Feb 2025 16:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="fZIDZw7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA5D28A2CF;
	Thu, 13 Feb 2025 16:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739465541; cv=none; b=cvh6HUihSpIWVbnr+cqhLZdn45U6X3iWvVe3CCl8Xkyft1ACTH+INce0Ajg9hQxRni8ABu5z89vKi6dUuYwgrOZF6q/C6cWdY1qAWrQpTJRuZgm2qLwTL3wLT2PkMuOMshx+FspEI7FPlVhzSyJnDAPtl2hYo3pzFRs//dS0J8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739465541; c=relaxed/simple;
	bh=gWJ5aOM/MdlPGrFpP4R3gPBmdTZzPcOSHbrfG3CYTiE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=OWhhBtFrE1zrNNr9AswKWuJHpYfBnpz5f7kmkFy8PKcs/jQsYu7YK8ULXhVHV3U60yX7Rbb+dbRTQIaqXp4TnGQ/GC0zrpsEy0v/kYJ0TeuY+gpyjO7urOzCN1LNw/b8JJc5recAXp81OrG4wH9mkJ10Od5Qd7dHcBny30n1pZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=fZIDZw7o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51DANLTO015721;
	Thu, 13 Feb 2025 16:52:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dUdcqYhJqobJsT8FQ3LcXtWqWQpdbEMd7YmsBHTKGvM=; b=fZIDZw7oPFr8DSQW
	oHzQj/E7o6ORlxlCsUkpSceYQsXO9L+EP3Pr61S/BNfFFqOIZwshU93dRPWyUVMG
	KtZxY0JWNObQHDWY9UZe0VPbiapL5LMiMO3cXxR5XaGpHUbkfT1XLqHz+QtDXRCx
	TZ/hV9mAuXHlHn/kR0QS9ZiB4G+sEJiPQEXMaESqw7tzx+UFKlBwRtswn0AStb+T
	CePi2IpCTKROvynltJqfyyrU9FwFOLTcs3lk4eWYJ3cVl+pbjelQqErETfnfNoKW
	V6UBRmB/Pb8YXTviN0KJ2iH8bfHNCXzc1fUr+/zmdWbJJzLg6AEpNwHRbxm3nOhl
	S3t90g==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44rgpgnqs4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Feb 2025 16:52:05 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51DGq4q6027307
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Feb 2025 16:52:04 GMT
Received: from [10.216.44.15] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 13 Feb
 2025 08:51:55 -0800
Message-ID: <0b659aed-4b4a-45d5-a388-ebea22d17bc4@quicinc.com>
Date: Thu, 13 Feb 2025 22:21:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p-ride: Enable Adreno 663
 GPU
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        "Konrad
 Dybcio" <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
References: <20241030-a663-gpu-support-v3-0-bdf1d9ce6021@quicinc.com>
 <20241030-a663-gpu-support-v3-2-bdf1d9ce6021@quicinc.com>
 <4cfd1ebc-1a95-43d4-b36a-8b183c6dfd16@quicinc.com>
 <ah6nusoouth7ziu3iscxmafm6cxuwwebxt44ixsjmesp5adwc4@e5lnbztds2xd>
 <271e7b4f-454c-426e-a3f6-dcb55389374e@quicinc.com>
 <iymxe2hmjobctdimupp656xeyhctwd4yswbp2wobaneuzgxedu@cyhjb5ibkqmj>
 <c80ef960-7dc6-42bf-89a1-79e43be2bce0@quicinc.com>
 <fixmfluomzrdnoyztkd57gjpoqzutlv3m4es5jc7fclhpbauby@7u3ddi6dz4f7>
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
Content-Language: en-US
In-Reply-To: <fixmfluomzrdnoyztkd57gjpoqzutlv3m4es5jc7fclhpbauby@7u3ddi6dz4f7>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: gcyEyahX9NiAw8RMMFKvRodp_WstbZ1t
X-Proofpoint-GUID: gcyEyahX9NiAw8RMMFKvRodp_WstbZ1t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-13_07,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 mlxscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502130121

On 2/12/2025 4:26 PM, Dmitry Baryshkov wrote:
> On Wed, Feb 12, 2025 at 12:48:01PM +0530, Akhil P Oommen wrote:
>> On 2/12/2025 5:30 AM, Dmitry Baryshkov wrote:
>>> On Tue, Feb 11, 2025 at 06:41:39PM +0530, Akhil P Oommen wrote:
>>>> On 2/9/2025 9:59 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, Nov 13, 2024 at 02:18:43AM +0530, Akhil P Oommen wrote:
>>>>>> On 10/30/2024 12:32 PM, Akhil P Oommen wrote:
>>>>>>> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>>>>>>
>>>>>>> Enable GPU for sa8775p-ride platform and provide path for zap
>>>>>>> shader.
>>>>>>>
>>>>>>> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>>>>>> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>>> ---
>>>>>>>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 8 ++++++++
>>>>>>>  1 file changed, 8 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>>>>>>> index 0c1b21def4b6..4901163df8f3 100644
>>>>>>> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>>>>>>> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>>>>>>> @@ -407,6 +407,14 @@ queue3 {
>>>>>>>  	};
>>>>>>>  };
>>>>>>>  
>>>>>>> +&gpu {
>>>>>>> +	status = "okay";
>>>>>>> +};
>>>>>>> +
>>>>>>> +&gpu_zap_shader {
>>>>>>> +	firmware-name = "qcom/sa8775p/a663_zap.mbn";
>>>>>>> +};
>>>>>>> +
>>>>>>>  &i2c11 {
>>>>>>>  	clock-frequency = <400000>;
>>>>>>>  	pinctrl-0 = <&qup_i2c11_default>;
>>>>>>>
>>>>>>
>>>>>> Bjorn,
>>>>>>
>>>>>> Please ignore this patch for now. This is probably not the right
>>>>>> platform dtsi file where gpu should be enabled. I am discussing about
>>>>>> this internally. Will send a revision or a new patch based on the
>>>>>> conclusion.
>>>>>
>>>>> Akhil, any updates on this?
>>>>>
>>>>
>>>> I am still waiting for the discussion about QCS9075 board dts files [1]
>>>> to conclude.
>>>>
>>>> [1]
>>>> https://lore.kernel.org/lkml/Z3eMxl1Af8TOAQW%2F@hu-wasimn-hyd.qualcomm.com/T/
>>>
>>> Why? We currently have several boards supported. We can enable GPU on
>>> those as your patches are pretty fine. Then we can land Wasim's patches.
>>> Not to mention that the discussion seems to be dead, last message was
>>> sent almost a month ago.
>>>
>>
>> sa8775p is an automotive-grade chipset which has a pretty different
>> non-HLOS firmware. One of the major difference is that it has a SAFETY
>> monitoring system (using SAIL IP block) which monitors different
>> parameters like GPU frequency for eg and it takes control of the entire
>> system when it detects an anomaly. That means we cannot use GPU DCVS,
>> passive thermal mitigation etc there.
>>
>> QCS9075 uses the same SoC but has different NHLOS firmwares that has
>> SAIL disabled to make it behave like our regular chipsets. I am aware of
>> only QCS9075 boards' GPU spec at the moment. I don't know the complete
>> details of the impact of SAIL/SAFE features on GPU and other specs yet,
>> so I can't disturb sa8775p-ride/qcs9100-ride boards.
> 
> Ack, thanks for the explanation. Indeed, it would be interesting to
> understand how that's working together. Do SA8775P / QCS9100 use a
> different GMU firmware?

We don't have a linux compatible GMU firmware for SA8775P yet. But it
will be a common gmu fw between all three platforms.

-Akhil.

> 
>> I can see that Wazim is still discussing about board DTS internally.
>> Hopefully he will send out another revision of his series soon.
> 
> The discussion stopped a month ago. 
> 


