Return-Path: <devicetree+bounces-180126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFD1AC2A7F
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 21:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C86A21B67129
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123FC29DB79;
	Fri, 23 May 2025 19:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZtyZr2yr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA371D54D8
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 19:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748029157; cv=none; b=mBOw8ayNBQSPJlQdfeDkl1+Hvawp0hMjWVVeTi5CP8RNZTfsBf+5ug3jChyHRFWjevQBxTUwH17N0xxaFNIHC/fzew4FZMBiHyOeneXL5ZkGSZTTABCIwaC/6ZqnzIDTsRhNZ7CEpL93FQ9PSd0ZqHhHi6F0/+RAUtevyrdFDi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748029157; c=relaxed/simple;
	bh=UwjCwu+hoD5QvbENA5EagwHCA8S9dgr+/m5BQ31GkaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RGC7KFSWEps+3/dEp3mxRrf+ldoHUhHcW9yDIsT9TEME0mh0fwiFKk9vFsh7vRz4xzyhG16XY6LF7VGUcvyNql20x6EWXq6hXSLPKstbxTj59pTvEJgV0bo7IzxUJEx64PuoE7OediAI/uy4D8GcHv9CacL1SAbVNVJHE0ljwJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZtyZr2yr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NBmqHY020574
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 19:39:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z9XB99CT/fAlMSiqksbkH8KqSrgQ0U0y6auihnvVBOU=; b=ZtyZr2yr5RVArOcm
	8nBdyIX9wsKyw2R0Injxps3ytEooWWxhiMs9+O96j1MSkwXYFYzmkxuitdDjbfYq
	vYu3FCMcwUipDcbyT8CSYuPHJIHyJLg13YeNNMxQQamR24N1DYo9yeXMgdVJ3Qbb
	d2UejA9PSFktGRqVc5lf/3xNQxa9x/LwRd6xp8Rl21G6U4SXXNHyYJ0g38eI0VZN
	6W8nSnQI14TnIubBbB0Zs2eSNyyc/WhvGyAXRduAG8iJoy8t9cEp5Cx+CfE3QYe6
	DXT562RkCHduDgdsVBFPFZgkaZbpAUIwGj+Qk9JPXHftYKENlLd65Y1f8DU109SU
	uvKusw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s9pb9e5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 19:39:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-477608e8e4aso278771cf.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 12:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748029153; x=1748633953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z9XB99CT/fAlMSiqksbkH8KqSrgQ0U0y6auihnvVBOU=;
        b=qocDee88EDUuzDR9DuddmKBqI4cjUl8w3IiH7LEJ5Sp0+lnPBewVBIMl2bW4MOxUIG
         T48stJwWC49z4pVds46Ps6wPxobcP/D9ut/tYRs73rqHQCo8qxERlTiNtNMYUxZWVDtb
         3w6CFSwguFxKKrQxVHj7m9zMxUD/FowucD4Nq7daE/mC/GpxbcEvfYhoWBlbWovGY+Dq
         AbAy/GShcHSCF/NaS952OZyBqdu7+UykZtej4SI42sI6RP62b4QFY2hbn7nyd4dA+Rof
         tyYO4NNcQ0ax3KN2UpjvLfHajZkuYswvpsLtlMo1yIyVSYZRHD5Pi7oB3Es9zBCNcE1s
         xJHg==
X-Forwarded-Encrypted: i=1; AJvYcCVV5z7VoQnCGE29NwaQvybpP7i7lFEifTRAFlSaW2X01pt+1F0USTqNJmMTd6E2SF+VdD1nWpotDjAs@vger.kernel.org
X-Gm-Message-State: AOJu0YyEVZDCa84Sy80DkEIscj49kKY1X4WeVNSdAOoXPbu4XGMUutLF
	wchrRQRfS/PyYLcmyNTtNZS3bKCA+ABXhhEqy62cI9ogzM6qJhT4OI4AYO3z4gH5rmIUkcOLH6x
	t+ovkw1mj4uKbASIxzKm7pzmFSiXshxvcGVJtlt/NOACAM7RqTas5C3Z6jaAKZL7g
X-Gm-Gg: ASbGncu1691LNYR2HYXmqWz31fzSJMMudaEgGqjoOoLg6NFBbqnBJM+LyPxhm+7WzgH
	MJZu0tn26fIv/RZq1SENJi7PCSNSi5thrS7JtsjTwvCGCItoEANJW+0UYeJXfE5E3B2gdrcOuNQ
	nK9CfJUoHzZSwYp/7QpgiwR4FTkH36yvfE8EjVZNIGfOcnpl8P0hkBe0tAKmHgmTl8iCZ/ULpXw
	j5PoUs4WN50koa7alrk+n+M0Zw2efLdvTl/Gz+y00Ahn1SLG3Qx5Z+Ufq8YhFzbDxz8MjGOVOFu
	RTtobQFD81W/kQ/jYo2CUeL0X8vDL2DYhKlJikYkqkAG/hfQrD6I+9Ur6nByzGpWDg==
