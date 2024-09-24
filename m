Return-Path: <devicetree+bounces-104877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC899845EF
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 14:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B0D6284258
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6501A4F39;
	Tue, 24 Sep 2024 12:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="MA/u2rPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78741E492;
	Tue, 24 Sep 2024 12:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727181099; cv=none; b=IRjnTWHCavXqsS+TzdApyLGzBf4n7FlfWVrIJJHaUaGb1ER/MATT8hEnvNzr4RYAhwzyYrnUnqvSnGbhwXtZ7m5vPvniFLWKLnFDHPskm9ozx50VVNy8wPXmsF6ek4ybkTckEhVZFxfl100c6WKAX1Vll6MPtRmuTugXn1saTdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727181099; c=relaxed/simple;
	bh=hw8Xn5no9YQQhO+J5jLnsR9xj0RT1VJYy4cPNn0hX8E=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=kwxznHGMZGJUvCsBGxl99utyZAKlgWHPtLAQVNtHr2Cg8Ejp+IiPAjo2L8fAGmbcy8/8wYb7526P4tDRz5OuxHU74bqgJxu+SdfJkuhFEp2U5JXAaOByJGW1hf+8fM+9U9DhZ8JwpYOpx5JGVbG4t8mkGXeX3j6iaKkiiB+7bjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=MA/u2rPQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48O9HtHp029683;
	Tue, 24 Sep 2024 12:31:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KDMLxLpa4DvKZTxB9Er0izaxMUHOO8cKu8XznRIeN7A=; b=MA/u2rPQiMw7LHUh
	FKcze571vcNzzwHLePoNiOxUHD/by8Pqg1tElRTgdh0zWzMyvNZubuqII7xOBUQ6
	W6tLEdoer0LQLSDNVSgicW55obAtmW5v6PB+Uk2/YW3wlfPcDzbiMCp3KVC70u/2
	RqjJEdeps/7e8pdX/eNGIzEFYoQO5vSCTYEDxeikKz/1aOj04oTksiMhQcbkBwI9
	neBpo5iPJ+zLf8MjFnGQqXk3h9PT8HmMxXZ8v+moend7voAjMvQToTnDQpVs58Vf
	szrjBsgSZcml/DKoM1eOiOGXufQl4zd0nyizZIvxuLO/NrS9KCpl5ILs+l0ZoL2c
	dWh8ug==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41spwer8hh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 12:31:17 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48OCVGYt026341
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 12:31:16 GMT
Received: from [10.204.67.11] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 05:31:08 -0700
Message-ID: <ba0bc896-41ad-4f1d-9218-fc5a44add422@quicinc.com>
Date: Tue, 24 Sep 2024 18:01:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/msm/dpu: Add SA8775P support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <robdclark@gmail.com>, <quic_abhinavk@quicinc.com>, <sean@poorly.run>,
        <marijn.suijten@somainline.org>, <airlied@gmail.com>,
        <daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <swboyd@chromium.org>,
        <konrad.dybcio@linaro.org>, <danila@jiaxyga.com>,
        <bigfoot@classfun.cn>, <neil.armstrong@linaro.org>,
        <mailingradian@gmail.com>, <quic_jesszhan@quicinc.com>,
        <andersson@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_kalyant@quicinc.com>, <quic_jmadiset@quicinc.com>,
        <quic_vpolimer@quicinc.com>
References: <20240912071437.1708969-1-quic_mahap@quicinc.com>
 <20240912071437.1708969-5-quic_mahap@quicinc.com>
 <v4cnmso3nl5oi3scd2lkg6kepb52vjrzgoti42ikds3y2wq6aw@sbn2yu4xeiun>
 <9b47bd8e-6079-4285-a3d7-932178d5bdf2@quicinc.com>
 <rmndmhq67lajdmva6gt46rqtkvf6jh2afbqazafz6oxv7ep56j@bznopz3aexyt>
From: Mahadevan P <quic_mahap@quicinc.com>
In-Reply-To: <rmndmhq67lajdmva6gt46rqtkvf6jh2afbqazafz6oxv7ep56j@bznopz3aexyt>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Fgaw1YBB5oBIDuwJY2-TfFv7nOrfD-Y_
X-Proofpoint-ORIG-GUID: Fgaw1YBB5oBIDuwJY2-TfFv7nOrfD-Y_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 mlxscore=0 mlxlogscore=992 impostorscore=0 phishscore=0
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409240088


