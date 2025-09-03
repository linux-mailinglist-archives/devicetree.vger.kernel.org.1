Return-Path: <devicetree+bounces-212040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4803B41A0A
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AECF3BF29F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5BE2036ED;
	Wed,  3 Sep 2025 09:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="emsqakHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472B51A9F99
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 09:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756891817; cv=none; b=CNl0ZsFBcYUWVAu91KqEMIgvQcaWT+0IkFgWGdeTdCmPGTDUb+9HfnRW5spNJPwbkZhdRCJCzUGUxsWzwSZ7c7cjIhgBh+Bpday68uj1geBj2RoBtgjlXylm9iwGe7uvttDfjOui/wDWLYDTqXRbamiELyyApbNTOtgaXse+9NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756891817; c=relaxed/simple;
	bh=p8csoE+g9i/JUYrP0reNQc0pKV8iCq/C5fgj9xtySvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IyTUOLkreM0iBlImsJaOns9NNyFjNAhvyKy4hdxn+lw4WHJ4R8ePzMwb3QHbqQd6AVtk9DA3107IfOaaxq9gqM5gIatC16qBrVObs7OMyImrVU/qhIIMlGnl27UkkQT59WjCaEXkeeSahAfcCDoTjPHPLparYE9niTMTIDUtgkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=emsqakHi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5831x4he021315
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 09:30:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VR2iqlpPGndqBZFzRTnrJAZ1
	ADEc/HrM9Jf0+mHC/Lg=; b=emsqakHi2lzXHfrsTQNrTMRswHsZGuewjNcTD1QV
	2ICTx+HhdBoUYNDVgySPULe+BZ/oZNBBM+6QzAywjXPj5nwqwDjD4ZenKRjqQDBP
	P0EJC9B7LTYdtE+a9sAzLxYcC61a7MT0u9L1Hw4riZGb9oU2YUAgLBe7QwUlNpQA
	lVpbAEQc2iErpMPjUV5MLxJo9ZjGo4Yb3nA6fjLRiqmL8Lj7iHVXIc5/keMxMtkS
	Tjh17+Pqx8ocUTAGOK94lUxjvSRLaazFhIizbqkrm84Cxh7OS4eWV5HuP2HceGVO
	n1Ds7KmD9hIl3v0UaC8nQarf5T+Ybr5CQ5IEBTFqR2Fx7g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s341n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:30:15 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70de0bdb600so103717306d6.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 02:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756891814; x=1757496614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VR2iqlpPGndqBZFzRTnrJAZ1ADEc/HrM9Jf0+mHC/Lg=;
        b=rTVaGhpCiZMWWKagQbK80bbn13ZmevDHeWVE/z6Qlf1cvJb/IaLjnPxTYDBrV2xZCF
         phofDy9y29RIdgJuR0aCZ/XCMGJUw9646mEhcDmbQBTJDgxsFipjhkqc1JuWotEnHdmg
         kGIDGNsxxfTDlJCNRekcVAjOSd1zO/21VUlIBiIdWMd+1bZUIoo5yucc4xWMjCVhDX4i
         npIlJ1jk3/zU5M8hHkvfrad/ofdglDgmLDoJGodohMETX/e7BZcfLVyfvF1+ea3l0nWy
         lG7ciGl/tzxn7hDajeHv+E7kOdjlA+m4Xm7MDGmtVgiFKESojZX1OA2jxxlpII+z1djS
         04pw==
X-Forwarded-Encrypted: i=1; AJvYcCWFhKh1AemYvokDuA79j4rKuqRX2efgt7eD2tvlrkJxcnrkXWGaZS++92hR5ysGmJNQjXd+a2ivXzeG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0r9zTHLsHtBjg8ZYlaGjgDQzl/Z79a/l/Lzt8aZrTgU3V11NX
	uYCDcTLT/c0DPkvpPlen5/Ja9HrSe8PvW4Bojwi9Pa+RWa/L9jTOzcK+Fszz59c2eUMTPYzs4Mm
	o+XAjY9WkfdVhJ8gLFxNqrEeZbHSF5jYvgWXku4sgRyRaBvj8rHExjby8kwdotLdA
