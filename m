Return-Path: <devicetree+bounces-217125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1335B56DDA
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 03:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 045871899D7E
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC0086344;
	Mon, 15 Sep 2025 01:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSebP3PF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDDE1EB5F8
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757899782; cv=none; b=BssKqKDZ8GJbFR/SzKSW3io5keeEbV+jgH/zzIJI6Q1Fyj46Qrz6hOtdSQMq4ajj6wnpd8/bMlvg1j6pu5CdbCJbZRzJt+J/EKGg3nSdlw5RFUtGIYxy7JTTPLldVsWpbOh7tEvug0soD1NlGTCQXfg2ZQHVzD7SgXu54WlEvVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757899782; c=relaxed/simple;
	bh=FS4WMqgsqslR4yDWGigWbxBQxto3nkqKf5A+vLEdBrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxtD3cjTalcblzDTmCgJ7asVCvD8Y6gcj5MetAsPYIlSAxGRaNH2Lign54t/L5Gd1qym/3A+cKeHlSWwsj0TJu3ct2GQUz+pfwVnQPrFuchG6MHL5bcUDEFVL8EpOBVgJGbBqkZYsqj4Oeh5XcaQSfjvlClbJLGw6QLRf+dsN5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSebP3PF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ENcHO8023637
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:29:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=081Ts4c6Sl0OMTdPbJAM4b0g
	9D+s7Gk4DCZHTNQm25I=; b=jSebP3PF2GJc0EO0CyCoQ4wOUz8FaULrliEErGkQ
	53bCR+QfGjIC52oSR29edinDzljYwO5dgc5IQlOfmjr51eUFBUEpmFO5r2H9/6T7
	M1HnakzrPNf92HLBHgxkDNjpo78pTh4qGDppZ3Y7O7JTlQheWKMdhFW9aPQLO4qF
	tHhiBGCrqaWQkYU4bv0yKec+AmE+M1d5ZMissAW6L4Jgjr5HYU+AdHOJK4ADybIG
	il6/oJH4gu2h4+0YpSMv97Ud28bYsF2zMv5W7x7IjCCFwx3VIhqtu7YnBt0w5W6r
	Zs3GEd3Rok+Y60JR0Z+SDKhiPV/W7bIjQYYTGc3TjtLltw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chb0p6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:29:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5d58d226cso99402931cf.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 18:29:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757899779; x=1758504579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=081Ts4c6Sl0OMTdPbJAM4b0g9D+s7Gk4DCZHTNQm25I=;
        b=suwKggWcnRY+eD8nvYda3W31AdHQ8uPiC2T0DzEjgZs7ocYGvdFZfDmLoLdhn1DYzm
         6prh+wp6pO3KtV+tiMbjifEdvHjUURqJDm6y662LBn0yU3V5dmcCxzv/UH8TVyDF+Doe
         atSv8Q82vScEyudol/nKvuae1wYj5HyGSiVES7JORuqg1jks8CBwlRAs0dVdQrtKII71
         2fBr9Dfw2sYPCxW56HjbUevoGukGozhv4wcZoN4orG+N5LUxT9+GrbpJHKN5WNHR46md
         Ot7RrbeMD2MKUnaHz9qUTfiEU+0Go7Rl7scQhYW2YsrMZhGCSYd8S0uOAg91t16DftCB
         khHg==
X-Forwarded-Encrypted: i=1; AJvYcCWmyFBmVsX/FMYAxMDU+C3UJEqpWEzV5bDMp1nYkqaLSoXjmNk+LVFCGP8ORUIMGtv5pa9HTTVcxdl+@vger.kernel.org
X-Gm-Message-State: AOJu0YyhftVrBq683u4FuC1DZyUwTc5tsUBjJtjvFzCrKBPpeaAwHmIa
	U+8dwUHv62k4Gyr691T1spdNZs65opy2yGmcoVsr5djTxIW5zUgrCrdSBrsYqdZ2/KfF9utYD8u
	7WFM1VvCpezjFD6vcMPKt1kNubLifl/ARx91CJc3htrCammenVcVPKVKd2B4Tjt9w
