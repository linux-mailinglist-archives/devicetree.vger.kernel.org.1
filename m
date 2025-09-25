Return-Path: <devicetree+bounces-221670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A68BEBA1B8A
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 00:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA824188E30A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8362E62A6;
	Thu, 25 Sep 2025 22:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G0o/9238"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF18014A8E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837755; cv=none; b=mVJ+qIMR1RM9MBYrMGh1CIn6MPS5ipo1t93A+PQYpueyXKMWPpQMQDFS4zGEUJsf4KzxBP7jdhDB7Mol1fnQ5K48wOwv8Zr2ALoqiZNWrrsYmHLl/kx6RVmT1o0NMBT3MnzOqvf7n5fckw+jR8YKVEgJ/E9XQAMqK8R83xwBYC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837755; c=relaxed/simple;
	bh=yaBhx0V6k/oUkzfHEOZBpTq8xGsBZ/GMh4qMuVwRIcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=USlUEPhXtZQLaUU1Nn3Hkwx6MOEvfa2VTywBhVgrkWBEJWGc96bKpdtVRFc1k1HKztcpvC9wKjQiTQBS/yytL5cBpWAbYW4w+A2T+vxVFW0fWj5nWYOCS5+jfHqZNSO3gLA9a+Yhgonav69GXMu9Dfk0CyvLAEs3ri09Jv/ia4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G0o/9238; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPhEu011408
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:02:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WswtcLs0OrUJpjixJvlZQZiB
	DPTlc7OTq9eAlE8GdZk=; b=G0o/9238WnlcOs1XsiHSp3L8+474gfSmXsJ9fZs7
	G9U29w7y7nTLV8zf8OVYA4/bw1NMxkA8ytkYJxD5Zj/X6ZY18mUYq+Q4wZ7qq3EF
	efvN414/wAAHaoHYs9GIXfQReRQ030rnBDkr/SL9kBo2oWz/B3lOAU+DNE+6a86C
	Y/mFNgNd9u3OmjUz0l9ZFCN5IGiGv6MyucxaPsm/iwuXPrIIFT5/Mf/UBrFvkLkv
	lBqwXFROoJAtokjZbOqoVRQ/vMTgEvK06uu8X87wTAOXQnHWcHoabrVKdcfG76XS
	+KZ0oAzwDd2TLBFgYWZyU0cfn7s+LrQIDBglwtZ0iv8UxQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q0gwm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:02:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4bf85835856so39876761cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:02:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837752; x=1759442552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WswtcLs0OrUJpjixJvlZQZiBDPTlc7OTq9eAlE8GdZk=;
        b=niqHH37laxAF+iEJ9b8ul0loa6iwqUcr2NyHTw0WpD+gGCkQqQ1WdqVgoZZDJhvzzN
         DVmYiCITT1kPRbo9PP1x8W5nrYGOghM+rhAxBpq5BR8hWMeT8vzSQZlCZiKZWtbxJ7KH
         WvujfXe/aNoSNu1w3ziCgGKVGBdI8itvW+/x1SX3TOnLsVSRlSidMIW8qC7FDn7hNU9H
         /wRBbTakWC/m+wxoMBfrDJ/VfvEGl/vHusEFegeP47QNDOym/0i0yGfKCVcuhzu3lB76
         u/7ldTMSGmEY6+nrcBzBF2T57+Bsy5fE8lWq5lXSPuXMADNDGElKqjJIYpsyQKLBNJpX
         9Ljw==
X-Forwarded-Encrypted: i=1; AJvYcCXmkLH4+P8t6Le9lGm9W+yJ+rwwirZhDu/D4uGEKqnr0CGOJ4eCmMdTMrMgjQ6YnaIv9RFYE2gIQxwd@vger.kernel.org
X-Gm-Message-State: AOJu0YyYiFyNsV50h8x11ZKVXs43FOmbesBpp46YsFv2jzt/8SX1dn1a
	BeAK8bXnLCvqF/uakNLJfM6XXe9H4WqeoOrNRnJU34VUA4jEVM30jtzU44TXpsrZlfvB6z/yG7a
	zSEm1cZ2jKQAsT4q/zomQzN63TcJ625OE05T16yYrJkRNwsiG0VeoJJVbxjh2twPt
