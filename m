Return-Path: <devicetree+bounces-158558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E468A673D0
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9429E19A46E9
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCB120C033;
	Tue, 18 Mar 2025 12:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cP/aKPBG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FE81E8355
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300666; cv=none; b=KLsUMJ+XFCVTA6tIgVs+BkIbzCWMAvLPT1oLE3yrnK7jAXVuAcRLKHIN+P9jBLy7PzmsADzEv8ZFYhiYWTTD9ZrsigtuOxcicy1itu4yzPEaUagDpsy8d2EadXIfG5EJvfMMHje2r/yM9egbztlHR9tqHlcGP+essSSYqkhBJVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300666; c=relaxed/simple;
	bh=sNvJN2vGT2RT+QbgWURA39suTphTrFu0EeK6I0taKiI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xg/JdyQYJ/STAXRGoAvky0Vl/r0cRN6te7MPFlrjzBTbCIS1yEHrK20H6RXtrKXdXxsMaPNoSDJhJTciCRZib43f6m1R2PePgFgXWuxTf/Cokt2tf1OpzNfZxJurT3nQ9APDg7MLK5M5mk+yq5sewN70zd/8KKYRGrdi+1RS3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cP/aKPBG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I912B8003888
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:24:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EDN4zD1N+DunuKV6N3O+L5Yt
	WP/lxLEnoiHEUOXeOZo=; b=cP/aKPBG9s3vx4Hdf72/D3QdvS1KhRO5zz17XOnk
	7cjlNesi62VajSyHwTUYBfZ0xRhoOdp1/Oct7T3ABolIZ+39zcc2CetYT9SnVata
	y29IhJSV4MrjFv7KpcPrYOitMsdbuKDTUfuHd1lM49gkivSu/ag5rXprxfYeeAJV
	jPN2ZRnKb8VOwUmbKxP07dOQbg1Rc7at7Olr7smEA4TGo02DYTAHr6snVWfFCAEl
	p1xTyQH1os5oXAgISy/XorPaGgp/GMG3AIIAlTbQE3UhKqO5XuuO8NFakOXhY+0/
	EFN7U5mT/+bkB2ggfiXhff+0d5+ARnt3dKgvjn323KGNCQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1rdr6bk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:24:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e91d8a7183so105514296d6.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742300659; x=1742905459;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDN4zD1N+DunuKV6N3O+L5YtWP/lxLEnoiHEUOXeOZo=;
        b=d+ieuyFB4VTQrcZOQTwKf0ut8C8p0gphZkwlMldOsaVyPyIWL9URO6qh56YLjW8qnE
         53vcbgr4SZScdGYkunSjFXjc2tFS7DXDcH2mlCrbYPxU+VnSUOhwNKPByUssKGgmsNio
         0c5srRzYyLXfh8KT9bZ/Lgpm3e3arc0ajwH/dJvLk9kH7UVZauSypK4PBIRHO/It3B42
         nPT2r5Ch99WRsuQOpRQFoSCvD/IYnuQIUsOkPoVujMRJTSr/E0f742iInib1IapyXMqv
         PJFU7IQlCU5lIxiN8rvQzZh/IkqdYzaxBE9mEFm1y1R3O9g04vovYSmsjHr71K8E0xTi
         F6+g==
X-Forwarded-Encrypted: i=1; AJvYcCUw39VugzFiyxb+3rPL2lj6/3pNBOqZ3V4Q/vYF3bZVlYY2Fbh1Cam/Hiewe+VmGVx35Np7C8iYDRr+@vger.kernel.org
X-Gm-Message-State: AOJu0YzXL3It/LKQUxtkpwX4VDxAibjM9kqWepuPp1sUK7dBBb3APr/s
	CJM6q4jLCBet4LQqbIU3pSFjFDCxcJ3JTp6/aWEeNFKLhyhJ5PHSC6sKmIsZGigSbDwvzmG40VS
	NpvoWI6bvekaYqoPFIjuvczjRiEn8wvZkCmnir719l7Q3i9lvXae7TgMJ2SgF
