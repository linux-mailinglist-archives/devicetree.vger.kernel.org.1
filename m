Return-Path: <devicetree+bounces-274557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IC5G/qpsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:56:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7062A2715A8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 88E713002B70
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217D238C2BA;
	Thu, 12 Mar 2026 11:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GHX+lmmn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J9D5kGyA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25992DC764
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316597; cv=none; b=Sr1QxtIg7/I9CeRKz2ZlmTk0uApxSzLhoSrjuacCToS4uOS6icJBkTr3hpwGuHh3ipLtkObTr0DihbJ6uvdKHSsX/YDAw/NnRE5hMlIKy/JCyRvHmrGm/qU2U/IlsHyBn+rcAi8jxHgCJv4tu+2Q+7wdkkjsrCkNSdrDLsLV9VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316597; c=relaxed/simple;
	bh=Yiq7MaKhVIcsvCWJPAcXPNyHvlc5GtXwTHL0b0+L4EE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QTluqO8/iLSPyPeR2UroZa0klhV1URaTQoYmzoTKi9X5W88SHSkMHlywjw8Ba0g4PX24CB+5Z3PPOHIRITmUDn6wVgodMMEIChP/wiPB2NNzzZMcOutg/KDqCoF07dUgH4DDeGdiyUnhLlhrAnzeSc1JeQSjLLwcxOOV507hSng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GHX+lmmn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J9D5kGyA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9ANK93666499
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:56:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qyAplPkX7kACDc5uTBJjP1fB
	OnA3ca+udZ7Tm0yU+r8=; b=GHX+lmmnRfO43kLqoMETPIVoAynvuUeFIEb7OQJ0
	+LR7dvL3GMfywoZrm5/8U73Zgzy44NAyovtulhDcRzGj2/gTo05GzRja9mKR1qfi
	Hh47G2cvM4zN7ml1Umjp5NjdE7kz52bEFrzMIpBhypfiZxQqSIy+us3Xqf49B4QY
	sHMzty5XgKNsdMZ//JqpndLatdBanfA4nd4h0a2G5GFANebVk5RmmF9xwYQ1njTm
	Vwx21VDJmXH1rTSGWvB6uUj/HVGJ/89oUPognUEX1Vl+Usi/re46rw23wgL5+3Mg
	qeUKrdJhvuKN7MqIIpIOX1HIIW/OP8SwjS++PsN8kmHDAA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh60j0hs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:56:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7d66afceso592070085a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773316594; x=1773921394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qyAplPkX7kACDc5uTBJjP1fBOnA3ca+udZ7Tm0yU+r8=;
        b=J9D5kGyA+v3VFAyD6vnoQTiRnDXHpSmm451z7lubQGFKwZ0LSAHPb2lJRTcTbpRqvw
         GtUHADtZQxO4YS3pcLc2cmpo6vLhereqQQB9Ew2W1ZWk8TR5DkiVFJEaa2zn36yk4qXD
         k7BYXOuPJrrdhB9xQ6sp18zp3BcHM4bbbyGStUeaaisybpDtpJvH7OZd1XLxqbkUSgSy
         I11mTVzJcOKn/eEQFszxzqEt5+c5ZOBRRrQrw8/YVAChB5u2a1/vavjvwfoaU+mmJ7fB
         HqTQIRTQQk/tjVPqgZacoQlWn07LXld3L3m8MUpAWBf9ar2Os4b0HTneQa+AZ3KnMiUJ
         bM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316594; x=1773921394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyAplPkX7kACDc5uTBJjP1fBOnA3ca+udZ7Tm0yU+r8=;
        b=U5OAbeeQNmpa0aBcBJkiG+Bjz71BEskxwb5591Ej/QMg+ni1foTxGX5qR7r3PKUXxV
         HQYO4zR19Qn+RJzXre9vABGPesLzmBzdLTsCtaUdtPvjLKZIwvNP4dwlhBTIG65CV+jC
         I4ciqmOocbqFs4qJ70uRc60yHiCcjVyY8F5dEBZY/Zvu508O/2BMUSsC3VUX8ffsnQC0
         U2Kzv+kTfngr/RX+46PoGmnhXr/2n1Yq0RZig3Yh+j12JgbO7bbDQDePZDWXCka6oKDI
         kOx9Pj3pGTKSE3ILxuPEJjZZKh3edVhF+CFl/it4SC18Au1epajWkiSCh1rgGfb3DPRf
         MO+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX80VNtK95MChzU12uIKB5NJ7ozWMjZLSb2Ba8nrgvYMHmhBtlitrIBzJfE/4dDSzcSIoS9QDsv0wo+@vger.kernel.org
X-Gm-Message-State: AOJu0YxW8r/7bp/M/ZMZEi48Tx2x15zkv2vFrkR7pYLSE5fzZqepSxeo
	MxD2V0/YJLhkDe3bCsJSVCoCM3PkYz2JMhqmiFy1mBhH/Eo/uXRJpg2OHFlUG3FI72H7N69oHVY
	lvA6j7zjJh9RnO8xFQQwI+klKCFdHH5KpiIBRSZMMbgmaQOLOZcwZbyDPoESbGj2p