X-Gm-Gg: ASbGncvPZZHrqNQyK5+ry3atad7kyq7NdRBLulsruFHfaMSKW9nnJ/NeFaNAKaMhoWF
	sCU1tl2ORECDRtmucjJ9z3/G6Ekc9hz+uVaVd5SPBChj23/yyVLlY+MeUGBS5on2iPXVN86q/Ft
	mP49JdXqee4X9VbThNLF2QHqFtIqvPNk6zOAVoHgGcMKH1r8+2u8vU1Mr7HvBdCLai2OsbtKGB/
	6qKQcBcLj5UMQHeeB0TSCUaKdDkOrOgoQr2r2/XDS+dg2arhhsJ5uJyRuZ47MLv0owJb144DhBO
	2tUfKYfST/WGLV9d3qnpEnv0qiDepS3qtWIrIgjOPAczTj48ckPWvIRR4XwBL7Y3RZkCwuSXOKd
	AXnoejXaW2jiAMXPIzoUylXuqizQmdRM+I9n16RIsdc9bWXOLG3RS
X-Received: by 2002:a05:6214:cc1:b0:71a:a3be:a900 with SMTP id 6a1803df08f44-71aa3beaf2bmr97801856d6.53.1756891814034;
        Wed, 03 Sep 2025 02:30:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpD2N/3qjIowrxvQnC6imiMX7OAFJFGHqei1Jwm2q0yHkKx6yG1SLbJKLYa3X8+eZrl0XbAQ==
X-Received: by 2002:a05:6214:cc1:b0:71a:a3be:a900 with SMTP id 6a1803df08f44-71aa3beaf2bmr97801396d6.53.1756891813408;
        Wed, 03 Sep 2025 02:30:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfbfa8sm400984e87.96.2025.09.03.02.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 02:30:12 -0700 (PDT)
Date: Wed, 3 Sep 2025 12:30:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Subject: Re: [PATCH v5 2/5] drm/msm/adreno: Add speedbin data for A623 GPU
Message-ID: <vit4he67rvz2yjihjz6lio4cnkfr3eqydcayspijssn3o3mgqf@6eyxrpkwvfhp>
References: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
 <20250903-a623-gpu-support-v5-2-5398585e2981@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903-a623-gpu-support-v5-2-5398585e2981@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX1gYg55XeEFMj
 OdET2K731nkZTVgctmsf0Z+OmO5DEMCoipfyrwry9n5YNExm+1vfOiDI37IyrbTfkxT9pRqbe/G
 ad6mKcenuTfwjQp46WKkugJ0x3a2RWvoXWOijDsBWlexOeoYk/Frff70IEvTGMn7q/fTb5TskZe
 O9s8iR9ixh8FkXLm7ew9kyoXSeFAfXSCEUVoHhLA9X1WiRVa8DvZvinDz4LnRLrS97Mj8TuaY1R
 Q6RgXC4SZ2P5ZboBABUHNpmF0Jzg/AC+OnjufGDS9CpjwV5MO1TiWJC87ajCr/K2DpFM49Y2DYy
 BdggDa5URruJKcTCrqJaOAB1N0sZpc/jt7MNGx+W/ANxkaxCISS6RxY3+xRSRl0lgz6PeQQjh1L
 WpcDHUrd
X-Proofpoint-GUID: h7m88IUrpb2PumOe72b73fyoX08i38FX
X-Proofpoint-ORIG-GUID: h7m88IUrpb2PumOe72b73fyoX08i38FX
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b80aa7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=fAZFXs4-8VxaQHOqD40A:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Wed, Sep 03, 2025 at 12:49:53PM +0530, Akhil P Oommen wrote:
> Add the speedbin mappings for Adreno 623 GPU.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

