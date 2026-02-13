Return-Path: <devicetree+bounces-265455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEOUHlJoj2lHQwEAu9opvQ
	(envelope-from <devicetree+bounces-265455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:07:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E91138D01
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA71F301B92F
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5335E288C22;
	Fri, 13 Feb 2026 18:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oHG/B6Tr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KeBXWB5h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F1D26738B
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771006030; cv=none; b=Js3RmvlXnFgSjVUole8TbaVEGpL7ggJ4xJVlJc5t5MctDO0EVkhgZhKC61B5TuOBtMfC57m/vS5FQV3EJuwZvQeqrjrF5TjZPhxOfllwEAglhRcv8l3RR/ip99K75v0PUAwiFQDawG5ZImtcO9i+T3GRybqOOKbYaOWF5+H57t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771006030; c=relaxed/simple;
	bh=ZVrYI8m72zNePeLKC1yFLg0bpBK0SilraBPTtMQk/+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BCDIYm/W6DAWeUZOrGpObfPiWo4YCWgtjSAisWPbBojfs3yILfMeKhsjOWbWW0RqVqFkW7ym28hfCrHTP0chMxC93cAK7tU/TKJfCJuFARQx2TjqjCQF3kd6ra66+umeDW3xkmcNlEQX9DBCF0SswYjI4eJfVERhvgrpJEmZhQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oHG/B6Tr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KeBXWB5h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DANLn52691792
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:07:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=juCPHRGtn8d9yraSrdzmynq9
	tmNMvO7V3Lxbw8+gznI=; b=oHG/B6TrA5NIyAIFJJgQHZLcc5U81qaxsmBVv2Zf
	pzJyTIXB440UgKDkZiM+Hq7eKIv5ko03m5fYMEDnJBE0WD1wNUZuJu19aiSu35b8
	JjhEJlZ1CWuC3fJVe5hPfDT/1o1BrpfGZkYW9Sic/5dAIXNl/V9pxwFUTdQV4Rd4
	vByHkmHp5PKBsJZBzubhb5CwXGrsTYv9tDUvKPJOZ4vqXClahaqOxk401O7ECyru
	d3td1DebuCBMmyMZWFpkm6m0vAonAahvLt/I7HkcxRfveUTqM6WvkkUpOEzuX2TV
	uJ9DyG7J4rXWVOdIKsFIsrP0rCW5vBR/mie+Pv+KDvyQDw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9mb14nh3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:07:07 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb42f56c4aso339503285a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771006027; x=1771610827; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=juCPHRGtn8d9yraSrdzmynq9tmNMvO7V3Lxbw8+gznI=;
        b=KeBXWB5hiz9sQJVSo1dQcZ6ODMmDPoYdEDauMGmhqI1esMAK5OkoVWTaGFLvsn2Tde
         HuilBKuM0A4Q3rwmerP9p8xN3kol2CulZZv+wfEfZCplNVb7mtfDr0FW7drA1f8UnHmf
         BP7BnVcXS/Lv9uSaiRoKbkzwtrBRSeIL+4ygu6vLmCuFokokHqmAFBjLcLmomBFdCe+I
         CmWGqAEoJvVAZSpnLRzyXQquMmCjGSk/Q07ESvPqRRG2SXJbVX4lzDYCoWYqu4vOSfIr
         IrQsgCo7FJxmpn+XJVwIY8rNWFjKOoe/DvzDNw+LYTGAguWm13IuJoLrJbUHaT6+LEnM
         dZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771006027; x=1771610827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=juCPHRGtn8d9yraSrdzmynq9tmNMvO7V3Lxbw8+gznI=;
        b=LB7a3PZbRgEAWgM2uQePnJMndRwutIftvz5icTebfIyi1/MQMfXQ29HNYyaYLGCxvL
         MMZ7d2gRGgaG7+2aRDlfqEqc6Xth0sOabO55mjBUYFscGyTG3osPNR6KfolN2Nn41+Rd
         4UR01ZTsPloCYt15D8+186NsnMBijwGRJEzgIGA5ARAWXTK1nobeBSdA5ojngqNxLLC4
         dFsiAVA5qLx8xFESeE85O6XiMmro/O1upycvGxglj4qxiaeciRmmBCaK5SpgkmDHihpa
         F2gL9dVgWIvlWaea9n0OurMQs+EF7EZyjVtK/OtNXqbrDv2pWEV9slziK3fXMyJPgKBv
         JY1g==
X-Forwarded-Encrypted: i=1; AJvYcCWTaPyuGlg7LJ5Mt3wpGSaEFcNLSl6ZRgfgx7aKTUmI8c9pFAljwYh0QJcfHuVEz00GWLbtgAR3VL5Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7UXw/H/H20mzDkqOFQGASwu4CRdQWlpDUaadYLvc8zEYX4zDY
	dIvK5zmt3UNGDXe4OQAUgOskgrkdnQpJb3xfE7f3TrIVkzZt/oYZdigeDj4gyDS88IfEcdkBpvW
	s3rjoOlsMJxYtNKNbNnoR7ok7JUldLWFUjvdaZ/WoLLA3Ht28TLmoasRJedB9Dtoj
X-Gm-Gg: AZuq6aLhVvjWbCG+KvtESpJSrL5rUUZ2bSlE+QVOFU6x7DOjX/k2qpqKEHM4HJ1yNTb
	xM6fHeq8GPyGIVr6RM+FBKAaVLbfGDdxvxdCGzUtWwhEr5cTktpX6y8kz4YO+KPZrzLmP7zw9VI
	10XR3Lw+gBghEJRfUvxGRNauebX77S3zi4ZNQm1SlidCbs1Dj3vzyD2KeS4UUktxaFsY3MzUmga
	q0+KmlH1DE7yydAJhATySuBou53jp8gtUY/hdXYsH4ntucwKUSP5O2bZAn55vjcEy7/uOMKsHkw
	m2qqKSg5PHjIcnzvRGO2JVeHWypwGpRwukEGtYQqZPa1bWYEoCqhd5ZaFN9g3JGMIS5c+JntxFh
	tjv8j7H45GzGOnw/VwUdzTe0zHL1qOuAgkF94kWae01l7CFwdMCJamCGatwb/uCQaP16J15iNMj
	Zxybiguv03PsvSAIvQZhWw45rWkNl/6ipme6Y=
X-Received: by 2002:a05:620a:290c:b0:8b2:ea5a:4149 with SMTP id af79cd13be357-8cb4248158dmr348961285a.65.1771006027067;
        Fri, 13 Feb 2026 10:07:07 -0800 (PST)
X-Received: by 2002:a05:620a:290c:b0:8b2:ea5a:4149 with SMTP id af79cd13be357-8cb4248158dmr348954485a.65.1771006026519;
        Fri, 13 Feb 2026 10:07:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56306esm1695901e87.16.2026.02.13.10.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 10:07:04 -0800 (PST)
Date: Fri, 13 Feb 2026 20:07:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        yifei@zhan.science
Subject: Re: [PATCH 3/6] drm/panel: Add Novatek/Tianma NT37700F panel
Message-ID: <gpkuq7b6mae5ib2xvphmir66pb6ysexhhfqkorve5zewkj4ofc@ryccazsoxqm7>
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-4-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210023300.15785-4-mailingradian@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzOSBTYWx0ZWRfX0VaU8VMGLHq8
 kbTGPN2EMegaEwLrLgLYIZNPJhvUhYKQx6DOUlSAXMK3w07arYm36t6TO4UKBI4FWGIZsyzpY2a
 Sd3k+yB93bEAulwBuKFbtB/pBtiOcIIvU7mP5OvsKUngxzislnqUBiEjWnl8AK83qSJFzPvg1KM
 kBtRYQ6w+JJ1yZOm8Wps7ytIOas5PMbK1dzvZ/T19G7HPPu+QQlVT6TTB1L7xL3V2X3aFpV7Nko
 lpq6xWc+Lh5uQfjVYkowWTGjGjFia2dOBg3juIE2qEwAr2rMEo5K9r+DLl4O9YLrhxYFVcwd2WX
 KY7ckTgyGob+8fa/j+1+zZL5eIodTxg5inw24/uYZu19+zbmTyi3BlecUigePkw/S3vuBMD9REd
 h8LTbsrvsBHhFcTI8Yc66JWmyoJ48s6VECkm8VdvEbhsR2b21staWPDZ2drIpcCu2j+y8ZP6H1l
 8ZpVhGfoBpndp9e/NTg==
X-Proofpoint-ORIG-GUID: xULKHAn8x7nFqNnVGIM4nCUdaL1yL3f2
X-Authority-Analysis: v=2.4 cv=asC/yCZV c=1 sm=1 tr=0 ts=698f684b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=NEAV23lmAAAA:8
 a=pGLkceISAAAA:8 a=p7dDDWI-mmMNy6hFEsAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: xULKHAn8x7nFqNnVGIM4nCUdaL1yL3f2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130139
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265455-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,zhan.science];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D1E91138D01
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 09:32:57PM -0500, Richard Acayan wrote:
> Some Pixel 3a XL devices have a Tianma panel. Add support for it, with
> the aid of linux-mdss-dsi-panel-driver-generator.
> 
> Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-novatek-nt37700f.c    | 294 ++++++++++++++++++
>  3 files changed, 304 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 76f6af819037..138d617e8195 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -553,6 +553,15 @@ config DRM_PANEL_NOVATEK_NT36672E
>  	  LCD panel module. The panel has a resolution of 1080x2408 and uses 24 bit
>  	  RGB per pixel.
>  
> +config DRM_PANEL_NOVATEK_NT37700F
> +	tristate "Novatek NT37700F DSI panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for Novatek NT37700F DSI
> +	  panel module. The panel has a resolution of 1080x2160.
> +
>  config DRM_PANEL_NOVATEK_NT37801
>  	tristate "Novatek NT37801/NT37810 AMOLED DSI panel"
>  	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index b9562a6fdcb3..9218a7d7ff34 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -54,6 +54,7 @@ obj-$(CONFIG_DRM_PANEL_NOVATEK_NT35950) += panel-novatek-nt35950.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36523) += panel-novatek-nt36523.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36672A) += panel-novatek-nt36672a.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36672E) += panel-novatek-nt36672e.o
> +obj-$(CONFIG_DRM_PANEL_NOVATEK_NT37700F) += panel-novatek-nt37700f.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT37801) += panel-novatek-nt37801.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT39016) += panel-novatek-nt39016.o
>  obj-$(CONFIG_DRM_PANEL_MANTIX_MLAF057WE51) += panel-mantix-mlaf057we51.o
> diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37700f.c b/drivers/gpu/drm/panel/panel-novatek-nt37700f.c
> new file mode 100644
> index 000000000000..491f1f30ce41
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-novatek-nt37700f.c
> @@ -0,0 +1,294 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024, The Linux Foundation. All rights reserved.
> + * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
> + *   Copyright (c) 2013, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +struct nt37700f_tianma {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +static inline
> +struct nt37700f_tianma *to_nt37700f_tianma(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct nt37700f_tianma, panel);
> +}
> +
> +static void nt37700f_tianma_reset(struct nt37700f_tianma *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(10000, 11000);
> +}
> +
> +static int nt37700f_tianma_on(struct nt37700f_tianma *ctx)
> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc0, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca, 0x52);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb5, 0x2b, 0x1a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x04, 0x82);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xff, 0xaa, 0x55, 0xa5, 0x80);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x55);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf6, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf6, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xff, 0xaa, 0x55, 0xa5, 0x81);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf3, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf3, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x90, 0x01);
> +
> +	mipi_dsi_dcs_set_column_address_multi(&dsi_ctx, 0x0000, 0x0437);