X-Gm-Gg: ATEYQzxiSjacg8/RZloIUATnQ2yctp8XZqhmRiIKhQ9pz7BsaPdzOQvEWyFqGB2WPo3
	eiH0GIheVsu9ppD/Mo6w0xNuYhSISmZ8aoX+VYvAn3rHoJGZkN0YNtnN+UEWacdNyp6fo/iA+/O
	BiorOL7EuNcbTomoTWxgDGfjMQDXa8VeCGt41S58MsMqwt+5tKoBXoROJzjT69mrk3bodDY8xUj
	dQ2VPh/U6ucl5EqWEVoEBNVbkVzqZdZuQpKllDhaJzKvrLbtEo1ceP8kyYOBWN9dUup3EGFyOWB
	aWOs3R3avCTAYMZEisn1BMoMcyNo2pnA7uMRmzHN/H4lhJUbifHSWLzYd2luhqVvyf1Qohr4pxZ
	DjdAZvIhxJYuJQAuplV3UE0QkCrxrJ7OxuA==
X-Received: by 2002:a05:620a:298f:b0:8cb:5176:ee5 with SMTP id af79cd13be357-8cda1a55954mr720885185a.62.1773316594097;
        Thu, 12 Mar 2026 04:56:34 -0700 (PDT)
X-Received: by 2002:a05:620a:298f:b0:8cb:5176:ee5 with SMTP id af79cd13be357-8cda1a55954mr720881885a.62.1773316593532;
        Thu, 12 Mar 2026 04:56:33 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b65fe27sm133395215e9.9.2026.03.12.04.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:56:30 -0700 (PDT)
Date: Thu, 12 Mar 2026 13:56:27 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH RESEND v4 1/4] arm64: dts: qcom: sm8750: Add display
 (MDSS) with Display CC
Message-ID: <t5e6iw6lhbig4mub3ot4jofcbeqvz7v2ncltlorsun66pqyxvr@3g4acm5bi3ga>
References: <20260310-sm8750-display-dts-v4-0-d571a786bb70@oss.qualcomm.com>
 <20260310-sm8750-display-dts-v4-1-d571a786bb70@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-sm8750-display-dts-v4-1-d571a786bb70@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: EI3wAk-4_HFg47EfjV3tDU1NvbrIYUua
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA5NCBTYWx0ZWRfX3fRWW8CyFiby
 zNlX3rW3nEwzdeidkWQQS5bgzAwm7QKi7Qxv40YodJqySen7SCnahOx2pIDN/0QrxRobe4biB83
 8/R+ITes968OCnG6Jx7zQkTk2hQpTHe0LgZYt3A2O+ByRS7jdBpaEygEP+2zksGaxA3o49HN1XQ
 iGO6PJaVU8nVGFXoP+CBEr29f+2oj1/JEviaCF4XvBQ2FMH1OGlmWcb/CFwsQzbHr/azU6bYLT2
 /cGn8RUrbU5Zm7DfX0IxQkom7h7rpi0pdWeSGDJfKkFHQ3DofMAMTqn35CDidwd5IPjRN+ND6bs
 Yg2Jq929+2iV4wezckQT8Qz+eklSQFqgzM9x+VhE4Lgd2ztIn7dWpZ2MFQF+CcYlVE+QYm4HWoQ
 +1Rfrv/qIbP6ABVtXZ+N1cdd/lkPa9fJ+oVCt7x7s7LTUhZv5ACFeb8xFnJdb//yLJammSwjbLk
 4Ml+s2XRBwqjc3pz4pw==
X-Authority-Analysis: v=2.4 cv=DsRbOW/+ c=1 sm=1 tr=0 ts=69b2a9f2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CXLNfupebYwubX7vOpMA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: EI3wAk-4_HFg47EfjV3tDU1NvbrIYUua
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120094
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274557-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,aaf0000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7062A2715A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-10 11:09:48, Krzysztof Kozlowski wrote:
> Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
> DisplayPort and Display Clock Controller.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 437 +++++++++++++++++++++++++++++++++++
>  1 file changed, 437 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index f56b1f889b85..82963f4a6a55 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -3,7 +3,9 @@
>   * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
> +#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sm8750-dispcc.h>
>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>  #include <dt-bindings/clock/qcom,sm8750-videocc.h>
> @@ -3001,6 +3003,441 @@ videocc: clock-controller@aaf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  

[...]

> +			mdss_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,sm8750-dp", "qcom,sm8650-dp";
> +				reg = <0x0 0xaf54000 0x0 0x104>,
> +				      <0x0 0xaf54200 0x0 0xc0>,
> +				      <0x0 0xaf55000 0x0 0x770>,
> +				      <0x0 0xaf56000 0x0 0x9c>,
> +				      <0x0 0xaf57000 0x0 0x9c>;
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
> +					      "stream_pixel",
> +					      "stream_1_pixel";
> +
> +				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
> +				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
> +							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> +
> +				operating-points-v2 = <&dp_opp_table>;
> +
> +				power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +				phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
> +				phy-names = "dp";
> +
> +				#sound-dai-cells = <0>;
> +
> +				status = "disabled";
> +
> +				dp_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-192000000 {
> +						opp-hz = /bits/ 64 <192000000>;
> +						required-opps = <&rpmhpd_opp_low_svs_d1>;
> +					};

Drop this one, please. It shouldn't even be 192MHz, it is 19.2MHz, but
it isn't needed.

See here:
https://lore.kernel.org/all/taqh3ipe54cgjwcvyqnysg7dx56mweo7zld3jvmv6goq2vo4b4@ea7ksdyyn3dh/

Best regards,
Abel

