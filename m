Return-Path: <devicetree+bounces-234388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CB5C2C063
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 14:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E66A188724F
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 13:16:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F240A1B85F8;
	Mon,  3 Nov 2025 13:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m7+7r+M6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D2hMR3b5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83743213E6D
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 13:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762175760; cv=none; b=T6+t35urzdehlQkJVJ57lNT2YY27N1JZxZIKixLydQGB1SeI5PVuN35i2hdZYvKwHonj3Id/u2WIYQvLZZcb+PtDhHRqZJTsrS59m/3tLwkxJ5yUdTexFBLO/V6OKICOgzYEV5i1VgrhnJ6J4DK9rxO5khiHpk39IlmO8pUg2zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762175760; c=relaxed/simple;
	bh=oMgbXwa9FIWvjLs4oqx7nkUSvxUr38rp5LQT8Jf1s2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BZQCoDYjarjJ67Fv8LZZt6THGPbOjN+OnNnIv3AChRlfjSqihT3bzg/cuy51QHW5EErVYnr4UOVLqflS2pob9jOAwh/1uPEKe3CHqNWJOS7CAiMRDkie2WI4XDEVET5ohkZHQWLRjul+e8JiEHtS/SIugJtsuRkd+73xx5rcyC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m7+7r+M6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D2hMR3b5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3CokIv2269079
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 13:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mJi2SKffdqwBQAyEENUG+x2LtEGehybWi06tfIUxK4g=; b=m7+7r+M6tnDiKlvg
	MUI9DM/edF2ZFc5oWyAWh/EVypHl9eimGxIts0vTxd42Q61tLXBdSVDQPmn+NGBQ
	KXli8a5pX1dGUpjmIZZHHlpUPjaAN4nYbEJVlT8/oZmtkhdxoLAe4SQih7IRpQ8c
	IakAE8jhklLxe6e8Xh0mQPWh1MY42H0yK3/DeQnBDM125SXafWTVTeVQgWbwd8jZ
	JzyIg7yYYU8o1myeMB+JI5pwvSR/ZD2/uctQfRNzO3FQOZIZB/7q8PtyHLI4V0xB
	J7E72TXLmTFYvnwkPcfkOod3RUghU5U5OofEEwjWumJjRuKeuhcvnqAHSLrpmWnp
	hCk9cg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6pwah72t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 13:15:58 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8934ae68aso19350161cf.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 05:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762175757; x=1762780557; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mJi2SKffdqwBQAyEENUG+x2LtEGehybWi06tfIUxK4g=;
        b=D2hMR3b5gUOhZsRyKr9is8wF4zthtg5NA48dY1sZFEocyVy/rn39mKd7AYZjVtdcoa
         8cyP2gVGMKZsQhCgBFSxksjyjMzB52a6USblfW5XluE3V7l2RCm4ZVElioavcZBUg+OA
         Fh/oxKQ+FnHNpWX5PdkZbhF9L/+C3r4ovrYbPVCMxJIGCqU6GadfEMED7TS/hpSZqCHs
         QhJ9aCfZrTFvrimIyUiyTJBAoWx3x4jz6+2O9I6ctHywAbNThTjgQI3x2OnobnRKNWa+
         5u7dzX+pwy6UHXjgAN6yznbMbFxhw6+qcQ7ygkXtTtEiEq0FZAZ+P5Z8tN+rDfYlp0T2
         XcEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762175757; x=1762780557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mJi2SKffdqwBQAyEENUG+x2LtEGehybWi06tfIUxK4g=;
        b=sy12vMABLrRTsWxyoCDnnQX0/gCIqMoS/ICqCisspbOUH9oLDKLIFtU+zJteMpHePm
         H5Ycy0k6IXKs/5XaPKsE9cyfboCVX++g8NaAIYg6NR9Yhgd2MbCeD/76gRhScLxCrVze
         viTbvq5K+JFINQc/i6v/GQtTy8XYjl2lvJ86QRiiUZwfshWzyrdiqwPltbg3k0R2q857
         QbaXiq54EykHD29CFQiMtXoDgDUrWBg1z6n+skCIdgZNC94xAv9l3Pu8dr+VTZ8uKKdv
         U4CpbZinfmfeGigiEnUpvhgz3CjDrT9a6sTbDpifv9yuBrtBQgtnItLPmfNUWNhfjLGP
         WtVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrivwIb+8D4v7ZO8Bx3AcxciKyCxvHbNuLTw7S6bKR87jUhnOw1+EAuSvQUQPRXWWkgj4WSp/7zPB9@vger.kernel.org
X-Gm-Message-State: AOJu0YxT/ZYBo/oUUPp9XrFg8rbW28Ds2sY2gM1LDdoGx2/TNhVs1sil
	QUhQj0xPCkCqBXadzsJI3kQiBsNZcQhTDQczP5fl+zcBxaQhCGoEEQYLBpX2lXLVVni6YOJnUGc
	i9/we9Z94wwV8mrjJWtFYi5Yy3418enLtruNHQaUyaPPNHWmoOYeZ7Xr3kwh+Y5oLi/WKo7ro
