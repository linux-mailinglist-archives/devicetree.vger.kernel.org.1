Return-Path: <devicetree+bounces-164362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A34A80B13
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 15:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D81194E7090
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 13:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4627C277001;
	Tue,  8 Apr 2025 12:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NOf/OpSu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14C426A0E0
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 12:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744116746; cv=none; b=IgAP/EE5AxnGa1sxtHPaq8UoE4uqmbAs2iyMyYYpCuHL4mrfPVdMhz/wpcRL2XaMaMBuuda9gLIloExPPi3ceyXOsXnGVgkpMeg0zQB0bYdyjkPaHB3731PQEjKUQ0psNoqmzqj+hOIL6EAhuhG/ZGd71wQoPsRK9sFSf5MXLew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744116746; c=relaxed/simple;
	bh=SqYKe1OV1MEUkX6O9i1TK2Itvq7pk+wop3VMYyJI1lQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fliiD4rzpJltfbiGOyR8dFu0D1l7o/4752yHq50N7C4vQDSGYvGfU2WCfPWGC71eh0eSimu2hfvARsnyC9GHAWcBSxHxTuoG7hBOHsE3YGZl7wwtq3O8z0ERB6TBnn/r50fLBD3FbqcnRFldzdDA2gzYKFvj5UfuYPtZkno1W5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NOf/OpSu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 538BNQFT000875
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 12:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/RhAbopXZzYSZ2snzri292Eq
	ZjBPlNjasAOXmgSUoLA=; b=NOf/OpSuJoghY6yFXkAGgD5610T6SpL5s8ltbk41
	OuSmvFXSw3uTTMf09VegztcuVUoftQXVbJi1Ck1vLytFw+htGZBd7kfAKf06PmU3
	ERV+pYu1K86IFUMeQf0mfXA9kCmQxoZTHvKYBIXPPVJarV961Tm1Kk1N62PZTDiF
	O0XiiFf75vbyzt6qPrlSorn61yuwTzAyZLY6YtPl0bFJ5mQLTYQNQ9Zp8Lt+M0SC
	PwYA2G6yN8sIbnSXyX3kuhAJf6waltYpUa9bSCVDxqER/HreAF3Tu4sWaKeCXx8c
	kNe59U4RYQtxxlLowGXbzyvQnxrY3+v4cSk9yChpcHUmZQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twfkfp9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 12:52:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c53e316734so1001866285a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 05:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744116742; x=1744721542;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/RhAbopXZzYSZ2snzri292EqZjBPlNjasAOXmgSUoLA=;
        b=eP+uQ0ODGrfo8w4fj5SD2pbsRpvd0Xx23dLEtss/q/LoBBrWJ0ESPqXVi3TlOT1xha
         Ikx1iJfGPbc5UrHklkokZV9ZgO/qU77NMbFFGu0v24Pr8I41Q3BaKOJm7LI0c5Qrm7jx
         awBibzLRJFEypxzYKmBGdO/W4IeAQg0hoB1Rln4cT+59NNkReTaBmky9pZANPjVcmc9M
         s7y6dIVLYpcHnBGMF/8ClODCcpxNZ+G0lZYur5IBCpBEf8VethsvcawV474WnrCUtee0
         oGgxobMW0JtKFf1vwwXMIxykfGB8h0NQOibwdBBZ1g1wJnETQ1bYkG5ylWUTz97PDgx3
         upTw==
X-Forwarded-Encrypted: i=1; AJvYcCUyVLVUcxm67CH7kUdxNW0/KiYdbqUzuGvm0X5BlRPcuLzKql/tQxbdbXWAZziKlxsuF/LYHgFw5tOv@vger.kernel.org
X-Gm-Message-State: AOJu0YyUm2Ni3AZZz7SYfvzMKDr9DuUFI4ZcqM9MWIzxRetlbHBSnHV5
	xGgTWqZW2HJ4Lf3aLJ03esM2VqwTk+AoAnov8DItg+1ydOZZ5AUJ7Ep598hkuQd90NBKtJyy76F
	Z+tQ/5xy7mI7K0tmoBDrwWIE/5EIUhHdLiSAA8sqmmg11EtjZblQTZXrzM9Xo