X-Gm-Gg: ASbGncuGVShyDR2d/Ul63Oo5KNsp7Uodg1nsjiTlsvGJqR+acwlrWagPRQoq39qXRb/
	wrqNh5wA0YK5Lzpca9SSc+ir0zT9HwqeNJIIp42w0jwq0VdRgLw3RHx4ixvvSqndm3B3JwV35kT
	d+5U2LlICXByROsw6rsvWUrQQdSV/SzO5ZNUgfxDOgrWVihndhRv83vIq9KLiHZ7qAMtV683Gh+
	v66GIlCfxZgYbImQIAQxQ6axh5GayF4eQkmy7mffUPRvqbIujMKXC66rWeItRYCROPeRLJjBN+a
	h3guCLNTHS6SPSYpqjdp+w/16D1albxHCj6KWZD0hOXBY3Ew/c51b5CsmmkkLEYE21jTmAS3FJT
	Amsg=
X-Received: by 2002:a05:6214:21a9:b0:6d8:ada3:26c9 with SMTP id 6a1803df08f44-6eaeaa4282emr238045536d6.10.1742300658855;
        Tue, 18 Mar 2025 05:24:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPP6bwgBzTV1pHyJ776Y2OqHo+uHrhx19IfFmQmbn8H0Ej5qHdf7EgW3rLl5dPKhTFj/jdAQ==
X-Received: by 2002:a05:6214:21a9:b0:6d8:ada3:26c9 with SMTP id 6a1803df08f44-6eaeaa4282emr238044836d6.10.1742300658446;
        Tue, 18 Mar 2025 05:24:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1170dbsm19027101fa.64.2025.03.18.05.24.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 05:24:17 -0700 (PDT)
Date: Tue, 18 Mar 2025 14:24:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 6/9] ARM: dts: qcom: apq8064 merge hw splinlock into
 corresponding syscon device
Message-ID: <5g5ni3xoeliy4xs7wlhjjeust32qerutt4tdkkdvgeisdvbc6d@shlkxbzsw3vw>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
 <20250317-fix-nexus-4-v1-6-655c52e2ad97@oss.qualcomm.com>
 <579cd909-8a0f-4998-88a6-47073ecc0eae@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <579cd909-8a0f-4998-88a6-47073ecc0eae@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Fe83xI+6 c=1 sm=1 tr=0 ts=67d965f4 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=DJPKDmouk0REp9whk4oA:9 a=CjuIK1q_8ugA:10 a=IFyWz7IVXAM99tgoijJH:22
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 19k3VyCZJO46fdWodzuZg70b-cIXjUu7
X-Proofpoint-GUID: 19k3VyCZJO46fdWodzuZg70b-cIXjUu7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 mlxlogscore=579 spamscore=0
 clxscore=1015 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180092

On Tue, Mar 18, 2025 at 01:08:00PM +0100, Konrad Dybcio wrote:
> On 3/17/25 6:44 PM, Dmitry Baryshkov wrote:
> > Follow up the expected way of describing the SFPB hwspinlock and merge
> > hwspinlock node into corresponding syscon node, fixing several dt-schema
> > warnings.
> > 
> > Fixes: 24a9baf933dc ("ARM: dts: qcom: apq8064: Add hwmutex and SMEM nodes")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 11 +++--------
> >  1 file changed, 3 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> > index ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e..3728875a5506397b36a4c0d6a5ad12c067bbdd8c 100644
> > --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> > +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> > @@ -213,12 +213,6 @@ sleep_clk: sleep_clk {
> >  		};
> >  	};
> >  
> > -	sfpb_mutex: hwmutex {
> > -		compatible = "qcom,sfpb-mutex";
> > -		syscon = <&sfpb_wrapper_mutex 0x604 0x4>;
> > -		#hwlock-cells = <1>;
> > -	};
> > -
> >  	smem {
> >  		compatible = "qcom,smem";
> >  		memory-region = <&smem_region>;
> > @@ -305,9 +299,10 @@ tlmm_pinmux: pinctrl@800000 {
> >  			pinctrl-0 = <&ps_hold_default_state>;
> >  		};
> >  
> > -		sfpb_wrapper_mutex: syscon@1200000 {
> > -			compatible = "syscon";
> > +		sfpb_mutex: hwmutex@1200000 {
> > +			compatible = "qcom,sfpb-mutex";
> >  			reg = <0x01200000 0x8000>;
> 
> The mutex is at +0x600

Indeed...

-- 
With best wishes
Dmitry

