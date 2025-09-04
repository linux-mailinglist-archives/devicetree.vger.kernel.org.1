Return-Path: <devicetree+bounces-212829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F00B43D71
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:41:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4462D7C7910
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FD7304969;
	Thu,  4 Sep 2025 13:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cwx9WVMR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8282FF15B
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993288; cv=none; b=NvI3e/FhAj/oouY6lgLI269RK/W+DpgK/ATQuL3uEVKUSf09zI5PLidQHl98PbV8v2OUUex5ZksW9Mj7XBcRHvGhkJxV/YHOLrDebjIe7MV6vzcKvEeEKsgoHjIgvqUfK7qTppJb17ZJc4QkAQxlXK2/w4ftCw8VbAX29FHQ2KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993288; c=relaxed/simple;
	bh=9y19CDO8/9ZwNOfvOAgkqhEfzj/0mv8/8otmcunDBsY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l/keU9LrvFUNOCvRZ3vRUs1e/vzdm+o4F2ZvMAaPNMHZtnegvYZgj1eJgB5vIeg963sGi9j/YymmVWhXTk/Y007Kd5VtMws9bEUNN4/Wocn6ygFqdatnlslczkZHKaVqd9gVx22BlMPQoxDInArXXd7UUTOktfqQ5Kdi+darHh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cwx9WVMR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XDON003172
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 13:41:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zsELVXxRDHkuw5FMHFijxtZb/8PZgVuV6Is5bNS8FOo=; b=Cwx9WVMRoXcGhNxX
	JbFwbDU0B98RMzT7mQ+4fVrgLvqjoDxpmRZW5wR1MUylCVa+Wsbni1nshwCSVTdm
	38Xv8wglQKlb13wBoWI3wmmvC7n1az7la0t6V0rx9hY8hPkOIUPFxD1mx8wMTDyT
	FcVE1CBH5c2US9AcV8K1ZfL3mIionmkmF0fMt6R6EarflOcsREQR3fVgt9hcH2e0
	ZAkPH3umZgpbn+0rHNnMYIgRanZ+mWVfzLyWQagTRclU0PpsKY4Q5HhNIba7MI1Q
	RQoBiOvCATtXKImAucohLsd1DwL25T3D/m/RZZ7tLb4WxluBR0aSZvjS3DrW8CJ2
	MKm7VA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush37gy0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 13:41:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5d58d226cso19491651cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993283; x=1757598083;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zsELVXxRDHkuw5FMHFijxtZb/8PZgVuV6Is5bNS8FOo=;
        b=OPtnqVP4gkqstgEtkyKetmlph38NV9tc/QI1j3MZ/T+BwoI7EbVx4xdUpnJ7TerIH1
         P7Yrl0rXxTMOqHwEHVnqEbbK2AAKY+r/N9E3VQQ3mUwCB5ZpZZTI/2+hcaxLLYt13NdH
         Qa8kY3JHWvpveIVB412P1IkfLF/UYcgjwVt+eHIXCQr9+McHwsqnGrBfO+w+M+tTkWto
         12+0/+rQekDEk4XJYt8mgMCQjIovCtCQWz3yvuW/t1ALHyIwxdb8RJOElpHXRRiu3l3j
         0kigLmE91fTRiv80AsdP4nJmCLZr0t+7OtS5848TWsknVKeS2l7+DAu+g+Q7O7iVMXME
         63Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXFx8o3PoGpQ3fLtzg0k96nhsNJbI6Ew/oQAAcGVmNh4qbPhzwxvUGyFYKpmXmNAUJj2AVHaUCGTH+3@vger.kernel.org
X-Gm-Message-State: AOJu0YxXpva3IUBbayCk48KPdwB1wYK6oEV2OyMmBJ/i1zz3qMUxgPA+
	UEdSUOcdJ8olQRpn7Vx4Kd4mDi23GYmApoKIydeon3vMrskFVAGC0w3bcQFWZwAFahSg1Fewuza
	0daYzJi/rbpmUsoIuxvCmdRmRHvd7HP9emwZBwyDgXwdwUobxtPpgO3hTb6B/2667
