Return-Path: <devicetree+bounces-111258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB73999DED5
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 08:56:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 845E01F245E6
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 06:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2134018A6DE;
	Tue, 15 Oct 2024 06:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="mRirC9dM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D09D172BCE;
	Tue, 15 Oct 2024 06:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728975378; cv=none; b=ttIR94b5Ckk6dVIl32I2GE3wh9b7P9Gfm1bdZVFsVq1Rn8Z1QuCaoSzzveWeSIAWg5qIxLPk8nBCHxx1G3LFRvCJUlDd6gRe9ngG/HUD5lnttE5950KvDabsgc1WN+u0Gh4OnqT7eoQ3u1szNr5fl/gvjpG1hZYsFY4GY2TAXWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728975378; c=relaxed/simple;
	bh=+nQP6eJhMiZzGVV66R/8Ed88FNxusvsppCO/EBXDr1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=EHZKxaaOuoH0zCDd3BE3GHxVUmbR5+TTFe/jgAv7iFWr3QY6os9hn/vbwsqw+zDLByCGv4T5gFF5ah1qFiR6qUfCxvDR0imMNKc8Tn4tOpDpyJY9uL1BxBLvaqrtdhqzRWuMn6keWhhPhv11NDwGT50vC1QPQfItcNl2q+9wiwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=mRirC9dM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49EN8sGp004088;
	Tue, 15 Oct 2024 06:55:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7+qha58JH9zVKNMewdUHx/Z8o3FV1Ey1Zp9hHpUhxno=; b=mRirC9dMBaAJ+bTX
	be2+KF9tpPer29aJpcs6s52muo81KJ1I9oH83LK4PYBuqX1hHtdn1VjYDI8bWgw5
	icqASDoU+0iSCQPmTN9160c6I3DrV2LaRIWHCKWOezDhZu5Cy3fiViBsIT2jJupX
	KRrTh9JMZL9BllXp98mVdRW2KLR4o3yRhFS3TwYzOQ/FI2As9yupfrSuBqhkFORv
	dipfn1k2b/MOndvy/YAxeID3WCL/XrW3shEIDa0YN2NPC69zgsT9UpxVKzSbUh3r
	EAAr4FFSldluiw3KRWf/2SksuDFIBUpXRy/pXRO14ejRFko1/O1tIaIW9BTvL5qk
	0izdeQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 427jd8xkbt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 06:55:50 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49F6tnl3021793
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 06:55:49 GMT
Received: from [10.204.67.70] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Oct
 2024 23:55:41 -0700
Message-ID: <e22b28d6-7b01-4cef-9826-b4eb86a17acc@quicinc.com>
Date: Tue, 15 Oct 2024 12:25:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <konradybcio@kernel.org>,
        <andersson@kernel.org>, <simona@ffwll.ch>, <abel.vesa@linaro.org>,
        <robdclark@gmail.com>, <quic_abhinavk@quicinc.com>, <sean@poorly.run>,
        <marijn.suijten@somainline.org>, <airlied@gmail.com>,
        <daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <quic_khsieh@quicinc.com>,
        <konrad.dybcio@linaro.org>, <quic_parellan@quicinc.com>,
        <quic_bjorande@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <quic_riteshk@quicinc.com>,
        <quic_vproddut@quicinc.com>
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
 <20241004103046.22209-6-quic_mukhopad@quicinc.com>
 <wdslr77zwyyyesf47qmem3wmextrjfh5do4ckrk6vvzeqwi5gu@x3sxgiusspqp>
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
In-Reply-To: <wdslr77zwyyyesf47qmem3wmextrjfh5do4ckrk6vvzeqwi5gu@x3sxgiusspqp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: iM0lY5ZWPwxGXr_ZKHmvMDPY1e0jCioS
X-Proofpoint-ORIG-GUID: iM0lY5ZWPwxGXr_ZKHmvMDPY1e0jCioS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 mlxscore=0 mlxlogscore=999 malwarescore=0 priorityscore=1501 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410150046


On 10/7/2024 1:21 AM, Dmitry Baryshkov wrote:
> On Fri, Oct 04, 2024 at 04:00:46PM GMT, Soutrik Mukhopadhyay wrote:
>> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
>> for each mdss, having different base offsets than the previous
>> SoCs. The support for all 4 DPTX have been added here, and
>> validation of only MDSS0 DPTX0 and DPTX1 have been conducted.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
>> ---
>> v2: No change
>>
>> v3: Fixed review comments from Konrad and Bjorn
>> 	-Added all the necessary DPTX controllers for this platform.
>>
>> v4: Updated commit message
>>
>> ---
>>   drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
>> index e1228fb093ee..2195779584dc 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>> @@ -118,6 +118,14 @@ struct msm_dp_desc {
>>   	bool wide_bus_supported;
>>   };
>>   
>> +static const struct msm_dp_desc sa8775p_dp_descs[] = {
>> +	{ .io_start = 0xaf54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>> +	{ .io_start = 0xaf5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
>> +	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
>> +	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },
> Please take a look at other device descriptions in the file, note the
> difference and fix your DP description accordingly.


Sure, we will update the device descriptions, specifically the address 
under io_start, for DP_CONTROLLER_0 and DP_CONTROLLER_1

in the next version.


>
>> +	{}
>> +};
>> +
>>   static const struct msm_dp_desc sc7180_dp_descs[] = {
>>   	{ .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>>   	{}
>> @@ -162,6 +170,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
>>   };
>>   
>>   static const struct of_device_id dp_dt_match[] = {
>> +	{ .compatible = "qcom,sa8775p-dp", .data = &sa8775p_dp_descs },
>>   	{ .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
>>   	{ .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
>>   	{ .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
>> -- 
>> 2.17.1
>>

