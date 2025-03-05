Return-Path: <devicetree+bounces-154348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43011A4FB9F
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 11:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F25F7188D6F0
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 10:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E3F72066FA;
	Wed,  5 Mar 2025 10:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="evv4pIbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806291EEA5D;
	Wed,  5 Mar 2025 10:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741169847; cv=none; b=TO4QKoscuuSgnoidZ5RHI5IHOlvDeOORtoJ0xjW1u7T4Y4mx+Rhzf6eC3NYZyTY6fABuzRf08cmBuIksvzUdSXOukcL4tYqcBqJV0fBzyoDp1sbjL3y+vrIk7IqjUqMxLQmA3TTu4ginHkNtu/6QuGqeIjOflgqwXCwMv3DYvr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741169847; c=relaxed/simple;
	bh=Vsew3rmlnvPEW39spq8AldmtDKIKNlHmiuSQiIwHSQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=GqgFCCpECUYNOD0n2drFPAZuMdCtMuGrY+VI0cje2YAteLWg6ggVgkezOtXJUlTF1LakpI/yzCKowQqOaRDRtahMqEwoo3JiWwFuC3Y6jHlhNsAjSRy/03ivhvRTxdCZK9E6RlSH9ySenkdrsisI9zUuEhQg7hohikp8+sYzBuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=evv4pIbc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524NA1Bw031245;
	Wed, 5 Mar 2025 10:16:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lQZjIkh0Rb6Q4LITU2aPSTBOhbpnSxFczFX8aIYNweY=; b=evv4pIbcH+S5KRO9
	ef/dWzmnbSRlq8GY/Up/2910Ew1KAmhh1InVoa4W+hLg3U4SFBfQC8D++FhjU0LC
	CNMvrZlvJlVA09u/16dD0A4c4xa22KbqF3l1LkVOUHmOgl2/nXMalr56DEXaWBLK
	0mgR9Bsh8Q2U9rV88fXrfms1fjeFQz0fl7OkiVr70IRAgP7xE/u5VNjQOf/J7Ku2
	hiDA/c40B5gCcqQy7OPJU8BS1UeF8cVCDN0mTqnP1gdHtgK9cUGN7WrtzhM5LfCD
	9PikQi7FC3mWnQWITL8yhWyY97bm9k5Odso2nYnPdWeeHhemRSM/PrQfZ1ufdIt9
	kibRsA==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6t4yrd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Mar 2025 10:16:55 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 525AGt2G005786
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Mar 2025 10:16:55 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 5 Mar 2025
 02:16:47 -0800
Message-ID: <9fb34496-d823-414a-b7dc-54b4677829e5@quicinc.com>
Date: Wed, 5 Mar 2025 18:16:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-gpio@vger.kernel.org>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
 <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
 <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
 <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
 <e647d143-dc6e-483d-ac81-2733fb526fc3@quicinc.com>
 <h6tmbuv26tdv633udphttsydpbvnwownulvglcxktdaxqdhtvw@ereftfs5hiso>
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <h6tmbuv26tdv633udphttsydpbvnwownulvglcxktdaxqdhtvw@ereftfs5hiso>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aKatwj6BJQyRYbP4xVAYI6QwH_7jJYG2
X-Authority-Analysis: v=2.4 cv=KfMosRYD c=1 sm=1 tr=0 ts=67c82497 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=e5mUnYsNAAAA:8 a=Oh2cFVv5AAAA:8 a=JfrnYn6hAAAA:8
 a=COk6AnOGAAAA:8 a=BOJ6RS-tu9LrgQTqqMAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=Vxmtnl_E_bksehYqCbjh:22 a=7KeoIwV6GZqOttXkcoxL:22 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: aKatwj6BJQyRYbP4xVAYI6QwH_7jJYG2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-05_04,2025-03-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 phishscore=0 malwarescore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503050082