On 9/24/2024 5:46 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 24, 2024 at 04:42:02PM GMT, Mahadevan P wrote:
>> On 9/12/2024 1:34 PM, Dmitry Baryshkov wrote:
>>> On Thu, Sep 12, 2024 at 12:44:36PM GMT, Mahadevan wrote:
>>>> Add definitions for the display hardware used on the
>>>> Qualcomm SA8775P platform.
>>>>
>>>> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
>>>> ---
>>>>    .../msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h   | 485 ++++++++++++++++++
>>>>    .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |   3 +-
>>>>    .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   3 +-
>>>>    drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   3 +-
>>>>    4 files changed, 491 insertions(+), 3 deletions(-)
>>>>    create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h
>>>>
> [...]
>
>>>> +static const struct dpu_intf_cfg sa8775p_intf[] = {
>>>> +	{
>>>> +		.name = "intf_0", .id = INTF_0,
>>>> +		.base = 0x34000, .len = 0x280,
>>>> +		.features = INTF_SC7280_MASK,
>>>> +		.type = INTF_DP,
>>>> +		.controller_id = MSM_DP_CONTROLLER_0,
>>>> +		.prog_fetch_lines_worst_case = 24,
>>>> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 24),
>>>> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 25),
>>>> +	}, {
>>>> +		.name = "intf_1", .id = INTF_1,
>>>> +		.base = 0x35000, .len = 0x300,
>>>> +		.features = INTF_SC7280_MASK,
>>>> +		.type = INTF_DSI,
>>>> +		.controller_id = MSM_DSI_CONTROLLER_0,
>>>> +		.prog_fetch_lines_worst_case = 24,
>>>> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 26),
>>>> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 27),
>>>> +		.intr_tear_rd_ptr = DPU_IRQ_IDX(MDP_INTF1_TEAR_INTR, 2),
>>>> +	}, {
>>>> +		.name = "intf_2", .id = INTF_2,
>>>> +		.base = 0x36000, .len = 0x300,
>>>> +		.features = INTF_SC7280_MASK,
>>>> +		.type = INTF_DSI,
>>>> +		.controller_id = MSM_DSI_CONTROLLER_1,
>>>> +		.prog_fetch_lines_worst_case = 24,
>>>> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 28),
>>>> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 29),
>>>> +		.intr_tear_rd_ptr = DPU_IRQ_IDX(MDP_INTF2_TEAR_INTR, 2),
>>>> +	}, {
>>>> +		.name = "intf_3", .id = INTF_3,
>>>> +		.base = 0x37000, .len = 0x280,
>>>> +		.features = INTF_SC7280_MASK,
>>>> +		.type = INTF_NONE,
>>>> +		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
>>>> +		.prog_fetch_lines_worst_case = 24,
>>>> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 30),
>>>> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 31),
>>>> +	}, {
>>>> +		.name = "intf_4", .id = INTF_4,
>>>> +		.base = 0x38000, .len = 0x280,
>>>> +		.features = INTF_SC7280_MASK,
>>>> +		.type = INTF_DP,
>>>> +		.controller_id = MSM_DP_CONTROLLER_1,
>>>> +		.prog_fetch_lines_worst_case = 24,
>>>> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 20),
>>>> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 21),
>>>> +	}, {
>>> Where is intf_5 ?
>>
>> intf_5 of base address 0x39000 is not supported on this target.
> Not supported by whom?


In sa8775p mdss architecture intf_5 is not present. So we are not adding 
in SW too.


>
>>
>>>> +		.name = "intf_6", .id = INTF_6,
>>>> +		.base = 0x3A000, .len = 0x280,
>>>> +		.features = INTF_SC7280_MASK,
>>>> +		.type = INTF_NONE,
>>>> +		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
>>>> +		.prog_fetch_lines_worst_case = 24,
>>>> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 17),
>>>> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 16),
>>>> +	}, {
> [skipped]
>
>>>> @@ -1464,6 +1464,7 @@ static const struct of_device_id dpu_dt_match[] = {
>>>>    	{ .compatible = "qcom,sm8250-dpu", .data = &dpu_sm8250_cfg, },
>>>>    	{ .compatible = "qcom,sm8350-dpu", .data = &dpu_sm8350_cfg, },
>>>>    	{ .compatible = "qcom,sm8450-dpu", .data = &dpu_sm8450_cfg, },
>>>> +	{ .compatible = "qcom,sa8775p-dpu", .data = &dpu_sa8775p_cfg, },
>>> Wrong sorting order
>>
>> Sure will move below sm8650-dpu.
> What makes you think that in a dictionary sa8775p comes after sm8650?


Will update according to alphabetical order in next patch.


>
>>
>>>>    	{ .compatible = "qcom,sm8550-dpu", .data = &dpu_sm8550_cfg, },
>>>>    	{ .compatible = "qcom,sm8650-dpu", .data = &dpu_sm8650_cfg, },
>>>>    	{ .compatible = "qcom,x1e80100-dpu", .data = &dpu_x1e80100_cfg, },
>>>> -- 
>>>> 2.34.1
>>>>

