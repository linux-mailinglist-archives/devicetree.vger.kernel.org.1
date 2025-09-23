Return-Path: <devicetree+bounces-220315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6B9B941ED
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 05:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B53E62E0098
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F988262FD9;
	Tue, 23 Sep 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KFz4IHVW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9BB252910
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758598733; cv=none; b=l00q9C8d2OEMEm2s2OcDI+8EEkw1rGiOCBVBzVjbRcMJGqhbnuX+nA9usB97bNhIm1Z5MqfGYNYmfK0zNXSWL8oimixGk9oWxy/k7IitJlYAPGHve0/J2f3DBh1Xv8f8pN3+dNG9cyMCCkwkv1lSLW4XSuWdWbtVJ5ao46ynrCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758598733; c=relaxed/simple;
	bh=xeu3h0son4iAtzIYRr3b0sKUbwGe49TTuiQdes2DrQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u6fAtaq0Nmzjn96dZJJtN49DtmT3VmOp1aQXLcyTw02huParyyF33vY+OlOFDciFisEitUVNGRFzx3Yi273Ie0oEfelc2ANG0Ib7Gcm5ndRhea7uc+4bhCyJeNi4+3iHijEG2RGjC5GqPNVp5DXpwtIjF3qxs6Pf0hc9QXI5xqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KFz4IHVW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MImc0E022762
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:38:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Y+UxxpE5WuCRJKuL0hvK4qAyKZPxGwcP6Rwn7/3joE=; b=KFz4IHVWkCAuM+Gr
	ihh3zMOk3sz7yyPuq6meqSBY7YiXu9sJ3Ovl8LYI61cfbz09oYecTiJe/lyjqVDG
	KEzyoIpj/5TgH/SsGYfYwYD7zQIQWJC8qOPQoNYsrjJDPIbpNkVOn+KXq+DXYAW9
	y3CO1VYETWVuyFcDyAqLjhdHY8TbVuZA5F1G/ClJBVyqz+l+v+BDQsPZrEWehj5+
	uR0MMK0F2cfTQzQmaoioJKQmVrq1s1+8cZkEF1f9ICprkjT3PLKdm4e1oybwON9c
	S/MYHMgSWrU1SY9zq+nOOo9Q9q30ORUfz8qlA7MwxCFU4ipWeBlzFBjJtnLrKzqp
	Zl/9Bw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyat10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:38:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26b7fc4b7e3so10154845ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758598730; x=1759203530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8Y+UxxpE5WuCRJKuL0hvK4qAyKZPxGwcP6Rwn7/3joE=;
        b=FfDLsXm49oHPAo8KzDV3LEpxvcZ7eSYdNAhLpkw2tTY2vKnfQ4sHzdeztUAs3L4IIC
         gkedCOU8zvC4azQuuZqWmVUJmfr4vgcx/a1CyL0Voz00kyYOO1DxI6QjQP132rONtlB+
         yLNC+amF5M/Qvdv1Y/wSDXaVMLylyx3vdnHp/ytJTRn73MLyVftjnp5iuLFpGTHjgdjX
         5WC2R4buxciOaha/v1wk700a36PyV5P2lQoe8FkucgoeVAyQ89FX/iWs7z6fqhBg7n+Q
         65kqhmPNdKvrc9QZ42mMzRxOmLZx1UgeWyFbWxD+XcAA+etcSVFatcFXtpNzMqw2f5Og
         SOdw==
X-Forwarded-Encrypted: i=1; AJvYcCVK8oUGu2sWPzvGEMbuDBRlincNVxYcO7vhueH6LjVqVl/KRuQHjHH9kwnKiQBM9VWdsS8WHWLbh7k7@vger.kernel.org
X-Gm-Message-State: AOJu0YxriaverURAOsV/0GAvST+T7mK+KvMMyg5MhCxXQGoV7gv/RYdf
	oOuY4ONIkGICyY35dEgtgXhbECngAWXuARz79IcslHnU1rF7aJapBv+rHChLoQ9FiBHuP9dKnfc
	QLIB+Moj4qRupMAyEMbAY/pqw2gqria0oWxAY4JSN8vCJcJg71k1q7bVtfyVO49lH
