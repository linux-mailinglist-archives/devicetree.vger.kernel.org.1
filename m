Return-Path: <devicetree+bounces-247662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A731CC9F66
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 02:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58DE930ACC95
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 01:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76BC24E4A8;
	Thu, 18 Dec 2025 01:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S8k3hqd4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dHlvPLVH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43305245014
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766020483; cv=none; b=sA5fAwYC2DkKnwdjaJ5dHpBsTs3RNr1jjv42SYF8IgMMwGI1i6YxUZmY6JKWeezqnvPyQGqn48dtUlDQz7fzmjAh6azKej8gnPJrpb/EaSmQSEbbDEw/cwrTqrqJ4GZLJfSROg43AlhuHCvnGTJlbLQVRMCEQ+IeBQKDPoHEQx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766020483; c=relaxed/simple;
	bh=3GyqW3DrmSySs6gwQA4l91jGV3+yTRHWEM3WkZNJ58I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lMiroIPpy6004iHvbEoJHuzR3TclBDaPKqQ+6qv/wAiNIJK1x2HubB3bfeixCDUctpSR8LNRposwemf62PSGgBhdMZJ+RUMGcijFZt+q3LUUpz9qmuF/SccWycifmE/QA+BegUaTFTVg31y4ut+0hepc4AJ/UZSfACD9ktGqiUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S8k3hqd4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dHlvPLVH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHKUxFI4092896
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:14:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HQnr3dzmL4d8EP8vVA2TzDK3
	LoJt3uHQ9Cnt1cjFu9s=; b=S8k3hqd4uhaxomb2Pxw2qpCtOf78OiJKVQxZDBSI
	XPyJ+ailriSyRU0OZ7LgsPoEdrVBau/NzUBbDeWUErmU+1gzta4ot4bTKUXLlDQV
	tYGXq4yI9zht6clWBF4Dk9RT8ImzJ2EUka6yQ/9wvJQ5lqMedzSSV2aEQs7e3687
	yPixbaIJHITeV6et36bFxVFOjZpwFT2ihmTZhoHG405AQGJwEhWdSY0Tc9xEtLBo
	bNNq5KgGRparYWgLaGg838KK44+uxr/9d8UoJIVqIyJ3k3k6mOgHWjUyxf5O+Kj+
	jjV1DlS0MlkwFxE0hMDj5UYx77HQEkZEczEwX5To4NkmuQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb0mmd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:14:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so2333841cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 17:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766020480; x=1766625280; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HQnr3dzmL4d8EP8vVA2TzDK3LoJt3uHQ9Cnt1cjFu9s=;
        b=dHlvPLVHtToTRLEBATETCPYNbWrlPUS0q/3FIvkrWXF/Y85XAFis12TSR2LfYawV6w
         eXKiaWKHcwRGFsdHrUsvsoIuU+8I6uXaSgsbNAW+nvKdgIO4DqXIIXKk51YBCgpDd+P9
         ajD2/tnv/WL/GUFHwgxhgPF2GdDlEaGlEFTsrQw7Y798Z0W/EINcjuUXNGmtWA2IMIIk
         +ba8dUFnMZ46mHcDMwDV9FuYN9XcI9GfuIOJcg5JADIXPzUJ/vy/9h9gpnS3oMwNeuez
         wAm8KMN54g4eAsIP/17V4dT0wcxKUA6+gFKIwzcuJQo3Jq3yS2ImzlbRohxw9zvj4KQL
         Yl/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766020480; x=1766625280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQnr3dzmL4d8EP8vVA2TzDK3LoJt3uHQ9Cnt1cjFu9s=;
        b=heAzU3qeUuKItbhJSBYyoGtoT5T9xioO39TzwcoAXcqinuA4RrNn2nQJwSnTPlX2Kt
         13NjTWcmQxm2D2Kty1Nm1vNFkmpulqQsgemKEVD1HygDVd1uW51eTgz2wpSWCIRhnpvk
         uWfGAesSoZ1PO+4Aa5PJv55o0Oy55MMPf0Zr7b3Bx3fSkq5RP9sjv4VP78nVl7ArOV5x
         nF1CyWQOBpDGIQE0q+VhtSeNI/Qu/Ciszo6+k7cxuG95Oo8zSjiA1CbnZ0ANHqMmw0Km
         BXPWi/SGeuXgKu3hryzVyQDJ0mECZx6AsYi/144TETuEPuUCwOD+1Y6n891zCV+RmPIc
         3y6w==
