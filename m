Return-Path: <devicetree+bounces-125731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 460E19DF132
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF7131623F4
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACB419D06B;
	Sat, 30 Nov 2024 14:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a3oAIMsC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC9819924A
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732977441; cv=none; b=EKfmzXa0xFtSyw3+SOq3R5Umo+HjdKXVbsS/EOes3cVpZDG8AGedJ9qasu0/HhwyHzSDYCPeWmdB3J18E7wL+kj6AOTde8rSIEpnkjUH8EStgim3QRNv59dsgpUQ++tc73/ic7VyQM6d7ba9RzYWAmT4FZwTXReztOlgs4J8H0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732977441; c=relaxed/simple;
	bh=vYgbK47cGYuGhnWZ5whBp24xd3Q9QtzL5uAwUMIS0hM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MfyK/RvDAATaAqzd01MppCtRNEyelMF280SM2dM8fmCCVLRCm1EpLAy4BAB83AXZCj0TjSOZfrI4/DcOTphLyHAfXxUStvqjo/rk1AqWyBfbGQEpf2LOjoMZeQEr3SnDAhTgJodHRQ6P9Vv6eSjoUJ2B/tNhzA7oyllzGn3sBnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a3oAIMsC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUEVq5U023990
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:37:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8t6znDnOlIUbigVJLe8EZYD/UdUfdDDmCcUZywdHGbE=; b=a3oAIMsC5Pzhi8Rd
	p2PW1wIoWW/MoijO95sUeSVDOgPqJXgt30Bv1/UPPI8w4SGhTYGns8iNS8jVPlg8
	rS5P5GtPqsNhY6uYdzjIfvlDdZ5cdasbAHFcrY9wYrhRZYuihnVpCi63Ki9ImDBP
	iEu2Dt2JqLui7bjdcK/wQsrwxb1y2fS0HKSg6QBrCackt/6ToYhFYJ2u4LJmjVJi
	36KuHEZTV0WlIOGHYJ/HCJk/KjBkhXZg21L2BQ7JebRLRF/mRoJPeK7aSy6+Yzh0
	Rdy4myQkRDVVVPnR0WzihXsE426qmsbKKttkcnG0Wpdy1oFrXCQx5PIbjseqbVT/
	l+s8iA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437tst8ux1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:37:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d4276c099bso5135266d6.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:37:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732977437; x=1733582237;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8t6znDnOlIUbigVJLe8EZYD/UdUfdDDmCcUZywdHGbE=;
        b=a46kEN/6PbgvnYN7rmNOlUb9t2XCueKg3olrlIOb7U3+Ghgueq7j+T0Fvywv5b5xW6
         YKBv9re0neUZA+OpERRaEwCQoX8c6k83E4JpyVvJJJyDJxmqJSG+h+OKUkp+Wrm/yMTq
         wi0YnV5u5lVnIJcTTEX6rdnXDwO6RRxkOpKn4jqBGnDf2lP3naT0RfJ8wjVe+i1NvFWb
         yM+mY1qhTd6XsoESr9A313bl9cVfxW6X+0wRc4FoXoR0/S4NtefKRAuEAZKwivmy+v+S
         k2wSIrpMinOKxD6rQE2i9QOjNWWGPiAWoBItn2KMcNMLEKnh7yw38jspf8W1h051ja67
         IT0w==
X-Forwarded-Encrypted: i=1; AJvYcCX0H9vSRPKE1iUVCxlipu6zfU3sJCHg9/S5FPNYPmjtqnCgA3rMpfkmbgzfeTl6bgYl31xnVnlwXlV0@vger.kernel.org
X-Gm-Message-State: AOJu0YzAGQeruG34hrO94PWKxWtlmVUPF56JXD/+dGI+1bfvr3Yv74Lz
	kcj1n6kq8g1mbj3lnPBncg/CQqUtCYS5kQU/aRZF6b75mmUkIgru5DnMGKS+LnKIdnJBzQ1lioG
	eHP9UNXoTA4OR6kJ5+ZlPiMkoLp8/UgXVRIScRkTRjjVkARCGPm+bSu0QB+eJdmc8FZog
