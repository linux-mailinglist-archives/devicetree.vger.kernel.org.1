Return-Path: <devicetree+bounces-230151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F2106C00114
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8B9504E8C87
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0AF22F7AA7;
	Thu, 23 Oct 2025 09:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P6J0NOkt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A3A2F99B5
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761210171; cv=none; b=lB4FZlgTd9ZZqUYvkneghnfSliRNU/WOMU7HIXMggwqgqwodTdjW7/6WnHu9+ZL2Eivtd/LfAJeiJQo9N95MbolNWaX3gmY1X/pruT6ERGvGhDM5McbU7CnAOckN4kjm+S2N7EFcgCqo5C4XfNPbl45Aw7ztA7pO7ZiNyj2CJd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761210171; c=relaxed/simple;
	bh=m+eFzGs9vRs/sz3OrS+4k2Cdpuw3Uw6lRRM+fMwbiLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QYim/yEvvfepw/0Ul1fQHXz8eiaQjcbEthjbyKiFq86+XZ9RhdmJdkFbzMbBWzs23aaudYeGGmfmfAOD2AdONaWaJn2LHjK/iIs+wRySWbCpufhnVJ4OOFr94D76qVnElsLWUmgJVKkd5OgiIDKSjRkXU4i/b49Is7kPgiz15PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P6J0NOkt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6nmBu025826
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MalpcSnxYq9dA6R/9QMOFRvU
	abPhDrPSEV9lSVwC0ds=; b=P6J0NOkt6oOMbuj3eWr+66ziwPdaAZFJTRqHlbcb
	A2HmFa6tftnFXZg8ExvCzOspfY2NMEQpXW+q6Jm7f20z8smaax/oPCxFb5N54I/G
	rDKco55nNrd3COa6DqyEOw0ucsQIlbDQ2YFkzs6cK0TlMCdbw4AkEYepsC/Z202z
	ym7QPUej18Cc39bfsXFOz6g7oQuQjHvbXSNy7enzO4+K4pAOAs/ZmisG/elhYwyo
	hF5OECymbrXEC0APwLfiPwbT5p3/wmybp/SOsIOP9BMeaHvIcO0EngoC4UjsUNUV
	5vYvgB0B7OQ8EHTAuDAZKBLR4t+SjaOPYeIMXWekBXB0VQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kfj9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:02:49 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-792722e4ebeso569173b3a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:02:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761210168; x=1761814968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MalpcSnxYq9dA6R/9QMOFRvUabPhDrPSEV9lSVwC0ds=;
        b=R1HugqWF0CNwjQt59BQnE1rw/lefw0N/Q/W2Thur07CsyGQZVVtkV0bNC+Mzx9DsmK
         ERAjy3Tvxg8PbkjXFOaU6j3ZgIQwjL3zb6Nf28rDGdTsCnFMrdyebR8jXYRTPns7fkUr
         u8390s7xlE07a23PsUKCJdkqVuobLm4/rA57hAaRqAB73M5Z0dsh6x/9RCD9OHGOeZtJ
         JbEpjN9yXJWwULSVBzsgqdDNeRj5l8c+kLgr+Yb7wMT7mOutHEa/B62HTjFgyIIMyUZQ
         pxdgsAU9OV75TSfbpNAuKgCgmr5dhpZOAIkIf1onpqCumKAm7ad8FcQj5VILq3GLo8G8
         Q8VQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFHF01klPe/t+4anu86v9jfDdQzFBRIKPzzkDB/RMoBI+qXUpiPuqRgplltHXRnSc0XGXABAr83cEc@vger.kernel.org
X-Gm-Message-State: AOJu0YzvzvNO0pvuJ7//TNNlLcdcavL/K+OA6QgC1MyzWGm7C85fxR7p
	keQguFwEc1Q4Jgzobk1K3qJE2xPgoSCUrjvgo/QeV4976pnLsvrBh46MdeQVhmYVkGr0YDSPK53
	x3iGt6Jj6aELRDuFDamHfoEwIsDjIk8sBmgqcRslc9H9LkyApUWJCfN147fOlMd9v
