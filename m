Return-Path: <devicetree+bounces-173208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4F1AA7C83
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 00:56:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 344751B67683
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6BF8221D88;
	Fri,  2 May 2025 22:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nnMuuV/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D1120B81D
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 22:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746226566; cv=none; b=bGTNga7SNSKAGcW2Ltqzd/1RKA+sX0/s05E6Ax9FwtGAVrfNVf5qEoCTSr0fOF3wAzsxxNQ0kFCnM1zBtKaUxu9o6EpmduscfkKqF1AJQIlR05YJ1eI7eomqv2n0aBZEFIopIKaC+mV2nFQ1ASWqWsFSkbSwTOleu2MHE/Yf9Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746226566; c=relaxed/simple;
	bh=8ztnMAKmbdyNsPGlxL7edxZO62BJYChUmRhguiclIuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GhgtXjupnMPOSmCHEy9a9Aw8i4XY1W/HA7O49CEG+Cih9UpshYfxs8YoVqNQjSdWdp0+EWPYrfEEFv7RvFRTRiczyvcv49vOnexcSgdCrjbYU5v/F2LdvA4CdmpNRhNC3OFd9BCvAU+ZkoYFQthH6Lga6pIx/4dbHc1bvA44Xzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nnMuuV/u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542KB4Nv023498
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 22:56:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1bOVgb8M6+D/Cf10VFmMIFoe
	5eQvQy5G8sTzJf7ev0Q=; b=nnMuuV/ukkrbGhT8RV3E3LdTpcgexym3eyUUA4Pe
	PB6PEsvGuek01R4Ao3fgmRzWOs6Qqog674w4R6NDeigYetsqsRcsr6D/AMZ6DgKq
	MARFHQp8u7UsR4pytkuex7dYtswv8Mz/21ytIjPxmJDhPU64/tiIjCetJcCj0nvJ
	jWyUGe9At2Mfahn5GC3UuhZ40aUi4XsALFgPLQHfCinautOjMg0sTrUeTJW7+blr
	GLXr9n5OrLCk5ufXn5S8HGNIm1dzi52tpkv5c2Rz1yfZH+J+/9f13a9QmpB0G8og
	QJrHCBcngKNHZJKH9SdOHcjRznODVtK7KaS/vV/TBI1Tpw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4hksu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:56:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54a6b0c70so238455685a.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 15:56:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746226561; x=1746831361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1bOVgb8M6+D/Cf10VFmMIFoe5eQvQy5G8sTzJf7ev0Q=;
        b=iHYF8IBKDspKdQ/3/Jxaik1CqGNDO143QZUvTJloVBeJFsFqzwfhsAmtRHJ/e3fLj3
         qqgx26XmBFHBJOAUTP/5YRoQDeiAo8Jh9FXwJlK933l5vzPKXWfscsV1kVqu6opucTXO
         fzCOuiG2o4Rs+RWuhjKot8C9MN1GgJ0SymWtzxDN5nbzx6Bxw3/20H7DkvpUu6cffqxb
         xqtWadqT+T3Rv3tO4KBRGRVbpmWVPm55EVDopfcqDDChA9MzWhXjVoPS3aJqWQOiaCpJ
         2DiD3Caex/A4rCUAem9XcKH9uKsKi1z8nQQat8pYSAH5OYv63SnNxqA1g1WbHDkYM1Y5
         EkNg==
X-Forwarded-Encrypted: i=1; AJvYcCW5ZE1mzx4uL44kIx+uVw1peswYdNn4zW43gKaaGUTyHAMAQMs8un1b3yXXBgpLPm7h96aqw/N1S8f7@vger.kernel.org
X-Gm-Message-State: AOJu0YybvjX98kzdEavLheyFHBuJhNp8MA6PJqvpym1w2e92HDrqqZ61
	OPeVix2+kdxQe3mBCwta8+vxTHExIGDOCfh7RTbvew29LqdPaVsKxvCCzfW/THpiAWEQrBjzxQX
	I9VO1W9DsGEZlm7BW6x5SglOg6kle8XDLi3c/Lvh6Ne2YJq0ysb93OdKMg9TO