X-Gm-Gg: ASbGncvWDd+W4LPVUXmMZLr3mrlpphmDfhBG5Opa9ZlDGf84qpcumE3LNMZlgYNi/6K
	d8u5KZWYRBOSJrX7UYgOHWVobikItqmfC2vcJ8u+nwXw8OyJ/Mi/K69fh4OyvEA+NMtUA59t4Fc
	wrAGZuon9sgFS/WrgLKuXEY6VF1rzJkOG1MQF9SBexcDIVo2kYqK56P07TfJ9siw0RCvHzyWOTj
	6FMsWH/AJLez2JKjgJ+YDglqS/PD8fgUuTupSPZFrt9ksi9bqljhXgAMf9fY+sakXG/sv/tNQEE
	qA/yoeb1Md6wVqTyUhQTGgN+k9OzEw2JBeYK8e4isal4zoSn6POdmaesVxUSnAU/YYctNnyeZq/
	YEB8DiZ83+6s6LAdxicPgujJBDxxrYsbl9z/JX2lXMGyTx1QjhgVyadnI
X-Received: by 2002:a05:622a:588:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4ed30f3cc9dmr109744671cf.7.1762175757566;
        Mon, 03 Nov 2025 05:15:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGh7/QV0gEshhpbMietL7LQeiu9j1PQXIccgtNnpkzyuw4Wy1i4QV7GqTXvaLVMylBd9ovww==
X-Received: by 2002:a05:622a:588:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4ed30f3cc9dmr109744381cf.7.1762175757012;
        Mon, 03 Nov 2025 05:15:57 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70abbb6106sm534193866b.67.2025.11.03.05.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 05:15:56 -0800 (PST)
Message-ID: <114cb239-d0b8-4db3-8972-77ec3a24825b@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 14:15:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: kodiak: add coresight nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251103-add-coresight-nodes-for-sc7280-v1-1-13d503123c07@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251103-add-coresight-nodes-for-sc7280-v1-1-13d503123c07@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OrdCCi/t c=1 sm=1 tr=0 ts=6908ab0e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vf5OUP8M7W2h9ZXQaioA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: T3ipVln-JAnLYNbRS4DHx2NU39XiJT45
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEyMCBTYWx0ZWRfX9Q3Ul/acx4Gc
 nVmTGxSQ6ILLwWxQoHq3dypPRl3qY4C6GO2Jp2z5gecKo6E3z0T7Fu3L+NabBd69jNskeSH55QV
 ATtPRwPxw0rO9OHV76lmOz/ouJyN7gYcEoEVic9s2LaZyjQLuvwtghZ9ZTZ6WFY+GvY+3Wb2pFa
 TxjKCheoz7rm3zdDfQEC73lS6bK/hS00vCIetZcx8LUaFPXkbc+am52SVjebU6dOpip17pGOrbS
 9m5HiGiEjyNeeOz2EqLtBQvZ0btQKCPmUrndKHocQlocuiWH3e9ZiazbnUtbUFh1UiDPSrMm6ep
 q939XaSWrfeag1Uvqk0JV1lxs1FEsp2zqfp/RcG67gFd0i6DPC26A0qsO1m+UVHPJ8xTlIcV8z2
 DKCoXQjrJyGkIMMc69Kz8ChC4qy/DA==
X-Proofpoint-GUID: T3ipVln-JAnLYNbRS4DHx2NU39XiJT45
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_02,2025-11-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030120

On 11/3/25 9:35 AM, Jie Gan wrote:
> Add TPDM, TPDA, CTI and funnel coresight devices for AOSS and QDSS
> blocks.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kodiak.dtsi | 290 +++++++++++++++++++++++++++++++++++
>  1 file changed, 290 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> index 3ef61af2ed8a..09aba1645408 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> @@ -3338,6 +3338,85 @@ stm_out: endpoint {
>  			};
>  		};
>  
> +		tpda@6004000 {
> +			compatible = "qcom,coresight-tpda", "arm,primecell";
> +			reg = <0x0 0x06004000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@1c {
> +					reg = <28>;

Please use hex in 'reg' (just like you did in the unit address above)

> +					qdss_tpda_in28: endpoint {

and leave a \n between the last property and the following subnodes

[...]


> +		cti@6010000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x0 0x06010000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";

I see 15 more CTI instances following this one at a 0x1000 stride,
followed by a TPIU at 0x06040000.

Actually a whole lot more debugging hardware. This patchset looks
tailored for debugging AOSS< as you briefly mentioned in the commit
message.

Would it be beneficial or useful to (perhaps in a separate series)
extend the support for those?

FWIW the various register bases and field sizes correspond to what I
can see in the docs, I can't speak for the port numbers. Please just
fix up the style issues I mentioned above.

Konrad

