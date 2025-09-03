Return-Path: <devicetree+bounces-212257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C61B422C0
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:59:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A8757C662B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F3C30F552;
	Wed,  3 Sep 2025 13:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JiQUHPMI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D55A30EF7A
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756907917; cv=none; b=p47rA9J3Mtom14EG7VLECAzZgBBaC127jDkb0Vk9pEhELKvWHxha94z2+8SqPC87kwNx8NgEmM0BGv/4a4hR0qgzkRvfK1WLo/XnEHOxsupgxMWN0YsULzVT0QkeorYOS/RH0/+sQbP1/92Rgi+x8QP8kDnemRmSAhq37Q0t0ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756907917; c=relaxed/simple;
	bh=nDdnURVmNpmOogd7Nfp0LN9f3gyF+XZZc9oYnxiLqbU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhDHavFcKwd2u5pCKx4C7qAQ5pVm4+S4k9dMXpO/QN9kgwQtO0BZQZEB4xPvfm3EhPfSrBYbAl7HCVSl+oboMI6KFJ6hVgUnk4aemVNeMkvLAWqvfgW5oekxQmW/OJiwEO5y1Fsk1mdzT85eScMTjKzeI9upFa1QFMKDDYyM1Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JiQUHPMI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEttS004887
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 13:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MVkE7pic+AjgsrJue6GbGhHU
	Q9x1JH8BDEQU2GuSGtw=; b=JiQUHPMIZ1amb3LmdAGVRwan/onxU07FjGXjPdtW
	cNxHn+V3hA+FkdtJyEdKoHaK8NdL+727EcxpzkHqp+f8dUD9LvDNDwD2FWbMogVR
	LTN+lIQhVDYNKM+SbXQgb43Iu8PuIErNavhOMQVs45uRyxJszpZNS4sS/Z+OgzP0
	P3boBMO5sU0t5ZfyM4v8EdQZZw2nfw/+guwGFJkSCFiFrrRcO6B+u+ONgsZUd3Vz
	eIKYv4Nkty0xMA3gyISMno2+JEvimM/mdLFGYYOuwT/jq0SV4c0Mc5KmW52BPfuG
	MPWKou82NFEY4RYM+lIEccMp7FPHbWreVjzleEodtYPRsQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s4004-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 13:58:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b49715fdfbso12766811cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:58:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756907914; x=1757512714;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MVkE7pic+AjgsrJue6GbGhHUQ9x1JH8BDEQU2GuSGtw=;
        b=HgdcgCoeXKrSbYYjz2z+KdYdz9Ah+MSKz/oev7zsZb3paYV/95Xf6ZNNiRswHVbtnb
         h9PpxWb560/9l+FU44GPdxwrQjJUPNLakTuoUbwvJk5ModUEJaishLcN/Z7mk8OhAu6b
         L+Sz2hqKW5sifA7Vad0RPyzyDdkW7RQ4XUy80SzgpiWPFGJFnHzRab7UCgyWAd7dFDjh
         g4OI/Pye3+EkDWo6f08MweF9loCuiD7gPTKjOJvx9TWB/wch4mTl7VzziRV0T9jeouuy
         aEmuoJ76LuOaZRGchBzDAWfW6nmjxC06CBCsHg80ZN3xbvY82CYpVzLUTJulOcNn1p2A
         Fpeg==
X-Forwarded-Encrypted: i=1; AJvYcCVZjGqTecVf+0Oe5VaY0pWjgaZCT/WDzTTiytzQYBOTM8viVyAQEAlowGESybPYvu6Enh9OKto0dXfT@vger.kernel.org
X-Gm-Message-State: AOJu0YxHWvZUuNIo++3IZIBNpckPLavsw/kA8uusTmnWGcmOnbyXgUY7
	CpPeQVO7qaoC5MQFsu4FtGPq8L1x6ryZWNTGDtwE7dtRJttU6OdtmHojV1frOzP89/IJERdoOnq
	JoZk5d9kKgMa3ri1JQQ7PO9sTwdZboLVYYoDkMYBzI6xOrSQCd7V9uP9xj0LwxGWx
X-Gm-Gg: ASbGnctc+sCQGAubJYdHSbY0eJyG1TZNYvROT1rpZ+NOFaP/d4DebfAMjkCfloJnFNV
	8kt7cgzhA9p7SFE9Pqt0snQG1uRxC9VbpuiYev12y8JIwxf190YBCwpByn/Ik1J4GKZ+XVcHo06
	WL/VUtJtO7vcxbpbsjOFzH7sp7ZzRW57+5Edg+J28md42F8T9QH1rvrPuZbM48QhIF1YlvZF66O
	JBSFFBQPyITp3ASRGO6WZDemPzpOL/V258lloBKkOVB9LAxuXg2kF7OUc5dBR8BBypewuYpLKcK
	mXrteUV/delldlxXk7XMOXQG9Wc+D1mWLDaV/pVZmZ5H7StVZFm/QIL5cRvjioAaUKHVRAEMQt3
	VOm4eXUEVCa0KQqMOiJIyLafWNNcZZfLyF1adoXs2A1ygVWbHhL83
