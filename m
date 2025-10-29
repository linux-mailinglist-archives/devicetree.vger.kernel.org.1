Return-Path: <devicetree+bounces-232455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE18C18129
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 483E84FC856
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D902EB873;
	Wed, 29 Oct 2025 02:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XXWZjrTk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hqNFCzEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445D72DF719
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761705472; cv=none; b=rn2OzHhF99tyHM5COSgEO/odZalCfkhBZACN/zCMpDb60ti+DnoNJrsrxJSeGt3NY5k2HyCTaLc1bLHGQGZXGc0pklFEzoKlyFqeA7ld/buVU22DRPyVGoOuzQ19H99yl5zPbK6O67W+SmPJnUsnODhfEJVQcIeXoQW/S0rDV14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761705472; c=relaxed/simple;
	bh=d6h8BwPEoEpBaR4PWqheH1siX+Dt2vQwXa52l0/ZV4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aOqPjoRb820uCOo9raA0f+A3AvJhK6REyZgMYTIFfx1L8L12exHdzZfhGVpt1492+Nk8pCF6baD/S5iLA8NSYqtY8rrRh+oaL/90fovnVnksQiiJz0xaF/nHzt1Q81UZNnYVdB2YNiiwE5zeztbK2hD/OV9wMDY7BEtdMWLp1RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XXWZjrTk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hqNFCzEF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlLkN2575179
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:37:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0MU0AfPnpKaX0wUSQTeDsGNj
	N1sxzIkts1un5DkBdeY=; b=XXWZjrTkn25TznXvh15LPt4hslGwgyTqqhgaIoo9
	g1g5zRJeHdSi0QFaO/L3QjbmehOOUxk8KtC2znoLu2m8ELsz0ZoJ+ZRJar39N853
	/l5eir0IJEUeBPSSfgp3hcyaj9CFyhRnZiTfk8T4g3fHU4IhX/IYMPOJ/uLDjc/m
	HaEt0hmAG82xW6Es1oQBJE6Z3I6j7je4GMEMCddzMq5kPx2vavfhpitjkcZrETfu
	hDMWFsX5wWyGjwaLbaa6zdCf3luotzUpnkzC+aZ65Q2TUEbWeR2zDBOEgujahb8X
	NcYh7tKE3FQdNis2yudm7dE5acfM05Tu6pxvdIkT24F6Tg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a20wv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:37:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-89090e340bfso1340642885a.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761705469; x=1762310269; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0MU0AfPnpKaX0wUSQTeDsGNjN1sxzIkts1un5DkBdeY=;
        b=hqNFCzEFfA9phW0dQ4Q5+9wpdK0bwsZIIpFU/gMeiqYAXZ2fE1BnrnWCuqCcnnhYeE
         X1SXvH3ZCiFD7yc0y6KqJThbEDT9hpC4a6tLr5LOo4P14dvyZr7Cwqd0PLSlBXpZuu60
         +zhSYtmBMyUoRvurb2vMUBN8T513GITSY008ms7QJd3uTSQWnwzZnOsAhjZPnRs8wiyU
         lfDZiEqbxOS19ENuLoET1o2XpG6jvOJ0BCM14yFRrLIrxO/9so7oQvt+ltkb3STWTVj5
         b9AK/5J6D4rD/P4TVhWFcHzj4jSyObJLMb49OFvz/0xslEnXdecyb3WHD+ronqXCvYfd
         Hlmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761705469; x=1762310269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0MU0AfPnpKaX0wUSQTeDsGNjN1sxzIkts1un5DkBdeY=;
        b=YyeT3qMvI4GNnUwiw6Sch59HMZzJlLijvDT9SifWKC88+daCivnByJ0HymwXigtB/P
         jQBKrhdwSAyGmcs3LWvuAHZMZueQ/Ornk2Q3cl2C0Qtze2K8YDIAWeCFOqVgKOKpwOy6
         1P0Ml1Q7S6Ut78prC2972OWjVkt56eyYBv65KCPW8fI56mCiRokF+iUEUhbF/5B1BOif
         1mYf6uwzZ99QE1sIXRSlR64Tvb54rs7duNuucDbOfqSRY94ckhf3WGICL1LCZtVTaXJ0
         HUIP8ZAhXW+eYZVBlOXQfJJw+93Xt5AH+8G2vVESc5uMJFfnRsPXC7oSeqHVYdfSE7t0
         X4qg==
X-Forwarded-Encrypted: i=1; AJvYcCU7JtfT6PsCuI03vc4iQCzVbMxIpeCurD7S4Zd5q/8uR4I99UV3dFYJIR09c3wpI2JOttNKEhxYsGTX@vger.kernel.org
X-Gm-Message-State: AOJu0YwwXQOtyrmuiS9rPz09ZSq5O2zvP+ECLx2dsZbvwjwHoMA8hzCc
	JOtV9P+I6VkwnpUxwXNlLQu36YAU9yKm+L/MFW+wfxthPlbCwuA9/a7rNIjiZvTUaH/6nHQwZOL
	xOK6lwinf065fHcIYjdKKLXQ9PQofamCXXaKczx/Pa3cdUseDA0EodFSb8WgQbFi3
