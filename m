Return-Path: <devicetree+bounces-230585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC08C04325
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 04:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 861EB4F075B
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 02:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D083326561D;
	Fri, 24 Oct 2025 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eUrSOHyj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A5828DC4
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761274763; cv=none; b=N0WrGS1Sav7c9wZizTAgbWlkeLaFwl9BclAoALBlkNSsqbNXiF4js1Mc9liKC1IpUdoLJVF+aGH+j3y8hLCWE5AUxlWAUVrzBQ4hAdeYl0n7mQk+PTZ15P5X5997ZPtlKeCHq2Wclf0i7M1azxHLKwY6M2C4b7YC76Gt55hYYcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761274763; c=relaxed/simple;
	bh=s/bxgWQ2osWXjwr2KotWn8dyknnYa2vRT9k+3Hb3BdU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YtmIMSSGZLmyHESQ3DS5iuQ1CgGZ8o/KUGc0xW0b84SA9HtKfDy0o+VkGWhrOCpoZM4XNrpOMH7kDd/mkDyR6RQp/Cf91eT42y57AS7j/VFIH0/qnMHMdEHoydLRySmHD/caqas8FjESxy71YEMQ6BR86jFcYUIbm54C41ZfWyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eUrSOHyj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NERYl5018576
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:59:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=alHbWdl9Rj2RBorWf/yZSPFW
	VTNaKm9v1UuWbZYPNvQ=; b=eUrSOHyj7vWrS2OW5rC4UsVIJg5sxsso6QnHTwpF
	wsk6WgAezBockomuEiWMVZJ/Ihf9AqYUyJaiY1UUFMfD9BdifmOZySj2dh+//afH
	gl5O2dqNb5SskkfICscvFv8ZJ4PlEnmOe5U2oKoSoWO6h7lfNS2M/6gZ47aTpzHg
	ZcGUILrnS+M+WQNCkJVtrXNS/kcmeX3Hlj3dSpJgkxZUsu2V/QcgqeUNOT/EN4G3
	ViG3Lek8j9TvmY1EV8rgEtcwX2PwezOLkw373YD8UVQq1a6m1LwKGCz5FvbcQnTN
	LI/AVcYq93xWoPiwbNorIadVkXLW6L6/tfiXFh9Y/B9Prg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pttdk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:59:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-88e133107adso415284185a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 19:59:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761274760; x=1761879560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=alHbWdl9Rj2RBorWf/yZSPFWVTNaKm9v1UuWbZYPNvQ=;
        b=vgXbZ76sDXrURCR/OI2OhLi4qj0GJKenOE6TO3T+N5MrxXpt28zcHkVv0zNAgoNk8H
         djcXqeqWwea4kgnDqR9Ydigvskn8VUSs844P3bngFXyTkckfBtqQbnK5SleNik6SALyj
         DcGxUyoK/ke97G123URnCkwHXEJ8PVukN/FFd78LcSshvqMCT7TKj4yJajPGBCShwvzN
         T1qTfbvlq4ekhGWST1EGonG9Rr3iML+t4BZg/0fiDK2XavVhhTiVChhMud8vDZkgepR1
         1c3tl4SnM/Hfq+odEB7SWv3KpItKODYyq5m1N7U3DhXDNG7dJ95XXka4hO7EQfYj2jvG
         SP6g==
X-Forwarded-Encrypted: i=1; AJvYcCVTcaOgX50lb8gVnLohSfWNjeFxJULycxhB2f5hFOu/gJ39SepKL6cuL+U6/jQKFiq9M/AUbIC1eoek@vger.kernel.org
X-Gm-Message-State: AOJu0YxxBlRM3aJ9JW8ry4kQdfPAVAy03r1ozxdUBnZU2DhCQ0KGLcf/
	6vx0OKsM/Jn3cH4DQunrSU4PE7Z46gzmWbVUysAPblOXc/JJp81XyXPZh/MVbuU8joQM4XtLdUo
	xMzHwLdNdcWRl6dsnv0MGOGELpJohKvR2s8A4FHTX/xGZeLakAfbYpJtT58Ej8oPR
