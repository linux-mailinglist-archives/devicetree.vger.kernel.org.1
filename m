Return-Path: <devicetree+bounces-231616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06798C0EFA3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11E513BE299
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B991230B522;
	Mon, 27 Oct 2025 15:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXl9Ky+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EAD3081AE
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761578929; cv=none; b=oEqdYHtqDGsAL3o+PDx4zsw+PwB2sJEcUvJQH/onGj8zE4JZMBi4gOn92OlJkoCU1ZKTz8GFwviBTJb2hC0SATNTSPmSljUnzplCOfCbzm03tF5vKrYI3OY7eHFoDC9Oy51W5LifghtAWfOVCqPHCKxB+WqBzsdkjxpEVsqoAR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761578929; c=relaxed/simple;
	bh=No0vFhtPKdnYI043Gk+ECuIMyLsdn51FVS0+isuiu3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nx/DkhDNlVOEvPcpfl8jhVHSPTBbzg9yvSTyXnEIVRqfVyzoUjITIv5CL9zbOd9WgcUgsB+x8TQtAnTk2Cy75xVWTLAPPRPSALduuhoXInMYuzSoUFYbiQjX7PSwe729K2wSpJeZcAlFPmz19SYy93tn+StgJL9vBuIorc/waDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXl9Ky+8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RDh9Qn2961940
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:28:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YrpC/Eij51oIcLt5fwITYt7x
	pzA6N/JSreOhEW3wMcU=; b=fXl9Ky+89oD+F37ykbRqhqQ3dkXcpSACYzcYskik
	WZpI/aMEkH22yOmFh3SshHaNj9KDqs3bYZMDF0FpbTiUvgplvZ5feNcCBjya0//2
	O5sidI6HDx6bqtPtAPvyJuTkzXVvXxQiTGul73MyoFNxawgFtKM4S9SAcuah67eo
	8D7yfw6QNSzjonTu2dLuVJSb5g9WKOpkfn50GypsFIy0E1tYhFsztJFosY4kXZM1
	LWsnrHSUdtvQXV4lY5iGbr28GMrUbUOWqUFENIXUyh40M/lLLfDzZ32VqR1DLWjm
	4fULpVLiCOuhYh0xxIcY8sNWyoR9zVkXmDi4C6B3f12xsg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29v9retn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:28:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8a4c63182so146510731cf.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:28:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761578926; x=1762183726;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrpC/Eij51oIcLt5fwITYt7xpzA6N/JSreOhEW3wMcU=;
        b=lmmFoSZaaudgeDaWuvOZTF/fb1LbCUOdHaufDP5e8CcJ+4tnhSYDnWA/Gkn037KaRo
         W86yjwp7FSOeAyjdgjfudueF/3x5/C4V5oka+OlhU4+HczoiRW4J0RDsjVZFCdt1ixu8
         9wbIwb7vq4WbD8iZum7nX4Ez4WxvyVnEdww4MM8u6oMTCE5VWZM+vmHt/O4pGINtnbP8
         7iXqpdtzxhuiEtbW+D84PEM8vXmnHTQIpag0kkcTezydaJ8L/IV6MxRE9JMKDJxoXfRW
         RuMpT3Q4bCIC4dxpAj67t97B2G9MGdWKFtCDW14pA5xtLktDwS6iK8+x2VHfkukkuBlL
         aQxg==
X-Forwarded-Encrypted: i=1; AJvYcCW9g1wVBa4i1mp7Tj8/YKUzYexSPCF4jK7I9+Rp5VHLtUR1ItPGQZJ+SCUPbJQoyLxDwlc81QsBEdTT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4+YMhqiFJJRQ3NGChdc//+bL33pCblzNx5bMCI6kOC57xK2uT
	jWC6Wn4GQpD1E48SaASllwhNIR248Q9AU8K4ej4FqdO/THw00vMnzSZ2HNnmXSaT83l3kcubz5C
	HFJFKNemfaU0LAFxQtItRaI4zSEeW1FbOoucjvtwwo5XQVowXOrxcbG8I41uITWhw
