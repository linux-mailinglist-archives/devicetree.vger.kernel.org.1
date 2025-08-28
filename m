Return-Path: <devicetree+bounces-210007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC361B39DE0
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:56:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD25D1BA18C3
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35ABE30FF13;
	Thu, 28 Aug 2025 12:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MLOYBOfx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D54A2E093F
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385789; cv=none; b=A41bLLaQMdYnIU8Rygsuf/KVLWm9s6wDuOrbYAorvfTpK4X+n6upiOWZRvXVlnqvHwjjhUO0dMswmrpn//j+HxaOI1P3G3DfF8PSJQmSxRDgyr/NQDA5jrD27DiqG7ClaACf3IxcVHxd/4/2iNwnleDXXIza2Pxo6AQeGO8yPAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385789; c=relaxed/simple;
	bh=MjXAYHORqLTV4UTX7O2Nfa7nXdwBrj10df/XFRj/0gk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RDxIClRewJ88a5Xy+gjT6YL6OFA33nAfMJOpL7Ydy2aqRZBfnxQfD7gCOPTqRWCTHlDAxS0Dqxmhypz+dwY/r5v/bfnvrIfh/M0HpTJbjbA9kZ57I7dO5Jy+AlLQgc/C3zRtLvAxk6JJW55Hr/zfAAb8xIszAHI2uEDPpq9Tjzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MLOYBOfx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S6N7TL023046
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:56:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OdpmDsm62brobuQjUJYWRZMW
	8nEvkBWHHBR4Kl+p9ck=; b=MLOYBOfxkPhySalZJmsNJxpH0XwqD7DR0CWEmIoE
	JcPIo7+2i1H5T7AE7EZJvX2EoZ1HvOEe4bujMxMHnLO9cqpP/aZmCZHE/lpJ+Wad
	nMiRoSOAR26w87HyvVJfyK/ejhQvXNM0emS38P/Rf1sYjSeHE0YCCSpwHi9Lxcp4
	MkebjToxa5ES3MNmif0KwSWIsbMkp89IlMlhiIesEXfMn1PDKu1F7BkO/qZklzH2
	vV4iyTrApTG6NX7w2N+PJE3ecxd8zDeKaPqoFcgDle2jgmFUCBnTNDwYgZTLo9qj
	IaKTyP53y+09zoON9kvUXf311lp91+oLlw6RN1jywHAlUw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5r1gd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:56:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b2955f64b1so26091241cf.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:56:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385785; x=1756990585;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdpmDsm62brobuQjUJYWRZMW8nEvkBWHHBR4Kl+p9ck=;
        b=c8S1QrDaOAULZsTeNT292utyt1OUxYK4f+8wv+7fCvhKDs5isULLdjY8rtQMkza/0r
         +hm+PqOXc8A7UjCbhzt9actPkIxzWMmw+iPyG3cBgJCj5Lttpz99g35H9/VrcNttvmA3
         SbLFXNk6znjK0AfeDN4SFme4in6irOQkaH+WA/DUO+QI00OU1fdwu6gwUQLVy53DwkLP
         yI1SPI9LB7TL58wPvSXdCpJyBi3ile1lxRvjjDsv0YkvDaGYlFBdgNS2Jvlz4wPjeocS
         STO4qeJ8ws0aUjuldH4EigPi1XS3oij3uAfg9uzcZAITVd7s9i8O30uCxympN6RifJ5K
         KSlw==
X-Forwarded-Encrypted: i=1; AJvYcCUNQlblRNte8w2YXcCEg11zaojkNO9c/1MHemc6tKrNsNVK9yJZPN+mavfpaF/YQ3FE6Ups329AV6Z/@vger.kernel.org
X-Gm-Message-State: AOJu0YzuBnPuAyk43nCaGstld3z8bW9P2NRim2kmZlC1LrYaDwH1JdTy
	VAAagO/mES4aM23BJl5QN7r1jGh/vfYV3KE/AgKytVkX8DjlSmIgXp3T8xQ3WDKSwe54V7VTwOy
	Rg2j9SvB7k5yHouAlZz2T4dGjd5eaYMAr2q2EIVk6w4reKcxnmeq4e6NNd+qU1FYr
X-Gm-Gg: ASbGncsapVIX2Sc6ik62Ui9TIaafwclVf40+Qv34BBKru4Dx1GPkmU7oCl9WjurWyOc
	YM7GjzsXG+4ghbHqvyui8eOE4+ozt/r9Fl0KUHOlMEEYJGiQvt+EIAbEZGLo6CYYUdgHA+u0al5
	BDsqwDt7PdgrN1beirxEyLOJkSKFnqJqNH3azyCYyVvoPh4tV9qNW25GDNpwNfi7W4o4oYM1NVt
	W1UyYNODOkjKQXB94Fax09y0DxwYkeBstfd+zO/O28K3dXniFWNi8Z3QgGq+xIeM44DBQFyIYvF
	532F6hq1Pje4Z/OqSYafqGPcrkTuRiEAjUcfinmCVNZzRAwb00Ejf7NfjH7w4ID/8O+/Rmrwhp1
	30u20k9PtOBTps/phOkTIP6+o1PCpPe92nsyi+9xIccqeViBGn22b
X-Received: by 2002:a05:6214:27c2:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70d971e4c73mr254210296d6.37.1756385785140;
        Thu, 28 Aug 2025 05:56:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERQ3f0eiZP6GMEYC5Py0gqB9whnbXB6IFHUtmBsYwWEJ7LR2k+sbTMwXECFTAuvR2F5ILzjw==
