Return-Path: <devicetree+bounces-222665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF32BABB90
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6955D1920E7A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D4628469D;
	Tue, 30 Sep 2025 07:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OOut8Vw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2974D22A4F1
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759215782; cv=none; b=ZGt5KxfRG7deEk0G3sc3Cvu3sR/LX/evenGtxD6L9XO4TlL/c7O0dvDyim9f3erX77nqFEyYZ4NE69WJFp42EG0Y0uYHHusa1983hOjaZJeN4nC6FnOJXu+661eqcnac9xUh4sBL66ZuuvC/TWvQozJNIbQzbhZ7B0358+uOK8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759215782; c=relaxed/simple;
	bh=F1FiYxViKywIbSE573kHTnjfzX7LXToBGFkMvAHPD3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ED6ZXbJYgReGk2EO4RDHy6GKnxUOEz8bLLIEyqjz89pD7DH80rNHo4P4OZq0Bj/KgtSvVBU3gGU5HcVPgcAXuwSY8BMlCnCi+6lD5lyru3H6UrNegknYaOjYvdoPCjbdvF6fAEBjh94WB1H4x5heE6N2iInRnY4TyExc7SJNOQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OOut8Vw5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HPSw020325
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZILBarotSZWQdM56LLJz3+w/
	7JscPhGYyLjRbrYgdnY=; b=OOut8Vw5yYRY4OGq48yBkocOurdwvVdz2F1lCt6o
	k2gP3wjxwc5Aysiuye2xQK2pZM1ndn2A08UC2m1ielc6IQUggOShqqOGyiZXadlm
	vhpKm7dbSBDU+VPSb/YE0XhgUHTUEqZLq+3yacne2pSC//8fyBfWbXLFqhlG7/p+
	3BuJ7W3TU6nEUBTYIdkpFLp77cyYQwCxCvZnvHAQTNtd97eHYTD9YylFAH8sBFA8
	lje4KKku7gcJcPdVJwW/6MMd9qL14cPT+Q0IGW5rpts3lhEI4sz1qEwVj0bYYlKV
	RKee9WgC1CRvh3/JcmNlaoeiMIOrdP0vRyclmTH5YulaFg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5r1kf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:03:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df7cdf22cbso73255771cf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:02:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759215779; x=1759820579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZILBarotSZWQdM56LLJz3+w/7JscPhGYyLjRbrYgdnY=;
        b=VrMdeP7GMM3qotpQurjcdkXnMtIULM/RS4suJqo4ttdu7i/EgrbK8PZeKBEBiWs1Bq
         rwS6nXM+Z4zVU1mE8l+ERwUIKHH9whQAH0+3LZv7UFPFJJWjIPduf3ieHDXQiMolDUsY
         bZSPtoeeA7hGPfH/BGpWKuEJoSbQ119fy/2VZ8EAfHl5CCws4Lt+Wp41akc3NlckzV/+
         DDUArNDEyDXRj1bSMangVUJ9pwIeyPEFO2pSAOygX2NlnTU4lSVOsrgDIS7Xbu1Ztr/0
         lEJCDQqKuPJcpkgtESe0GOckAoMO26gQbtBTMUYZ1xxkR+ioZZmv6dX7qRkLS56TYhmR
         b3iw==
X-Forwarded-Encrypted: i=1; AJvYcCV7giAy0Zf7gRlv6dOmiFEJtslnowWpB/kctQ7NDxxEanCGW24FD7Ixyq0vIXsZJpWeIp4NRlbdgP39@vger.kernel.org
X-Gm-Message-State: AOJu0YyEfDvbKp0dwYNGXuiRkPeu/0IE+cnKjx6AywJChQ2fA83ndMLK
	95VP4T1+ooerpalqF4WTI9A6BLCHlMIZ1Y2olN5ieU6zHIpYkx2HLSbt3cmZFTd5Ecok7L79Mms
	cdUkhr1ITo6wK4/SnYi1dgQCQNXSXFDAJNjKFTjjUg3YaFq30AmeFy9+L3B9XUoOs
