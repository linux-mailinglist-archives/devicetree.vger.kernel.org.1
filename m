Return-Path: <devicetree+bounces-131505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E49F38BE
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 19:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A0B11882999
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 18:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C5A207DF7;
	Mon, 16 Dec 2024 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iML+H+43"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2726F2063C5
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 18:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734372873; cv=none; b=l+xk4rKpLlJXshNU7a3SJG5wVQLMxyyD2bT7J9m+24mjDl2a0goJIVQMdVGiJ4JO+hF8phJ2+jAa4+Vce3m20GdeqWHxXTPPU7PeQnn/KJ6NEjpyGuyKBtwerlazWDdt6NeGD/uvXBjcRnaP7jCx3P7iKvyXc6bV29lMrxVRbS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734372873; c=relaxed/simple;
	bh=qQp1mMuebuWcgpzeQ8MZfSm5Kjn+6fFQ1qoHMEwlUF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FFjpy1UIwgFLlaMER4uXm9PONFH9h8FdQk6t8YAs/ELUKYgxrGWS+QqJnX/oYFXYqknyQltIe1NpPi69ufg6OnIMFHc3gwgKprNF5TI4LcvdR939RiFBEQaDm/+JlS+UKhBBvBZEl2WUN+BC9tudrkfTT7jbpLwd462bNVsRFvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iML+H+43; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BGFgKfo015320
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 18:14:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F7QFYnjZdrevf6fYXiZFNc8L
	fJX9KsBVad/8dWQ9YrM=; b=iML+H+43b0iNSNoM2qeJtb8CjU4OtRR5fwXnDKbH
	SDXEu7CH5bqY6zz4CfMYKvoIRnKInLjcYN0Z5EKyM0xr4S+r0EQFe97i4uzAcPsP
	k8ykCSTRd7fbKiT0fFidJ8gHAeEpv4GzdMf1YHB645EcthDwnGiWWDwu7nSSZEPe
	/pZsWUiqm7ev/HXC17JtyHpbeJ74+akXPHKZHQH+hOstq7I0p5s12jnWM+pFthFt
	g9/ZE9z+K0NNHpzP+1AJaozMX+/jTDN9FyDISFMgn8yfQc+s08C77rsc/lXl7jB5
	A5xE76kMSR/NT14/MSwQNWim5mQf7CSaISPifD5J0xGAxA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jq350d72-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 18:14:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-216405eea1fso36138365ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 10:14:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734372868; x=1734977668;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F7QFYnjZdrevf6fYXiZFNc8LfJX9KsBVad/8dWQ9YrM=;
        b=QNs2Ei8wqpc9LVhSKokjrv4DE+23EWUTQ0GurK5sC9EsIwmhaEICv8b4V/NmxeCz/s
         lIw0MYW+bI2g6Q9PLN/fXmvoR4JCD7PPAA2oPF3DOcxCxj0U2Qbt2nsrokNFAoZtc6PW
         2CDH7/svncstWthaZ71exrjAz77I+KX/hao06BAILA9xQ19zG2kyrAoS+sF6GwmUDwl3
         uQ8Nwi+dvZl7aYp/QqlBaomRXaHq3Q8C/UA+r9PHLMcXOrqOPv6oG4oMsF6tDYh1bRzF
         T8WUuPxzBLvCLmKORc6ulR6hAb2z1Wj8gpM4ppMLnHl2fRw5pI6YjU/ZYhXhsvmQ5wlF
         GXPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzUS4YxdpXFhidPYfN9QgylG68Tg0gju8UoJPLvLWj8s2uqkxpzaXGQO1UKUa4bElbtWE5bs6IBZXJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm53enbKxGi+OGFAlCB8vKLdxWDoOyZilF1rw1JfdpjmOQdWxc
	0KfYR3mkwS1rhcrDu5GW4LrfMSKqyCCmdkYv0OZjwW/nchcCKXXtHiocjUUP6yYaOOZxwMuPZw5
	sIJD+qfqtgBo+OPVSeWqLorkSY9X/0zZlCeXZ6hdRDft6A/h9kZVYh4qvKy1O
X-Gm-Gg: ASbGncuy2QGcw8zscsMksOkox1SeJrXlReBWAiPPuKPecQfZ3QPvJ5AfjvJl6XK40Tx
	M2XODVoRjhoGwNEd6yiaRwgkCpV0StJl8KGNicRg5G28iD+k0LwPAvj/Hm0gKMyeKjUwbv2s9Y9
	NajU84Yjnip1UwmcYr4u9mggPPrpgk+trgnGkcPE1C9BERVUMbMkqVS+yyK00hy569zFkFTrKNn
	IrynKI/Tal7w7cvcsArYU8t27ZYxyOW+JjGN6u/UtOJq9737TfjFdx0IBXxGwoM2tb4+uFAgehf
	gY6jEoHAe3P+xvWFKUrX/mbfgH4fIdowZK0lM8zC
