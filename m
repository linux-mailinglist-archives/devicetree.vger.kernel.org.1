Return-Path: <devicetree+bounces-16107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAC37ED87F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4323EB2098D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81DCF38A;
	Thu, 16 Nov 2023 00:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="kKl+tyN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2687125
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:29:27 -0800 (PST)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AFNeJbU011566;
	Thu, 16 Nov 2023 00:29:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=7EC19LKgQ+v6Aw+lDYbNKfbenGRZYcpN+E7LRr14WiY=;
 b=kKl+tyN+cJicQRRBxLUZk1quEoRamoif0ReVbRtxWeyYpQ9tjVGK5mTlnMT0QePccUH2
 C2xOmJjv+S2SBmg7A3Pa9XgH7Gb11g0KKqhWifSQoeiE8bupbLOYr7brtmBVXZblzChp
 Xt7egQdnmsNZNRP7+2yporeOVINWPJAXNa6efKHvPdkE1RF7kgUbcckweG8l8pPafmdX
 OxNIvTJ6cRdKiNp/lhgBJ+hJMAWH7Xrd0EFGQ7QRmIo0Rv21MMLdBd9BG+CLXvsRuffO
 GVGGMhpGiHL86UrVFttzMd6HOYadSRnp+eMKkgy82iq7K3gZjfp8zKhcLIVuhdTIXPbb RQ== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ud7b8r41a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 00:29:07 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AG0T6pG011728
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 00:29:06 GMT
Received: from [10.110.75.112] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 15 Nov
 2023 16:29:06 -0800
Message-ID: <f9326480-2da5-48da-8528-dc07c9b4f4c8@quicinc.com>
Date: Wed, 15 Nov 2023 16:29:05 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/6] drm/panel: nv3051d: Hold panel in reset for
 unprepare
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>,
        <linux-rockchip@lists.infradead.org>
CC: <devicetree@vger.kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <neil.armstrong@linaro.org>,
        <sam@ravnborg.org>, Chris Morgan <macromorgan@hotmail.com>,
        <sebastian.reichel@collabora.com>, <dri-devel@lists.freedesktop.org>,
        <robh+dt@kernel.org>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
 <20231116001742.2340646-3-macroalpha82@gmail.com>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20231116001742.2340646-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: R1GmW5Zin-bxDDZkrrhJDLQzHI46XkHy
X-Proofpoint-GUID: R1GmW5Zin-bxDDZkrrhJDLQzHI46XkHy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-15_20,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxscore=0 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 mlxlogscore=999 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311160002



On 11/15/2023 4:17 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Improve the panel's ability to restore from suspend by holding the
> panel in suspend after unprepare.
> 
> Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Thanks!

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

> ---
>   drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> index 79de6c886292..c44c6945662f 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> @@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
>   
>   	usleep_range(10000, 15000);
>   
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +
>   	regulator_disable(ctx->vdd);
>   
>   	return 0;
> -- 
> 2.34.1
> 

