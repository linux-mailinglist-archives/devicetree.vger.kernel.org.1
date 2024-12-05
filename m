Return-Path: <devicetree+bounces-127690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BE29E5F2B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 20:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0D2C2866EA
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8420722D4E9;
	Thu,  5 Dec 2024 19:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f1fpSzAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FE919ABC6
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 19:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733428285; cv=none; b=h7+acqQlQwmZtPbTsSuoQ2u3xPzqtzYfwp7iqbxNQVCtG3JSY1Sdw3HBGQcQ/QVAruVRnvw/jB6sSnW/mGy2+KjVSzID6CKfMxtn1p0GmS6czhHXrQafYrTKgOKtC4HCZJ3V+Yp+ZUiR7YIKsaP9DqVmPB6yyXuTMWk9b/68utI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733428285; c=relaxed/simple;
	bh=bd/rcxhI8GJ+7LgB3usB5IRB7XaD8/+ZWzOUld/X5OI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zi73ju5OKkoTUGnPJ/rxvySLa45u7RnBNl0mGpCy0eFsHAgghC/xtR5q8sLzyeEwpUsLELWbZVU/5B0CYo4UQPE+E+iZvVJsX2Xl+BIx8tMiMWWMgHdcRZotBpLdEriJ2+zBQcFZ50iEd7ykiTA441X+nR/LVWBm7rkguB0Lliw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f1fpSzAP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5Ha2uO014923
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 19:51:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k9cm5lSjldF/HZCvqlWFShBMiLrsI/ByFg9XQ1zht7w=; b=f1fpSzAPgsGrn+65
	Fqck3DGaTXKHhR0DbhhMX6VagqXNFSTxVwS0RFuN3i5Cyoc9oE+f+9zZ1iwS6trr
	N3bbuVhVIxLcj9IskKLtOHaEBfzAWeRb2vq2f8RJGZ7PS4R/zX+Vwp3uJFg33evJ
	7eJplLoaG/BGT3WDnkAx6nZcCdbyrYSdIPQJkoWggaGGuMlyL7cCKnrZIjrLoVJs
	VkgVNx3trR6/0S2KRIsMGss+yiTh9eTHA7iQEeaGNhtK6IJKsO7SJn+jzupxkkUh
	SkgyoadvVfxRG6Etus1iEDP4KlYZn105RUjlkN2eFyQKHewfnIS5hiMa11bljXPS
	7AHLCA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbnmh9r0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 19:51:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46699075dd4so3234391cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 11:51:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733428264; x=1734033064;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k9cm5lSjldF/HZCvqlWFShBMiLrsI/ByFg9XQ1zht7w=;
        b=wVIRpGNAG1LejzI0brjboc7DNNXLpS/6rRKVX8/qQ2LD1kYHLD+JQjUIh5zNwxEd2y
         hnj7Pzz4BPLJUzuoWIbGU3M/NhyAPyYIR43jNsussZ1rDohsBNVarS3obqpxo+fWJY/X
         ifw597SnclmUTlnGoCwjYOo/3CI8b+jxlQE6tDv/FCudf1SHW974Bldf9s3pNAeDm0kT
         Q3h3VNQlD1e7kxPDzbEGVOXHsv8W3TU831x223EgVFY+3AaOPNjV+ZXAfPo79WMuKvW9
         4ZX1umTNAzDLcCZZDucenLMEgrpD/8yzNniS6tPVBwQFi+RjazMN8jaytYlaMoPCchE2
         jWPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKqw2FKTy8PQex6ttwLDm2hyQvOa4GM8z8sh8nU2dm71x6xETwXR0VnA4fXixQvcLt63AIOYve8nYA@vger.kernel.org
X-Gm-Message-State: AOJu0YzTDp5b7PIj1hazCh5OdIq21SWCLnRhtjpWMPtb8AHQDBE/3Esv
	q0v2eInZbjypnyRhRolsTJkcn/zwWXK7U//FLM2zjOr8qavNr0RCF8v5SLYvvLSzWT+ltisV1OK
	/Xk51huDV9VwRPn61pQ6argSQ9d8W9QnBH2yNpMF34aLin9dDVJrb7VflBH3g
X-Gm-Gg: ASbGnctnYTzfnbxOY0NnVF+1M/LUPcvq5Fw+RjAWYrAQrW1lUMVO0AI770RVVHbzLr5
	AoHOxASP5IgEouG7P9eSZQ/ZEJnbwf8565X4f7FHIcTV5C3ZtpmWuRQmjcld25AP+MfTSk60RSs
	Edaov3kKKr+O1V+Pl8c1QndIk+kKTl6BEzeYw8WakuY1dR0Eer2jLp/HqyO2ZzHPfDbjt2oDXwP
	VyIzJYZBUL57WQVr+cAJe+ezKAoOBrNdQyJXaEPe6HKKjrNO6FGOYQ6FifJ5mbtEUNFM6ukex0M
	zf/R2UxKwNOmqwmNqfSamNIuT4jAbO8=
X-Received: by 2002:ac8:5e46:0:b0:461:2137:ba4d with SMTP id d75a77b69052e-46734e0d25dmr3117581cf.15.1733428264006;
        Thu, 05 Dec 2024 11:51:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEusIBLnVRK9pVERR8e39tkzndxRKaWZWLYk0nIvVVQfvn8maq9fL9bdBqs21dRJYgjAMhZBg==
X-Received: by 2002:ac8:5e46:0:b0:461:2137:ba4d with SMTP id d75a77b69052e-46734e0d25dmr3117311cf.15.1733428263567;
        Thu, 05 Dec 2024 11:51:03 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62601b5ddsm133485666b.118.2024.12.05.11.51.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 11:51:03 -0800 (PST)
Message-ID: <de2ea78e-7887-43f7-a478-52e050079992@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 20:51:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: qcs8300: add QCrypto nodes
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-crypto@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241125111923.2218374-1-quic_yrangana@quicinc.com>
 <20241125111923.2218374-3-quic_yrangana@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241125111923.2218374-3-quic_yrangana@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KrK-_rEsNcdV-vTWUEvvpw7Q-hcRiEYM
X-Proofpoint-GUID: KrK-_rEsNcdV-vTWUEvvpw7Q-hcRiEYM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=925 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050148

On 25.11.2024 12:19 PM, Yuvaraj Ranganathan wrote:
> Add the QCE and Crypto BAM DMA nodes.
> 
> Signed-off-by: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f28..d699706638f0 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -710,6 +710,30 @@ ufs_mem_phy: phy@1d87000 {
>  			status = "disabled";
>  		};
>  
> +		cryptobam: dma-controller@1dc4000 {
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> +			reg = <0x0 0x01dc4000 0x0 0x28000>;
> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			qcom,controlled-remotely;
> +			num-channels = <20>;
> +			qcom,num-ees = <4>;
> +			iommus = <&apps_smmu 0x480 0x00>,
> +				 <&apps_smmu 0x481 0x00>;
> +		};
> +
> +		crypto: crypto@1dfa000 {
> +			compatible = "qcom,qcs8300-qce", "qcom,qce";
> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x480 0x00>,
> +				 <&apps_smmu 0x481 0x00>;
> +			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE0 QCOM_ICC_TAG_ALWAYS &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;

Please wrap this line, see other files for an example

Konrad