X-Gm-Gg: ASbGncv9aRYfSWgJXYicZLpKzqQnR2/GRMRtAF2RSOr/I2hk4TVcWMv2SXf7Y7Q9yx7
	4XwoBX5sYEIW/kw2oZEs9wRbmSuAhQ0/nzVYEvIent1ygpDDaP1+CwJKE3jeQEQWnJhmC5RngLI
	UYNpjhhWNXRxL6A2iOJ9IdqD0PVoGXUfTpAWqKUX+eb8cmcgHGS+apohaxOd4oX8mPiv6e+ARW1
	HkLcR4PAVW4SmvefYPxPurfyv5rViLhuDxbWGOY2eZ42H4qO1jR/GbL7P+/5n3l81LPclNuebj5
	+TDiCRHHENMtrL/uozYbe1/t6vOGJevuUAc99IWHRgW93XGJG96ibv06MwV0ZwR7TDHlgDIMHva
	bMIvS5W0D7/TErR4W92rbzSTGv6rOp0siRyWSyBM3LzqvqqfhUvNAiOxf+d4UUnGyDstgiSOjzq
	hwU7985mRXTHQt
X-Received: by 2002:a05:622a:210:b0:4d8:afdb:1264 with SMTP id d75a77b69052e-4ed075ae66amr5031771cf.51.1761578926168;
        Mon, 27 Oct 2025 08:28:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjv+f9Wm8zIpfZr0CI4TlRCnBPRjNZSJNUnKZu9weamrR66/3k2l4bfVFcQ9Uy6J4XGbePmw==
X-Received: by 2002:a05:622a:210:b0:4d8:afdb:1264 with SMTP id d75a77b69052e-4ed075ae66amr5030901cf.51.1761578925321;
        Mon, 27 Oct 2025 08:28:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f700fbsm2410946e87.81.2025.10.27.08.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 08:28:44 -0700 (PDT)
Date: Mon, 27 Oct 2025 17:28:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] soc: qcom: ubwc: Add configuration Glymur platform
Message-ID: <2ppfdoqa3fyjysfv4kiincmpbdstkgfwxso7tlfcfyfmwsndok@7krfjzdvsozv>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
 <20251014-glymur-display-v2-7-ff935e2f88c5@linaro.org>
 <7dxq62ltoeerb4g2fgchb2hd7eomvlexfgyvamxsuuirblavtn@4bg3dy2bukdq>
 <vngf7cnsj36ddg4pdm72airm2nketxk3m34qw6f65ompimpcfl@r3lbv73tmutj>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <vngf7cnsj36ddg4pdm72airm2nketxk3m34qw6f65ompimpcfl@r3lbv73tmutj>
X-Proofpoint-GUID: ioZuDhcC0bjtRVVpel1ohEQe7ttfQlDl
X-Authority-Analysis: v=2.4 cv=D/VK6/Rj c=1 sm=1 tr=0 ts=68ff8fae cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=L6mQZqrAOGHZejgJyMIA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ioZuDhcC0bjtRVVpel1ohEQe7ttfQlDl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDE0NCBTYWx0ZWRfX9SdaTKBhD3qQ
 2JyEZR83Hc/5G2g9cxM5/Zs2If6pjVA0ZkWGmDp2z4vyztkllZrnoah35pdFk31VS5I/BlrlvKW
 1XqSIgchsmD10Kxyv7CMUO7qIcigaCb8E/S9BPnP8GY/2l/ZbtvO/NP7uFkIFdzcDwjrIO/iii/
 4rr4GZZf7kGL5qgkVayTw16IlHEUE6uKy9eJthy5AH7KiMgADLdOt/w93dUAIrMMAtxpentK/TA
 HHkHc+rv5N/IoMr99N/7axtXbAL8TseDyEw7E92l/Cb7zAxqHZGivxN/qpeoennq4k9NozK1P7B
 7SpR1jzi4bOHyMPZMWZ73szGKnLDL8vymUf1rUe1p+JdUYEq68/NQzgDqPBKZnOG5BfGy13IJcx
 5zwD86kMCOj8kbnKe25VELvENsxJjQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270144

On Mon, Oct 27, 2025 at 05:03:43PM +0200, Abel Vesa wrote:
> On 25-10-27 14:29:01, Dmitry Baryshkov wrote:
> > On Tue, Oct 14, 2025 at 03:38:32PM +0300, Abel Vesa wrote:
> > > Describe the Universal Bandwidth Compression (UBWC) configuration
> > > for the new Glymur platform.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > > 
> > 
> > Bjorn, do you indent to pick up this patch on your own or would you ack
> > merging it through the drm/msm tree?
> > 
> 
> Please note that v3 is out:
> https://lore.kernel.org/r/20251027-glymur-display-v3-0-aa13055818ac@linaro.org

Thanks. The question is still valid though.

-- 
With best wishes
Dmitry

