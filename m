Return-Path: <devicetree+bounces-214989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 090B4B4FF2A
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 16:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFBF216C059
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51AA62C0297;
	Tue,  9 Sep 2025 14:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FHfDzJzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F371553A3
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 14:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757427563; cv=none; b=c2wS+mD7OpdDpoPFw80DraNnTigHcTbeeu9qAp6GoFq3YAttklzAzKyxAA7iTDegMV8/sEjDn7YDwaj8UTprgmBSnaTL9+pPPI15InKXbusEtYwPFVeUWkNCLHldtiK1Ub1X7Ln6KGHBmCov4RiN1pwXtRUTz43aIJix56Tt+d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757427563; c=relaxed/simple;
	bh=s9hJ+BVBz6d6wFfh5Nj/mV5nUoATxWWP2RUxcEkU5sU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mszKOzqbRHcTHm3xnkpJGcRvStltKtTGl1RYqOXJip6koFDmbaNn4kDyQ057qxtcrPLpdz+nsp49pnpnrLREpb/DLIxrkNZt1Jwo7hrEtsAgBhWbBRMmruIercnEYuB4z7zv5u5zxbdbio6U+O6zYnsNquRuc8IorMDf6PEE2gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FHfDzJzF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LRZl029821
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 14:19:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YeTPR1k+vZU309IbiC+EpuyW
	WbQULc9ECz+ibWI8mA0=; b=FHfDzJzFEl8h7G9RZyps3VseA37OKrkpWMIL4s1q
	/WTgfpefcoHBPxIiJSBEYyCl3Qb01pR2D4oeCRHXN4tTqdjJ0TTUQwFI9AJ+H96S
	Lujkogr4D/m3Lrx/C4sohlt6QZKV32dD7uouqLjmFpvx6glOYIyCcX4nM15rzXzR
	bDy2YfJuEjngqe7j0uQXECGxyQDYS5eatpJEVNnsBAnQnS9gJiRg1YYrjp/M40M+
	Qc0vks98ad5HkYGURUCGgMRnZJMVyOxpDADR30qG4xHwiTMIrDhnW/rhDrtPSzAS
	k/YGkJlFKcm601EIN+q+zpisT097dS5bSnQV1/bhPtYBGw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37vy67-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 14:19:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-729751964dcso110669476d6.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 07:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757427560; x=1758032360;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YeTPR1k+vZU309IbiC+EpuyWWbQULc9ECz+ibWI8mA0=;
        b=scOoUCMof5hWiG7nrri6Uv9zC7aEtIyfmWJoQq5Yf/7+VGL6Agu0X4SxkPo9DQJDLG
         SUdKrCEfm+/Fic2yKx356Lf/LbXZrgWXnETyUgBJCDeu7ek6G4GYXiN7x65TFX63qlqU
         aE8LwXalzWJlpGmbMcGAwrMVMDc6serLyHmPDRNzpb7gq/3Gb78Rt1k3AhwUTomnGhNC
         0t9nA/uYHKSv3qior/d4p5Qh7Hoghd61ygFaignJvmYM88DCPdCGMy3L8vm/M5r//0ah
         R7FrweHVC9A6Y/jHgIS3MzJik9xV1DThgcWjvJp0lGHzJ0outulAXM6cXAY4W9TJGhZm
         dBjA==
X-Forwarded-Encrypted: i=1; AJvYcCUp6srT0j4lsomo93+gNJlgkbG56c+t4/eZf8gjtCkcNLF1FGRHoNYM7Ptifj9dSkWUl+dDEILhR7pO@vger.kernel.org
X-Gm-Message-State: AOJu0YxcgnwmXhoSMO9XZAhbJWoCfCmfEV14VyISk3HCSMRbjyU0d2Vf
	1QGHAUlMV4ZnDpKaGiBuS3Vi5XOnsU6J5XaIIWUNbxDQ8v3cZmNzO35/wsJgRngauQpM6UwQVGf
	vUUh3TUo9ipwgFV+Ai/6jej82dQxPQumkRI4ZAYKatzG7IgiOIH0tTevFomU+t1HD
