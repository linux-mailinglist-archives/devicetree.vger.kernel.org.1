Return-Path: <devicetree+bounces-254675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DD1D1AB95
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94B113008F7F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA9239341F;
	Tue, 13 Jan 2026 17:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X5VUoLX8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UaegwiPm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DECE28CF49
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326495; cv=none; b=X0o4S2R66CDXROuWDWXMqjcCsdJPkPtKVJD6L0X8dBBODM1tyhj0lkJlxLvomU68pI3ZrE6QCwVTUPU5/JKfGNt/uXIQpy9VXXSZU9BNlJFc5VVB1gjrg5t0ZYzM3jLlr2TualNif8yLzEGGWd3EU+VgBFCLxtqXYt9KxH8Y7kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326495; c=relaxed/simple;
	bh=9cvSl9COuh0M5ECwkuvVAuTFQfEqwC+o+V18DU02b78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iGwMQfRVt/3jGm0dqsSchhV1P3tH1qhwGlAlKw53TI/vpcpFj1bBiGU839PrT8IOABYK2942jcnHaoDwpZUdqM5HNoX4HiIl8yejBQ/40DJUr5oIjktgUVBSpIi+m/KtXSEmRcVXXnHzr32PTUCdoCAgg6eGNHOT6xE4Cfuir0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X5VUoLX8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UaegwiPm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DGrOuF027650
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:48:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rUKO6NmjdxIj9YBZgwzSXc8Z
	/PI33D8VFMOCeRYVGUI=; b=X5VUoLX8nsRYdXehfMtKrKsxwnF+n7OOjwlUBSeh
	ZGflOzy574/78kc8fIGm2BItnt6k82HVf3OKCNHGp6kHPClaiNoBDqsX5+r9tPBC
	UZtWPYjBxFH6V9DR8IONKHEAYVzc7JTs43Y4srDGpTQebn3ghej4n+9ypN8WaKIj
	XqgIV+V36Hu/60fqNtBPi4zWIzVKkUOYOj1UmHJqny2fM+o732HhxndzZ26ymy7B
	5RcH4jAYdZrGh2Vvr+by87pN/JHldOkM7oLc2owIvjOGyH7Ipx/T/9sVWE0XsXOm
	sQAUsqW+87hwH8VGTh/gSJk8dXp2PAAufBMI+AgIpkS89A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnsyb86h2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:48:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c1cffa1f2dso11564685a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768326491; x=1768931291; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rUKO6NmjdxIj9YBZgwzSXc8Z/PI33D8VFMOCeRYVGUI=;
        b=UaegwiPmfITQlJINOWSnCP9B6//ka/3lsLQtoZBETxCnu5QzEWFptnQX/iuad03BpV
         D8K1ZVknqiGoVODO9wKqxWxcYx8lcLCE7OPuuV2NnGKsEvlH7TDWVWOvZgWD6XiUodKU
         g3H29vF/kmoA9rDiAFHzgFUIr9V7j12YE9OWZ4vSHzwFtjoYxthGvDfwHV5OdCPT7ntR
         jgCVaqoTvSdHUqQ7fflOAaEWGWEfL8M1YpfxCv3p8+9nVwZzHvg6W6oth6DWz7ns4tnw
         QNxegY2gFoN8vVG2LfszRYVZgTfb/C34wljiZShemg+5GSxATt0OUAc3ehc/9OUHkxiz
         3nTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326491; x=1768931291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rUKO6NmjdxIj9YBZgwzSXc8Z/PI33D8VFMOCeRYVGUI=;
        b=hApY9zuiZKbDHYXIVQuOG9xlzX4g5X0LsXIOqXYbX+bluieQHSvD0vJvhJ4tstnJL3
         Ef7yt1mNdmovdKLyB4f8WwXVTm9ce9X3SeOu/bNstzdpoSU43YgA4fuTUyxZCEV2et1I
         oEfDZjUSMhoziW654pki5L5rTWXyj9vBOgYFxIecfg3U/KLw9MgtxKIvANjUzWygg9G0
         3kQN3iMYzijZB//5L6TqFNGSF+KC813mpHXV3n7xl8crB5mT81Lu2E6F0GhFlLYXaZpZ
         lYYtKNj2KmmmcksA9O6+t3fON/9lxaS+q2xpqnwr0c2qxYll6bsNCFHoYEJZlEJHWmqA
         8MFw==
X-Forwarded-Encrypted: i=1; AJvYcCWRgkGU/NPC/A0nCsf/XnLcoEjWBYyhA8BFTcMBagE286ex7x+WgH9UMdwuAiHil/QH8gFMNO96JU2/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe2VkhrR7F/4lNSYgIR3Lwl/ugQUqAWdEwEM36QnSLE+vW0N1k
	9OSMt5ft94sikxzTBCARNEBgmliJ6DyCr2u6p0LD13um8DmXliibNHZ0ggz8u7oc8VrrcKOBMqN
	bbfFGe241XJQprJVYgV14lhBhqrwN/t34OSc6LaEHyvqvxJlUZAVWt09CVZfU8UaE