X-Gm-Gg: ASbGncvQWPp0m1sQB9lSIn5pgUvUJZUGdZg6BmnyV21ca93ZUcl3ehVNZVPtiCD9+TO
	kWjg3uKTvgobe5fAY73iXf0FPwTaK8mZa4pjLpOU/BMyGN1e1DEjMve5nrNH5UeMMXwT2f5xiwD
	ok3H2bgRFqgrCmxT6LyGB4ZwtR2BNMENZHNipbF9QLH+Co0IUooAG4Rnb6hJ3DD4jmfyqvRGqny
	MNpkkePyBNimGB3SakNFM3MwiakZsHY71l2r4INKYP879DdMtrNNTM+ZJ4Vv8X8piuBp7pSj0yw
	Pl3uW7XWT5Wd6s0HwlogCQOq46v9M/zY7RPukPrxYaOiJ4bBYQjsG7bZHWRZryiO59L8um8JsW0
	7OlDSjOKk/nL42LvNTI+m2U9kdkzH2vV2rstOWbKgJ9rpJt2EBEvirITu41tnLiyg
X-Received: by 2002:a05:620a:4412:b0:862:3e8d:e4ec with SMTP id af79cd13be357-8a8e6954aebmr215709585a.60.1761705469448;
        Tue, 28 Oct 2025 19:37:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLoBX0vUikArQtQfx9YHtcyAX45KfBodi8D7Jo3dT7imVYdDfzHcZOA7AEQgVHqJh3CLxDUg==
X-Received: by 2002:a05:620a:4412:b0:862:3e8d:e4ec with SMTP id af79cd13be357-8a8e6954aebmr215707685a.60.1761705468912;
        Tue, 28 Oct 2025 19:37:48 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f24cd5617sm963961385a.19.2025.10.28.19.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:37:48 -0700 (PDT)
Date: Wed, 29 Oct 2025 10:37:37 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 08/12] arm64: defconfig: Enable NT37801 DSI panel driver
Message-ID: <aQF98RvLuOlJZlFi@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
 <wuh7agcgg6spghilnx4amqukaaydj25u7kbdiod7fl6pu2ulvm@pmosyuo43cyw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wuh7agcgg6spghilnx4amqukaaydj25u7kbdiod7fl6pu2ulvm@pmosyuo43cyw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDAxOSBTYWx0ZWRfXx7voCRExKeqW
 x2Xv7QcjX1QjmsTs9sBJd8QksmPuuJL++VzHYJBPBnCmflj8F9A1uLmBIhT5yVnghFNYL9eEdMu
 RfM83rlxrGugK+JsRqY+d1EVdjfOcSqdeLew8avHBRTO5MsXqHPRH+4dcYxBLts8VaTAPm9kzpI
 GsI/nc739O3mLMQK0VLvI2VNcG5mLm/eLV4tlG+wjFFv0KLEUFIUYIyzVNXqEpDyTh2YfmGfCRU
 t7wNtOnfUkbukcd+InSdITggl2U0xTnBq3SswRYjZBSW1ZDeAlTWOgegrzoC1gEH6VM7y+3MZHG
 4bKYdKnGcIOGihMuZ8K7JKXlxoYJXl0g++X2bqsfk1SJXhHQwYccRV7GEbvLQmGDkMm0MDuvdGy
 jNjKGCfwxVVDc5PC2/w8hdwiBj9k1g==
X-Authority-Analysis: v=2.4 cv=V5ZwEOni c=1 sm=1 tr=0 ts=69017dfe cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yK9oDwkn9_E4VEaIOE4A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: -7XBBp0TYYaqTRDUYO_09cw2qHJr6cR2
X-Proofpoint-ORIG-GUID: -7XBBp0TYYaqTRDUYO_09cw2qHJr6cR2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290019

On Mon, Oct 27, 2025 at 10:51:23PM -0500, Bjorn Andersson wrote:
> On Thu, Oct 23, 2025 at 04:06:05PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Build the NT37801 DSI panel driver as module.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> You (Yuanjie) authored the patch, but forgot to sign-off, then Yongxing
> provided certificate of origin, then you provide certificate of origin
> and send it to list?
> 
> Please correct.

All the display patches were jointly developed by Yongxing and me.
So every patch 
I do sign below:
 Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
 Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>


I am the author of these patches.
So author is me:
From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
 
Do I need to fix this sign below in next patch:

 Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
 Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
 Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>


> Also, all other patches in this series are merged by DRM maintainers,
> while I'm supposed to merge this one. Please send it separately, once
> it's ready to be merged.
 
Sure, I will split this patch to push.

Thanks,
Yuanjie

> Thanks,
> Bjorn
> 
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 8cfb5000fa8e..537a065db11c 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -945,6 +945,7 @@ CONFIG_DRM_PANEL_SITRONIX_ST7703=m
> >  CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
> >  CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
> >  CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
> > +CONFIG_DRM_PANEL_NOVATEK_NT37801=m
> >  CONFIG_DRM_DISPLAY_CONNECTOR=m
> >  CONFIG_DRM_FSL_LDB=m
> >  CONFIG_DRM_ITE_IT6263=m
> > -- 
> > 2.34.1
> > 