X-Gm-Gg: ASbGncu8ucUi3pgVJW1jiKu1604XNsh/CYAgN9ldNef3V+tQ54qfhmjHsqJnz5EOH+z
	IyY0NDbQMso0ZuDoPXoxhQy0+Wd4Gu5fgxj6+uRuoNthRfo/JGacxP3JoJFhCxlLSTzD19mAtXJ
	/3JLNdXLLB8BiH0BoU+o6Ao5i1zkTBoz7WbPi9wAw8rKDKgqAO+pCf+jeL07/GxEZnxwqVxY3Uk
	rvmFYKfa3dqpjRyiVFEHv3LBDR+R8dzsqkN+0nE5W2BkYNvXgzn3iNzpMNiGPceDHyKWO6DHIau
	JVEMGBiI4l2K0x+pivN07ojMPjPA9Lgb0EMJgclDwGh7sgFgLKSSRW4tkBQGLHYiKSD6Va4+ksu
	pvx8ZJi+LH/RX0/1hfRaoqO7UeLR2LqJ2aLUO8OV54QVpOzPPL8VDjfvqiA==
X-Received: by 2002:a05:622a:255:b0:4ab:6e3d:49b4 with SMTP id d75a77b69052e-4e27d7c1b65mr43578331cf.7.1759215778763;
        Tue, 30 Sep 2025 00:02:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFA6lGjRTL6r8mC989qOKGIofS9wz03iYOMq+60qPx/pT9WrIKYNjXkEHiEux+C3IniYKpKBg==
X-Received: by 2002:a05:622a:255:b0:4ab:6e3d:49b4 with SMTP id d75a77b69052e-4e27d7c1b65mr43577931cf.7.1759215778195;
        Tue, 30 Sep 2025 00:02:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5839329881dsm4325236e87.87.2025.09.30.00.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:02:57 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:02:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 01/17] soc: qcom: ubwc: Add config for Kaanapali
Message-ID: <yhcqj3beliary34msn6zbaig7j4krn32st37g4n3ey7oipswea@ckio3yjuwswo>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com>
X-Proofpoint-GUID: q_JsqxGAOe2sOKq4Xr4SM-fy8Dm_B3x4
X-Proofpoint-ORIG-GUID: q_JsqxGAOe2sOKq4Xr4SM-fy8Dm_B3x4
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68db80a4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_QbXVIGTKPyQLETMuiAA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX+UqKhSww3/wN
 83mSi/wg7RVyd4Gx/9B7wZ0iLHl7Y52aFT8izbCm87pFIQwC1A5GmwydV20UvMNUgbrH7lGJPoF
 9LOe08Q5t0618kypqB/ubmkieNSiazzWgcDYYiLbm09yHNaKJLfCpgpFvxm85r9Ra/TIrbJlHHh
 3OITxNOU/JvC9y1UbTJDMyKkmXNoo1YxvIQYRicU6z1zEdajFuYIHCygP/O6+NUrh7/pArA+kpq
 KGKz1hbECUTen2BLHHIfDwiRBH7GpCfVqkmaKCyA4Ym9UPiel43gIsLsV8NzHIwdOlaXi6OQuSs
 NILbBpiuOoiRWj7hZSVzOdMzo95BDYVSG1WPeU9q0oJ5Q5m9UM8JFt0Pn7II4szCg904IcbkjiE
 HlcV2yX59p7KQ3WU42ppyjwZIV+pJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

On Tue, Sep 30, 2025 at 11:18:06AM +0530, Akhil P Oommen wrote:
> Add the ubwc configuration for Kaanapali chipset. This chipset brings
> support for UBWC v6 version. The rest of the configurations remains
> as usual.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/ubwc_config.c | 11 +++++++++++
>  include/linux/soc/qcom/ubwc.h  |  1 +
>  2 files changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

