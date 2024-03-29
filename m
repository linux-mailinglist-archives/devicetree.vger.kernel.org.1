Return-Path: <devicetree+bounces-54684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E19D1892262
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 18:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93BAC28B0CF
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 17:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAC71327FE;
	Fri, 29 Mar 2024 17:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="A+c30gxv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF91F12FB3B
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711731876; cv=none; b=egOgkT3mjbfo4DwOyx4CoaCACrOwFrt8Zx0M0hCAK8rPl/4omuYlrVB8/YSswRaKO2Jv/wm3QjUoKct/plyKjfnqKHX/fRj2sgPWIwzyTtjRwCk6WYBZhOx+yQvuCqggCwtCrJMX/Wn6W8Ys8oQh25ZW1VgPAP5Ig9U5Vod1Mek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711731876; c=relaxed/simple;
	bh=WDl5hdfuZ1ZCqKzMY4e5rqQ6qJFcEuXbYiUIwbtcQ1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=LQwzazi1U4N7pcWeyCfIt8vey6zVkmAsCxksGwPNjNjKLrjc54h5f8P88weCTr06seP/wqZF/vshuCSCN8m1Dx/WsbndJlfPLnTvuqjcnzHUC7F6BEf5eTMR02VjESYRaSDADRSnax8baRBS/bsRd0ZIV0MNvplxbeQE0PyQ3xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=A+c30gxv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42TDIkJH023259;
	Fri, 29 Mar 2024 17:04:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=m5ni8xK8b1SDuKtLbba8thQTYDk48i5PqR33GLgwOV0=; b=A+
	c30gxvBdGbTgL3PaZWKEH9+l3AdI6hPnZxXqSY5iDUThAH6lXIeiI+CO8C0iECpw
	O1oT5qErABalQFJYlYrgNGyBQjDG8CQeWM3fjMvt/YhDpP9c6dP7p8TBMo2XA9+F
	5eDpCxPakMoqicDzV/CAnr+B6y/zQdtcg6YGK1M+76MxyDk6tnQNaejiHHDvdKwR
	pmDWruYgav8/oBincVmobZYXhyknZMpD5Kev+jHUwOxh6ZiR+7c7SVjrfQvtDOKi
	2Uy0C6LTqSX3wJnL0elUL8MTPvhMYFIaLTzNkmq2HgGUwuJuQQtfUQc91nNwUZSh
	sNnwql4zuoU90VQOCD5g==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x5xcy0f37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 17:04:20 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42TH4Ji3024022
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 17:04:19 GMT
Received: from [10.71.108.229] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Fri, 29 Mar
 2024 10:04:19 -0700
Message-ID: <11f8897f-b8a2-4534-95d8-266ddd2c4798@quicinc.com>
Date: Fri, 29 Mar 2024 10:04:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/panel: simple: Add Innolux G121XCE-L01 LVDS
 display support
Content-Language: en-US
To: Marek Vasut <marex@denx.de>, <dri-devel@lists.freedesktop.org>
CC: Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
        David
 Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Neil
 Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, Sam
 Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Thomas Zimmermann <tzimmermann@suse.de>, <devicetree@vger.kernel.org>
References: <20240328102746.17868-1-marex@denx.de>
 <20240328102746.17868-4-marex@denx.de>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20240328102746.17868-4-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 8iatgW_pidnNaUBOzATHXjg1GD-KOEmT
X-Proofpoint-ORIG-GUID: 8iatgW_pidnNaUBOzATHXjg1GD-KOEmT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_13,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 adultscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403290151



On 3/28/2024 3:27 AM, Marek Vasut wrote:
> G121XCE-L01 is a Color Active Matrix Liquid Crystal Display composed of
> a TFT LCD panel, a driver circuit, and LED backlight system. The screen
> format is intended to support the 4:3, 1024(H) x 768(V) screen and either
> 262k/16.7M colors (RGB 6-bits or 8-bits) with LED backlight driver circuit.
> All input signals are LVDS interface compatible.
> 
> Documentation [1] and [2] indicate that G121X1-L03 and G121XCE-L01 are
> effectively identical panels, use the former as RGB 6-bits variant and
> add the later as RGB 8-bits variant.
> 
> [1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121X1-L03_Datasheet.pdf
> [2] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121XCE-L01_Datasheet.pdf

Hi Marek,

Acked-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Thanks,

Jessica Zhang

> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 737c78b3b8a23..5acc9f2941909 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2623,6 +2623,24 @@ static const struct panel_desc innolux_g121x1_l03 = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> +static const struct panel_desc innolux_g121xce_l01 = {
> +	.timings = &innolux_g121x1_l03_timings,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 246,
> +		.height = 185,
> +	},
> +	.delay = {
> +		.enable = 200,
> +		.unprepare = 200,
> +		.disable = 400,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing innolux_g156hce_l01_timings = {
>   	.pixelclock = { 120000000, 141860000, 150000000 },
>   	.hactive = { 1920, 1920, 1920 },
> @@ -4596,6 +4614,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "innolux,g121x1-l03",
>   		.data = &innolux_g121x1_l03,
> +	}, {
> +		.compatible = "innolux,g121xce-l01",
> +		.data = &innolux_g121xce_l01,
>   	}, {
>   		.compatible = "innolux,g156hce-l01",
>   		.data = &innolux_g156hce_l01,
> -- 
> 2.43.0
> 