X-Gm-Gg: ASbGncsJreHWkJxh3wqlj69OgGtZK8cvk08IbZ3Bc0pEWiCytGTuCyXGTpCc6oyhpLs
	LL50lKVbijIcFBDIx/hZvRe7tyj9JSp9IvDDmIRQSKZ1DdR4yCD0/nRZrtKWdyGcuQEAEOVlAdn
	voaOwZnyIOAamV0uNPvIZvqMxwflzAxOOKWI28pNDltlqirkhv3Jv1xrArDAZYCA34duEELLd8F
	wzlq/pUdJ4sG2BR02a7GOy8+5wivBlshHlc1+JiNW02mj2pOLPM4Y8deBh5wm/Jlp9CM02+sZ9d
	09wh1qJGP5mf30NbPUCkbBSLMso17HrqfVX8o/KwdOxOiXQz7CNlm/ojWY8BTdQNk2Yl1zYpKDV
	KmWvMWITl4Q9acGMkC9hIMc1B5GRw+rnvC6a+6ztL/HnvlxxWsIBx
X-Received: by 2002:ac8:5e06:0:b0:4c7:e39a:388a with SMTP id d75a77b69052e-4dac4133cadmr48183071cf.0.1758837751536;
        Thu, 25 Sep 2025 15:02:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjm/ckt7DusryvD+RR3JgMyVr7iU1qTCLo6gNy24ib40rQZETTCozRfZCmrtkgIOjnQ9Px9g==
X-Received: by 2002:ac8:5e06:0:b0:4c7:e39a:388a with SMTP id d75a77b69052e-4dac4133cadmr48182281cf.0.1758837750889;
        Thu, 25 Sep 2025 15:02:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313cde476sm1164996e87.48.2025.09.25.15.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 15:02:29 -0700 (PDT)
Date: Fri, 26 Sep 2025 01:02:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 2/3] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
Message-ID: <vsty7sy7gi2eeyifokwcqpoycmarxietkijmlkymwrmzmdsfws@x64f4ulbc6ja>
References: <20250925053602.4105329-1-quic_amakhija@quicinc.com>
 <20250925053602.4105329-3-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925053602.4105329-3-quic_amakhija@quicinc.com>
X-Proofpoint-ORIG-GUID: hlUkcdeQFUs224X2v6qthn1Zp2Xni1og
X-Proofpoint-GUID: hlUkcdeQFUs224X2v6qthn1Zp2Xni1og
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d5bbf9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=HRGN58LKe5rzAvgwDGIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX6Cse54fQGf6V
 2x12vyS7uBmql/sWdONSuS7ep3YvkqIfokRB5HL5UAHgSz2v697OfdXjJGYRgrKXMcPrYjD22Qh
 k3BnsU10NhCwQ/3APp/UlMdf2NaWpulSfr39wI/KWy/uc/m7Ht70iRzQBYCuAKCP613m+6rLbMU
 SvaLYhfWKmVYmBwOs8X0jSAMIGrpb3Qo6wdRmAHlRNvjPsvw3X07vJjAHPodPYeLz0jADG42vf5
 rMkBeYnCkXQOf2qmrvY3ApNxr9dYCrkGGXCMA3pDckMGQ2EKmGFfIEQP19mvysaFq3jQGJVV7B2
 HDJnf7KBwNpwoJNEskPeSkW1jJfJY22soWyLV1CG/EKjlYwN8g0v6QAirkkHwETKv3o7jrXaaBG
 L1QgvVx/FuAZx/pEqpPigtpwI545jw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 11:06:01AM +0530, Ayushi Makhija wrote:
