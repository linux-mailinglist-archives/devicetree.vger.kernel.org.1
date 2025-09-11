Return-Path: <devicetree+bounces-215935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 747B7B5330A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D6767B2B14
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265FB320CC7;
	Thu, 11 Sep 2025 13:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="biaE/Mqw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02C8314A97
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595731; cv=none; b=bvRoFzJCvVMoTKvt5p4yHwUkZZr6quGCWegdEl6robvOMTo6wXYt91JXGMU6GsBNVG9Tsmp6CnfbnPgkp134pgeluDR3tG9hxeDyDfqYtG+p2NPCLffjW307p2mIXZg4NvWqizmLHDpeoQul4j0adxNjxbBxWasOb71m/TnjjGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595731; c=relaxed/simple;
	bh=a3/3F1Hwla8iCniEm5e+upfONffsv2k2pBEzDuVTuIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmnNUlzf5A5lOA85XVWHgK2Oji5gNbEpd0jfhEA1rbvW18iikL3xHs2bg0tRUn8fkzfVoDo/2KbFTJDxmyEbb43s5nUh4qlC+fBKm8r4pkO4YCQdgUR7RaYTc3yryEkGnZPbVocF7MpGhQDBWzd5tJYdfL3QsnxDL7lM6C7GWZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=biaE/Mqw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAUJmm002273
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OTyomZaXMdmAPphIgRSMvoxt
	+heXM0Jm3kdfZ5nhAw0=; b=biaE/Mqw6t8Yhq+11rK5s6HymjveFoH84bZdi+A4
	QXLKg6aHYBSNuhLIU+EBiH3ipTpy09GohI3kFprt7m9oe6W2kuQoEII/jVpov/qp
	0FnoYlAUhh2ow7Yj6U/98nsEQwDWInI7Uo6lENaZ1z56UtRAXRx/iB9aiOaFNdEB
	QfNGV5O2DZpTJ1jFlI3SWZV03zRIfjZxokCI9Dk5HsQY4SJGQjLxr9EeS/p2/AvY
	CX9Q50nA9LDqoThi5P1vD2szYpw+JP+0fDGXT0Kix0ib9VJR+YXGgpBZGY2Svv9h
	6ffb9OUJNbXGnxAsW229ttwxlMd/5V8Ng8iVTgW/BQdvPQ==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8qrgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:08 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-545e1eb6bb9so908768e0c.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595728; x=1758200528;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OTyomZaXMdmAPphIgRSMvoxt+heXM0Jm3kdfZ5nhAw0=;
        b=tB9K9/H0iKZJrtwy2uGXuK92TFHUATuCwKg05eVyl+JpXZAWiAJg1sBXthxdX06Kn0
         jEm6hmSqPr7bNgIV/Dvs8DDiswhOH5UTZ1gFhQmFIyQvGamlCRhigS2+ZSU9Mbv5GJTw
         Tc8Aj9+ohU/e6RiAaU5U3V934cNOTxgvl0cm0coRJLbSR085ECpY/S2dl3AgAZm1pNGO
         uo+IrVR1JOVRnJMdX96WONktISz2oXUcdnx0Zr0svn/0eptigtQK2gR9rfv8ZoiqQlFJ
         6+IuM1nOYUqsWxY3CPYnSX903k4Fju9yHVId7jjGhjpdzki0D9h6XWKhKrU76/BvaBke
         v0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCVFeYRTZger+Kkj7Fw/5abqh2qTgAqlQPkzTDMWB62OtIjrgZigHopH6VtovA/JIOvLSzvfWjAX/Z9W@vger.kernel.org
X-Gm-Message-State: AOJu0YzMgopL+pdMdvxTLqKI74/dpojeF2et/vq4X4x98+FQQVZe5b9R
	yoSrUqSwx1ZxlTVwCFRnUmnbBKmJ2YIEsgy/vWmrxmXanAzBdZJs8wRaNJUbnXCuTTy6H9XW33n
	Z8/SNcWDhhda7K5Tssmolto78fGTO6OgXdDfx3YyUsiVN8JcEy+Mt3u34H5JfJJcx
