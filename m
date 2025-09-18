Return-Path: <devicetree+bounces-218691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C10FB832CB
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:40:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A8A43BB8E6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B7F2DCF61;
	Thu, 18 Sep 2025 06:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PEi5s4iU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A732DCBFC
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758177625; cv=none; b=a0Z6RxEQuidXaQXr0WSLlQHQXD6LTX7uzqB+cZPEDszRs2IqI65ZVOj/bBwxI96quUzOWGUXwYCCjbYgITOl2F2gIBSJyG9lVfX/yE2Eu66YFInclNSI4ZdyHkDxipQz2ToRabBjfznP4blZHRWDiEK3DeRBSfke5vVbiZILpAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758177625; c=relaxed/simple;
	bh=yTtGkKC2UuoApCwbobKF8EyooHXo/lAi2Ud1bXzAT0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rSULKqK9d7q7VxPfg4BIPPLMnmEbEt3fsxEGV4SgKUvNR67Zoiy8GlxJHYgOjvByIM9Bzh1T81j++s7owHooXD686iy/OHwnJdddCiTHmqCr5a6Zc+obIuN2MO894hch8cKMHutbte2zGN5ITL6UWaWaJv2aLeS9mobrBwEbpis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PEi5s4iU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HMaG31011110
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:40:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LjaNkwEord8IuaS2Ix8rlcQtQCl3eabfxMXBeTRj034=; b=PEi5s4iU6KYwPSv2
	idItjN3VAXrFN0lg13BbjJbAv5ozq/cA4AFCzZdrlNJp6gWJMtOKz/jy96u71rRo
	NrO6UvNnYQ1JtvJMtLgpFhc3FM0aJcjQ1vmqgIuFyd9koEHWPQTcFEyWxKC3iGbP
	yK2ORo7+AVDcCIy51gzwVU1X++S6nhE2gsccFlYqVfxRz8UcWeTTbLTDzGwZBWsU
	M1JF9K74zyuUQH3aGiBaAprvPSg+17JAqg+qFjHV91W/SOxAs83jZC+bfpL8DwmG
	Ad67IExQ9hjx6FMs4nnpkUAfopoDdEtw2EqALnCU8DLcR90T8LUA/E24RbUFrsFc
	46Cv6w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4985wx15x2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:40:22 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ed282183bso200847a91.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 23:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758177621; x=1758782421;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LjaNkwEord8IuaS2Ix8rlcQtQCl3eabfxMXBeTRj034=;
        b=Hq9hNKoJQ/VA2f+UzLPPDfpy7LlKbSPDB7perJl6OIfyFL0RChPAkvoKVI3PGU1c8O
         UK2pWLe287P68dI1GhhS5JZ13v0r24gnrUPTyWC3MmysgM+MjN0crvqeJzuvkM6YHVge
         pK+yqBXlnt3zTCL0euSW7iQerDOZQAlIS0Zm6wLk2azHoOF8ayekNTMBl11ov8yQM1cg
         LvyT2suodsFlbPLdyhtPg/s2P+Db/rrX8tlV80DzEYKrF8E1GSC0UVgUlibpjihDaqew
         bgboP3yV9xVn0I1ah+LkHtPr7BgSBp1KvtJeFRIF9WGZfBH5Mf7uvPQ1SZDdUgyjEaWp
         6Z2A==
X-Forwarded-Encrypted: i=1; AJvYcCV8/Qfb2ykaF6xk/tQRCXbvj1NyoT1iwAaH5B1dBNYjg1Pw33WQ7DH3uQ5qlOc8UGiT6TDRriCVsxHY@vger.kernel.org
X-Gm-Message-State: AOJu0YyXegI45E+h6LdttVgAmvenv04V2d/pAQaqiWYdfzj1PCzHVHLf
	d73wIDFdC+ZqQPrziKa+U1TILcmZ1/mwEZPNob34YdRdBdeTTlhNCWPmNrXWP8ZPxAAqdNIhOON
	N0eYrO2W4FdsuhospEoUDDTVYHC7IYIi5N0qI3UY0Ek/up5sb+V4BZ8adW00pwL6o
X-Gm-Gg: ASbGncs+3tX8UBvb/QyfP7G4HK3Afh9thiUspnPY8HRMZZN3LLRMRff9ta7HbgYK1xQ
	WeHS4jiii/o9caoQyearI4L2aphNbXxNWzTtrbHB2x3tp0oqBvp9QVyK4jT4G8NxBAHk0AfNFgm
	whBnyLRd1wOb0fUilRYv8bI0exo06w40uU/B3WF1xXjl70w6mC3dvbt+Ec1Uv8+FQGQ1uLOCqCt
	SfTBE8fXz6EYDUuXeN1DcMbpFD+N7UrLDhfg0NAQrFWWj0ZC9e1QEI9s9qLJr+l7OJM9v9buBHo
	XRgs2wjGiN5P/iwlWriKqju7UQKKc0fzfdrQUzMkA34SkIaoO3TvXuBWayTNGe0MzYM6/oM7fdK
	7OEh1S1XZM9GqemwbJnX2wTGimkh7v7IjbQ==
X-Received: by 2002:a17:90b:1a85:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32ee3f81fb9mr3115613a91.5.1758177621309;
        Wed, 17 Sep 2025 23:40:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5qY1sAAfH7rgQLI8TMzDM81toKk94++RXJMv41XuxHoyUPZDYMls2v+1O0U+ZGupHT65xDA==