On 12/20/2024 5:45 AM, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 06:36:38PM +0800, Xiangxu Yin wrote:
>>
>>
>> On 12/5/2024 7:40 PM, Dmitry Baryshkov wrote:
>>> On Thu, 5 Dec 2024 at 13:28, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>>>
>>>>
>>>>
>>>> On 12/2/2024 6:46 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Dec 02, 2024 at 04:40:05PM +0800, Xiangxu Yin wrote:
>>>>>>
>>>>>>
>>>>>> On 11/29/2024 9:50 PM, Dmitry Baryshkov wrote:
>>>>>>> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>>>>>>>
>>>>>>>> Add the ability to configure lane mapping for the DP controller. This is
>>>>>>>> required when the platform's lane mapping does not follow the default
>>>>>>>> order (0, 1, 2, 3). The mapping rules are now configurable via the
>>>>>>>> `data-lane` property in the devicetree. This property defines the
>>>>>>>> logical-to-physical lane mapping sequence, ensuring correct lane
>>>>>>>> assignment for non-default configurations.
>>>>>>>>
>>>>>>>> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
>>>>>>>> ---
>>>>>>>>  drivers/gpu/drm/msm/dp/dp_catalog.c | 11 +++++------
>>>>>>>>  drivers/gpu/drm/msm/dp/dp_catalog.h |  2 +-
>>>>>>>>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  2 +-
>>>>>>>>  drivers/gpu/drm/msm/dp/dp_panel.c   | 13 ++++++++++---
>>>>>>>>  drivers/gpu/drm/msm/dp/dp_panel.h   |  3 +++
>>>>>>>>  5 files changed, 20 insertions(+), 11 deletions(-)
>>>>>>>>
>>>>>
>>>>>>>> @@ -461,6 +460,7 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
>>>>>>>>         struct msm_dp_panel_private *panel;
>>>>>>>>         struct device_node *of_node;
>>>>>>>>         int cnt;
>>>>>>>> +       u32 lane_map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3};
>>>>>>>>
>>>>>>>>         panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
>>>>>>>>         of_node = panel->dev->of_node;
>>>>>>>> @@ -474,10 +474,17 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
>>>>>>>>                 cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
>>>>>>>>         }
>>>>>>>>
>>>>>>>> -       if (cnt > 0)
>>>>>>>> +       if (cnt > 0) {
>>>>>>>> +               struct device_node *endpoint;
>>>>>>>> +
>>>>>>>>                 msm_dp_panel->max_dp_lanes = cnt;
>>>>>>>> -       else
>>>>>>>> +               endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
>>>>>>>> +               of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
>>>>>>>> +       } else {
>>>>>>>>                 msm_dp_panel->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
>>>>>>>> +       }
>>>>>>>
>>>>>>> Why? This sounds more like dp_catalog or (after the refactoring at
>>>>>>> [1]) dp_ctrl. But not the dp_panel.
>>>>>>>
>>>>>>> [1] https://patchwork.freedesktop.org/project/freedreno/series/?ordering=-last_updated
>>>>>>>
>>>>>> We are used the same prop 'data-lanes = <3 2 0 1>' in mdss_dp_out to keep similar behaviour with dsi_host_parse_lane_data.
>>>>>> From the modules used, catalog seems more appropriate, but since the max_dp_lanes is parsed at dp_panel, it has been placed here.
>>>>>> Should lane_map parsing in msm_dp_catalog_get, and keep max_dp_lanes parsing at the dp_panel?
>>>>>
>>>>> msm_dp_catalog_get() is going to be removed. Since the functions that
>>>>> are going to use it are in dp_ctrl module, I thought that dp_ctrl.c is
>>>>> the best place. A better option might be to move max_dp_lanes and
>>>>> max_dp_link_rate to dp_link.c as those are link params. Then
>>>>> lane_mapping also logically becomes a part of dp_link module.
>>>>>
>>>>> But now I have a more important question (triggered by Krishna's email
>>>>> about SAR2130P's USB): if the lanes are swapped, does USB 3 work on that
>>>>> platform? Or is it being demoted to USB 2 with nobody noticing that?
>>>>>
>>>>> If lanes 0/1 and 2/3 are swapped, shouldn't it be handled in the QMP
>>>>> PHY, where we handle lanes and orientation switching?
>>>>>
>>>> I have checked the DP hardware programming guide and also discussed it with Krishna.
>>>>
>>>> According to the HPG section '3.4.2 PN and Lane Swap: PHY supports PN swap for mainlink and AUX, but it doesn't support lane swap feature.'
>>>>
>>>> The lane swap mainly refers to the logical to physical mapping between the DP controller and the DP PHY. The PHY handles polarity inversion, and the lane map does not affect USB behavior.
>>>>
>>>> On the QCS615 platform, we have also tested when DP works with lane swap, other USB 3.0 ports can works normally at super speed.
>>>
>>> "Other USB 3.0 ports"? What does that mean? Please correct me if I'm
>>> wrong, you should have a USB+DP combo port that is being managed with
>>> combo PHY. Does USB 3 work on that port?
>>>
>>> In other words, where the order of lanes is actually inverted? Between
>>> DP and combo PHY? Within combo PHY? Between the PHY and the pinout?
>>> Granted that SM6150 was supported in msm-4.14 could you possibly point
>>> out a corresponding commit or a set of commits from that kernel?
>>>
>> For "Other USB 3.0 ports", as replied in USBC driver, USB3 primary phy works for other four USB type-A port.
> 
> So if that's the USB3 primary, then why do you mention here at all? We
> are taling about the secondary USB3 + DP.
> 
OK, sorry for confusing you.
>> The REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING mapping determines how logical lanes (0, 1, 2, 3) map to physical lanes sent to the PHY.
>> This ensures alignment with hardware requirements.
>> The PHY’s polarity inversion only adjusts signal polarity and doesn’t affect lane mapping.
>> Both DP ctrl and PHY lane related config will not affect USB phy.
> 
> Probably we misundersand each other. The DP PHY should have orientation
> switch register, which controls whether 2-lane DP uses lanes 0/1 or 2/3.
> Can you use that register?
> 
Yes, DP PHY have orientation register as below.
DP_PHY_DP_PHY_CFG_1(0x88e9014) bit(7) SW_PORTSELECT
> Also, could you _please_ answer the question that I have asked? Is the
> order of lanes inverted between the DP controller and DP PHY? Or between
> DP PHY and the DP connector? If one uses USB3 signals coming from this
> port (yes, on the other board, not on the Ride), would they also need to
> switch the order of USB3 lanes? If one uses a DP-over-USB-C, are DP
> lanes are swapped?
> 
It's inverted between the DP controller and DP PHY.
If other use USB3 on the other board, will not need switch order of USB3 lanes,
If one use DP-over-USB-C, then need DP lanes swap.
>> Without extra Type-C mapping, the DP controller’s mapping indirectly decides how signals are transmitted through Type-C.
>> Mapping ensures proper data transmission and compatibility across interfaces.
>>
>> We only found sm6150 need this lane mapping config, 
>> For msm 4.14, please refer these links,
>> https://android.googlesource.com/kernel/msm/+/af03eef7d4c3cbd1fe26c67d4f1915b05d0c1488/arch/arm64/boot/dts/qcom/sm6150-sde.dtsi (qcom,logical2physical-lane-map)
>> https://android.googlesource.com/kernel/msm/+/af03eef7d4c3cbd1fe26c67d4f1915b05d0c1488/drivers/gpu/drm/msm/dp/dp_parser.c (dp_parser_misc)
>> https://android.googlesource.com/kernel/msm/+/af03eef7d4c3cbd1fe26c67d4f1915b05d0c1488/drivers/gpu/drm/msm/dp/dp_catalog_v200.c (dp_catalog_ctrl_lane_mapping_v200)
>>
>> If need process orientation info like dp_catalog_ctrl_lane_mapping_v200, 
>> then 
>> if implement in DP phy, then we need config dp_link register in PHY,
>> if implement in DP link, then we need pass orientation info to DP driver, perhaps we could add a new attribute to the phy_configure_opts_dp structure to pass this.
>> Do you have any suggestions?
> 
> Does SW_PORTSEL_VAL affect the DP lanes on this platform?
> 
SW_PORTSEL_VAL for USB3PHY_PCS_MISC_TYPEC_CTRL will not affect DP lanes in this DP or USB3 chip series.
USB3 will use USB3PHY_PCS_MISC_TYPEC_CTRL(SW_PORTSEL_VAL BIT_0) and DP will use DP_PHY_DP_PHY_CFG_1(SW_PORTSELECT BIT_7)
>>
>>>>
>>>> Additionally, if it were placed on the PHY side, the PHY would need access to dp_link’s domain which can access REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING.
>>>
>>> I was thinking about inverting the SW_PORTSEL_VAL bit.
>>>
>>>> Therefore, we believe that the  max_dp_link_rate,max_dp_lanes and lane_map move to dp_link side is better.
>>>>
>>>>>>>> +
>>>>>>>> +       memcpy(msm_dp_panel->lane_map, lane_map, msm_dp_panel->max_dp_lanes * sizeof(u32));
>>>>>>>>
>>>>>>>>         msm_dp_panel->max_dp_link_rate = msm_dp_panel_link_frequencies(of_node);
>>>>>>>>         if (!msm_dp_panel->max_dp_link_rate)
>>>>>>>> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm/dp/dp_panel.h
>>>>>>>> index 0e944db3adf2f187f313664fe80cf540ec7a19f2..7603b92c32902bd3d4485539bd6308537ff75a2c 100644
>>>>>>>> --- a/drivers/gpu/drm/msm/dp/dp_panel.h
>>>>>>>> +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
>>>>>>>> @@ -11,6 +11,8 @@
>>>>>>>>  #include "dp_aux.h"
>>>>>>>>  #include "dp_link.h"
>>>>>>>>
>>>>>>>> +#define DP_MAX_NUM_DP_LANES    4
>>>>>>>> +
>>>>>>>>  struct edid;
>>>>>>>>
>>>>>>>>  struct msm_dp_display_mode {
>>>>>>>> @@ -46,6 +48,7 @@ struct msm_dp_panel {
>>>>>>>>         bool video_test;
>>>>>>>>         bool vsc_sdp_supported;
>>>>>>>>
>>>>>>>> +       u32 lane_map[DP_MAX_NUM_DP_LANES];
>>>>>>>>         u32 max_dp_lanes;
>>>>>>>>         u32 max_dp_link_rate;
>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> 2.25.1
>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>>
>>>>>> --
>>>>>> linux-phy mailing list
>>>>>> linux-phy@lists.infradead.org
>>>>>> https://lists.infradead.org/mailman/listinfo/linux-phy
>>>>>
>>>>
>>>
>>>
>>
> 