X-Gm-Gg: ASbGncuIJnsAaF5TEmFQtgyz6bfsbexT3ZUxzCn2jD5HPAZcPcC5yvWiWcdrLJUwYIf
	7+WMKii9IFHgW/a7IPMmDIpZpDJ1nsZZrOHhS2wRBkTOuin8dgfiqJKrqjarP5EDcSW+I1JCLUw
	tB3i+pU7Q3jAua/DFLTrEFhUyggh46CqFw8G5pQNpIwbtUhj56NB8fk10TtQC0cq6oWbBbneS1w
	xWI/VJ98blxPrQlyWLj8jLfzLSQhs1Dx2tAZxAkG4BspYnbcCsAIJFv08sUxcBNbJXM/SheZmEg
	YdhFb87Ai2EyvqmgliRG0pspC/CXGZS/X7Kf1AlsjoALpbolI7pY1/ST8ef3u15C3p/POjfNEyR
	cxIFN6n+dQbqocqrl2Tw3xpLgmJeqSEWayQvFMVQF+KdHvpVNRZetiW+8jXxh
X-Received: by 2002:a05:620a:44d1:b0:89a:ad1c:5135 with SMTP id af79cd13be357-89aad1c5576mr1081387885a.0.1761274759965;
        Thu, 23 Oct 2025 19:59:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHu/QPO9m9brJvJf/IlDol46ZUfnhMKMfRAWUSM0GHftzDhJSrp/isYST7dyuvvS0TjSLd0GA==
X-Received: by 2002:a05:620a:44d1:b0:89a:ad1c:5135 with SMTP id af79cd13be357-89aad1c5576mr1081384785a.0.1761274759524;
        Thu, 23 Oct 2025 19:59:19 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89c1264383bsm291555585a.59.2025.10.23.19.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 19:59:19 -0700 (PDT)
Date: Fri, 24 Oct 2025 10:59:07 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Subject: Re: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt
 register
Message-ID: <aPrre+WXogSZIE7L@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
 <nfekr4vi34ftxzyyf5xv4tsb5cr3tokiyfkerypqjf26dos3uq@42wcn6ji7nnb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nfekr4vi34ftxzyyf5xv4tsb5cr3tokiyfkerypqjf26dos3uq@42wcn6ji7nnb>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfX3sP1I7Az7S9v
 fF4Iqw/IC3iluheLagz9WIhR+BqUmNCR1O6VwQKUuDTX1qRswkQK62u4Wj5jZbD4oeH45QCZFFx
 fRUPw5s/hZAcj/9InrIUqsw3UvvyYYRqDZOeXC46VHgRuwz6RcW7N89biU0SoqyqkKgfGIVJf/+
 ZeI0NbSkJKFdATG//gl9BkYNzd3x+Pufu4leyLnqzB8Q/TM/1FcNeabIWKnGm67zD2JK+v3uZOs
 wrffifkDIofwaHHB7Ry45/y1fRIud4fBe9G265zJQkpm+6FBjqhTrAoT6vyx1WOCHMmbhNqIYEm
 +CXk3LdwIMPzQ8ks8c49g1jSFPjDneMyT5xdJjKUCeuF8Rvbs6O1DFXPNr7pxIIKqG5Ac7fkZh9
 hKqVXjBsDIsRx3GOJ2OhW9N1p8SlHA==
X-Proofpoint-GUID: IgFIBLU4Ow34-LNTtD7Kfc2faC-auQWj
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68faeb88 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EXeeq68Q20KqPfprLVgA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: IgFIBLU4Ow34-LNTtD7Kfc2faC-auQWj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On Thu, Oct 23, 2025 at 02:59:12PM +0300, Dmitry Baryshkov wrote:
> On Thu, Oct 23, 2025 at 03:53:52PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > DPU version 13 introduces changes to the interrupt register
> > layout. Update the driver to support these modifications for
> > proper interrupt handling.
> 
> So... Previous patch enabled support for the platform and it has been
> using wrong registers for interrupts? I think that's broken.

I want to express DPU 13 has different INTF register address, so need to add new
interrupt array to let DPU 13 interrupt work fine. Maybe I should optimize my commit msg.

> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
> >  1 file changed, 88 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> > index 49bd77a755aa..8d265581f6ec 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> > @@ -40,6 +40,15 @@
> >  #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
> >  #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
> >  
> > +#define MDP_INTF_REV_13xx_OFF(intf)			(0x18D000 + 0x1000 * (intf))
> 
> Lowercase hex
OK, will fix.

> > +#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
> > +#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
> > +#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
> > +#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18D800 + 0x1000 * (intf))
> > +#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
> > +#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
> > +#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
> > +
> >  /**
> >   * struct dpu_intr_reg - array of DPU register sets
> >   * @clr_off:	offset to CLEAR reg
> 
> -- 
> With best wishes
> Dmitry

Thanks,
Yuanjie

