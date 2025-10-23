Return-Path: <devicetree+bounces-230259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E9065C00F80
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C3859500D10
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74DCD30F800;
	Thu, 23 Oct 2025 12:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ek4YFsd9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA9C30F535
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220968; cv=none; b=dkZ7bcx0oMMEiB9Lw6TdAQ2LItDgliqQEGhiZIrY8k0irFlmx3KjMm2QNk6E1OjJpKnVZnqK6n2OucAy1BTn2F0+P/RkLThZvotnMOr1DD1Pgmm+lYzCJxGM/XzCK4BhrjPRKfgSkkulI9oUzS0xiQD19be5W0VXzvQK3EDNxvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220968; c=relaxed/simple;
	bh=J93UWrskigf/yWa/7D8kaxnKuSVyaZx4r26DdZCXwRg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DTFJmKqPZJidgwnwhhcv6HMLk1c2DRAkXa2be5PO9E+ctIWWmUmLMjfDJdUSH+yeKBdouQvt8Zz1L4sxqQ36xFQLGXFFVuY+2IfyZfa7E4JTbeOCVJM1dDiG75KuROC0gQsB1xDCpO1S8JLHmByAsNP40GIjEBFE1RX4+mxEINw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ek4YFsd9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6wGof022476
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:02:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M81zeVL5vCT2BNHUGaKZfq7O
	ZSW446AfEB/X68ESVy4=; b=Ek4YFsd9WhBLUNX1u/ZkUa1H2LUhmwgQN02YkkRd
	DQVoXLd4/qTfR9ulGVsYZWj+fDOB2ZLUeLzmg/fFciUgkNc3dGDtmCorw3YrlCq7
	uVTMofWObMsEhTabwKctqFnEtFzNG98Ps5wTG1Gev3hseyR82tsxPj/mkqfEfzcH
	6PLAzLnuWE3L6u/0l8WpZ2DiG0XtSJ0r/eg6rhgvREEWwbkU8x8CYjhBIBoQD2Gu
	RYHA8fOuEQT+Am2W2HfXNYfhe/dmAbNrTkKyWnDBQ7u9MR8x87XZOQKfsBXK6Pub
	oEZT1B9hEL6sGHxTYH84mK7Tve4wBRgQ9qDHcVm7hKLb1w==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w889un-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:02:45 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-554e68b14cbso352470e0c.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761220964; x=1761825764;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M81zeVL5vCT2BNHUGaKZfq7OZSW446AfEB/X68ESVy4=;
        b=Qx/B7AyZKatcOeims8D/iCFDxACVM3hMewLaavy01MHUtad1zSZelz7N1G+TIoUJgM
         frL4ThgJdsQ/tt9HrAMHijtX4r0iQkPaR1jsXIJNYt0Derjrh9ZR+OHpYdI4GFJIG2t6
         lvJpxBk4EgqxPR64Gs+/99cKapIrMf9LYljGCbHgUtXyhep2T0gH9gsYQg9+uH/7bZx+
         k/VyXewQnmuX28x8KSbpHIrzlLkvzEPbFm4IpyVkXs65BBza80pSaz3HNbfPtK79lxDt
         sOVj8j95DMTJbsu2pCUB+EafxPxMF4W9CKgcdXe+XrQr/HUex/OzDvDJ/T4vPw9SuWnS
         Rbnw==
X-Forwarded-Encrypted: i=1; AJvYcCWED/A2Hifqd6xHsVnnzaFJLVcuT+zpHZu800h99qmZAN/+1d1wQ6jZbbPTEwbZfTXOJK45nnxeqLe2@vger.kernel.org
X-Gm-Message-State: AOJu0YyM9IN3U32qef88jxcoOTnWDqCmT9odjKOqfNCTQNwwfE8cw1rn
	kHqlsplHfUG3fWhu2JOyDVdv3BHel5/0FuO6o3WlozRjauUW7kQRuHAHY2zrhVRwff1dHWgVrD2
	mvdrEmLhTf1/4uQeOFqNzcik2RjFdCZVkMJWEP3j+s+ejhomqxoCUyrv04zYC6l5G