X-Gm-Gg: ASbGncuj5Vxyy/svQjisr7ZUshT29hxl24eyDu6nOvGp2aMPQ+V7KnDyxL6p0ZdGlij
	QUQXK2x8MNf/mhzTBvycYht+bd2oi5oLSwskbtRH3JVje6zmNxW/qJv6qgUTc/9QV8SfL+C5Lav
	a9l7nEezr5pPGn2V1ncsgxm5aUwXhi5l3Xy2qTawHkNu4nrlH9wDnRJgXKqbW2/Fpz3lfgP0A3H
	mPj962K2aXx2fzzsYT7xiRrK83Tw9khBjgJUcgqSxyZyHIwLodP0ZI/bZaYc3mCY4xyLYGArxWu
	BUWPmqikLw8iNA6MjIDBPtRYDwb0ssae7pg4bNe29teZavz4A5p1XC414axru+C6Y8y23g56qEO
	dS/6osCTyaj0aYVxHuTckbrk1xF3a1pn6OepwWklrbXOBGS6UFd3rFA==
X-Received: by 2002:a05:6a20:6a0e:b0:251:43f5:cad4 with SMTP id adf61e73a8af0-334a8523f0fmr34082099637.10.1761210168351;
        Thu, 23 Oct 2025 02:02:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDRzsK8hhHTbHS88g7R6gWrzYmoBOYsl4eyr6xderBPGGwFWTjTdHzLDoKqJbYcV5t7wEgyw==
X-Received: by 2002:a05:6a20:6a0e:b0:251:43f5:cad4 with SMTP id adf61e73a8af0-334a8523f0fmr34082037637.10.1761210167794;
        Thu, 23 Oct 2025 02:02:47 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fb0196831sm1722206a91.20.2025.10.23.02.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 02:02:47 -0700 (PDT)
Date: Thu, 23 Oct 2025 17:02:35 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Message-ID: <aPnvKxiv2I/XeI4K@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
 <207f25e9-3685-4838-a384-e6bfe6f8c244@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <207f25e9-3685-4838-a384-e6bfe6f8c244@oss.qualcomm.com>
X-Proofpoint-GUID: NwLA8HEnH1dT8ybrIDLqevwUhuq1bT07
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX+7cZ4uTEyXBf
 qCxBF2REr+h630A8iKGqfGn48z6JYNVwKvWRaakJNBUYoWxNeLNCgJGC39cR5PglKOX8XWFMdDF
 zbsUT6LG/k2ggjimb88bpV/gjio5MrAA2Ciu8Z20IUxoE02p3wi7v+k5gLKYy/QsVqlhhswgpjA
 xdUIi9/0l2GpsnHFnTyeZxFcgQlMnePi51RsZlmLKBl3pZCvcLof4C5ULGGTj71dclSy284pgmS
 2LUXaXCjyWn6eGniatFllGAqAIkwD+tswE3hU9VJe4Fvy5wZmdb2GmFgxweZJgNuh6NwUWmCgti
 2JhAE+e0ITvrHCLh9FSoCZgv/HOBLLK5nL8KSvi6J9uXjgTXWu6SbMmDmEu/KCGSmWqaQYQJDht
 2kGAJ+vp5aFmjOlLaca+I+MUdrXQMA==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f9ef39 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-XBAuW2u0JZaUNqFeVsA:9 a=CjuIK1q_8ugA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: NwLA8HEnH1dT8ybrIDLqevwUhuq1bT07
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On Thu, Oct 23, 2025 at 10:22:36AM +0200, Konrad Dybcio wrote:
> On 10/23/25 10:06 AM, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Build the NT37801 DSI panel driver as module.
> 
> Yes, we can see that's what happens in the diff below.
> 
> You failed to state the "why"

 Novatek NT37801 panel is used on Qualcomm Kaanapali-mtp and SM8750-mtp board.
  
 I will give this reason in split panel patch.

Thanks,
Yuanjie



> Konrad
> 
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
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