X-Received: by 2002:a05:622a:1306:b0:4b3:81b:c5b0 with SMTP id d75a77b69052e-4b31d547993mr175558951cf.0.1756907913679;
        Wed, 03 Sep 2025 06:58:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhtC2LX93cq9JwucMfrRhPpM+u3XQlKXseCZc/zm0UTkPE9L8QBLFctB4NBw13tUK4hQVEEA==
X-Received: by 2002:a05:622a:1306:b0:4b3:81b:c5b0 with SMTP id d75a77b69052e-4b31d547993mr175558381cf.0.1756907913057;
        Wed, 03 Sep 2025 06:58:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad4cd7bsm546787e87.144.2025.09.03.06.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 06:58:32 -0700 (PDT)
Date: Wed, 3 Sep 2025 16:58:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v8 9/9] arm64: dts: qcom: Add MST pixel streams for
 displayport
Message-ID: <rfhqfbx4q3kl35ktzaexjjshzosv4a2tkjthtvo24aoisrdvj7@i63a55qx4mnn>
References: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
 <20250903-dp_mst_bindings-v8-9-7526f0311eaa@oss.qualcomm.com>
 <964a58d4-ddb6-4c98-9283-1769c0f11204@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <964a58d4-ddb6-4c98-9283-1769c0f11204@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfXx/yoAyjNeCTT
 vEL7U/vKdF1N2+3k8wy6ENw59QNdt83mwjXb3+lvVRM9ofA4LddhokiNrcA/X9Jy6B873ncW7RY
 f0lTjzYYYzpzQ2C5uGccNNT2HPEvxhXZ/U8GcldSQkpcqh5+lMMZTcc/K5HU6pHSxBLER5hfHTF
 vGgrdztvDcSURoHR6WBH++j+aNnrDgdYBgBCiOSVCQ+vi4EePuz9AbRZfwJswMLEwser2WTdZq9
 ++As1T6Nke8r3jcvsNEIJdF4mYzRc72qJOrxVKnrs6pDK3NxUnaazLqUVw7XFgOLrCuWTtFHp63
 Zr9wQ+UZ3lxn7AcA8nEgiudmzUzwyNL1PhH8+zqKC8aivmdpSya7lmqycBDEdzP9XXy2iTtMoGj
 tjhGEflK
X-Proofpoint-GUID: zEnLhbkRXw6iswhKy6fxRLkX6Fs8rn9D
X-Proofpoint-ORIG-GUID: zEnLhbkRXw6iswhKy6fxRLkX6Fs8rn9D
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b8498b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3kmh57S2fnx10ZXIFTUA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Wed, Sep 03, 2025 at 03:41:45PM +0200, Konrad Dybcio wrote:
> On 9/3/25 1:58 PM, Dmitry Baryshkov wrote:
> > From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> > 
> > Update Qualcomm DT files in order to declare extra stream pixel clocks
> > and extra register resources used on these platforms to support
> > DisplayPort MST.
> > 
> > The driver will continue to work with the old DTS files as even after
> > adding MST support the driver will have to support old DTS files which
> > didn't have MST clocks.
> > 
> > Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> > index 70c87c79e1325f4ab4c81f34e99c0b52be4b3810..e6a7248040095077d6f98d632f4e8a1868432445 100644
> > --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> > @@ -3241,16 +3241,20 @@ mdss_dp0: displayport-controller@ae90000 {
> >  					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
> >  					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
> >  					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
> > -					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
> > +					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
> >  				clock-names = "core_iface",
> >  					      "core_aux",
> >  					      "ctrl_link",
> >  					      "ctrl_link_iface",
> > -					      "stream_pixel";
> > +					      "stream_pixel",
> > +					      "stream_1_pixel";
> >  
> >  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
> > -						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> > +						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
> > +						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
> >  				assigned-clock-parents = <&usb_prim_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> > +							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
> >  							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> >  
> >  				phys = <&usb_prim_qmpphy QMP_USB43DP_DP_PHY>;
> > @@ -3319,16 +3323,20 @@ mdss_dp1: displayport-controller@ae98000 {
> >  					 <&dispcc DISP_CC_MDSS_DP_AUX1_CLK>,
> >  					 <&dispcc DISP_CC_MDSS_DP_LINK1_CLK>,
> >  					 <&dispcc DISP_CC_MDSS_DP_LINK1_INTF_CLK>,
> > -					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>;
> > +					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
> >  				clock-names = "core_iface",
> >  					      "core_aux",
> >  					      "ctrl_link",
> >  					      "ctrl_link_iface",
> > -					      "stream_pixel";
> > +					      "stream_pixel",
> > +					      "stream_1_pixel";
> >  
> >  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK1_CLK_SRC>,
> > -						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>;
> > +						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>,
> > +						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
> >  				assigned-clock-parents = <&usb_sec_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> > +							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
> >  							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> 
> Something's not right here

No, it's correct as far as I understand. On this platform INTF3 / PIXEL1
is shared between INTF0 / PIXEL and INTF4 / PIXEL2. So it is
counterintuitive, but seems to be correct.

-- 
With best wishes
Dmitry