X-Gm-Gg: ASbGncvwImM4M6GZB1Gcfk3tsCIbXwR5MWdid0gyEh3YA2cMcI2i6EzzOHyxHG2UTtO
	xhdNMFn9EPc8M767Sdh4cmzgUo/brvz0h+hPe+vF5hmM4hxeiUc8FQkNhs6xppXGaIYX2YD9/UL
	fMhog1bBGJ+SpwX8lW+BSW7sA+HR4VzIHG60JLp/UlvySoYp0K+UuL1AXsBfN/fOE1FHI22d4sk
	IvPAKQXcAjV5Nm2/BnwiXC2bdO9PYCJRV6HGKRSIJ6TiW0w9CUrwaMWxQh279rBHEThzBCjs4IG
	BYqG4xymqEhxoZmqbGfMm9CNfoj64gAE3ZXAbCtrxYalhoPtKPjtoHamSQq5JvdkoLuriX17va1
	zMZEzXWFwRpB0KhEd6jYG/h4jHMOoIsxPx8NAY/k37+TVLi45TaijqITu3K8SCBDLzmdXOTJWtP
	asDHfkfBVZ0eGI
X-Received: by 2002:a05:6122:d8e:b0:544:9a46:7c85 with SMTP id 71dfb90a1353d-5564edaa58bmr7102817e0c.4.1761220943514;
        Thu, 23 Oct 2025 05:02:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeYf4cRCjfFBuC8sO6FcOxLi7vaZ8cGTF8QrhwklAMfIk2LsC1fPJF0Hqf+fYEtQZaBheqJA==
X-Received: by 2002:a05:6122:d8e:b0:544:9a46:7c85 with SMTP id 71dfb90a1353d-5564edaa58bmr7096044e0c.4.1761220913364;
        Thu, 23 Oct 2025 05:01:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378d67097casm4150311fa.22.2025.10.23.05.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:01:51 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:01:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
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
Subject: Re: [PATCH 05/12] drm/msm/dsi: Add support for Kaanapali
Message-ID: <trkt26sv7tpucjzgguv6ww24jsbs37ppimppyvhqvy4drtqtj6@uf3m3rcmrg46>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-6-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023075401.1148-6-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfXwcsmBpGx0y0C
 YarqOPFvDY46UHKt7D4IjZkXbQhqMX5r8QvUty4yUlNxvSBbdrRilIbdWzYPmR/IxbU4sELl1Du
 J6CEFVKltOlRHdgGUhBDBD74SIRseetaO9GD1VcnrzOURTH2uFi+8FAlpDVRQFEMeVNBXT42IYJ
 ivU2Q4c7rTuIE62rhMrQTAffNbnDrLksEiVcQTj2o3B0nCAldgjW7vvXtDtB2jLYgeqqUOnNA5F
 oHRa0GMzhAq5Zo2f1DiI3OBbnSMftQ9307bM8PLJ5TkfqSaMiEFyF4nPoHCv7sSBLLS3sPMgtI1
 L4DNZ9H28Cn/1BpIyRUt+v4s0WKE0lHmM1nyDuKJoNVIIW7rWeQhcJwfHmsZLEBcm9lhRjK31Nd
 QhK0WQZJq/mpedi3EXX5ltwd5Z+41w==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fa1965 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=A-_Rx2uNxy_47QfWGsAA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: ixjVX-uhW6vB9V7sy4u-9i5doF_hiQKB
X-Proofpoint-ORIG-GUID: ixjVX-uhW6vB9V7sy4u-9i5doF_hiQKB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On Thu, Oct 23, 2025 at 03:53:54PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add DSI Controller version 2.10.0 support for DSI on Qualcomm
> Kaanapali SoC.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c | 13 +++++++++++++
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h |  1 +
>  2 files changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

