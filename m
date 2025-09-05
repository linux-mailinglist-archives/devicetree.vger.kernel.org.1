Return-Path: <devicetree+bounces-213111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD53B44AAA
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 02:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 300743B5088
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 00:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DAD36D;
	Fri,  5 Sep 2025 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ANr/enwS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7141620ED
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 00:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757030723; cv=none; b=lbXdZI4s54cfEZXZScauIIwTANahjRw1eZ2qHiCQS8MkesNy46/W0P016zCUkknR0I3EgjMiJVwz3I5VfgPH73Bju1e9zMfOYkaG0pjeg9tPvAMngvoPdEXGf3DzMQwLbTlr7y86dEIVyFjutFtZVsm2hFkvin9GNi7EbmUDA1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757030723; c=relaxed/simple;
	bh=k0gBJ3jogdj1uP+WEsVSt9XnOlRNVILT17dl4GNHiWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fNZsArqf47i8387VUwu5uvD2Ie+3Ho7onHqYTQpK2woKWXNChgGI41ioannErzBHgV9s1AvCAAos+RLVDxgFrhb+xldSr1BMO+jfC9YERbQPOSymqsVA8I0M6aBuBFi5x4HnwtwLdnmAhhZd6KMsK/07aMtQhB+Khh5N0RSJtsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ANr/enwS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584IGieD032210
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 00:05:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FnmVTYg5qyuC90TtxfAp5dg0
	tH1WOGwDVnnWVDmLEjk=; b=ANr/enwScsWo25ym6A1EbFIwB93CVeITfG6TuTZx
	pQTNyfMDG8Xa7Ezx1E9lXfol9wnfY20WWcZ1cZbJBBou19QgAkT0glyuuZeIOeX4
	a0AUMxBP/GE1bFIpcGJYPUCVVxQk/ijPxwWqETOQFecWo+4FmKDfIATFMBdGst8V
	W28PAhm3PTEduaRGkkrY+HBb19Vq1TAfQ6NLhOd7LSXCmRq9NgZ4SJJcV8x3tDFd
	KYh+Zx/N7Hx78Jd+fhI5Q8Weu1SFTncOM1BU5XYGP44AQRj45IRkTo/HdeWdjqCc
	sAFxdBG1xZQexXDbkXRlAiULQIOCiOTywAEo4UTXGN251g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnphdcy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 00:05:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3200a05dfso51551511cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 17:05:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757030711; x=1757635511;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FnmVTYg5qyuC90TtxfAp5dg0tH1WOGwDVnnWVDmLEjk=;
        b=hQjSn3q75mpfIAwd4JVl/OoF+rRbdsDhDqeNa0PdZjFDJA5gL35hrO9G3dyKgJV3zJ
         mzC58opY4wtpwoXFR9H0XWtbzhlhsChiiULOI7R4NxDIelUM2/b8TTdQ1rxJ0n1T4LEe
         aDe1MguZO4d9X6AJsCPR+D1rLluArVbRCB0DZ1YcCiNtUQo/1wa3LvJf5R6zI4Leh2Iu
         hIACeFplXmixm01+YwnLG++ZiO3Epn8G31LFaXQim76qKUjzCg9PLJMAvHdaKUJZyUqy
         2W7qCmsJpXgDiLrrF08ossk0JAQeJzndX0qeH3LXX2ySDprjHMOIcCphimWMqwy1CsZ8
         QOiw==
X-Forwarded-Encrypted: i=1; AJvYcCXH85Ruku9qNCgewFvm+Te4JIi377UeJM5oghr75BFGObjrhtdi4ho3LU6UM8aQUv6oEbMULeoZ1z6P@vger.kernel.org
X-Gm-Message-State: AOJu0YzJo9f4fn8UiPqXzIjUP3F5IoHknnibE5jk6Elqz9PX5DA6MJmv
	SKu3dzynM4pVRxPJQSDCxbz/mmvemtdibzo8eOwcobKA+B4aDkQt/uwt1Kqda/EIE/1IprtKC3x
	YoYOxGS1ZrwocXtPbH3LqbrKpMFw6BQXRe/JXf4FanGSxdRAztTvf7N0eHTZ2PYnY
X-Gm-Gg: ASbGncvpAE+9jVhSjw8yQT/011Kme4GKBxJV6US2cK/eopeIbYAu/te+5NEZ/ZEqYpw
	y4XAjYFN9LSXzk0mfXhrkJ0gsEE27Czup/trwZ2eLQe7cmC52DkWkBFEyUd7ugeBK/x2GdsMEJC
	JlsfgnXQDYqBu2V+GBfq7x4rzqrl/70LlofBwVcN2z3mNkrKznQpb8f96iklzncOhiQtD1BBQBE
	nEY5owrvTIZkfDKHSSdD8nb1bsyJZK050SjDyqCPBNlQV7bM9aB07UQt8dRYR8TTDEQNO8We4AM
	904EsEjeyPmZsmahAa/svk8fvELVILV2lfOibJXiRUoQZaX9E0LGTCWBxrvSSdmhitK5igK+Row
	kj/RU91SrpOGLhmX8CH7JFtjqan2MnZlqEd2xdjUFnCSoQQjUIrYM
X-Received: by 2002:a05:6214:2025:b0:70f:a558:2955 with SMTP id 6a1803df08f44-72bc355d107mr23890886d6.22.1757030710915;
        Thu, 04 Sep 2025 17:05:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuz7rSIAfCmUlEAAoYDamxMn3kE6MVpgENng2PopXAtvFP/43O0lsMhMkHtfYx9Az0yrIbYA==