X-Gm-Gg: ASbGncsJBJXkVzC2qbyN5IrZIKVsZLYKQKoSYGlBioLA4KIpOLtiUtwqRXPmKEUItp8
	qsCO1BBXAev+9AqsbhNfSZp7JyY3Kv2oI+irOnxzIssxEt1eaGoGcu5nggo0sUmrLYppdZwh4Gn
	4zEccPcH0aHuPBWU7XqJW2pylFkRgeHruyD7oi93wDJMxtltK5VEaRPgJcjO99x1RKuu/HPfIwz
	1eBFA8mkyGRpHmlAwbaJeWquPGjDD+GPbdstgqxmehdp2pGjB0vXia7ijN98nBBsr/i8GcvLj3S
	kVHJejbkW4/SM8R49Nve6BvJJTETp9zLY113+CXtTFulGzNMtMn+vA3MWTO3fnE4Z5dvPK6/6d8
	=
X-Received: by 2002:a05:622a:1924:b0:48a:2122:5047 with SMTP id d75a77b69052e-48c30d80312mr77701901cf.8.1746226561599;
        Fri, 02 May 2025 15:56:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHT8z6Lg3ovxc73cJTMCXyVkvLsgnAqZM902lh4jo0RicuOeI5EXmmvrbC9puKXeOOVnqrsqg==
X-Received: by 2002:a05:622a:1924:b0:48a:2122:5047 with SMTP id d75a77b69052e-48c30d80312mr77701501cf.8.1746226561049;
        Fri, 02 May 2025 15:56:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32029019c4dsm5052961fa.46.2025.05.02.15.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 15:56:00 -0700 (PDT)
Date: Sat, 3 May 2025 01:55:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add SLPI
Message-ID: <rjhuxssogtsxitmocxnlt3im44imyvui5ssc6ptshepxvgo2hv@npmexcs7nqpy>
References: <20250503-topic-8280_slpi-v1-0-9400a35574f7@oss.qualcomm.com>
 <20250503-topic-8280_slpi-v1-3-9400a35574f7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250503-topic-8280_slpi-v1-3-9400a35574f7@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: gHGqiAI5Naxv8kfl8HlIscY0R6D1JsWn
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68154d82 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=G4SMBwoHVf5iV8dplL4A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDE4OCBTYWx0ZWRfX6zJ7NpYSSqE5 GDOhqMtdaF7SAT6+9zc06hieqjOS2+YWVxOvIiLFzpdHJdsuXtIA5jX9YKlknluIcAqg0DUOZwA Dvle7S9CNJkX0dxIganrE5ub+HIwmMK/9lqqUFO6rRBqWIKrBHg9CQwEgR8Ax4LcQugh3vg7YTP
 4DF8gSvjxQFvWW0bN6NMBqnQ2h+EM0vFUNHGzGCWW2N6qPumq0WzO5DDVyMdX7y6Zy8LC4FKSqY tWDXBodrqdkWdHIH0fkRemYnaZlN//XFKTyAKLqax3UoqZPcSqpiOf8a0woPNocRQx4ssaeG66u GCn2iL6hxjcYM/ZgYBYcmvbTSk9arS+lBZ4/quSg6WqZZ+5pBHogkMOM/s4NM0TQdP3pKFCF1ym
 DtFGSqJsP8eLWd+P+gM+bSfIArLY7nWS6t6mNYH4MjiPHqn8xzNH5jF2suhQGss1jVRxhJSC
X-Proofpoint-GUID: gHGqiAI5Naxv8kfl8HlIscY0R6D1JsWn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=473 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020188

On Sat, May 03, 2025 at 12:38:01AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> SC8280XP features a SLPI (Sensor Low Power Island) core. Describe it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Have your tried enabling it for X13s? Windows drivers provide
qcslpi8280.mbn in the qcsubsys_ext_scss8280.cab cabinet.

> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 72 ++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 3f9195da90ee898c68296f19dc55bcb3ac73fe29..75ec34bfa729946687c4c35aa9550685cac95a10 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -695,6 +695,11 @@ pil_adsp_mem: adsp-region@86c00000 {
>  			no-map;
>  		};
>  
> +		pil_slpi_mem: slpi-region@88c00000 {
> +			reg = <0 0x88c00000 0 0x1500000>;
> +			no-map;
> +		};
> +
>  		pil_nsp0_mem: cdsp0-region@8a100000 {
>  			reg = <0 0x8a100000 0 0x1e00000>;
>  			no-map;
> @@ -783,6 +788,30 @@ smp2p_nsp1_in: slave-kernel {
>  		};
>  	};
>  
> +	smp2p-slpi {
> +		compatible = "qcom,smp2p";
> +		qcom,smem = <481>, <430>;
> +		interrupts-extended = <&ipcc IPCC_CLIENT_SLPI
> +					     IPCC_MPROC_SIGNAL_SMP2P
> +					     IRQ_TYPE_EDGE_RISING>;
> +		mboxes = <&ipcc IPCC_CLIENT_SLPI
> +				IPCC_MPROC_SIGNAL_SMP2P>;
> +
> +		qcom,local-pid = <0>;
> +		qcom,remote-pid = <3>;
> +
> +		smp2p_slpi_out: master-kernel {
> +			qcom,entry-name = "master-kernel";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		smp2p_slpi_in: slave-kernel {
> +			qcom,entry-name = "slave-kernel";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
>  	soc: soc@0 {
>  		compatible = "simple-bus";
>  		#address-cells = <2>;
> @@ -2454,6 +2483,49 @@ tcsr: syscon@1fc0000 {
>  			reg = <0x0 0x01fc0000 0x0 0x30000>;
>  		};
>  
> +		remoteproc_slpi: remoteproc@2400000 {
> +			compatible = "qcom,sc8280xp-slpi-pas", "qcom,sm8350-slpi-pas";
> +			reg = <0 0x02400000 0 0x10000>;
> +
> +			interrupts-extended = <&pdc 9 IRQ_TYPE_EDGE_RISING>,
> +					      <&smp2p_slpi_in 0 IRQ_TYPE_EDGE_RISING>,
> +					      <&smp2p_slpi_in 1 IRQ_TYPE_EDGE_RISING>,
> +					      <&smp2p_slpi_in 2 IRQ_TYPE_EDGE_RISING>,
> +					      <&smp2p_slpi_in 3 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "wdog",
> +					  "fatal",
> +					  "ready",
> +					  "handover",
> +					  "stop-ack";
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "xo";
> +
> +			power-domains = <&rpmhpd SC8280XP_LCX>,
> +					<&rpmhpd SC8280XP_LMX>;
> +			power-domain-names = "lcx", "lmx";
> +
> +			memory-region = <&pil_slpi_mem>;
> +
> +			qcom,qmp = <&aoss_qmp>;
> +
> +			qcom,smem-states = <&smp2p_slpi_out 0>;
> +			qcom,smem-state-names = "stop";
> +
> +			status = "disabled";
> +
> +			glink-edge {
> +				interrupts-extended = <&ipcc IPCC_CLIENT_SLPI
> +							IPCC_MPROC_SIGNAL_GLINK_QMP
> +							IRQ_TYPE_EDGE_RISING>;
> +				mboxes = <&ipcc IPCC_CLIENT_SLPI
> +						IPCC_MPROC_SIGNAL_GLINK_QMP>;
> +
> +				label = "slpi";
> +				qcom,remote-pid = <3>;

No fastrpc contexts?

> +			};
> +		};
> +
>  		remoteproc_adsp: remoteproc@3000000 {
>  			compatible = "qcom,sc8280xp-adsp-pas";
>  			reg = <0 0x03000000 0 0x10000>;
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