X-Gm-Gg: ASbGnctgMEpazgGgyMTuzqTYpHOn/kmNlEJLGGsFzAyKwEPir2NZ2nYGu8OCICCxqr/
	mWEgwSQ2wvV7ikH5Talqkx4lykvw0rBLRUJIeXq4xbVXymg2xonnUfBm/po14GqfRH5NKR/azJn
	GMvAzf3IuTxg+j+Hhm2e06mmvotcjUxQS6HqsBNOMm+A/tRkwCOsXJc/hPcLP0kGI2rbhrSFE0W
	xgD4P8cSHfcNQ+7yHN7BwXZHBT7uMcwbERvWhdjx2nXj1epJje0Li8QOZCTzPO//qHtQSuWjQNa
	2ewbJIgyRk7xxD4ebdC0wJ6Xq8MeHMy56aQxYjeIqykeHgEcyESjZv2RzjiE7al5hn9/tv1ToBB
	BBC5Xta+Yfy7HQDY9ye2P62XFKBZk2KB8iKpyJY6UaDLBDS8m+GKs
X-Received: by 2002:ac8:7e86:0:b0:4b5:e31d:af59 with SMTP id d75a77b69052e-4b5e31db532mr9157201cf.50.1756993283310;
        Thu, 04 Sep 2025 06:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcgLGNiPs4Y1Vcd2Iz1iaQB6nGFAqgRYhRmHUOPvj8u6gebWGRLPtVbV8arNifS1AxKcE8lA==
X-Received: by 2002:ac8:7e86:0:b0:4b5:e31d:af59 with SMTP id d75a77b69052e-4b5e31db532mr9156201cf.50.1756993282352;
        Thu, 04 Sep 2025 06:41:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad25d8fsm1218765e87.129.2025.09.04.06.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:41:21 -0700 (PDT)
Date: Thu, 4 Sep 2025 16:41:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v11 0/6] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <fgzptkddxhgqpsylthgo4a465jwypcu2oxo6woeihyukpn3zqd@hitdv3ujjhvc>
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
 <5bc0203c-21a1-4948-96ff-8eae844bfb93@oss.qualcomm.com>
 <d2940186-7baf-41d3-80dd-fbc860ac5acb@oss.qualcomm.com>
 <f3aa35bb-5ac7-4fe3-904e-2dd97b9c034a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f3aa35bb-5ac7-4fe3-904e-2dd97b9c034a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX7X6seo1b9cL6
 uy8TtObSyXPAYYLxQ+uat70XacJHrW6UqtFL1YKOadMKH8zQv9DYk62I61n84y9TT+1kNdsaIdY
 Z//+jxQQJEm54aB7rOJmjU/evheDPGt8nJ+XMvOALMn2UnFkagfjEwoE0PBQtlYkXjhAu/3ZHwJ
 equq9CtAwoNoF+rmBrpgFwryl0pETpXwk8JkWy38qilzz4pWbM/rWNjT9plYHA5bKKMoitjdzI4
 wv+HeOz/uD/AAdkNRoRYaz2Mj6x27Kt/cohuiA9ZUFndpfjsqtYHbKUpMuhmnHaOn+dGa0QFh2P
 dHfCS1I2CdEdO6mk4kZy6pv0wgnooy6bLLezj97xG4hcLut5txGme/7YJvT0SOJntXj42pgrGjv
 YutVASk1
