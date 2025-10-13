Return-Path: <devicetree+bounces-225930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB5BD2558
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:40:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DD611884D96
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9012FE045;
	Mon, 13 Oct 2025 09:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TzRKij5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7026290
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760348390; cv=none; b=HqHo+g4SBY41yzbClCId/sWkOeblKWvj7YqDAV6w9pn4lXKX9aT+uPsvUf6biFKQ5MPDS8a1al/Qh6wKAt0ixIxSuO2lAyqczRdNH4lyrxsFe6HwTak/WXbvHcqJRFy4kDjK5hUXoY3fndvLHlkR2msywU9raV2wNJXfv5WeqJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760348390; c=relaxed/simple;
	bh=q62qPK2IJ3ohVM5LL7rI6hahFz9XXHlcjnl3rDVnSTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AwN+JlKbI8f1e0yfsqm8rqpjZG63ZSFC8+7yHVjR0P89lHNpcxMZgxXLMuqNK+YvMbSORNct0GsDIfedkv5IM9rqd/LptjDyLfAd1iWRy4vebG/lTNmiXyOaTxuT7/EXicYTMDLfvcCukX0VRC8r5nTKGOXoJPnd1WjkcCkKLbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TzRKij5x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nVDJ022362
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:39:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ki9AQgeDXinhOnoOYGE+AX4oW0J7Rlumps/zQJrNlB4=; b=TzRKij5xeqn+/NlA
	nekBdq1Q7d0MtPY721CSvhlSbUBNCsvRqeVXsYhh2Zfo92aBIyphy0KikGMIrL79
	iyJk8QdkZqsOJaaesucDhuIkqf+gcr23TbZJL9Mz+iWG10IfTMaTcCsFxMHSorqY
	waAOjxpufMQP/fTnZiMYcwbh+EKP7UvcHXi9DjZ/0ldm7EKBMhPywNL7D+ZAmuFz
	JtnC7JGd3NRXcHdFIzJ96e9qcQaxZv4+CZwasPWjSs9g4EtrMjlYX3/zLb3iqOCj
	Cuu6D/uaCRrjMVlRgU//trSm+yvRTctbBABIcDFKOebxryPKt8kElidMzCLiQH+c
	FCG1kg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh640gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:39:47 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-818c83e607bso111467906d6.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:39:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760348386; x=1760953186;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ki9AQgeDXinhOnoOYGE+AX4oW0J7Rlumps/zQJrNlB4=;
        b=adVRQ+sqdZECYkTFiaShzrQ7H/oTXHlpuJX9tDJRnMRRV8KiHnLekF99wbYZkLOp0Y
         564roe6gYdGFWqIoPk/7Zg8+TWTU5C7PFgBLNoSrJgbmFSGhFL/PlC2vomDiBDk2F+BD
         xZVuvhDKI9dSn0g0DsexkPIuro7paHF+iiW7ojhMFkGAIoO9fqP+7+WWGtNbsEicQ0pv
         J+9KcWkWi4fhGE+wnwcp/gOTWhkAZszrrPQgMc5aIZ6HhyfP93miGdtH/6oxPqyFr5f1
         MjaTgG7gSHOW1nMW5AKCcJqM8btw51L2uH84rW/ls9FA2ezC6yda7I9XV6oSXQNUeffI
         MUAg==
X-Forwarded-Encrypted: i=1; AJvYcCUbZAHoriuG8pTrX9xqPBPKyWQ7WmJy/S4Ets5iGH05JeJq+Eb6GyfwfJhrBLXdHCVEt2oco3kjk+1N@vger.kernel.org
X-Gm-Message-State: AOJu0YyQjJ9T1spxpGb/I6XA4JoKA++m7LyvNUDSGEUaXM8d1zHJK1E7
	oOd2sbrxtLuPWFOdgCX1jb/UI51lswmMkKO7ZtyHmlpp9N/eM7guHY2E9ro2V9QCAFSA71CoQPo
	BCDxJ4U0mtmT2DTQbLDo68heiYy0EpOeZko0f1WXOSyvi3SvB+lyorxbbMOcdBccx
X-Gm-Gg: ASbGncvM3+YBYJtcerPVR1Se3dNIoodSs82+LLUqfR8I+K7KnSkhJ1ilNwpkdrvsKKO
	z1ioNFo7N4KDMZPDyQx+w9coZDbMJ2eNnBrL8FGj71qiQEQrUlvlCWzY72EGYQdYwRRxEZuEbmV
	8esgwbwOKRx/bM9wIUCjvEZDNTz2sQtxM70EWjvbnGODD/8tTle2+UZ0SnVydrOetNlEoY0LXBq
	j5ClIYZNbdpT6Ysi/Oiu45Jnd/VJsvLVPymm+UFkEOT799vcMCQDW2d1yyjblBCsF3sfUwFa1Xm
	9Dj5xeA8MfF4ccMGij2zv3AXIK2AadBBQ2Xi87t2y06cp3LXF7hxAmkFxOZY2YeY0cF690vpumA
	YPjqBBPjgMeV0TJIIyLKH7ALkYD/cHfbTqiP7IllDxhhyzApLHvMxqIINr6LmGHOiUOovCwdvyR
	9pEaWO48mHa/03mDG4cw==