X-Received: by 2002:a17:90b:1a85:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32ee3f81fb9mr3115576a91.5.1758177620860;
        Wed, 17 Sep 2025 23:40:20 -0700 (PDT)
Received: from [10.133.33.13] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfec3dadbsm1329619b3a.68.2025.09.17.23.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 23:40:20 -0700 (PDT)
Message-ID: <50346565-20d0-4ef9-80a5-e08070fdefb6@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:40:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/13] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-13-2702bdda14ed@oss.qualcomm.com>
 <oex5463riqvvyfyntxcyissaznnfsd6xogcniqouqcn6yokgwu@dwhje4i5inj6>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <oex5463riqvvyfyntxcyissaznnfsd6xogcniqouqcn6yokgwu@dwhje4i5inj6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sO2KJKCIY6Hq4f5IAAB57qyN-DosZTId
X-Proofpoint-GUID: sO2KJKCIY6Hq4f5IAAB57qyN-DosZTId
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDIxOSBTYWx0ZWRfX2b8YSSqpFVGk
 WhTtMjL6RKrThVVkHJZHpxG6PFDIRNsVMkLdymeLvCCxQe2uBaRJ4MQaX1ohYN5nYutAX9ld0It
 pgx7uZpBqoGXGu/0AjlPys1erRRsAJcRe9+MDiMNMgqqIMFakuDHRRYzG7JXIig8KB7cktH2sBZ
 sXJ7eSPMNxG+A13A0Ub06qbJ0P5BdDbKH6i/Vth7UlDynZu8sF5u8Mv2h7UPsIbx7qfrnQsxGpP
 cQji5gBlgODKS+Z7ibI9Mt1o82fiOAvpEgHAWkidb+Dh5GYTmspRWlM7J5frIjIo8CJLNptFkI3
 tlIoCvcUGY+6GhO9izKoS0LuvN+ZyHuj0kXRMsW4AK5+DOOKgaPExSHaqgX3x780knD60fhLXxW
 PgKzLCsG
X-Authority-Analysis: v=2.4 cv=Fq8F/3rq c=1 sm=1 tr=0 ts=68cba956 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zEApyEmNphHiV2Xtq7IA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 impostorscore=0 phishscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170219


On 9/12/2025 6:42 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:10PM +0800, Xiangxu Yin wrote:
>> QCS615 platform requires non-default logical-to-physical lane mapping due
>> to its unique hardware routing. Unlike the standard mapping sequence
>> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
>> configuration via the data-lanes property in the device tree. This ensures
>> correct signal routing between the DP controller and PHY.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++++-----
>>  drivers/gpu/drm/msm/dp/dp_link.c | 12 ++++++++++--
>>  drivers/gpu/drm/msm/dp/dp_link.h |  1 +
>>  3 files changed, 16 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> index c42fd2c17a328f6deae211c9cd57cc7416a9365a..cbcc7c2f0ffc4696749b6c43818d20853ddec069 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> @@ -423,13 +423,13 @@ static void msm_dp_ctrl_config_ctrl(struct msm_dp_ctrl_private *ctrl)
>>  
>>  static void msm_dp_ctrl_lane_mapping(struct msm_dp_ctrl_private *ctrl)
>>  {
>> -	u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
>> +	u32 *lane_map = ctrl->link->lane_map;
>>  	u32 ln_mapping;
>>  
>> -	ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
>> -	ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
>> -	ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
>> -	ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
>> +	ln_mapping = lane_map[0] << LANE0_MAPPING_SHIFT;
>> +	ln_mapping |= lane_map[1] << LANE1_MAPPING_SHIFT;
>> +	ln_mapping |= lane_map[2] << LANE2_MAPPING_SHIFT;
>> +	ln_mapping |= lane_map[3] << LANE3_MAPPING_SHIFT;
>>  
>>  	msm_dp_write_link(ctrl, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
>>  			ln_mapping);
>> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
>> index caca947122c60abb2a01e295f3e254cf02e34502..7c7a4aa584eb42a0ca7c6ec45de585cde8639cb4 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_link.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
>> @@ -1242,6 +1242,7 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
>>  	struct msm_dp_link_private *link;
>>  	struct device_node *of_node;
>>  	int cnt;
>> +	u32 lane_map[DP_MAX_NUM_DP_LANES] = {0};
>>  
>>  	link = container_of(msm_dp_link, struct msm_dp_link_private, msm_dp_link);
>>  	of_node = link->dev->of_node;
>> @@ -1255,10 +1256,17 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
>>  		cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
>>  	}
>>  
>> -	if (cnt > 0)
>> +	if (cnt > 0) {
>> +		struct device_node *endpoint;
>> +
>>  		msm_dp_link->max_dp_lanes = cnt;
>> -	else
>> +		endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
>> +		of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
>> +	} else {
>>  		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
>> +	}
>> +
>> +	memcpy(msm_dp_link->lane_map, lane_map, msm_dp_link->max_dp_lanes * sizeof(u32));
> This will break all the cases when data-lanes is not present in DT: you
> are storing the empty lane map instead of the 1:1 lane mapping that was
> in place beforehand.


You are right. It would overwrite the mapping with zeros when data-lanes is missing.

In the next patch I will:
1. Initialize to a default 1:1 mapping (<0 1 2 3>).
2. Validate and apply data-lanes only if present and valid.
3. Always produce a full 4-lane mapping, filling unused lanes with remaining physical lanes.


>>  
>>  	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
>>  	if (!msm_dp_link->max_dp_link_rate)

