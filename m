Return-Path: <devicetree+bounces-222684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5829BBABE28
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:46:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC6451888B7F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914C423F26A;
	Tue, 30 Sep 2025 07:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vw/XAKGE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFC921FF35
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759218362; cv=none; b=L6HfkbyPR+nBWAul5wAFLI2jsWabpfGj2dZoaFXtr7BwBK8NovI1wO81cMXEIhvZt06u+Qo9CKgJ9fIF3KW2UbZaqYkDj3pUHjT/uTT1Q3H4hALYm3Kej14oNT8ccThih0c3fv2g8slUJ1nrhuM2K//LeChENoLyNN45heyTZdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759218362; c=relaxed/simple;
	bh=BefZSX9fm1ONvnB9eur1YvCHDGRIRGcUqr+hf2kx83s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L65kJeDCgzrRnc//l1fX3NExabVQkpL48EMumOt1XuvxDsw0ELr9TkgL33FZ7uFdONjOw1jBNLPmS1to4INcCSLWGT6+ZaPG124juUhH8zHm9SRg9Zyo3N70ePGVTlL8bfBBnny7Ma9QfnMyNL6lOAi2NpOpfp0GjIag30WbIFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vw/XAKGE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HpT3031467
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:46:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Kji2nmZ2FEr3Raw9eE5h6cYw
	gKVR2CawlGpJNJ1zd3g=; b=Vw/XAKGE1YO/T9KY5F5Hr22nkn+F1e2vVFdW0Yk5
	HucrueTDHPW8bQKdDS7ZSJUH3pMjsUmxgjV5CwqWy22p0FkJGOSH8eDfhqa99wnu
	5vEcvfNhuri2ynbFqymBxNt7EZXstZtoGedJRH6A5Pyrm4eC0yqYDV27uLk/EqRt
	o/cXfEAV0/hfQyepZ4CuB64ceNJN5tA5Gx22Wf7at+joGv3XvywLEfUK/d6N5dI6
	tO/IDDnLwKdrQ6WtRWBlhPalt9dKwRC6wSlNQ5DSkDFSkfVTKugIaHAwexVG3Q4X
	HiJbykLLeuMB/0zcLomnZoSPDz6RSPpIlh7S9P4PFf8sqw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdfvj1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:46:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4de5fe839aeso97753221cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759218359; x=1759823159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kji2nmZ2FEr3Raw9eE5h6cYwgKVR2CawlGpJNJ1zd3g=;
        b=jTmaVfqJQxeIMMfGNiei9ccNcVI/F/Riu0M/VZaJWoZ8G7lXSxkBU3da1UPPpTQwsv
         xFV7u24Pg+dc3ASTKqYH7I8y78EtnbGCcWGOEwDRB/qRdL3qFnQjFrnu3QTUc5yQT/yv
         tXtvDWrDKuGkyAv0N+4gI+pAFGcyr9qvACgB7XvSfz7QST9pzZa1O23jK5z24wmRhEAa
         x6jv9+ic402Ca+s9llzi2CwD2utGYEyRO78Ha73B1dHv1gwA7KWkfi3UKRmlqpYSRU7b
         MRtCmxAqaFzOnNjTBxW65mSEHDp7YxxYqdaugqCBY7hPVtPvIZBo0t+aSjAPiEwLtKKo
         b8eg==
X-Forwarded-Encrypted: i=1; AJvYcCUh3C1ZeVz7/vm73Sva9i6oHRGqmwadzE51P8CyK7/9Zq5Ld++Ogox9jUE5VMF3lloKhNZ0vMhHv6Bd@vger.kernel.org
X-Gm-Message-State: AOJu0YyyjJoDKM3BhDtn9LWVbbEX1PDJMfqRs3/KO3IbkhdyJcgxbkgd
	mcB10j+R8EhMItfExBbTiBsW/dXoNU42M73My4n3GzZAmyxzSUX1AY9luJzh8e4JUH30ImOB08m
	f2swameAmBfSyEuGYtY5ky81mJL7NX50kGLpoaIpoFnF2Z5YetXE0OalnFH/K/180
