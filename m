Return-Path: <devicetree+bounces-226445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8AEBD8B5C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:18:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 42B024E3993
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0AA2EAD10;
	Tue, 14 Oct 2025 10:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GgYufA6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6AB2EB878
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437090; cv=none; b=gQ8KUHULathzsIm+C3zBFly/eXDN8ABuPKaOT67tU5Gmi2pD+G34Qm8Wu40IqwKFAPdlFNwkREvNbSUS3yUoLIw435H6LlEp1EYp8725RHD8UrwP3Nz1PuUJyN1oHaZJmK0GAYZ6cK2FNz1Kw6QkgBtMay9AMwcVifYpaheKmpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437090; c=relaxed/simple;
	bh=w7gnzCZQ6nRhynPolPCfbnwk0UwzKPoJZt3kck8zss4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JXGhLwU7lA5DSvGyeYNb1qDKTP1B+RXdUM25Sc6iTKIiy1fW+FKdyQFBULTcetVLO8nJoFkRQpr2pBvNWatXbC3SwcB9M+7xjxDtvEsb9gABVUhTwOXLH8jiDbNHMnsHX3Lm4v18ppY+SHwFuNEq+GD5SjToOA1iKtYo2nm6EKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GgYufA6Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87Ges019855
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:18:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pwptx/VesgCBtJDbpJ0h31jG
	Os/N1oEOleOLOClW4QM=; b=GgYufA6ZQVAqzPGbedZW2BexYSPUaA55oJrvgezu
	A9V1NsT3tYXIon1derOce/NFCbGJTyXqdI57sTwCmYv2OtA8JS4JxzCKlkcm+8NJ
	IKDWONthUSPJIw0LBqR3s44PkHHF4loLfAOfFwJY9X9usWUii65PGa6AYrpPNtFi
	D2tdFwb1QHLECrwPzWxc0fiYLgorn/YOo8GJxPNPCrIVoysmRpFQ4lnyzu35aLtT
	RoiktZN2jiZorPe7y1eF2fvVcDvVkaPd2WBu6n16G2+0mu0HVygWJprXRsAVh07V
	Elu7sTtrHvrrxug7sGu0WEYeJ7Vz1By+4Mt0VxLnII811g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c01pv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:18:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-854bec86266so2393850585a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:18:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437087; x=1761041887;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pwptx/VesgCBtJDbpJ0h31jGOs/N1oEOleOLOClW4QM=;
        b=aPRnODWoPfRCmY8ku9GlwpuN7x3ogCzAoDPh9oUNIiOZhlU2EKJ3tzKykBZVgfCxtM
         UxmlDbhQ9ElIm1ra3EMMRhj+yPHvqQ/68mh1VoNvpsoQ4c7E5w/8WJTEs7U2yIt4QGHI
         wKbWrgtNFtaUfU0MQHnfB9JHpNx1GF+189lUSyVdt0IxebswzyIVNbHfvAcy7rLkK3dq
         Zr8eAxXHpSZXsXGmryf3CJvFswoEleMs/ges6T1Je8XHrZVh6Xwc9ydsfzOuhGHD4Er9
         3JYoNR5IS1xDLoUMCtfpaVq2+JFmhtJN/Ve/shSeP+r7lc1r2L+3JvIcqPi7xDQYXjh2
         i4zg==
X-Forwarded-Encrypted: i=1; AJvYcCVIaKWwozikq8bROOKKeeBb93YYT1v3m6agd0PH8ZG+l35A0Bh3wG6NhdKL3tmBYSrsTOLtV+lQwOLt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx2ds34nyBo5otB0sRd+/429tdmK1uW6tthNU8SRn9Hz2cmziH
	anxIbBU9JUc0HG08XQc9SnvLBuYqSO98K3iqGsWMyue1mgKTqKnYxIPyEIAmQuoL6qNJldhnSlz
	b2OHemZ5uq+saQF7wXW0ADk652BoLhGPOiycWL2/0xRJhQKbem3LcbRU4jHH8KIl/
X-Gm-Gg: ASbGncuEWEKfxxv4kT+RsIRCk8xIKsE5dGYLlKdk45eXXBXhrXeGbwrp3LrFVf0ruMQ
	K0DF/rrmZSLDLBs5lGNKocW7hM2DYXn9Cs4mNDd30v0U/CXvB4/P3TqkgZVGLxo9MzyQEPRzO1h
	W3v60p0pxHCZqNHPZW+znmBvCgFvQPn1ADmTfTgRoA112FGfX/I3KdxJYUByKOgFCf3c9iWxVIR
	zjNcYmoMFasge1Wgi+WC4FEPi7A5ig/11qTqonfEdpVgI3Q0EBLsgk2pCnSqCvz0HSZwUPjsNOe
	uPe1joRG0PCnnw8UkfSfXoanp8Mw1cpsXO5Z6HC6sCyJ6D7O/uK32CjgjUv1Mz+5D4PIQ1bXMjv
	Ifv2nYnByN/81t+vcmWZIdKBPH1Aoi8k7r/zZkigGCokEBUY1q1OF