X-Gm-Gg: AY/fxX6Vqvpx+wv4d20zrSAKZ/7b4im7ND/VcYLoXzUasFIR2pA8xb8nmBA/RlvsFa4
	FkFU0RNRQ1JpH2+wPB2FRUNxP6ZZsY8FwePxe0kUKkudrnIayiabV0Fhjcun+WGjYCfYwyR1rRR
	WeVdsqZstFTnjuREuOmHwb7hTXXBKc5MJHqB68aqSVmtUU2KeOJpeBPyezbmGLtPuRpPKAJEEcx
	k265A2Dz43KJmnKOyUtiFDKDRpDenTSjtWjNUxx+704ai1vMfm5j++hYxODoBFbt1rJ/PKWsLrH
	rdpnuIYcdOIM5oeV8ZjjI6L0wG3wc/1CeHGaneVv4WpYuWa7YKNOtfsrHhjJSJ3oIcuFl//dRJx
	UdcPdX5HuAtjd1Nn37cOKpMzfjMmqt/6tmR7pikPYUX1SR8P+/bRmFTtfDezkUdyFs0wY00TDdA
	28I/J0vr4ZTpV6T1Z93dQCBI0=
X-Received: by 2002:a05:620a:3901:b0:8b9:f737:2006 with SMTP id af79cd13be357-8c5208c1ea3mr461049785a.37.1768326490836;
        Tue, 13 Jan 2026 09:48:10 -0800 (PST)
X-Received: by 2002:a05:620a:3901:b0:8b9:f737:2006 with SMTP id af79cd13be357-8c5208c1ea3mr461046285a.37.1768326490334;
        Tue, 13 Jan 2026 09:48:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b7868955fsm4081984e87.2.2026.01.13.09.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:48:09 -0800 (PST)
Date: Tue, 13 Jan 2026 19:48:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v2 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Message-ID: <xkrlyk33bddfwjxh7n4bplubbegmvetxqukcxmpbeqncosdb4v@fpznx4z6noc3>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: qUX_xyk4zrL0li063AoHmCbYRe6ehfTz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE0OCBTYWx0ZWRfXx2VyckfgaCeC
 /s0jnup6jYEDGoo0RpMVfPybb2IA7+f4cCvAxY2vpcywGaOj2bz/myrCiYVq/Ivi/0sCSveVGlB
 FjxKEh7zjZPNdk/4b7pEcuk/rJSvK9fOZB6hnrVfpv2u9LllFKRuJow1QVsQiiABD16UPxk0h8M
 kIyEfqePqklx1RX/7KkhlVo5niCXjFPiCwYCXJxuR48crTz7Ai95/8HMEmai8hSLcZpNglUpCmR
 4Q2ym9w2VuClX4H2bebH7QzhfASFkwBY0QisRpk7R/skhMWXAXpMAWwyVaePUR5grXE94E6nKWI
 3vcWncgaDnd+sv7JDHPECfPEGUQgf6f9WCKptertUgBZhDgG9GgY50vV6h9oLGx+Z4w3GvhHQT3
 TdfwpDwwSbjPDqPaExdvaOFPP0pg5k8WuJsFz+KTrecweTNZ9YBKg488gBf7Cve2AOouye45nDa
 w1jR5uwg6J7+KPd7ghw==
X-Proofpoint-GUID: qUX_xyk4zrL0li063AoHmCbYRe6ehfTz
X-Authority-Analysis: v=2.4 cv=IpETsb/g c=1 sm=1 tr=0 ts=6966855b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=C7kWuIWCvM89SLCDMewA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130148

On Tue, Jan 13, 2026 at 05:00:05PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> controllers. Describe them along with display controller and the eDP
> PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> clock controller and link up the PHYs and DP endpoints in the graph.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 431 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 423 insertions(+), 8 deletions(-)
> 
> +
> +			mdss_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,glymur-dp";
> +				reg = <0x0 0xaf54000 0x0 0x104>,
> +				      <0x0 0xaf54200 0x0 0xc0>,
> +				      <0x0 0xaf55000 0x0 0x770>,
> +				      <0x0 0xaf56000 0x0 0x9c>,
> +				      <0x0 0xaf57000 0x0 0x9c>;

A quick look at the memory map points out that you missed p2 / p3 /
mst_2_lclk / mst_3_lclk. Is memory map incorrect?

> +
> +				interrupts-extended = <&mdss 12>;
> +
> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
> +				clock-names = "core_iface",
> +					      "core_aux",
> +					      "ctrl_link",
> +					      "ctrl_link_iface",
> +					      "stream_pixel";

This wasn't actually tested. You have 6 clocks but 5 clock-names.

> +
> +				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
> +				assigned-clock-parents = <&usb1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
> +							 <&usb1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> +
> +				operating-points-v2 = <&mdss_dp0_opp_table>;
> +
> +				power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +				phys = <&usb1_ss0_qmpphy QMP_USB43DP_DP_PHY>;
> +				phy-names = "dp";
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
> +
> +						mdss_dp0_in: endpoint {
> +							remote-endpoint = <&dpu_intf0_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						mdss_dp0_out: endpoint {
> +							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
> +						};
> +					};
> +				};
> +
> +				mdss_dp0_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-192000000 {
> +						opp-hz = /bits/ 64 <192000000>;
> +						required-opps = <&rpmhpd_opp_low_svs_d1>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-810000000 {
> +						opp-hz = /bits/ 64 <810000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +				};
> +			};
> +

-- 
With best wishes
Dmitry