X-Gm-Gg: ASbGnctKdR8TUAWIhWfsWYSoUxmypdOoy/H2uCfkLQM/OxDZfEe+l/OUArP8CVK6mbG
	4C6bqIO9J7i/02bT5aGeX7rmVE7gNbbmcC8nMsdHwJLiKGF4rtmeG8NW9qNWJ5E4AWlfcitSoCW
	3MucU8GrQr+kImE3tHXToSIx+j3hy6d5EiLsPSDoYsYqcGDDbnmFy4aY7/T4gsiz14OcfyR96dC
	rI6sdztIhzFBTMLofobXEZdK11ha91nLr1F8Z+WA5f+WQbSeJdy/DLwz2SAK4lVHR1n+2MNDieu
	waKbELD49PAAEmzEsQMf6SFDK/656ZEYmLMD2E3lm/llLCif7+6kGYiDFEUQnEVB/ls2/gdFNlG
	f8zDFQjPhm3mUkS9UYbMLsjZ9HRolCGj7arFiFSr67LA3k/ggYdaH
X-Received: by 2002:a05:6214:4c8a:b0:741:52cf:a104 with SMTP id 6a1803df08f44-74152deead4mr117448596d6.5.1757427559526;
        Tue, 09 Sep 2025 07:19:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMDQ+c0Z+2OHKURnsCRqbskK4wF5XETdbqofGHwdn68wRh2A/5/TcMfO4/wpV2hv1CVSa5Gg==
X-Received: by 2002:a05:6214:4c8a:b0:741:52cf:a104 with SMTP id 6a1803df08f44-74152deead4mr117448126d6.5.1757427559011;
        Tue, 09 Sep 2025 07:19:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680cce88dcsm561199e87.47.2025.09.09.07.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:19:18 -0700 (PDT)
Date: Tue, 9 Sep 2025 17:19:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] drm/panel: Add Sharp LQ079L1SX01 support
Message-ID: <varcinx2i3jtuu4jfsnfpyuh66mdvqe3caolddpsnw23ummpjf@yji57dunb22t>
References: <20250909073831.91881-1-clamor95@gmail.com>
 <20250909073831.91881-3-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909073831.91881-3-clamor95@gmail.com>
X-Proofpoint-ORIG-GUID: eY_QiGsMbxJd0Zs3-5sLN__eKdPpLpPg
X-Proofpoint-GUID: eY_QiGsMbxJd0Zs3-5sLN__eKdPpLpPg
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c03769 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=qYIr1XgVyKI1DLWvbXsA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX48s25D6hqZHc
 3ZjpFBrdi9BzafCu5wy/d0Vcitj+d+RXP8TzJHV0DR6J9hIpMJsiLX/o7Kf0b3zPNgS6UVSU38f
 YnbjnsAh6rT47cIJLgSCdbv+1Hp5Yb0Mhi43KNqASnxXsMWQbgJU2g0tozmBZP3+bFdm13xXF2S
 /RW61Z2XcB5eEYALr4nXxn31m7rZO7U7adpRpaC9D58fPacXIPJRKg8UULr7yXjWT8HgE3PRA2g
 /WmeMz6+CDXC3Pyz6yVWtxMXYuTfB+0fvZFIlwjm0Avp5MB0xq2Kh2eHeO3yPsfJmEdpUb+yLx7
 V964JDh7giU89QI2zXSLuXr18rOLFK/CKW3jmH7hEkmIyJNVin/UxFPQZJ/bicgZxvQP9AMuF49
 dIC+92iy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

On Tue, Sep 09, 2025 at 10:38:31AM +0300, Svyatoslav Ryhel wrote:
> This panel requires dual-channel mode. The device accepts video-mode data
> on 8 lanes and will therefore need a dual-channel DSI controller. The two
> interfaces that make up this device need to be instantiated in the
> controllers that gang up to provide the dual-channel DSI host.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |  15 ++
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-sharp-lq079l1sx01.c   | 232 ++++++++++++++++++
>  3 files changed, 248 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-sharp-lq079l1sx01.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