X-Gm-Gg: ASbGncvG/QjKZCEFSFaEP4bl7RuUni62oxuLWGT3efSLGpEpODUWfVtrYXjnqqhAmZq
	AdSzwgpYK+dq3bivHP2KCoj/xPZ78RpOptM7i6DYmgmiguqCZbTQcIxxtF0Oi55cn12MoGsa1Jt
	ZlPq3jaFdQmOPh0izcD9DEZ4XBhaHFhqnivux/e80//CkgzZ5+fOowV7f/WFzbkpnHe3gF0Pmvp
	Y5mdkxAiXNozlUZeVnOv2NDNOlnV0twDPxrboEQnhW0VxurKV7vmbsnXIcRRafYD8+Z27dMmsfE
	M9BfxQGkISa2ShP7bjpjh5ePaxT3fMKeWckrA6S4oqdNq4UOb5Gr6vGsFHDZhtnPpOap3NhESrg
	QZMw=
X-Received: by 2002:a05:620a:424c:b0:7c5:4eee:5405 with SMTP id af79cd13be357-7c775ade724mr2198472785a.35.1744116742497;
        Tue, 08 Apr 2025 05:52:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFDiuOVK4fqofPRbu3JaWKpIlUn1TV35mTKoHmAkptZzlJT6SxBzt4YQZhIm9U/ibG6EVK9g==
X-Received: by 2002:a05:620a:424c:b0:7c5:4eee:5405 with SMTP id af79cd13be357-7c775ade724mr2198469585a.35.1744116742092;
        Tue, 08 Apr 2025 05:52:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f031ed8absm20036791fa.111.2025.04.08.05.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 05:52:21 -0700 (PDT)
Date: Tue, 8 Apr 2025 15:52:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        "Pu, Hui" <Hui.Pu@gehealthcare.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] drm/panel: simple: Tianma TM070JDHG34-00: add
 delays
Message-ID: <563qsg52t5rio45xyofhihdxhsnu3j5togxoq65n6v65yevpcy@rv2eabnsuete>
References: <20250407-tianma-p0700wxf1mbaa-v2-0-ede8c5a3f538@bootlin.com>
 <20250407-tianma-p0700wxf1mbaa-v2-2-ede8c5a3f538@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407-tianma-p0700wxf1mbaa-v2-2-ede8c5a3f538@bootlin.com>
X-Proofpoint-GUID: G3HOHnK_SSVsajZflJobfSl2jPQRSiau
X-Proofpoint-ORIG-GUID: G3HOHnK_SSVsajZflJobfSl2jPQRSiau
X-Authority-Analysis: v=2.4 cv=b7Oy4sGx c=1 sm=1 tr=0 ts=67f51c07 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=P-IC7800AAAA:8 a=pk7s4CxdNanXLCiXgvgA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_04,2025-04-08_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 mlxscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080090

On Mon, Apr 07, 2025 at 06:34:00PM +0200, Luca Ceresoli wrote:
> Add power on/off delays for the Tianma TM070JDHG34-00.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Fixes: bf6daaa281f7 ("drm/panel: simple: Add Tianma TM070JDHG34-00 panel support")

> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index df718c4a86cb7dc0cd126e807d33306e5a21d8a0..3496ed3e62056938ccc0ed2389ea46eed8d17ea2 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4452,6 +4452,12 @@ static const struct panel_desc tianma_tm070jdhg34_00 = {
>  		.width = 150, /* 149.76 */
>  		.height = 94, /* 93.60 */
>  	},
> +	.delay = {
> +		.prepare = 18,		/* Tr + Tp1 */

I think this should be 15, Tr is handled by the regulator, so no need to
handled it in the panel driver.

> +		.enable = 150,		/* Tp2 */
> +		.disable = 150,		/* Tp4 */
> +		.unprepare = 120,	/* Tp3 */
> +	},
>  	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
>  	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>  };
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