X-Received: by 2002:a05:6214:2025:b0:70f:a558:2955 with SMTP id 6a1803df08f44-72bc355d107mr23890406d6.22.1757030710379;
        Thu, 04 Sep 2025 17:05:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad4d3efsm1478298e87.146.2025.09.04.17.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 17:05:09 -0700 (PDT)
Date: Fri, 5 Sep 2025 03:05:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <u72vkfojufgvuqwuqpvgvnip3wogpgdcuc7bn46zo3bp7ogbu5@fmqotgyahrsn>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903110825.776807-2-andyshrk@163.com>
X-Proofpoint-GUID: poF90w2BO0m7Al2zP-4p_s8oAUOWFFXc
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68ba293f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=s8YR1HE3AAAA:8
 a=kdxkXz20giiO-m4nxtAA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: poF90w2BO0m7Al2zP-4p_s8oAUOWFFXc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX0Od27vNUn+/M
 O84qGqb6/ThZFNAWX6MSRNcRGh+ILiNw/sypZWDuuA/unBt/7qYwX+LGf4Fb8CuAaBoFdrYuWUa
 AW8Y9WcxVr3z5YKidS4mhaE59LsMDYx8cqrK/j3lPinLEqiQX4DuOiV7yLffE82Jqd2P3vmERA1
 olFYR8LDb/JSwYj8Entix2ikXFUfNsRFQmBuhboNj3ykkB38LF2xPmeh2A7HKca6xX3sLV19VPl
 Fz62OTcBx4BNqcAhYSx357JvG5Ppjo0ZJPUm+AAroTbmH0OlREGKfhHp9dNdwtyTyiI8EKSPD3c
 0JNldcS/lRcAGfRI9q1p8xA+F0oKp2vU4G8u5IJNeitxeAiYOqNmrYdfoPk0V9RuQ7Dtt2gnv60
 OHEjnL+d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On Wed, Sep 03, 2025 at 07:07:38PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Convert it to drm bridge driver, it will be convenient for us to
> migrate the connector part to the display driver later.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v7:
> - Rebase on latest drm-misc-next
> 
> Changes in v6:
> - Rebase on latest drm-misc-next
> - Link to V5: https://lore.kernel.org/linux-rockchip/20250512124615.2848731-1-andyshrk@163.com/
> 
> Changes in v5:
> - Split cleanup code to seperate patch
> - Switch to devm_drm_bridge_alloc() API
> - Link to V4: https://lore.kernel.org/linux-rockchip/20250422070455.432666-1-andyshrk@163.com/
> 
> Changes in v4:
> - Do not store colorimetry within inno_hdmi struct
> - Link to V3: https://lore.kernel.org/linux-rockchip/20250402123150.238234-1-andyshrk@163.com/
> 
> Changes in v3:
> - First included in v3
> - Link to V2: https://lore.kernel.org/dri-devel/20250325132944.171111-1-andyshrk@163.com/
> 
>  drivers/gpu/drm/bridge/Kconfig                |   7 +
>  drivers/gpu/drm/bridge/Makefile               |   1 +
>  .../inno_hdmi.c => bridge/inno-hdmi.c}        | 502 +++++-------------
>  drivers/gpu/drm/rockchip/Kconfig              |   1 +
>  drivers/gpu/drm/rockchip/Makefile             |   2 +-
>  drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c | 188 +++++++
>  include/drm/bridge/inno_hdmi.h                |  33 ++
>  7 files changed, 366 insertions(+), 368 deletions(-)
>  rename drivers/gpu/drm/{rockchip/inno_hdmi.c => bridge/inno-hdmi.c} (69%)
>  create mode 100644 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
>  create mode 100644 include/drm/bridge/inno_hdmi.h
> 
> @@ -637,14 +584,13 @@ static void inno_hdmi_init_hw(struct inno_hdmi *hdmi)
>  	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
>  }
>  
> -static int inno_hdmi_disable_frame(struct drm_connector *connector,
> -				   enum hdmi_infoframe_type type)
> +static int inno_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
> +					    enum hdmi_infoframe_type type)
>  {
> -	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
> +	struct inno_hdmi *hdmi = bridge_to_inno_hdmi(bridge);
>  
>  	if (type != HDMI_INFOFRAME_TYPE_AVI) {
> -		drm_err(connector->dev,
> -			"Unsupported infoframe type: %u\n", type);
> +		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
>  		return 0;
>  	}
>  
> @@ -653,20 +599,19 @@ static int inno_hdmi_disable_frame(struct drm_connector *connector,
>  	return 0;
>  }
>  
> -static int inno_hdmi_upload_frame(struct drm_connector *connector,
> -				  enum hdmi_infoframe_type type,
> -				  const u8 *buffer, size_t len)
> +static int inno_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
> +					    enum hdmi_infoframe_type type,
> +					    const u8 *buffer, size_t len)
>  {
> -	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
> +	struct inno_hdmi *hdmi = bridge_to_inno_hdmi(bridge);
>  	ssize_t i;
>  
>  	if (type != HDMI_INFOFRAME_TYPE_AVI) {
> -		drm_err(connector->dev,
> -			"Unsupported infoframe type: %u\n", type);
> +		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
>  		return 0;
>  	}
>  
> -	inno_hdmi_disable_frame(connector, type);
> +	inno_hdmi_bridge_clear_infoframe(bridge, type);
>  
>  	for (i = 0; i < len; i++)
>  		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i, buffer[i]);

It's not an issue for this patch (and I think it can be fixed after this
series is merged). I took a quick glance at frame programming. It feels
like the clear_infoframe should be poking at registers 0x9c / 0x9d. And
write_infoframe then can support HDMI, SPD and Audio infoframes in
addition to the AVI. I don't have hardware to experiment (nor time :-)),
but would there be a chance to improve this?

-- 
With best wishes
Dmitry