X-Received: by 2002:a05:622a:408:b0:472:58b:463f with SMTP id d75a77b69052e-49f4625a717mr2814071cf.3.1748029153120;
        Fri, 23 May 2025 12:39:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnPTlDiHsFRsc/53DfqBHHewY94m5nSrjK/NZWsZOAvwCTZUQy5z9CnHlIfIbegggC4dKHNQ==
X-Received: by 2002:a05:622a:408:b0:472:58b:463f with SMTP id d75a77b69052e-49f4625a717mr2813871cf.3.1748029152757;
        Fri, 23 May 2025 12:39:12 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438c3csm1266798466b.88.2025.05.23.12.39.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 12:39:12 -0700 (PDT)
Message-ID: <76267be1-1ace-437f-9394-ee56d4e8ffb2@oss.qualcomm.com>
Date: Fri, 23 May 2025 21:39:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcm2290: Add IPA nodes
To: Wojciech Slenska <wojciech.slenska@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S . Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-3-wojciech.slenska@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220073540.37631-3-wojciech.slenska@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WJl/XmsR c=1 sm=1 tr=0 ts=6830cee2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=wQ2JREbYfKbkpeN3qpUA:9
 a=fFxRHlyTGdwQsMLX:21 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: snWlAeCq0j7S9lnd7QYuSm2v8NGEp4Sh
X-Proofpoint-GUID: snWlAeCq0j7S9lnd7QYuSm2v8NGEp4Sh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE4MCBTYWx0ZWRfX6ZkJy/zRSGRw
 PougJhw/4vgKMOC4iaKmRXEsHBzSD07rgCWgojJp7/ssojz8lN/UBOwjZtJPc1E5bfgw+WnlKo2
 8kSoBiZlo2Blm3qOfBFHn0VBmNRXs2CWv7Bnt6d0c21J5xFvfy0lT1SvZMS6jQZUCIEsn2V4TmZ
 +P5yihKiETmuBqXTibyjVxQeITz45okia4C3MzuMfeEJnHcUXBM7ekNpHmKUHlCOFaRp7XfETIf
 DLxnJo7vkrXOwJp3vLBFPaEwp9/ofwhjdl07eoS/Na7GdJubdMEXCek6UcyNeTFJgyIxXw07Dvt
 eJY/VDLuhyM1TbC53xuVa0k3SLUShrwFWcQE4gqKqSn8llLqv8LcHQYHdJq+xRTMIXrk2KY45o+
 bx0wRrL5b37LHy8UKWJ4rH6hjBve4cEZKxPnERQ35udyBmQqOgVvu0xHzZGBZeF73ubYtV+u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230180

On 12/20/24 8:35 AM, Wojciech Slenska wrote:
> Added IPA nodes and definitions.
> 
> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 52 +++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index 79bc42ffb6a1..0d39fd73888a 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -428,6 +428,17 @@ wlan_smp2p_in: wlan-wpss-to-ap {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		ipa_smp2p_out: ipa-ap-to-modem {
> +			qcom,entry-name = "ipa";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		ipa_smp2p_in: ipa-modem-to-ap {
> +			qcom,entry-name = "ipa";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
>  	};
>  
>  	soc: soc@0 {
> @@ -1431,6 +1442,47 @@ usb_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		ipa: ipa@5840000 {
> +			compatible = "qcom,qcm2290-ipa", "qcom,sc7180-ipa";
> +
> +			iommus = <&apps_smmu 0x140 0x0>;
> +			reg = <0x0 0x5840000 0x0 0x7000>,
> +			      <0x0 0x5847000 0x0 0x2000>,
> +			      <0x0 0x5804000 0x0 0x2c000>;

Please pad the address parts to 8 hex digits with leading zeroes

> +			reg-names = "ipa-reg",
> +				    "ipa-shared",
> +				    "gsi";
> +
> +			interrupts-extended = <&intc GIC_SPI 257 IRQ_TYPE_EDGE_RISING>,
> +					      <&intc GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> +					      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "ipa",
> +					  "gsi",
> +					  "ipa-clock-query",
> +					  "ipa-setup-ready";
> +
> +			clocks = <&rpmcc RPM_SMD_IPA_CLK>;
> +			clock-names = "core";
> +
> +			interconnects = <&system_noc MASTER_IPA RPM_ALWAYS_TAG
> +					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> +					<&system_noc MASTER_IPA RPM_ALWAYS_TAG
> +					 &system_noc SLAVE_IMEM RPM_ALWAYS_TAG>,
> +					<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
> +					 &config_noc SLAVE_IPA_CFG RPM_ALWAYS_TAG>;

this last path should be RPM_ACTIVE_TAG - that makes paths involving the
CPU automatically collapse (as per the power management uC's decision)
whenever it's possible


Konrad