X-Received: by 2002:a05:6214:27c2:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70d971e4c73mr254209926d6.37.1756385784519;
        Thu, 28 Aug 2025 05:56:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c8bc94sm3337416e87.84.2025.08.28.05.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:56:23 -0700 (PDT)
Date: Thu, 28 Aug 2025 15:56:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andyshrk@163.com>,
        heiko@sntech.de, hjc@rock-chips.com, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Message-ID: <n3scvjsx2aec2ijnr5wwevkmhtegkts5nb43yti7dkjujqaezq@shbcy7ftibzo>
References: <20250822063959.692098-1-andyshrk@163.com>
 <bochli5u37mhc6eup7h2oz3yeignofbbj4k5nrvm2k7zf6f4ov@t2sje4gmveqa>
 <d040da3e-501f-45d8-bcbb-95fa77e94a59@suse.de>
 <20250828-tangible-wakeful-coati-ec27d1@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250828-tangible-wakeful-coati-ec27d1@houat>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX+8sAL9GS53f5
 YtG6ykp0s+x9qRh1z7VBunEQbfLGIuYWGwwZ5/kgl/9aoLowt5NhvLadg/AfnS9wlxiXymKQ4UZ
 22FzcuSveLgygxeDGbFoA9ofVVzOb6kxr726s8uJBJjGIMcNdupQ73ndAaxp5Um7ba7XOE4k5DO
 XAb8E7PXpsaLpNBEd+dxCZm46GXjz0Gb2Ft/73RcC+CurmX+D7fipSzA5HuWX0TEM0kqJGrp4dl
 x7DTgI426iIRDln7arlf9MlIxYLFK6fqeilH8QKdcUDeuWqvCFKZcEfQNOfuAaO+YvHbCurreh3
 GZHHs529xYBJq+xUC3ysfeMTv0kCRtE70qnquTic14JIMXD+XkBIjDRoSNfnNixv113o4bxo7gV
 SD1FGjLj
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68b051fa cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=tUpP_D99XMz3yPDlsHkA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: bbGHVIbxcyS91Af9ZqyjQah63u8aBZ2q
X-Proofpoint-ORIG-GUID: bbGHVIbxcyS91Af9ZqyjQah63u8aBZ2q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

On Thu, Aug 28, 2025 at 10:05:28AM +0200, Maxime Ripard wrote:
> On Thu, Aug 28, 2025 at 09:50:34AM +0200, Thomas Zimmermann wrote:
> > Hi
> > 
> > Am 28.08.25 um 00:24 schrieb Dmitry Baryshkov:
> > > On Fri, Aug 22, 2025 at 02:39:44PM +0800, Andy Yan wrote:
> > > > From: Andy Yan <andy.yan@rock-chips.com>
> > > > 
> > > > 
> > > > There are two DW DPTX based DisplayPort Controller on rk3588 which
> > > > are compliant with the DisplayPort Specification Version 1.4 with
> > > > the following features:
> > > > 
> > > > * DisplayPort 1.4a
> > > > * Main Link: 1/2/4 lanes
> > > > * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> > > > * AUX channel 1Mbps
> > > > * Single Stream Transport(SST)
> > > > * Multistream Transport (MST)
> > > > * Type-C support (alternate mode)
> > > > * HDCP 2.2, HDCP 1.3
> > > > * Supports up to 8/10 bits per color component
> > > > * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> > > > * Pixel clock up to 594MHz
> > > > * I2S, SPDIF audio interface
> > > > 
> > > > The current version of this patch series only supports basic display outputs.
> > > > I conducted tests with DP0 in 1080p and 4K@60 YCbCr4:2:0 modes; the ALT/Type-C
> > > > mode was tested on Rock 5B, DP1 was tested on Rock 5 ITX by Stephen and Piotr.
> > > > HDCP and audio features remain unimplemented.
> > > > For RK3588, it's only support SST, while in the upcoming RK3576, it can support
> > > > MST output.
> > > > 
> > > [skipped changelog]
> > > 
> > > > Andy Yan (10):
> > > >    dt-bindings: display: rockchip: Add schema for RK3588 DPTX Controller
> > > >    drm/bridge: synopsys: Add DW DPTX Controller support library
> > > >    drm/rockchip: Add RK3588 DPTX output support
> > > >    MAINTAINERS: Add entry for DW DPTX Controller bridge
> > > I tried pushing patches 1-4, but got the following error:
> > > 
> > > dim: ERROR: 5a68dcf5837a ("MAINTAINERS: Add entry for DW DPTX Controller bridge"): Mandatory Maintainer Acked-by missing., aborting
> > > 
> > > I'm not sure how to handle MAINTAINERS changes (or whether it's fine for
> > > me or not), so I will probably push patches 1-3 in a few days, if nobody
> > > beats me (or unless somebody points out a correct process for
> > > MAINTAINERS changes).
> > 
> > That warning has been added recently to make sure that patches do not get in
> > without sufficient review. It's overly pedantic, though.
> 
> It's not "overly pedantic", it follows the contribution rules. I'd argue
> that, if anything, we've been overly tolerant with that kind of
> practices.
> 
> We do have a bug with handling MAINTAINERS changes at the moment. But
> everything else shouldn't be ignored: either patch MAINTAINERS to
> reflect the actual contribution path, or get the maintainers Ack.

For me that points out that MAINTAINERS changes should be integrated
into the corresponding driver patch rather than being a separate patch.

> 
> > If you're confident that you have R-bs from enough relevant people,
> > push the patches with 'dim -f' to ignore the warning.
> 
> And let's not just advise that either.

-- 
With best wishes
Dmitry