X-Gm-Gg: ASbGnctOiyFbWYLYVjuP7YsFc+SCSfXrJG7fqXsVvV0ctJrqHL4++KFHQFWndM3Hvbt
	KP2NUNA1mRqnjo/3L3Zsj5WpeB74XDivOsw+vceLdvKO6e8MGuWMdoElLiXF3XP6ydXvrOOKd/I
	T0yfL3RbKi59GJ6VZ+M2sGFXnzKFHj1x+qurrFtWmPDljG7FxYimeW5w7dv8LaBewvPc/9SsOKm
	xr7R8OER1/9QV24SKP7Xb84MM/ZyVHLEkhvu8VzKWdoyeHkTN9YuZYjdAjE6z8LVZ1zj4aOGOWx
	0KlpGU59/ol5k0h5z9lBJ95Uuh0eD7x4iNrWQmpzvMecHrylM8CYxI+DE2999urYfMK0yB15WW2
	xBYooav4hxXVNJvTOAwRx9kdUQQ5FukIQba21SA150wby4RdN+QM2
X-Received: by 2002:a05:622a:4a0e:b0:4b5:fc2a:f37e with SMTP id d75a77b69052e-4b77d032443mr172471381cf.42.1757899778679;
        Sun, 14 Sep 2025 18:29:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfUFHnOueB5jfdanjNOkV7FBhYmPgfOM+8RbjwGzLjcGFLk0hmRdyW5v0/zJDOdx5fQLi0Kg==
X-Received: by 2002:a05:622a:4a0e:b0:4b5:fc2a:f37e with SMTP id d75a77b69052e-4b77d032443mr172471171cf.42.1757899778272;
        Sun, 14 Sep 2025 18:29:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65d119eesm3302734e87.141.2025.09.14.18.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 18:29:37 -0700 (PDT)
Date: Mon, 15 Sep 2025 04:29:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Sumit Semwal <sumit.semwal@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Molly Sophia <mollysophia379@gmail.com>,
        Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: Re: [PATCH v6 2/3] drm: panel: nt36672a: Add support for novatek
 nt35596s panel
Message-ID: <xi65tabv4sgblzmw52wxci5wsrdahshvos5we5wko4kfcfyozp@y3vw5gt3elwv>
References: <20250913-nt35596s-v6-0-b5deb05e04af@ixit.cz>
 <20250913-nt35596s-v6-2-b5deb05e04af@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-nt35596s-v6-2-b5deb05e04af@ixit.cz>
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c76c04 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=KKAkSRfTAAAA:8
 a=UwVoJdtYwaWtV1L1Eu4A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=AbAUZ8qAyYyZVLSsDulk:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: UoHBq3GV4wke3-YjegsiYyrTU0gBml0y
X-Proofpoint-GUID: UoHBq3GV4wke3-YjegsiYyrTU0gBml0y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfXyeWgBGZ/Qcm0
 C00NixMG/O7AgiwxO3AOSNE9z3o2uT1RGrHMNjwQG+x8sCE2PqRENoINy9NhWqiTCfOJF9h5SIO
 4cEamAP9MWlq49Zy4w7Exh7pqAEACKHXWxmR4gFw0FK/kgMTmROBr93fp7R1DUu9vTa9MMDE0d5
 Z647Y6fw3hKGeZXOdHqXAcbFHdPu8Jqu9lFS75mvxow1Qi5fACSzOxTc4P+QsFK1R6XE2sVoXyk
 Xx3ilmKkIbWGomDlAdyAzMoOF8BZGmfqw0Ad+5EQTaxSYReafm5y3i0ARuIji0mjRiraSietLmO
 plIlJrytKzMeacfcMFVj0bi+ztkDTkoVQMbeYsFUMWHg8MFTEihXj9Gf8Bf8I3OlE0eDdA/RpHk
 XGVoF0X8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036

On Sat, Sep 13, 2025 at 09:19:48PM +0200, David Heidelberg via B4 Relay wrote:
> From: Molly Sophia <mollysophia379@gmail.com>
> 
> Novatek NT35596s is a generic DSI IC that drives command and video mode
> panels.
> Currently add support for the LCD panel from JDI connected with this IC,
> as found on Xiaomi Mi Mix 2S phones.

Why are you adding it to the existing driver rather than adding a new
one?

> 
> Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/Kconfig                  |   7 +-
>  drivers/gpu/drm/panel/panel-novatek-nt36672a.c | 225 ++++++++++++++++++++++++-
>  2 files changed, 222 insertions(+), 10 deletions(-)
> 
>  
>  MODULE_AUTHOR("Sumit Semwal <sumit.semwal@linaro.org>");
> -MODULE_DESCRIPTION("NOVATEK NT36672A based MIPI-DSI LCD panel driver");
> +MODULE_AUTHOR("Molly Sophia <mollysophia379@gmail.com>");

??

> +MODULE_DESCRIPTION("NOVATEK NT36672A/NT35596S based MIPI-DSI LCD panel driver");
>  MODULE_LICENSE("GPL");
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