X-Received: by 2002:a17:902:d50c:b0:20c:9821:6998 with SMTP id d9443c01a7336-21892980dc6mr211008365ad.10.1734372868362;
        Mon, 16 Dec 2024 10:14:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzAs2ikuRORFUIWHU85mcPsoI6mCLnHMxnIg87pLHeW7l6HW03YGJUZmaZ+3zYaGC5dlmm/w==
X-Received: by 2002:a17:902:d50c:b0:20c:9821:6998 with SMTP id d9443c01a7336-21892980dc6mr211007785ad.10.1734372867817;
        Mon, 16 Dec 2024 10:14:27 -0800 (PST)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5a90d1fsm3622789a12.3.2024.12.16.10.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 10:14:27 -0800 (PST)
Date: Mon, 16 Dec 2024 10:14:25 -0800
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: add venus node for the qcs615
Message-ID: <Z2BuAX+idQFlJt1F@hu-bjorande-lv.qualcomm.com>
References: <20241213-add-venus-for-qcs615-v4-0-7e2c9a72d309@quicinc.com>
 <20241213-add-venus-for-qcs615-v4-3-7e2c9a72d309@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241213-add-venus-for-qcs615-v4-3-7e2c9a72d309@quicinc.com>
X-Proofpoint-GUID: blUmTUJkNhV2a5-aLwcknZLepnilVsqO
X-Proofpoint-ORIG-GUID: blUmTUJkNhV2a5-aLwcknZLepnilVsqO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 clxscore=1015 mlxlogscore=933 impostorscore=0
 mlxscore=0 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160151

On Fri, Dec 13, 2024 at 03:26:48PM +0530, Renjiang Han wrote:

Subject should be prefixed per the file being changed, i.e:
"arm64: dts: qcom: qcs615: Add Venus"

> Add venus node into devicetree for the qcs615 video and fallback
> qcs615 to sc7180 due to the same video core.
> 
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 86 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 37a189e0834d2f4b75ed9deb6fff73da163cb3a3..c08da80c7fd8fa8c69aff04b14784b821ce3ea13 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -427,6 +427,11 @@ smem_region: smem@86000000 {
>  			no-map;
>  			hwlocks = <&tcsr_mutex 3>;
>  		};
> +
> +		pil_video_mem: pil-video@93400000 {
> +			reg = <0x0 0x93400000 0x0 0x500000>;
> +			no-map;
> +		};
>  	};
>  
>  	soc: soc@0 {
> @@ -2806,6 +2811,87 @@ gem_noc: interconnect@9680000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		venus: video-codec@aa00000 {
> +			compatible = "qcom,qcs615-venus", "qcom,sc7180-venus";
> +			reg = <0x0 0x0aa00000 0x0 0x100000>;
> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&videocc VIDEO_CC_VENUS_CTL_CORE_CLK>,
> +				 <&videocc VIDEO_CC_VENUS_AHB_CLK>,
> +				 <&videocc VIDEO_CC_VENUS_CTL_AXI_CLK>,
> +				 <&videocc VIDEO_CC_VCODEC0_CORE_CLK>,
> +				 <&videocc VIDEO_CC_VCODEC0_AXI_CLK>;
> +			clock-names = "core",
> +				      "iface",
> +				      "bus",
> +				      "vcodec0_core",
> +				      "vcodec0_bus";
> +
> +			power-domains = <&videocc VENUS_GDSC>,
> +					<&videocc VCODEC0_GDSC>,
> +					<&rpmhpd RPMHPD_CX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "cx";
> +
> +			operating-points-v2 = <&venus_opp_table>;
> +
> +			interconnects = <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "video-mem",
> +					     "cpu-cfg";
> +
> +			iommus = <&apps_smmu 0xe40 0x20>;
> +
> +			memory-region = <&pil_video_mem>;
> +
> +			status = "disabled";
> +
> +			video-decoder {
> +				compatible = "venus-decoder";
> +			};
> +
> +			video-encoder {
> +				compatible = "venus-encoder";
> +			};
> +
> +			venus_opp_table: opp-table {

'o' < 'v', so this should come above video-decoder.

Regards,
Bjorn

> +				compatible = "operating-points-v2";
> +
> +				opp-133330000 {
> +					opp-hz = /bits/ 64 <133330000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-240000000 {
> +					opp-hz = /bits/ 64 <240000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +				};
> +
> +				opp-300000000 {
> +					opp-hz = /bits/ 64 <300000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>;
> +				};
> +
> +				opp-380000000 {
> +					opp-hz = /bits/ 64 <380000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +				};
> +
> +				opp-410000000 {
> +					opp-hz = /bits/ 64 <410000000>;
> +					required-opps = <&rpmhpd_opp_turbo>;
> +				};
> +
> +				opp-460000000 {
> +					opp-hz = /bits/ 64 <460000000>;
> +					required-opps = <&rpmhpd_opp_turbo_l1>;
> +				};
> +			};
> +		};
> +
>  		videocc: clock-controller@ab00000 {
>  			compatible = "qcom,qcs615-videocc";
>  			reg = <0 0xab00000 0 0x10000>;
> 
> -- 
> 2.34.1
> 

