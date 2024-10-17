Return-Path: <devicetree+bounces-112630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0739C9A310D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 00:52:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A400E1F22FA9
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 22:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC721D86E6;
	Thu, 17 Oct 2024 22:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZcUhq/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C551D7986
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729205558; cv=none; b=YLButX8h55Pxegayusbvtv8kvPLICGGASy2DvbLXgHjEMOoE5+S0cd8VhyNVVwzlNrjN3ZouE2pr2uBapStHxSOJ8VNFer0WbZtXiCIR69iMs2q7qf1CdvnEj2MYO2ieO7vNqEdPQrV1QwXTCqvnhQ0VfaD6Lf1QkNOlHRI/7yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729205558; c=relaxed/simple;
	bh=veoPP5dnbAv8MxONszvuvZHFUMkbHElyR/BNXSyEu8o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nrIoSMcCjZXLFr8y1Abv7aP/OoDpEZRfj++VUoF6GMCVfN5Zp4OWsOmg1UXuLNa3hfecKFcaU6gY2ivXp52K8k3xERyaf/ALNKae06J1wQbz/7UUq/Q/HF61U+dWKgMmi7Ol6kVVsI3b0PnSutP0w8VMC+cWjoTHegZwTj2FYJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZcUhq/2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49HMAjWo017520
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 22:52:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4IbT5DS26BtuSkJfII8scnwrgyRvqZSh5tNO3g4y6GQ=; b=OZcUhq/2zjmSV0Aq
	zFJdyJ+qQ/9OZvBcJkQ3RYUVunX0DRmOt64Isav4NshxlDJxCclUY1qVkMULr8sa
	vwSm7DgOaXLxBn6tY++hVoQjhajzXL60dKXM9rvr3gVvGkoR7zjO5U3zapWnQ22x
	pljHegLHXvIDnn/pwVG19MKXGGiJMRA8JT5QM93FjN7cLyNve7ntSSEgDqpah1Vl
	NEgY88slXfIDzVovLeiCwrpDGE3F4DHpXSW8HBlGQEAI2ypUMlKqEgBaJwkE5tVP
	49K/+wdmC/NH52NRLxCtVFFoJS/RE/xi1FGALftt0xXGjZtcbuAEriEGTu1IMgqo
	OF+McA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42b0rx20fk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 22:52:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46049d0c4b0so1864611cf.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 15:52:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729205551; x=1729810351;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4IbT5DS26BtuSkJfII8scnwrgyRvqZSh5tNO3g4y6GQ=;
        b=VnZuyG3p3cBNk+Sds5D3m09CNgwXer5xZjsjarcJdj8TFPCAlVtwSf9smeGznRQ8ww
         a9Am9wAkn2jHrn0w/5uqqSF8VuG4g+PG3XsPOeoLQ0YCMX6w/+Gj8Vl2F1RnxGjfCSOX
         ei6M784nTMUChPsRdmeMnYvQILVmAaIBRh8Gj4GbRnhX/emPaPEuUkzfxV2V/pr/Cf71
         8LlYLriDJwjR10CUKq11KdaVNLG8rxJrXCxtP8l2TnZTsf+jzgy92fVthCGojm45cocF
         20+17Wu9nskaAti7hfZAKFLLsZ/lXSZCnF8RNR576T9xqUdk+RggwL9TVh4r3pe1ejB7
         1TIg==
X-Forwarded-Encrypted: i=1; AJvYcCWf3x7ADEL12e7Zz/FktEiw2eoiE3jckBkoaUu6zczG/hSFhw1+tBPvdMhvd2OB7iRvWpK4Sa3FMKHm@vger.kernel.org
X-Gm-Message-State: AOJu0YwW8G9cLFHgz5O8e7wXKsU3Zd8pFrI0LkTVossotGfn4STF1k8r
	rM3yvHER5z7+nZy9gkCy3naN3nSjz/yYKYGi3rsDh9WoMCD1ePQYeqkxn0WJQMq+tWGeAWRSJTt
	97YNZnIUNYHM+S5FGmnbyAXmpsKEHG3H9GE5xEoXx0OoJRwg6vo/sc7ryUW5S
X-Received: by 2002:a05:622a:1aa5:b0:460:3ff6:a0c7 with SMTP id d75a77b69052e-460aedef718mr2353131cf.14.1729205551195;
        Thu, 17 Oct 2024 15:52:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmMsSKLph0w6Z2CuxpVGUO5OV6eMEH2AOQuSkJYuGrScz4s8n3lw5vOvk48WKsAeN9J3f1ZQ==
X-Received: by 2002:a05:622a:1aa5:b0:460:3ff6:a0c7 with SMTP id d75a77b69052e-460aedef718mr2352981cf.14.1729205550697;
        Thu, 17 Oct 2024 15:52:30 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a68ae9b5esm20276966b.88.2024.10.17.15.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2024 15:52:28 -0700 (PDT)
Message-ID: <f9191c4d-a41b-463b-959d-14152cce080e@oss.qualcomm.com>
Date: Fri, 18 Oct 2024 00:52:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sa8775p: Add support to scale
 DDR/L3
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
References: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-0-074e0fb80b33@quicinc.com>
 <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-1-074e0fb80b33@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-1-074e0fb80b33@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ApL1PBx6DHCH10_VJGxHLzVZHqR8yi1K
X-Proofpoint-ORIG-GUID: ApL1PBx6DHCH10_VJGxHLzVZHqR8yi1K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410170154

On 17.10.2024 11:28 AM, Jagadeesh Kona wrote:
> Add support to scale DDR and L3 based on CPU frequencies
> on SA8775P platform.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 06bf2ba556b89b643da901857a9aa7cdc7ba90cc..d8b90bd4b1f05604185f015929a1f296799ad6a4 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <dt-bindings/interconnect/qcom,icc.h>
> +#include <dt-bindings/interconnect/qcom,osm-l3.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
> @@ -47,6 +48,10 @@ CPU0: cpu@0 {
>  			next-level-cache = <&L2_0>;
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,

Please align the '&'s and squash with patch 2. This one doesn't cause
much difference on its own, which makes the commit message misleading

Konrad