X-Received: by 2002:a05:620a:25cf:b0:82e:ef43:38f0 with SMTP id af79cd13be357-8834d1ab25cmr3439238185a.0.1760437087161;
        Tue, 14 Oct 2025 03:18:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJhGGgyvvXZT48tFGwd0V8RDCf9K7hHaMnSajQnKeeUDp+q+bm7eaDMfpNfVN/V/oft3MlEw==
X-Received: by 2002:a05:620a:25cf:b0:82e:ef43:38f0 with SMTP id af79cd13be357-8834d1ab25cmr3439234785a.0.1760437086684;
        Tue, 14 Oct 2025 03:18:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea109afsm40265551fa.33.2025.10.14.03.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:18:05 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:18:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: xiangxu.yin@oss.qualcomm.com
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
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Add DisplayPort and QMP USB3DP
 PHY for SM6150
Message-ID: <mij6av23fni6i4yb72xbjv3s2mil4eankjwt5n7jbafslvilem@qsk3644ilgcp>
References: <20251014-add-displayport-support-to-qcs615-devicetree-v2-0-1209df74d410@oss.qualcomm.com>
 <20251014-add-displayport-support-to-qcs615-devicetree-v2-2-1209df74d410@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-add-displayport-support-to-qcs615-devicetree-v2-2-1209df74d410@oss.qualcomm.com>
X-Proofpoint-GUID: 4Bj1fr8Y8cMZIDYhUmg7ppyvJ2JgY3dK
X-Proofpoint-ORIG-GUID: 4Bj1fr8Y8cMZIDYhUmg7ppyvJ2JgY3dK
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ee2360 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=j4UgqydKDgg0KIll92UA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfXzWlGXXNaAFHe
 gGAtANkQLZbiRNtJVs9DLKt5tutb4ozU4HMMORDIqMImNv5cGph271GRIGXfto6KOTKp+jV6ND4
 96BJCut+JLxAxOSow57qyTkkAWQpeV5GDVSQ8pDvFchklcsTQsAD7WsZqPREKSugSfP2xf81146
 ffkxxQoOxpSJNhyZD3df7KQWbXL7Y8lPNi4cTtY4Edh1rgrkLoW/DWvCTh+5dFicEC8aozclkHN
 HiSMZbqNVPAV4TbVR+ElMTJXzMIjEsmHq+cvpLmhnpS+dOqKUQJcgACA9fzldzY/e53bRKnPGaD
 10rQREmusQ6f3HIbOJtOwi7CHno2MP4o5Gqf/FEVT9ImxchV5/PfoSIa+9rQ7X2PcOQv3FZ83hf
 vBoiFDmROCPHgb2lPJCFoF4pUcBuSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On Tue, Oct 14, 2025 at 05:42:11PM +0800, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> Introduce DisplayPort controller node and associated QMP USB3-DP PHY
> for SM6150 SoC. Update clock and endpoint connections to enable DP
> integration.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 110 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 108 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> index 6128d8c48f9c0807ac488ddac3b2377678e8f8c3..cdf53d74c778c652080b0288278353e20c317379 100644
> --- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> @@ -17,6 +17,7 @@
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -3717,6 +3718,7 @@ port@0 {
>  						reg = <0>;
>  
>  						dpu_intf0_out: endpoint {
> +							remote-endpoint = <&mdss_dp0_in>;
>  						};
>  					};
>  
> @@ -3749,6 +3751,84 @@ opp-307200000 {
>  				};
>  			};
>  
> +			mdss_dp0: displayport-controller@ae90000 {
> +				compatible = "qcom,sm6150-dp", "qcom,sm8150-dp", "qcom,sm8350-dp";
> +
> +				reg = <0x0 0x0ae90000 0x0 0x200>,
> +				      <0x0 0x0ae90200 0x0 0x200>,
> +				      <0x0 0x0ae90400 0x0 0x600>,
> +				      <0x0 0x0ae90a00 0x0 0x600>,
> +				      <0x0 0x0ae91000 0x0 0x600>;
> +
> +				interrupt-parent = <&mdss>;
> +				interrupts = <12>;
> +
> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
> +				clock-names = "core_iface",
> +					      "core_aux",
> +					      "ctrl_link",
> +					      "ctrl_link_iface",
> +					      "stream_pixel",
> +					      "stream_1_pixel";
> +
> +				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> +				assigned-clock-parents = <&usb_qmpphy_2 QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb_qmpphy_2 QMP_USB43DP_DP_VCO_DIV_CLK>;

Missing PIXEL1_CLK_SRC assignment

> +
> +				phys = <&usb_qmpphy_2 QMP_USB43DP_DP_PHY>;
> +				phy-names = "dp";
> +
> +				operating-points-v2 = <&dp_opp_table>;
> +				power-domains = <&rpmhpd RPMHPD_CX>;
> +
> +				#sound-dai-cells = <0>;
> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						mdss_dp0_in: endpoint {
> +							remote-endpoint = <&dpu_intf0_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						mdss_dp0_out: endpoint {

I thought that we need a data-lanes property somewhere here.

> +						};
> +					};
> +				};
> +
-- 
With best wishes
Dmitry