X-Gm-Gg: ASbGnct0/BC+arcIp3kfwTTFptZ4Fvq4DgzSRzwPBWdExL2U47cOQftc5QNirTNRT1d
	Nwcd7QEuIdFuUYqz5bWQxxj0VNTm44sojVDn+Nckm9WY+mLt1X4SiRBDztkqXg/j2DbE6THubmB
	MW0ZQmvxEr8a5oM0ZveIM8t9vUEqjz958ssWoBB5hntLEyHkBiOO8q0/x+fCTOCV9m0i917mFay
	8t9KeIvxDI8sPJ9qLm9PE3Ad0EqN7vPEUpfoQvmMu/lky2JzTLJmL/4IPfGZCa+mtCpuq1haAfS
	oPrhr22pIxDO1bR9uj6j6lEi8vO052JvUKhZP0jwSrTJv8+OBGRkfTduS7nHIwV1xbcSLfAMYcr
	ZwDCSsAAQzASRArFXtSvYNy0DBM0TBe3WE+GOepug40O1Obm1JoB/
X-Received: by 2002:a05:6122:6315:b0:53a:d808:1ff2 with SMTP id 71dfb90a1353d-54a0972db37mr1035137e0c.1.1757595726880;
        Thu, 11 Sep 2025 06:02:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhv0v3J8Y27t/nw4xhWgdgl8LDzWqA4+LUKRc00IUTMLdn35XdPB2ACx0uT5AlsOiegud0kQ==
X-Received: by 2002:a05:6122:6315:b0:53a:d808:1ff2 with SMTP id 71dfb90a1353d-54a0972db37mr1035032e0c.1.1757595725938;
        Thu, 11 Sep 2025 06:02:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63d50sm414692e87.65.2025.09.11.06.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:02:05 -0700 (PDT)
Date: Thu, 11 Sep 2025 16:02:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/6] drm/msm/mdss: Add Glymur device configuration
Message-ID: <hxyh75aajlaymbvaghftcz56ttbpnmxfnc7amr66hhpbt6n5sg@msh4ljalgmvv>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
 <20250911-glymur-display-v1-4-d391a343292e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-glymur-display-v1-4-d391a343292e@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfXwgiOnnLqXHPj
 OuQXlPt9QZYXB20usWie3Unc2Qx/JliY8FhXdIPB1PpynDOe5BOlvABOjWwzua7WVr6MH4Lt0PN
 2H+FsQbo3tJKBOI3S37YwHPPMZunODAJRyn8XsfV7AtHehHhiE7SkVipIPLjA59tQfiSoF8bVyJ
 RcaqmpXX3zvT4uwRAEeQX1RXSd6HybfKgwZ3mhMftyr3D4u6r7hItCI2vyZTwFxhb+/DIXSZ99A
 CG+WNaut0Vfx1qz5W904xVQJg0NYPEA8ilF+JnQUZ51gUDSsIB1DePC2KSQ3ZKUHQDEOqkK8p0K
 J+kK7XGYZY2ldyHpTF2BEcBENHIO5dF7r/OOn4mOecag0PPHMZswOMBTI4uV/SsdLdcnvrtzmF3
 4gKK+K4/
X-Proofpoint-ORIG-GUID: 4YuN9d__TCziGhx1kws9gWWM1SBYQpwi
X-Proofpoint-GUID: 4YuN9d__TCziGhx1kws9gWWM1SBYQpwi
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c2c850 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=vuHc2ZSrshEqWGcFJyYA:9
 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On Thu, Sep 11, 2025 at 03:28:51PM +0300, Abel Vesa wrote:
> Add Mobile Display Subsystem (MDSS) support for the Glymur platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

