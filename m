Return-Path: <devicetree+bounces-54682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3800892260
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 18:06:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A0BD28B056
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 17:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84356137755;
	Fri, 29 Mar 2024 17:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="e1feYB+J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21A613792C
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 17:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711731807; cv=none; b=uYEqYoVW/gBHCRgySs/kHMGRtkOV3QeEK45C+97g2O9gwHFMoU+gWE+liW8tU7Tx/JBFbtE+vW3doXY4l1yeEkqeajJfzjElADWzvPtljuf5Xr+QT8oc2s2fWlgePsu76XtmYxS2bgA34mCAAx65dMT20ZuxDoU9udagxx2ve98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711731807; c=relaxed/simple;
	bh=o/C6dae7jOY8iuNBHN66mzmA+BPRJePNpdA84Uzcaj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=uEIjJoUG3K3fhTT4HSNyiSYBVVl3rZsIs2Q8iCqd8adYWLO1mCnp3sdMkNR5TY+XewIAxUmXXonrQbpPQSIYRGZYNcx4mWe8pLmTf9w90JY42Vkwa9Djf8Pcy0cTgS6VHhGsq45qoSQOKRJlbdMfxHUDt4ROeg4PxBaNqsPVyI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=e1feYB+J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42TGGbL7015962;
	Fri, 29 Mar 2024 17:03:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=mYHS1PYzPXAOWSxRoqYUORZgaQti8trOY34IHxsOj3A=; b=e1
	feYB+J2VLeslO1PZqLUqLbrfxvh/CHvTWO01bifi8425rn+rNg5LU0onM/HZCfFp
	MjyxgnCOH1+v5E4MjjzBRGemQV8PL/n991UlADjd8PCr6/JpxCO3RXDlRTpjjYnf
	fiASMfVlEbumvuitaaDxN9Za906JOrdhXjFmwsWn23o9dcnNtzJ+WGkBq0LhjRCT
	0uEc4/F0u2W7ENOUUiPJCvml0SFlGAzToDux0NS4UadrawXQhYvfeLHt0klemMUa
	d0BmtTzSH48Bs8wFm5mZEpWV41MTM/j0KwpPwaTrOQhKilIbfKR8FjeMRSd7pfLf
	QgVu2JCqdP2MwGwFJM4A==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x5vn98r4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 17:03:06 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42TH35X5015920
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 17:03:05 GMT
Received: from [10.71.108.229] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Fri, 29 Mar
 2024 10:03:05 -0700
Message-ID: <a278e765-c300-42d7-aabe-0457508a70b2@quicinc.com>
Date: Fri, 29 Mar 2024 10:03:04 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/panel: simple: Add missing Innolux G121X1-L03
 format, flags, connector
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
 <20240328102746.17868-2-marex@denx.de>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20240328102746.17868-2-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: f4-KCHl2X8rho_g4ATxAKoCDPlO9fehG
X-Proofpoint-GUID: f4-KCHl2X8rho_g4ATxAKoCDPlO9fehG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_13,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 mlxscore=0 clxscore=1011 adultscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403290150



On 3/28/2024 3:27 AM, Marek Vasut wrote:
> The .bpc = 6 implies .bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG ,
> add the missing bus_format. Add missing connector type and bus_flags
> as well.
> 
> Documentation [1] 1.4 GENERAL SPECIFICATI0NS indicates this panel is
> capable of both RGB 18bit/24bit panel, the current configuration uses
> 18bit mode, .bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG , .bpc = 6.
> 
> Support for the 24bit mode would require another entry in panel-simple
> with .bus_format = MEDIA_BUS_FMT_RGB666_1X7X4_SPWG and .bpc = 8, which
> is out of scope of this fix.
> 
> [1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121X1-L03_Datasheet.pdf

Hi Marek,

Acked-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Thanks,

Jessica Zhang

> 
> Fixes: f8fa17ba812b ("drm/panel: simple: Add support for Innolux G121X1-L03")
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
>   drivers/gpu/drm/panel/panel-simple.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index d9ddef0e675a7..d4c30a86d15d6 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2618,6 +2618,9 @@ static const struct panel_desc innolux_g121x1_l03 = {
>   		.unprepare = 200,
>   		.disable = 400,
>   	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
>   static const struct display_timing innolux_g156hce_l01_timings = {
> -- 
> 2.43.0
> 