X-Gm-Gg: ASbGnct786acS4lRKv4vkOAfJ49DXv6B2Eth9YQoZfyKJEHMpZHW/sLFBeGdy8cEVnu
	kC1p2wmZNg7DmBV1keuRK5l/J8DMf0m9jEYBiE/m6iXukez5IQ7ypqMBXyKgFxZRmHb/sGqRHYw
	gt9QDJ/KIkF249SKBLpnmxGJ4ysOUrq1YPK7hvJiDJBOQdMRSZZdIkvbihaIjweVp1vyhko5Dd1
	+dG/m/JGryerEAXVjRTPDn4XECcXae/cdjQpQfwZNIS0H+orT3IliIEeU7SYAJNSYK9GZBAMP7L
	efsaFS2hYZhbGrtbFut0fERCrDtzQtIhNddwK3wvV+j0Q9/TH7tyb95/n6fJouT9SAGCcg0jcTv
	xq+60bwdfayblWa5aWBoBjJGDRrkxPj8Ngl0=
X-Received: by 2002:a05:6a00:1828:b0:77f:3f06:1f78 with SMTP id d2e1a72fcca58-77f537a8173mr828268b3a.2.1758598729785;
        Mon, 22 Sep 2025 20:38:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5W8YAPrrchgMVeHplJ5Ln5bt4yZvCXn/JchjMJMX2nlmqazlCN5vnpvVhSh9oEhVk8Z5oRg==
X-Received: by 2002:a05:6a00:1828:b0:77f:3f06:1f78 with SMTP id d2e1a72fcca58-77f537a8173mr828234b3a.2.1758598729324;
        Mon, 22 Sep 2025 20:38:49 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f41b85e84sm3439351b3a.86.2025.09.22.20.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 20:38:48 -0700 (PDT)
Message-ID: <d7b2a904-97de-4716-b179-4ad8d3ecbe58@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 11:38:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 14/14] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <rob.clark@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
 <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
 <CACSVV00Bat6LE=joM+Wh3HnC1=c3_Y=crxUGdhLQWxxpZ17Q3g@mail.gmail.com>
 <t4x7okzjvh5ltyoniwlreoyy76735igtnxpeohpbojn4hkqk4q@v3ayfjrkez3e>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <t4x7okzjvh5ltyoniwlreoyy76735igtnxpeohpbojn4hkqk4q@v3ayfjrkez3e>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d2164a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gP3TSUq4Lgg7EeaY2V8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 1dzIDwTKffHW4UAfVTJM1R0Xmfkm-Aqn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX39NZnjiOw+A4
 QrVFMaxRXCEPJUmXw1IgEn//p5LMMl2VL3apU4l9hELY+MAsOJlzOqa3TnonIkPQaJ3ToYqibir
 Q6JJVzAdVdfAAOC9ET/8amGBWsMwuOIqZPZFL3EfUcewXadSPTIQ/1Rw4eJhAdRS4BfsOXUJq22
 uUTrnqEmCC4/4MZXydKIySBph1j/9R0Gp3Tam8eLyZAakyVXUrM4DcMjdalz26WB69nTYEc4ZG3
 sgIud+KMFSLPC/aEkPqeyvU+PElI789A13Y55FX21B/5q5r9J2Bfuk3/xuCcQoUC3Fz6AB/mqwe
 QS7nFXV2FFdF2v9TM2efMsAYJ5t+AeKuZCv95gY/70+WOhHyjCE2nnOKkQzgXRVUnhc/6LKuRJU
 gHh+vMPX
X-Proofpoint-ORIG-GUID: 1dzIDwTKffHW4UAfVTJM1R0Xmfkm-Aqn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090