X-Gm-Gg: ASbGncsMUNK9nwFkxC2dtWhtnsnUnyFz/sukE4jP0UQrhE/UnQWuqhWfG+RVQEr6hbS
	5fUWhMTM2acwYsl5sK9AxgLeNdIz0OKe7yPSbyrat29/wcjMXZZmf6vg/At91s5tcoflc4xT3GZ
	qpRaihNMxaplbiMmhh9n2fKlsB49d0T9/D+YqZy2fp7D1flaJX6JOytvpnU34rGGl6SSuWq0UTf
	utTz0lg2+aWa5kxuw1VPlcawHz1p+lxnZ+OER977WwunwmX6uuGyud/Kb+nzr7MqCMkBxH66IXv
	uDWdkeuC1QI6VvZRApEuBzSTXQoLhiwF1PWA+DX+l4Xz5jz7m9qbF7Rk+asjoyGbslaq8/y0Lry
	sMmXrt2uU/SmPj8giUxqqMzf8FzlwcDdtCKus/ZIKTCRgp17yp/kTxGFF7g==
X-Received: by 2002:a05:622a:408f:b0:4df:9e59:9d79 with SMTP id d75a77b69052e-4e2661da9f5mr51016301cf.35.1759218358982;
        Tue, 30 Sep 2025 00:45:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECErpsVHn/gl20DmHz+69GFvY5gifpdT4tSpKn1PuYqRHRES76ncOLU7Pd8idEKbvO7WTlFQ==
X-Received: by 2002:a05:622a:408f:b0:4df:9e59:9d79 with SMTP id d75a77b69052e-4e2661da9f5mr51015931cf.35.1759218358442;
        Tue, 30 Sep 2025 00:45:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37289559058sm17247361fa.2.2025.09.30.00.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:45:57 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:45:56 +0300
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
Subject: Re: [PATCH 14/17] drm/msm/a8xx: Add support for Adreno 840 GPU
Message-ID: <r2spx7vu4sg4ydk2pvhe5gq6wxaiahmec3f5dpijvw5mseldmb@755zm7c2nv4z>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-14-73530b0700ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-kaana-gpu-support-v1-14-73530b0700ed@oss.qualcomm.com>
X-Proofpoint-GUID: Uodi0qVPV8sISFQCMkJDLFEX287nDusp
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68db8ab8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=90rIqVWp54D9reHQgRkA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: Uodi0qVPV8sISFQCMkJDLFEX287nDusp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX5qwGE9K023Py
 7LVjgab28Xt3zzDT+aDmw0kctsIXcSdS9GRBgqNZFAd7hxbd88mSmPWhYnhKyuDhkTmdXLG0qlM
 geAtRQZJx00w2sPb/GTLsq8vaMA/sRLp+228ufH+3TbysV092Gw32MNsAVRxP/EqKyy/yRclA3k
 WhrZyDFumCdmgaU2UXa/55pKXkfHr2OyKJFd8buOrJDuIv39bvYW0YNWaQQPcYcwhG1Iqmxrp47
 EDvA++Vt+rFJHMCfT9CPV2Tpyoudskvo+DX90Eivcr3qelrkMuKn2P3vQUL9QjO4Zfujbnyt2/2
 5zuVRfM+XhsUgOfSyHS4KCxTlwAZYkC8IanQywLMgXmkeHXOPfXakVDYprj1WNOVrtC5fIae5No
 XfzcJxwkPcRhsduEQEajoON4fsU6uA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On Tue, Sep 30, 2025 at 11:18:19AM +0530, Akhil P Oommen wrote:
> Adreno 840 present in Kaanapali SoC is the second generation GPU in
> A8x family. It comes in 2 variants with either 2 or 3 Slices. This is
> in addition to the SKUs supported based on the GPU FMAX.
> 
> Add the necessary register configurations to the catalog and enable
> support for it.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c  | 211 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c      |   8 +-
>  drivers/gpu/drm/msm/adreno/adreno_device.c |   2 +
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h    |   5 +
>  4 files changed, 225 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