> Add device tree nodes for the DSI0 controller with their corresponding
> PHY found on Qualcomm QCS8300 SoC.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 95 ++++++++++++++++++++++++++-
>  1 file changed, 94 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index e0e1f63fc45b..834ae0522f2f 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
> +#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
>  #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> @@ -4854,6 +4855,13 @@ dpu_intf0_out: endpoint {
>  							remote-endpoint = <&mdss_dp0_in>;
>  						};
>  					};
> +
> +					port@1 {
> +						reg = <1>;
> +						dpu_intf1_out: endpoint {
> +							remote-endpoint = <&mdss_dsi0_in>;
> +						};
> +					};
>  				};
>  
>  				mdp_opp_table: opp-table {
> @@ -4881,6 +4889,89 @@ opp-650000000 {
>  				};
>  			};
>  
> +			mdss_dsi0: dsi@ae94000 {
> +				compatible =  "qcom,sa8775p-dsi-ctrl","qcom,mdss-dsi-ctrl";

qcom,qcs8300-dsi-ctrl. You might use three compatibles (qcs8300, sa8775p
and the generic one), but there should be qcs8300 one.

Also please add a whitespace after comma or (even better), keep one
compat per line (align on opening quote).

> +				reg = <0x0 0x0ae94000 0x0 0x400>;
> +				reg-names = "dsi_ctrl";
> +
> +				interrupt-parent = <&mdss>;
> +				interrupts = <4>;
> +
> +				clocks = <&dispcc MDSS_DISP_CC_MDSS_BYTE0_CLK>,
> +					 <&dispcc MDSS_DISP_CC_MDSS_BYTE0_INTF_CLK>,
> +					 <&dispcc MDSS_DISP_CC_MDSS_PCLK0_CLK>,
> +					 <&dispcc MDSS_DISP_CC_MDSS_ESC0_CLK>,
> +					 <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_DISP_HF_AXI_CLK>;
> +				clock-names = "byte",
> +					      "byte_intf",
> +					      "pixel",
> +					      "core",
> +					      "iface",
> +					      "bus";
> +
> +				assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_BYTE0_CLK_SRC>,
> +						  <&dispcc MDSS_DISP_CC_MDSS_PCLK0_CLK_SRC>;
> +				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
> +							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
> +
> +				phys = <&mdss_dsi0_phy>;
> +
> +				operating-points-v2 = <&mdss_dsi_opp_table>;
> +				power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						mdss_dsi0_in: endpoint {
> +							remote-endpoint = <&dpu_intf1_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						mdss_dsi0_out: endpoint {
> +						};
> +					};
> +				};
> +
> +				mdss_dsi_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-358000000 {
> +						opp-hz = /bits/ 64 <358000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +				};
> +			};
> +
> +			mdss_dsi0_phy: phy@ae94400 {
> +				compatible = "qcom,sa8775p-dsi-phy-5nm";

Add qcs8300-specific compatible and use sa8775p as a fallback

> +				reg = <0x0 0x0ae94400 0x0 0x200>,
> +				      <0x0 0x0ae94600 0x0 0x280>,
> +				      <0x0 0x0ae94900 0x0 0x27c>;
> +				reg-names = "dsi_phy",
> +					    "dsi_phy_lane",
> +					    "dsi_pll";
> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				clocks = <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&rpmhcc RPMH_CXO_CLK>;
> +				clock-names = "iface", "ref";
> +
> +				status = "disabled";
> +			};
> +
>  			mdss_dp0_phy: phy@aec2a00 {
>  				compatible = "qcom,qcs8300-edp-phy", "qcom,sa8775p-edp-phy";
>  
> @@ -5008,7 +5099,9 @@ dispcc: clock-controller@af00000 {
>  				 <&mdss_dp0_phy 0>,
>  				 <&mdss_dp0_phy 1>,
>  				 <0>, <0>,
> -				 <0>, <0>, <0>, <0>;
> +				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
> +				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
> +				 <0>, <0>;
>  			power-domains = <&rpmhpd RPMHPD_MMCX>;
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