X-Proofpoint-ORIG-GUID: Bk9ZFdTp32DWuKv0UkegCyMhKzekv7lj
X-Proofpoint-GUID: Bk9ZFdTp32DWuKv0UkegCyMhKzekv7lj
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b99706 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=1XWaLZrsAAAA:8 a=KKAkSRfTAAAA:8 a=4e3-kZboNEHOVYa1lVwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On Thu, Sep 04, 2025 at 05:31:01PM +0800, Yongxing Mou wrote:
> 
> 
> On 9/4/2025 4:21 PM, Konrad Dybcio wrote:
> > On 9/4/25 9:55 AM, Yongxing Mou wrote:
> > > 
> > > 
> > > On 9/4/2025 3:22 PM, Yongxing Mou wrote:
> > > > This series introduces support to enable the Mobile Display Subsystem (MDSS)
> > > > , Display Processing Unit (DPU), DisplayPort controller for the Qualcomm
> > > > QCS8300 target. It includes the addition of the hardware catalog, compatible
> > > > string, and their YAML bindings.
> > > > 
> > > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > ---
> > > > Changes in v11: Fixed review comments from Dmitry.
> > > > - Rebase to MST bindings V8.
> > > > - Update the clocks-name for QCS8300 in dp-controller.
> > > > - Link to v10: https://lore.kernel.org/r/20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com
> > > > 
> > > > Changes in v10:
> > > > - Rebase to MST bindings V7.
> > > > - Update the P2/P3/MST2LINK/MST3LINK regions in MDSS yaml.
> > > > - Link to v9: https://lore.kernel.org/r/20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com
> > > > 
> > > > Changes in v9: Fixed review comments from Dmitry.
> > > > - Updated the description of dp-controller DT binding.
> > > > - Add new clause only work for QCS8300(one DP controller with 4 streams).
> > > > - Link to v8: https://lore.kernel.org/r/20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com
> > > > 
> > > > Changes in v8: Fixed review comments from Krzysztof, Dmitry.
> > > > - Fixed incorrect description for dp-controller in driver/dt-binding.[Krzysztof][Dmitry]
> > > > - Fixed incorrect description for ubwc change.[Dmitry]
> > > > - Link to v7: https://lore.kernel.org/r/20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com
> > > > 
> > > > Changes in v7: Fixed review comments from Dmitry.
> > > > - Rebase to next-20250818 and 4 pixel stream series V6.
> > > > - Add more description for the dp-controller dt-bingding change.[Dmitry]
> > > > - Reorder the MDSS change and UBWC change.[Dmitry]
> > > > - Switch to the OSS email.
> > > > - Link to v6: https://lore.kernel.org/r/20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com
> > > > 
> > > > Changes in v6: Fixed review comments from Konrad, Dmitry.
> > > > - Rewrite commit msg in dp-controller dt-binding change.[Dmitry]
> > > > - Optimize the description in MDSS dt-binding.[Dmitry]
> > > > - Pass the sc8280xp_data as fallback in the UBWC change.[Konrad]
> > > > - Add the DP controller driver change.
> > > > - Link to v5: https://lore.kernel.org/r/20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com
> > > > 
> > > > Changes in v5:Fixed review comments from Krzysztof, Dmitry.
> > > > - Rebase to next-20250717.
> > > > - Change DP compatible to qcs8300-dp due to add 4 streams support.
> > > > - Add QCS8300 UBWC config change due to rebase.
> > > > - Add 4 streams clk and phy in the mdss yaml.
> > > > - Link to v4: https://lore.kernel.org/r/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com
> > > > 
> > > > Changes in v4:Fixed review comments from Krzysztof, Dmitry.
> > > > - Use the common style for the dt-bindings commits.[Dmitry]
> > > > - Update the commits msg for the mdss binding patch, explain why they
> > > >     reuse different platform drivers.[Krzysztof]
> > > > - Link to v3: https://lore.kernel.org/r/20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com
> > > > 
> > > > Changes in v3:Fixed review comments from Krzysztof, Dmitry.
> > > > - Fix the missing space issue in commit message.[Krzysztof]
> > > > - Separate the patch for the phy from this series.[Dmitry]
> > > > - Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
> > > > - Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com
> > > > 
> > > > Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
> > > > - Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
> > > > - Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
> > > > - Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
> > > > - Correct formatting errors and remove unnecessary status in MDSS
> > > >     bindings.[Krzysztof]
> > > > - Add the the necessary information in MDSS changes commit msg.[Dmitry]
> > > > - Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
> > > >     20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
> > > > - Package the DisplayPort controller and eDP PHY bindings document to
> > > >     this patch series.
> > > > - Collecting MDSS changes reviewd-by Dmitry.
> > > > - Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
> > > > - Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
> > > > - Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
> > > > ---
> > > > This series depend on 4 pixel streams dt-binding series:
> > > > https://lore.kernel.org/all/20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com/
> > > > 
> > > > and separate eDP PHY binding:
> > > > https://lore.kernel.org/all/20250730072725.1433360-1-quic_yongmou@quicinc.com/
> > > > 
> > > > ---
> > > > Yongxing Mou (6):
> > > >         dt-bindings: display/msm: Document the DPU for QCS8300
> > > >         dt-bindings: display/msm: dp-controller: document QCS8300 compatible
> > > >         dt-bindings: display/msm: Document MDSS on QCS8300
> > > >         soc: qcom: ubwc: Add QCS8300 UBWC cfg
> > > >         drm/msm: mdss: Add QCS8300 support
> > > >         drm/msm/dp: Add DisplayPort controller for QCS8300
> > > > 
> > > >    .../bindings/display/msm/dp-controller.yaml        |  22 ++
> > > >    .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 286 +++++++++++++++++++++
> > > >    .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  15 +-
> > > >    drivers/gpu/drm/msm/dp/dp_display.c                |   1 +
> > > >    drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
> > > >    drivers/soc/qcom/ubwc_config.c                     |   1 +
> > > >    6 files changed, 321 insertions(+), 5 deletions(-)
> > > > ---
> > > > base-commit: 3ac864c2d9bb8608ee236e89bf561811613abfce
> > > > change-id: 20250818-qcs8300_mdss-a363f0d0ba0b
> > > > prerequisite-message-id: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
> > > > prerequisite-patch-id: ffeeb0739a4b3d310912f4bb6c0bd17802818879
> > > > prerequisite-patch-id: cdc3f4515ab23a8b2ce719bbdbcb56043803d03f
> > > > prerequisite-patch-id: 048b11765f49af4a728db1525fef1eb8ad48bf88
> > > > prerequisite-patch-id: f0f92109d1bfffa6a1142f2aaecbd72a29b858c0
> > > > prerequisite-patch-id: a8185cf3ddd85b9058691500b8dc0c57c8226e97
> > > > prerequisite-patch-id: a389a2e4eca44bf62bb2c861c96596368be7a021
> > > > prerequisite-patch-id: 09ec7f51de0a65c68c2c781750177017f32747ba
> > > > prerequisite-patch-id: f76ab0ae189df14acc851fa52f8f8e8faed9a505
> > > > prerequisite-patch-id: 983fc8a7bea459505c5b27db1a1ef7581936555c
> > > > prerequisite-message-id: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
> > > > prerequisite-patch-id: 2ea89bba3c9c6ba37250ebd947c1d4acedc78a5d
> > > > 
> > > > Best regards,
> > > 
> > > Hi, maintainers:
> > > sorry for the inconvenience caused. This series is missing patch 5 and patch 6 due to network issues. May I resend it? The missed two changes are identical to V10.
> > 
> > You can fix that manually by sending them both through
> > 
> > b4 send -o /tmp/
> > git send-email --in-reply-to=<cover letter msgid> /tmp/0005-xyz-abc.patch
> > git send-email --in-reply-to=<cover letter msgid> /tmp/0006-xyz-abc.patch
> > 
> > Konrad
> Thanks for guide, when i use cmd  "git send-email
> --in-reply-to="20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com"
> ~/tmpyongmou/0005-drm-msm-mdss-add-qcs8300-support.eml", seems something
> wrong, error log:
> mou@oss.qualcomm.com>,  Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com>'
> (body) Adding cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> from
> line 'Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>'
> 5.1.3 The recipient address <y> is not a valid RFC 5321 address. For more
> 5.1.3 information, go to
> 5.1.3  https://support.google.com/a/answer/3221692 and review RFC 5321
> 5.1.3 specifications. d9443c01a7336-24b1ba1718bsm64512315ad.39 - gsmtpWould
> you mind sharing some suggestions for this? Thanks~~

When `git send-email` asks you, just press 'Enter', no extra chars. Or
it migth be easier to just `b4 send --resend`.

-- 
With best wishes
Dmitry

