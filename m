Return-Path: <devicetree+bounces-271944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDILGCaiqmlLUgEAu9opvQ
	(envelope-from <devicetree+bounces-271944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:45:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D0A21E270
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24E8730988B0
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4115346A11;
	Fri,  6 Mar 2026 09:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dDXhyCG7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U7WVxLqZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C6C3451D7
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772790011; cv=none; b=IAWBJvx3akMdBEq7M31v7ASgbUvSso0xR+ig1MT2xggT2SQnLswZjmZMgpw9fG0tYjKE2k/1UHHReylO3/A9fQZrkLRQg8XBDr0nHxFgCSyHYdMyqExI/yPXkw4Wr2Eo2KSnKbIjBTsJVo/14nzjRmSNeWT8Zu99jKb+tmixG0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772790011; c=relaxed/simple;
	bh=IzXkdgOWiX29Hm2zkfcIN1kjKGfv1xXvIghfIqEjn1k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ejcsG+feVS1Aq2E3S1pAufYzY76IzcddB0JRND1zAZ9mxws5f2sKOXLNg4itRfyNHDXRdrBYN8cPfHIH4qo5DEbKTx5fBMgwCPc7hcV+Y5f8pHKjddrsZ3/X3DnahsywVjzR3ig9YRydWbeOGZ7ai8qbW4zXz3TC86U8aYZ/3x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dDXhyCG7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U7WVxLqZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6269Q9vU3121337
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:40:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jqci5JQidsnEDYWeHGeVcYwTCpIfnCmWQlNzXvQVLEI=; b=dDXhyCG7tdUPuqVq
	oE79h+bvawu9yx492JEz+WcCNophPa5qraY74+u9lGuJgpZe+gzJal3Q/9atzQRX
	iHSfX8VHo7QlYoXsj31Pz6o7akbtlcyIyzwH3deO8SPO0R5m157FDXalo+mVQD1J
	XnOjZObUw7uNDKO8O8mqH4/IGVMt65muGlorI5JmCLFqt/mNa69qaTVs8jF8Wf4C
	pLEPWx0g5OKCCOo11kYZ2EqU10BPDKWTQIar5gB8bm6MZpw4/bvxzlkyQU2nrum2
	gGLjYV5ayJJwiHw7x1877BuMSNF2elYO+fnf5dyAkAVPCURy1F9SBoLN0/Hpfra+
	1H781g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv9u81hj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:40:09 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae50386da7so34580345ad.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772790008; x=1773394808; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jqci5JQidsnEDYWeHGeVcYwTCpIfnCmWQlNzXvQVLEI=;
        b=U7WVxLqZjKg8N8RTcNbmrjbu51n7dCEkGmlsZo/9vahQMSORfXXgXj9iaYqldHv007
         OcJZT78gxuVtzKs4pGByzbeKgUVJGvjeppU7KRhVfbhsCr5L6LQYuTqM8RNm3RvnSN+9
         rEblWrCQPTkPr6RS+ZljnJJDOBmgX0XsMjcYdrlibBAXAuFJSR6TENFmUZJ8YJ5WXT6P
         i1VUSd4NzrDI4wsi0CWmkyv6vK1OGvD/ztueLD3M/O8Bw8gNbffyPVtqzkV/Eb9nz67o
         8sG4IItYfZ7osrVcgrhCiysqMTY8XdMhU6gtqNoqp0eyh/MRSWSV96WHY3r3ZBaSIRji
         sknw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772790008; x=1773394808;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jqci5JQidsnEDYWeHGeVcYwTCpIfnCmWQlNzXvQVLEI=;
        b=h5etSngD8PBmZQs4NtC8Sj9rpdU1eOETN1f9/EqThk49zX3WgBGY6BKvyTQoFafZzX
         wc957IKFY91LVG9wpgWJnbnHsv0NRMLjODqnoT1sThj+zH5OtE8B9mY10GEYjnWBAX27
         eVJZGWxzaSdSvTtfWG3tjkJP+HficEkQDYv4tJzEVBe3OS91WWip9selQqJTEctPUPFH
         wBW68I6HHEcyvXRp9YXZBQw7455zBEDZweRb72DO0Oh8sO6x9LtW4aFaaqFAVQg1DjtE
         p2pWZbnhZKiBifDWZnPXK0T5zMJXzyMgwUgyathoS2EJMk5shL8NlKFWZerZFtz7Z8hP
         wIxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLd4bfRrvrbKo2zN0PtzmQTJBo8Rh/qqK4kBXGWX6F1u1pU9O2AenLmF5dm6H/+AYj1FXhMRR91qm7@vger.kernel.org
X-Gm-Message-State: AOJu0YxCFM/3SF+4M0C5C6ojnOVhu+4ttMeSUmE6wRvCHUrHvlWD1pkr
	NLlLwuo691OB1G42vpWxcx6EQK0/FN80devUnZ912aGdd3o9LBKNQzWYzt6uBjzhH3YfbwniufO
	YZPMYVz857xbHUYpQisTVitaVU4ltNqvgTFLRWvODbWHwZo1NYxZuPIyPQhTNj6lh
X-Gm-Gg: ATEYQzyosvXNVcigdexIlZNQ8qZ3GIHaakbMgrqtqOwldy/eRFJFyP24QgXJ0mveaFJ
	ZE8ANkzc7Sx1K/xhYTnyFd3MfAjRTjZvL27+KbZ1dyToTYzgfZrFP/Sr/DsXpcyLPWLwZYmHzKs
	8ZkLzBqL4Pc+nCozldnpLdnMWizkZKwH+UzzRSaO818t5ZYXla98LSCSWIhkPIOVXVqSY0WuXQs
	i50u28+bgx1SKen0vDOsN+V+f9WDy3pKVsNfWPs6DcTD1N5S0AkZ0cmQZx3XUiATecukjHSBGGr
	RRrAjw092JYwZ8nP88NguX+w8pULb9ARRJoVX6jL0ST328udd2u7fsQ1f/ClObOrSyC+QSC3QsO
	I131lZog2pqP4+SZXqHPCLBmF2D7/MDuSLm//XpCeSqIRPw==
X-Received: by 2002:a17:903:3bac:b0:2ae:4ac7:bcb9 with SMTP id d9443c01a7336-2ae75b49d80mr47916055ad.9.1772790008392;
        Fri, 06 Mar 2026 01:40:08 -0800 (PST)
X-Received: by 2002:a17:903:3bac:b0:2ae:4ac7:bcb9 with SMTP id d9443c01a7336-2ae75b49d80mr47915845ad.9.1772790007870;
        Fri, 06 Mar 2026 01:40:07 -0800 (PST)
Received: from [192.168.1.11] ([106.222.228.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f752bfsm19179615ad.60.2026.03.06.01.40.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 01:40:07 -0800 (PST)
Message-ID: <67922413-af8d-4e75-aa49-079889576a73@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 15:10:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260305-gpucc_sm8750_v2-v5-0-78292b40b053@oss.qualcomm.com>
 <20260305-gpucc_sm8750_v2-v5-3-78292b40b053@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260305-gpucc_sm8750_v2-v5-3-78292b40b053@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MSBTYWx0ZWRfX17S0OPyYLdmO
 rQgGMVUwYVtM2pI0IJqEPOR52/HfEkTCLa8j1NQJWj4fgApaUw0wW6Ul937DuzscMDYHuMOEvXS
 5sb2N2KZ/R2aKnrjU0tfkg47P4pFDUHi6q8uwBcO1oe448JFsGO0+o7TteGzC+0K5FaORdQYoS/
 9LGOQpxVnyHd86W40NKdfPi46KhWwFE6M0JL9MEjIxEDvpRue2GJD9ROWJACGkMBjlVmjL4tBGt
 TiVMS6jjoRPeGaWMk7eDZJwAsE8VuuBwVmriNa2dm41kUSTvqxePQJdjkQVTsHHEbkFpomigxuN
 VJgTCe1mV9V2hmVtHBPXeU9FHITxlIBbPdLWHGD2fFnsU89vWxrFzMPcJVqh3CimXsF6sp6Df/W
 dcAF5+qAFccxNl/OF9R8xXdn818i3yz/rVItGMWbmGsKvS+2KWoOM2qT1kVlosMe7neCmarSHur
 RBKxQDp5lKjRikYEfLg==
X-Proofpoint-ORIG-GUID: Lntq-g0LfyoaR_DFHt3SdRWgm8DrLtfD
X-Proofpoint-GUID: Lntq-g0LfyoaR_DFHt3SdRWgm8DrLtfD
X-Authority-Analysis: v=2.4 cv=eJoeTXp1 c=1 sm=1 tr=0 ts=69aaa0f9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=uL+hpB4jSAN/g3a/thif0w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=_nDl3K6yXJEX041QHmYA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060091
X-Rspamd-Queue-Id: 02D0A21E270
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271944-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/2026 4:10 PM, Taniya Das wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
> is simply a separate block housing the GX GDSC) nodes, required to
> power up the graphics-related hardware.
> 
> Make use of it by enabling the associated IOMMU as well. The GPU itself
> needs some more work and will be enabled later.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 68 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index f56b1f889b857a28859910f5c4465c8ce3473b00..0e7a343297e3f5d7a8189f50726dc6279078c21c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -4,7 +4,9 @@
>   */
>  
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
> +#include <dt-bindings/clock/qcom,sm8750-gpucc.h>
>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>  #include <dt-bindings/clock/qcom,sm8750-videocc.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
> @@ -3001,6 +3003,34 @@ videocc: clock-controller@aaf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		gxclkctl: clock-controller@3d64000 {
> +			compatible = "qcom,sm8750-gxclkctl";
> +			reg = <0x0 0x03d64000 0x0 0x6000>;
> +
> +			power-domains = <&rpmhpd RPMHPD_GFX>,
> +					<&rpmhpd RPMHPD_GMXC>,
> +					<&gpucc GPU_CC_CX_GDSC>;
> +
> +			#power-domain-cells = <1>;
> +		};
> +
> +		gpucc: clock-controller@3d90000 {
> +			compatible = "qcom,sm8750-gpucc";
> +			reg = <0x0 0x03d90000 0x0 0x9800>;
> +
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
> +				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
> +
> +			power-domains = <&rpmhpd RPMHPD_MX>,
> +					<&rpmhpd RPMHPD_CX>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,sm8750-pdc", "qcom,pdc";
>  			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
> @@ -4515,6 +4545,44 @@ tpdm_swao_out: endpoint {
>  			};
>  		};
>  
> +		adreno_smmu: iommu@3da0000 {

Should we move this node right after the gpucc node to sort based on
address?

-Akhil.

> +			compatible = "qcom,sm8750-smmu-500", "qcom,adreno-smmu",
> +				     "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x03da0000 0x0 0x40000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <1>;
> +			interrupts = <GIC_SPI 674 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 688 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 574 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 575 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 660 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 670 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 700 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
> +			clock-names = "hlos";
> +			power-domains = <&gpucc GPU_CC_CX_GDSC>;
> +			dma-coherent;
> +		};
> +
>  		apps_smmu: iommu@15000000 {
>  			compatible = "qcom,sm8750-smmu-500", "qcom,smmu-500", "arm,mmu-500";
>  			reg = <0x0 0x15000000 0x0 0x100000>;
> 