1080 - 1

> +	mipi_dsi_dcs_set_page_address_multi(&dsi_ctx, 0x0000, 0x086f);

2160 - 1

> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x20);
> +	mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc0, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd0, 0x11, 0x64);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb1, 0x20);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +
> +	return dsi_ctx.accum_err;
> +}
> +
> +static int nt37700f_tianma_disable(struct drm_panel *panel)
> +{
> +	struct nt37700f_tianma *ctx = to_nt37700f_tianma(panel);
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct device *dev = &dsi->dev;
> +	int ret;
> +
> +	ret = mipi_dsi_dcs_set_display_off(dsi);

Please use _multi helpers here too.

> +	if (ret < 0) {
> +		dev_err(dev, "Failed to set display off: %d\n", ret);
> +		return ret;
> +	}
> +	msleep(50);
> +
> +	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enter sleep mode: %d\n", ret);
> +		return ret;
> +	}
> +	msleep(100);
> +
> +	return 0;
> +}
> +
> +static int nt37700f_tianma_prepare(struct drm_panel *panel)
> +{
> +	struct nt37700f_tianma *ctx = to_nt37700f_tianma(panel);
> +	struct device *dev = &ctx->dsi->dev;
> +	int ret;
> +
> +	nt37700f_tianma_reset(ctx);
> +
> +	ret = nt37700f_tianma_on(ctx);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to initialize panel: %d\n", ret);
> +		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int nt37700f_tianma_unprepare(struct drm_panel *panel)
> +{
> +	struct nt37700f_tianma *ctx = to_nt37700f_tianma(panel);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode nt37700f_tianma_mode = {
> +	.clock = (1080 + 32 + 32 + 98) * (2160 + 32 + 4 + 98) * 60 / 1000,
> +	.hdisplay = 1080,
> +	.hsync_start = 1080 + 32,
> +	.hsync_end = 1080 + 32 + 32,
> +	.htotal = 1080 + 32 + 32 + 98,
> +	.vdisplay = 2160,
> +	.vsync_start = 2160 + 32,
> +	.vsync_end = 2160 + 32 + 4,
> +	.vtotal = 2160 + 32 + 4 + 98,
> +	.width_mm = 69,
> +	.height_mm = 137,
> +	.type = DRM_MODE_TYPE_DRIVER,
> +};
> +
> +static int nt37700f_tianma_get_modes(struct drm_panel *panel,
> +				     struct drm_connector *connector)
> +{
> +	return drm_connector_helper_get_modes_fixed(connector, &nt37700f_tianma_mode);
> +}
> +
> +static const struct drm_panel_funcs nt37700f_tianma_panel_funcs = {
> +	.prepare = nt37700f_tianma_prepare,
> +	.unprepare = nt37700f_tianma_unprepare,
> +	.disable = nt37700f_tianma_disable,
> +	.get_modes = nt37700f_tianma_get_modes,
> +};
> +
> +static int nt37700f_tianma_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness = backlight_get_brightness(bl);
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	return 0;
> +}
> +
> +// TODO: Check if /sys/class/backlight/.../actual_brightness actually returns
> +// correct values. If not, remove this function.

Any chance of checking it?

> +static int nt37700f_tianma_bl_get_brightness(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness;
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	return brightness;
> +}
> +

-- 
With best wishes
Dmitry