X-Received: by 2002:ac8:7d43:0:b0:4cc:1ef6:9c07 with SMTP id d75a77b69052e-4e6f5119a40mr214016291cf.60.1760348384684;
        Mon, 13 Oct 2025 02:39:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4qJbiYUTKZIv9sgbRJV/j0WU8jqQvzg61vG6N3jHMvsEi0Vl1Fk4PGWY1LSWVGJDhtbnwHg==
X-Received: by 2002:ac8:7d43:0:b0:4cc:1ef6:9c07 with SMTP id d75a77b69052e-4e6f5119a40mr214015911cf.60.1760348384172;
        Mon, 13 Oct 2025 02:39:44 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c8:f7c7:f006:1de6:d998:8e01? (2001-14bb-c8-f7c7-f006-1de6-d998-8e01.rev.dnainternet.fi. [2001:14bb:c8:f7c7:f006:1de6:d998:8e01])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e7f7f7fsm29981001fa.27.2025.10.13.02.39.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 02:39:43 -0700 (PDT)
Message-ID: <9cafccd5-35d4-46c5-aa57-1b0b8ec116e8@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 12:39:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
To: =?UTF-8?B?5pu55L+K5p2w?= <caojunjie650@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark
 <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Antonino Maniscalco <antomani103@gmail.com>,
        Jonathan Marek <jonathan@marek.ca>, Eugene Lepshy <fekz115@gmail.com>,
        Jun Nie <jun.nie@linaro.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20251001135914.13754-1-caojunjie650@gmail.com>
 <20251001135914.13754-3-caojunjie650@gmail.com>
 <cwgn24f6tnmytd4omr2tul4e5jjin3ijji3ff3qkumqm2xe3t3@ntayu3m5kai3>
 <CAK6c68jBwykcWZm3ckm3nwab-X9Are4rD-eauE4rXA2+XvuX1w@mail.gmail.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <CAK6c68jBwykcWZm3ckm3nwab-X9Are4rD-eauE4rXA2+XvuX1w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ecc8e3 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=RAbU-raeAAAA:8
 a=pGLkceISAAAA:8 a=tclqJqCaU1NudMZwD7AA:9 a=lqcHg5cX4UMA:10 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
 a=JiizpSU_mAIq9zsZDqn2:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfX2yokR/Flnl8p
 7cx2wNCnwfZXrJGgiJNas6NIpBaYQAdItsB38hcCh4Z45grxG+gAme/mbCslyVxWmdeHruJn7G1
 xuTlbhhTny5DFtSPzWBwxhbyjBkWxH8gP/SDpG4CnRwq2miZOnG1xEvqbembKhH22nM9VbjgEjb
 e5vYn/GoUwLvtkOqkfeo9gu/EvE8QEf5ndg4fr9zTy9U2CYZaOctJ+VcTHVw0BqGdS17zZ1NZ6v
 xkKCzGD1iIptMI2BkOVil8rtqC7GcI/vV5Jyjht0YT6U+GnpHuReX2rPu5L1jesLTUEda/AoNxp
 Jsulm0EV/ARJMCk/P51g7NK1yx6E6eu3ykabUU3vAL6U14kO/2cjAisXXlyfURLSINZasdR8qTA
 0dv3MFV2HqMJkPd0KoWq+m/rmbb7RQ==
X-Proofpoint-ORIG-GUID: 7uTXeY9i2l6t52moIJqir1lYxbVR4y9w
X-Proofpoint-GUID: 7uTXeY9i2l6t52moIJqir1lYxbVR4y9w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026

On 13/10/2025 04:52, 曹俊杰 wrote:
>  >Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com 
> <mailto:dmitry.baryshkov@oss.qualcomm.com>> 于2025年10月2日周四 10:04写道：
>  >On Wed, Oct 01, 2025 at 09:59:13PM +0800, Junjie Cao wrote:
>  >> From: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
>  >>
>  >> Some panels support multiple slice to be sent in a single DSC 
> packet. And
>  >> this feature is a must for specific panels, such as JDI LPM026M648C. 
> Add a
>  >> dsc_slice_per_pkt member into struct mipi_dsi_device and support the
>  >> feature in msm mdss driver.
>  >>
>  >> Co-developed-by: Jonathan Marek <jonathan@marek.ca 
> <mailto:jonathan@marek.ca>>
>  >> Signed-off-by: Jonathan Marek <jonathan@marek.ca 
> <mailto:jonathan@marek.ca>>
>  >> Signed-off-by: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
>  >> Signed-off-by: Junjie Cao <caojunjie650@gmail.com 
> <mailto:caojunjie650@gmail.com>>
>  >> ---
>  >>  drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
>  >>  include/drm/drm_mipi_dsi.h         |  2 ++
>  >>  2 files changed, 12 insertions(+), 15 deletions(-)
>  >
>  >Please extract the generic part, so that it can be merged through a
>  >generic tree.
>  >
> 
> Sorry, I don't get it.  The generic part, generic tree? Do you mean
> the drm tree? `slice_per_pkt >= 2` is seen on the panels of these
> tablets that are equipped with qcom chips. I don't know if these
> panels are used on other platforms, and if it is necessary to do it
> in drm.

There are two changes here:
- MIPI DSI header change
- msm DSI driver

I've asked to split it to those two commits so that he change for 
drm_mipi_dsi.h is more obvious for reviewers and so that it can be 
merged through a drm-misc tree (or through drm-msm tree provided it gets 
a necessary ack).


-- 
With best wishes
Dmitry