On 9/23/2025 7:39 AM, Dmitry Baryshkov wrote:
> On Mon, Sep 22, 2025 at 08:13:00AM -0700, Rob Clark wrote:
>> On Fri, Sep 19, 2025 at 11:35 AM Dmitry Baryshkov
>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>> On Fri, Sep 19, 2025 at 10:24:31PM +0800, Xiangxu Yin wrote:
>>>> QCS615 platform requires non-default logical-to-physical lane mapping due
>>>> to its unique hardware routing. Unlike the standard mapping sequence
>>>> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
>>>> configuration via the data-lanes property in the device tree. This ensures
>>>> correct signal routing between the DP controller and PHY.
>>>>
>>>> For partial definitions, fill remaining lanes with unused physical lanes
>>>> in ascending order.
>>>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++----
>>>>  drivers/gpu/drm/msm/dp/dp_link.c | 60 ++++++++++++++++++++++++++++++++++++++++
>>>>  drivers/gpu/drm/msm/dp/dp_link.h |  1 +
>>>>  3 files changed, 66 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
>>>> index 2aeb3ecf76fab2ee6a9512b785ca5dceebfc3964..34a91e194a124ef5372f13352f7b3513aa88da2a 100644
>>>> --- a/drivers/gpu/drm/msm/dp/dp_link.c
>>>> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
>>>> @@ -1236,6 +1236,61 @@ static u32 msm_dp_link_link_frequencies(struct device_node *of_node)
>>>>       return frequency;
>>>>  }
>>>>
>>>> +/*
>>>> + * Always populate msm_dp_link->lane_map with 4 lanes.
>>>> + * - Use DTS "data-lanes" if present; otherwise fall back to default mapping.
>>>> + * - For partial definitions, fill remaining entries with unused lanes in
>>>> + *   ascending order.
>>>> + */
>>>> +static int msm_dp_link_lane_map(struct device *dev, struct msm_dp_link *msm_dp_link)
>>>> +{
>>>> +     struct device_node *of_node = dev->of_node;
>>>> +     struct device_node *endpoint;
>>>> +     int cnt = msm_dp_link->max_dp_lanes;
>>>> +     u32 tmp[DP_MAX_NUM_DP_LANES];
>>>> +     u32 map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3}; /* default 1:1 mapping */
>>>> +     bool used[DP_MAX_NUM_DP_LANES] = {false};
>>>> +     int i, j = 0, ret = -EINVAL;
>>>> +
>>>> +     endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
>>>> +     if (endpoint) {
>>>> +             ret = of_property_read_u32_array(endpoint, "data-lanes", tmp, cnt);
>>>> +             if (ret)
>>>> +                     dev_dbg(dev, "endpoint data-lanes read failed (ret=%d)\n", ret);
>>>> +     }
>>>> +
>>>> +     if (ret) {
>>>> +             ret = of_property_read_u32_array(of_node, "data-lanes", tmp, cnt);
>>>> +             if (ret) {
>>>> +                     dev_info(dev, "data-lanes not defined, set to default\n");
>>>> +                     goto out;
>>>> +             }
>>>> +     }
>>>> +
>>>> +     for (i = 0; i < cnt; i++) {
>>>> +             if (tmp[i] >= DP_MAX_NUM_DP_LANES) {
>>>> +                     dev_err(dev, "data-lanes[%d]=%u out of range\n", i, tmp[i]);
>>>> +                     return -EINVAL;
>>>> +             }
>>>> +             used[tmp[i]] = true;
>>>> +             map[i] = tmp[i];
>>>> +     }
>>>> +
>>>> +     /* Fill the remaining entries with unused physical lanes (ascending) */
>>>> +     for (i = cnt; i < DP_MAX_NUM_DP_LANES && j < DP_MAX_NUM_DP_LANES; j++) {
>>> Nit: i = cnt, j = 0; Don't init loop variables at the top of the
>>> function.
>> These days we can party like it's c99 and declare loop variables
>> inside the for(), instead of at the top of the function.  My
>> preference is to do so, unless the loop variable is used after the
>> loop.
> Ack, works for me too. I think I'm not used for having theese parts of
> C99 allowed in the kernel.


Got it. j is only used in that for loop, so I'll update it to use C99-style declaration as suggested.



