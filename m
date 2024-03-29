Return-Path: <devicetree+bounces-54683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1C5892261
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 18:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9000528B08F
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 17:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ABDE1327E8;
	Fri, 29 Mar 2024 17:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lPGXYxsE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0BE1327E6
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 17:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711731827; cv=none; b=tMa+SxmwzMKplkVs9hV89UOHP7vYQ+Vh+apI1ewzh6tn1mFCgGxUGA8AM6y4KQRYhOukF6k9919VPJzk1RXY9ocZt0kazW0RNM9uZz8J5SZCuXSthSDb7GTfIFXRUJQy8eOXSgRPga4icyZFNb441tzpWyJa891jaRFGRXF+vmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711731827; c=relaxed/simple;
	bh=l+4zV9vWaicn/vF5OwX4UiyaPDpSsV+epwkkptE/6CM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=TjMh9WP/ieulvwcBgmsK5fQ1PDgehIbEFpkWMeQEHa8KdE6tWkEWlQSVCJN7v7a03va8RM0cqHO+bn223x5j59DcJZ2AM8fZkoklBiE/o7+4LgxWSCLE4GDh3eeT8Xja7CiD7Zq+aN0QFR6FTnffAehgySjp4Y50LXgY8E/ygBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=lPGXYxsE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42TGPaE0002928;
	Fri, 29 Mar 2024 17:03:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=5S9kBbB3DUQHewB0t/rUqWNwUsi1Wxip3f37dc76W24=; b=lP
	GXYxsEMvOM0JCsDmKJJzknjAaEPpEt90V2ggXYlWhiQPhw3dD6PZxYuVZQzur53l
	pHO4+kxfShI2DKcAJ4Y/tX8H0irEWTZ2vR4143L0ANjbFDZ7lEKASNEmKlDU7sgG
	ZU/ovWLoBr3bdVGmF2r6muKWwQR1leGq2y0HUAVJex/xHmK1rpBxPWgSeZoEca12
	7UJ2sqvNZYsIN50mieAGmGyjaf+mwSGLvCrSw9jpTHI4PAIkt4V0o5Wzeyv/u4yS
	Hw7Vet8kPNHaHHy3HazQEIXv1Y+MAZ2RQCNGOm4e4sX9d7yki7kSa2HboD3ypEkl
	Vm1z71XoofP/uwywZ5Qw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x5vn98r8y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 17:03:31 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42TH3VL7022545
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 17:03:31 GMT
Received: from [10.71.108.229] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Fri, 29 Mar
 2024 10:03:30 -0700
Message-ID: <b328ca2e-ef80-4bfe-80e8-36f4fa18a0f4@quicinc.com>
Date: Fri, 29 Mar 2024 10:03:30 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/panel: simple: Convert Innolux G121X1-L03 to
 display_timing
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
 <20240328102746.17868-3-marex@denx.de>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20240328102746.17868-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: br2U0U3VLCC5ZzcDOHyyB3N2OP4MDDNv
X-Proofpoint-GUID: br2U0U3VLCC5ZzcDOHyyB3N2OP4MDDNv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_13,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403290150



On 3/28/2024 3:27 AM, Marek Vasut wrote:
> Use display_timing instead of drm_display_mode to define a range of
> possible display timings supported by this panel. This makes the panel
> support more flexible and improves compatibility. No functional change
> is expected.
> 
> The settings are picked from documentation [1] section 6.1 INPUT SIGNAL
> TIMING SPECIFICATIONS.
> 
> [1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121X1-L03_Datasheet.pdf

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
>   drivers/gpu/drm/panel/panel-simple.c | 26 +++++++++++++-------------
>   1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index d4c30a86d15d6..737c78b3b8a23 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2592,22 +2592,22 @@ static const struct panel_desc innolux_g121i1_l01 = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> -static const struct drm_display_mode innolux_g121x1_l03_mode = {
> -	.clock = 65000,
> -	.hdisplay = 1024,
> -	.hsync_start = 1024 + 0,
> -	.hsync_end = 1024 + 1,
> -	.htotal = 1024 + 0 + 1 + 320,
> -	.vdisplay = 768,
> -	.vsync_start = 768 + 38,
> -	.vsync_end = 768 + 38 + 1,
> -	.vtotal = 768 + 38 + 1 + 0,
> -	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +static const struct display_timing innolux_g121x1_l03_timings = {
> +	.pixelclock = { 57500000, 64900000, 74400000 },
> +	.hactive = { 1024, 1024, 1024 },
> +	.hfront_porch = { 90, 140, 190 },
> +	.hback_porch = { 90, 140, 190 },
> +	.hsync_len = { 36, 40, 60 },
> +	.vactive = { 768, 768, 768 },
> +	.vfront_porch = { 2, 15, 30 },
> +	.vback_porch = { 2, 15, 30 },
> +	.vsync_len = { 2, 8, 20 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW,
>   };
>   
>   static const struct panel_desc innolux_g121x1_l03 = {
> -	.modes = &innolux_g121x1_l03_mode,
> -	.num_modes = 1,
> +	.timings = &innolux_g121x1_l03_timings,
> +	.num_timings = 1,
>   	.bpc = 6,
>   	.size = {
>   		.width = 246,
> -- 
> 2.43.0
> 