X-Forwarded-Encrypted: i=1; AJvYcCVoBoLSG0qmP6nzOAkMj6UIOyDkr10zg3mp90pW6DnRG1jMMC/4Wibxw272Nk70QXBjKtbM7GNU4oEF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0uT8sQgvs4T/KHzl6BWnLDqYWDn1CkIR4S+CiyfUrW8rCtUlm
	3NXOD7/nttjcWCQ34aCBfbZw8lykw9wal3tifWtX+uPPNfEQ9EZrB/IHeoEEEnFTFT95Lkg2YNC
	LjKBd9i0eu5CRJE0RneHRhu5uYMqWz81qqki1g51VG+cIcTS3qKnwgj+wO4G+h3+/
X-Gm-Gg: AY/fxX4neuQEsg9I5K1CI0LPN5ZKKtdFdhF3pXzHPT5efeHAfu8IVKf23aq02ts8hmI
	ymAQZqd+28ojzEEOrNa7BYJQd0gql4uZXlNWZlwh6W8GyEjGtHATpWnpAun58JGe/zPJ2eR8Bh2
	xOnIRC/wwWBB/lu7F32YoGCK/TKDu8N/IH9rsREgYvfWz0RrHaPnFSEln5WT5UOfrP0m3tEMzoi
	b+lUjjzQhq4B4U3h8WNGv+YF7vpATzK0qPhl4/mJuVcqJagB9CAUifiplUx9wAw+4nXQpuv1AtT
	d6dmJ0kC+bVmwyboUivVcTZIrQQwMA0UzzoA1IfL6os+imxwHkyR4HLYKPVz+6pqEObIn6pFLfV
	FTUI+C9wE1+n7K4F6f8p3U0lXIJOHLlhPlpo51LZljw5bBFrCLHomOCvVCF3PtivuFxo1fRuXSU
	lRvJciqX226sRyPnyUXqZP150=
X-Received: by 2002:ac8:5c88:0:b0:4ee:4a3a:bd11 with SMTP id d75a77b69052e-4f1d05ee877mr295118501cf.64.1766020480238;
        Wed, 17 Dec 2025 17:14:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0hnMu6EmldPN0mpKn86EDn4Bb/GKbcC5RxVnIK5DHmW2atir2ty/CdZ7JauTHi/P4Sz3cVg==
X-Received: by 2002:ac8:5c88:0:b0:4ee:4a3a:bd11 with SMTP id d75a77b69052e-4f1d05ee877mr295118141cf.64.1766020479729;
        Wed, 17 Dec 2025 17:14:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381134f515fsm3878121fa.16.2025.12.17.17.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 17:14:37 -0800 (PST)
Date: Thu, 18 Dec 2025 03:14:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Message-ID: <kpcdekfcs5zmlptmddykaqcros4eiclya75u6fpxhiigc6l5aj@inwwh7t2rp6j>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
 <20251216-phy-qcom-pcie-add-glymur-v2-2-566a75672599@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-2-566a75672599@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: bxwGHhKdZsVsDObmxtu7qKQU3wXyaPRy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAwNyBTYWx0ZWRfX5fhvTvW79Wcb
 OUlFNu8z1rG9RHmy0H3XUmePFd15a4lwluReM7e211IKCvuj8FbosQPpWHYIQPl6iTdvFOuTsvj
 5zvU9OkaWR/GGy4kgNlcW2DgApoAmWU5PmNUiSLYfdiDumeQTYP8+nsANAM4p8BprfxyiqAzwsZ
 wpujewFtu80wrShn96PESXy9MXLH4n8BxZQm7fnnhpJuXTQu0fxBMecPGlwk4xNrHja9VvzTLhZ
 VDyg2tQGUdJyU0cx4Tc7mczljrThaoUwLzeiLpwf9xOMgDLM535v09j+uu1k6m+VmDUhyZuOWCC
 CXGm2ybFR4aJ0F8TEOM9cBiEJ4hbCjfy3CsFOt0dpagpydkGfO1JWP2G1nX1hp0M7v9IF+68jc9
 zYmu4EFM2JWckHG+fEdMeubowyY74Q==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=69435580 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=lwC1aLARxv6c6NPjX70A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: bxwGHhKdZsVsDObmxtu7qKQU3wXyaPRy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180007

On Tue, Dec 16, 2025 at 10:25:05AM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Glymur platform has two Gen4 2-lanes controllers, the fourth and
> sixth instances. Add support for their PHYs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 34 ++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

