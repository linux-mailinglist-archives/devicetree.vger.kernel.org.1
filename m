Return-Path: <devicetree+bounces-125951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF819DFC1F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73087B20B11
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF521F9EDD;
	Mon,  2 Dec 2024 08:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="fSai7UVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6682940F;
	Mon,  2 Dec 2024 08:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733128840; cv=none; b=rr78mlibcRQwhjxltho+DW+PgORkGtp7wvsYWjxgp7nNV1dNc/mb52ZNwgYW90R1PuSYC893gYTfxBHblujhW5PqzVfMRf28qATXh2tRsjKoZOOZ+0XZsoG2Gmte/vCwPE75LDAKN/fy4l40O/LMqOpFieQ1ogCovz/vivIDgzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733128840; c=relaxed/simple;
	bh=h6jcD5vXKAJ5zyMD/qLEPhjvidG+7vNU+qJNYWs8Zwo=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=sZEOqNPbamlkhGrB6MWII66qZwC3LE5UBvtuTxWDSpO9ofJZ8oxxqWLC3fLurxQ47QSzC6c4PPZS5Vf5W1r7uSszFKiTNGGh0w/oEpsxE4Px/GjcXV3P7uJVRmL58fNhOPSLrXOmWJXWWEP4HrTTEW0+UxI6PyrzFDiPC53JZCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=fSai7UVm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28Uu2k021119;
	Mon, 2 Dec 2024 08:40:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HeL2iecHpxNbwU1PE2soIu8EgoaRWstR/yFhgFxBzAI=; b=fSai7UVmscAa1/Bb
	IXx0N4tS8w/LgVA2oP07N6HigPqB3r3MDp+s+UaNjzBCbF26+sGg/S6LvedqU0y2
	5ouabkHm0Ks0tEyhkQ/PlHuCKOBNKeeHe9LUZO0n1yfJWK+CVuQ56LKer0ZnmTRW
	8c5aA29vvcios1O1/vxB4VeOaqsy6yLwpcWPogKgKP9j+NcOvejYRLTWkT2vrstI
	ddK5dhCmC9VzAXn7kywIuGlvKmy63Q2uzaLLfpw/GycqwrTDqF6eXAXhAAaouLpi
	SvrCb58aaMPrSzfWv6k8fbaxp0d6ckBehullwi7UCvcuL7HPd+bz8vIwF2xvEvqI
	3+5rKg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437u36c55r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Dec 2024 08:40:15 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B28eECo025659
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 2 Dec 2024 08:40:14 GMT
Received: from [10.64.16.135] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 2 Dec 2024
 00:40:08 -0800
Message-ID: <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
Date: Mon, 2 Dec 2024 16:40:05 +0800
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
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
In-Reply-To: <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: PHJmxWI0XMzeCBQZZmYhYTGnRQH3TbOp
X-Proofpoint-ORIG-GUID: PHJmxWI0XMzeCBQZZmYhYTGnRQH3TbOp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 clxscore=1011 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412020076