X-Gm-Gg: ASbGnct0hrM7X4Jupt3CqpMALtXuv6C8zI0g+duXMOxCbKNOWHQfltGd9q8OG3pYAYf
	1cQA4hnjZtqzu5gNfDrdkvhf7zY9qaCje7zm4EzujHIvfHdYdjDniG0iUVBoffnJf3kzIcrpbX3
	btUiahh6rnc2YIdOhcFTBLEfbS5VcaBbiK9zx0Jx2L4tsHAaubXeT3Bkq49GHC1Qg+Y7P8dUjk/
	SqADM9Iusphqe57IQLwx0ZRJR1+FFslgDOn2IO4/3ruNbUaJzFc4M8OhfbPMtikU4a11ctg4uJ/
	uDJJcAVeXn4kakfRze9qyHchLc44Hnc=
X-Received: by 2002:a05:620a:19a5:b0:7a9:a632:48ad with SMTP id af79cd13be357-7b67c46620bmr717768385a.11.1732977437558;
        Sat, 30 Nov 2024 06:37:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEn//unTUzzYipJpoMdxPSmh0OLZKfaf7GZY+Uf28bBCJrS+BMCCNcF8rc3VLe30uLLK7eFMQ==
X-Received: by 2002:a05:620a:19a5:b0:7a9:a632:48ad with SMTP id af79cd13be357-7b67c46620bmr717767185a.11.1732977437101;
        Sat, 30 Nov 2024 06:37:17 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c19efsm284143166b.33.2024.11.30.06.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:37:16 -0800 (PST)
Message-ID: <802d32f1-ff7e-4d61-83f1-f804ee1750ed@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:37:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Add support for clock
 controllers
To: Imran Shaik <quic_imrashai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>, Taniya Das
 <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 06T9rT7ERoZet9ZYVHohjhxWqGkVeQoZ
X-Proofpoint-GUID: 06T9rT7ERoZet9ZYVHohjhxWqGkVeQoZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300121

On 14.11.2024 12:05 PM, Imran Shaik wrote:
> Add support for GPU, Video, Camera and Display clock controllers on
> Qualcomm QCS8300 platform.
> 
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
> Please note that this series is dependent on [1] and [2], which adds support
> for QCS8300 initial device tree and QCS8300 multi media clock controllers respectively.
> 
> [1] https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
> [2] https://lore.kernel.org/all/20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com/ 
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 59 +++++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f28..e43fada4acb5 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -5,6 +5,10 @@
>  
>  #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> +#include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
> +#include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
> +#include <dt-bindings/clock/qcom,sa8775p-videocc.h>
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -772,6 +776,20 @@ lpass_ag_noc: interconnect@3c40000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		gpucc: clock-controller@3d90000 {
> +			compatible = "qcom,qcs8300-gpucc";
> +			reg = <0x0 0x03d90000 0x0 0xa000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,

Missing AHB clock

> +				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
> +				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
> +			clock-names = "bi_tcxo",
> +				      "gcc_gpu_gpll0_clk_src",
> +				      "gcc_gpu_gpll0_div_clk_src";
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>  		pmu@9091000 {
>  			compatible = "qcom,qcs8300-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
>  			reg = <0x0 0x9091000 0x0 0x1000>;
> @@ -882,6 +900,47 @@ gem_noc: interconnect@9100000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		videocc: clock-controller@abf0000 {
> +			compatible = "qcom,qcs8300-videocc";
> +			reg = <0x0 0x0abf0000 0x0 0x10000>;
> +			clocks = <&gcc GCC_VIDEO_AHB_CLK>,

And the ones you reference here and below are not registered with
the clock framework.. 

So please pick one

Konrad

Konrad