On 11/29/2024 9:50 PM, Dmitry Baryshkov wrote:
> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>
>> Add the ability to configure lane mapping for the DP controller. This is
>> required when the platform's lane mapping does not follow the default
>> order (0, 1, 2, 3). The mapping rules are now configurable via the
>> `data-lane` property in the devicetree. This property defines the
>> logical-to-physical lane mapping sequence, ensuring correct lane
>> assignment for non-default configurations.
>>
>> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_catalog.c | 11 +++++------
>>  drivers/gpu/drm/msm/dp/dp_catalog.h |  2 +-
>>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  2 +-
>>  drivers/gpu/drm/msm/dp/dp_panel.c   | 13 ++++++++++---
>>  drivers/gpu/drm/msm/dp/dp_panel.h   |  3 +++
>>  5 files changed, 20 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.c b/drivers/gpu/drm/msm/dp/dp_catalog.c
>> index b4c8856fb25d01dd1b30c5ec33ce821aafa9551d..34439d0709d2e1437e5669fd0b995936420ee16f 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_catalog.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.c
>> @@ -361,17 +361,16 @@ void msm_dp_catalog_ctrl_config_ctrl(struct msm_dp_catalog *msm_dp_catalog, u32
>>         msm_dp_write_link(catalog, REG_DP_CONFIGURATION_CTRL, cfg);
>>  }
>>
>> -void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog)
>> +void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog, u32 *l_map)
> 
> lane_map, not l_map.
> 
Ok, will update in next patch.
>>  {
>>         struct msm_dp_catalog_private *catalog = container_of(msm_dp_catalog,
>>                                 struct msm_dp_catalog_private, msm_dp_catalog);
>> -       u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
>>         u32 ln_mapping;
>>
>> -       ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
>> -       ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
>> -       ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
>> -       ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
>> +       ln_mapping = l_map[0] << LANE0_MAPPING_SHIFT;
>> +       ln_mapping |= l_map[1] << LANE1_MAPPING_SHIFT;
>> +       ln_mapping |= l_map[2] << LANE2_MAPPING_SHIFT;
>> +       ln_mapping |= l_map[3] << LANE3_MAPPING_SHIFT;
>>
>>         msm_dp_write_link(catalog, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
>>                         ln_mapping);
>> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.h b/drivers/gpu/drm/msm/dp/dp_catalog.h
>> index e932b17eecbf514070cd8cd0b98ca0fefbe81ab7..8b8de2a7d3ad561c1901e1bdaad92d4fab12e808 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_catalog.h
>> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.h
>> @@ -69,7 +69,7 @@ u32 msm_dp_catalog_aux_get_irq(struct msm_dp_catalog *msm_dp_catalog);
>>  /* DP Controller APIs */
>>  void msm_dp_catalog_ctrl_state_ctrl(struct msm_dp_catalog *msm_dp_catalog, u32 state);
>>  void msm_dp_catalog_ctrl_config_ctrl(struct msm_dp_catalog *msm_dp_catalog, u32 config);
>> -void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog);
>> +void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog, u32 *l_map);
>>  void msm_dp_catalog_ctrl_mainlink_ctrl(struct msm_dp_catalog *msm_dp_catalog, bool enable);
>>  void msm_dp_catalog_ctrl_psr_mainlink_enable(struct msm_dp_catalog *msm_dp_catalog, bool enable);
>>  void msm_dp_catalog_setup_peripheral_flush(struct msm_dp_catalog *msm_dp_catalog);
>> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> index bc2ca8133b790fc049e18ab3b37a629558664dd4..49c8ce9b2d0e57a613e50865be3fe98e814d425a 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> @@ -177,7 +177,7 @@ static void msm_dp_ctrl_configure_source_params(struct msm_dp_ctrl_private *ctrl
>>  {
>>         u32 cc, tb;
>>
>> -       msm_dp_catalog_ctrl_lane_mapping(ctrl->catalog);
>> +       msm_dp_catalog_ctrl_lane_mapping(ctrl->catalog, ctrl->panel->lane_map);
>>         msm_dp_catalog_ctrl_mainlink_ctrl(ctrl->catalog, true);
>>         msm_dp_catalog_setup_peripheral_flush(ctrl->catalog);
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.c b/drivers/gpu/drm/msm/dp/dp_panel.c
>> index 5d7eaa31bf3176566f40f01ff636bee64e81c64f..8654180aa259234bbd41f4f88c13c485f9791b1d 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_panel.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_panel.c
>> @@ -11,7 +11,6 @@
>>  #include <drm/drm_of.h>
>>  #include <drm/drm_print.h>
>>
>> -#define DP_MAX_NUM_DP_LANES    4
>>  #define DP_LINK_RATE_HBR2      540000 /* kbytes */
>>
>>  struct msm_dp_panel_private {
>> @@ -461,6 +460,7 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
>>         struct msm_dp_panel_private *panel;
>>         struct device_node *of_node;
>>         int cnt;
>> +       u32 lane_map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3};
>>
>>         panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
>>         of_node = panel->dev->of_node;
>> @@ -474,10 +474,17 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
>>                 cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
>>         }
>>
>> -       if (cnt > 0)
>> +       if (cnt > 0) {
>> +               struct device_node *endpoint;
>> +
>>                 msm_dp_panel->max_dp_lanes = cnt;
>> -       else
>> +               endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
>> +               of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
>> +       } else {
>>                 msm_dp_panel->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
>> +       }
> 
> Why? This sounds more like dp_catalog or (after the refactoring at
> [1]) dp_ctrl. But not the dp_panel.
> 
> [1] https://patchwork.freedesktop.org/project/freedreno/series/?ordering=-last_updated
> 
We are used the same prop 'data-lanes = <3 2 0 1>' in mdss_dp_out to keep similar behaviour with dsi_host_parse_lane_data.
From the modules used, catalog seems more appropriate, but since the max_dp_lanes is parsed at dp_panel, it has been placed here.
Should lane_map parsing in msm_dp_catalog_get, and keep max_dp_lanes parsing at the dp_panel?
>> +
>> +       memcpy(msm_dp_panel->lane_map, lane_map, msm_dp_panel->max_dp_lanes * sizeof(u32));
>>
>>         msm_dp_panel->max_dp_link_rate = msm_dp_panel_link_frequencies(of_node);
>>         if (!msm_dp_panel->max_dp_link_rate)
>> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm/dp/dp_panel.h
>> index 0e944db3adf2f187f313664fe80cf540ec7a19f2..7603b92c32902bd3d4485539bd6308537ff75a2c 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_panel.h
>> +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
>> @@ -11,6 +11,8 @@
>>  #include "dp_aux.h"
>>  #include "dp_link.h"
>>
>> +#define DP_MAX_NUM_DP_LANES    4
>> +
>>  struct edid;
>>
>>  struct msm_dp_display_mode {
>> @@ -46,6 +48,7 @@ struct msm_dp_panel {
>>         bool video_test;
>>         bool vsc_sdp_supported;
>>
>> +       u32 lane_map[DP_MAX_NUM_DP_LANES];
>>         u32 max_dp_lanes;
>>         u32 max_dp_link_rate;
>>
>>
>> --
>> 2.25.1
>>
> 
> 


