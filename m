Return-Path: <devicetree+bounces-256114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D50D3247E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7762C300A343
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079742882A1;
	Fri, 16 Jan 2026 14:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KevvH2WO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I8zDb4Y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB8283FEA
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768572003; cv=none; b=A6LbPwoCF9YW57HEjzyussHQVSLRfMJeT8Ir9+lSBGPQVM3SzOQvFmtjJzqOdFi5Asy4aEALbfoFuD9Lf4aLbZf/UegGaeWAS8/jVKX2FGkbNXP9ubm87N9yz9BojoqYLvIG3xE70LhEsfIT5r6VY0oK/djO/lzvzPPccK1LLXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768572003; c=relaxed/simple;
	bh=pFtgrG/9xAvdm84PtKpsXhm6cgJUYFvV26c0FrAPSPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eMMY9lO95rzt8ni4GYfvgbRm//scRX3ZJIMwMW3CKy5Rnuc5V4mLE8VCeZ7nMHf8Zwm/33wWDZhk17bxDJwBAG+9rOEacmOfKTSb1Vf++mLHauARAu1vZHlTKMh5d6HeHw8lBFQdi/kNFmLE3rBl/h4R86Gk0GzrQ1XEUeLDQys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KevvH2WO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I8zDb4Y7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8LVvF2819336
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:00:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wjoEmTGmdqun7WIM1XyjvNGiQ+Uv1Ih/FUP2Ph7r58I=; b=KevvH2WO0XiyPPY5
	Ex98NQDv4Rt271U/tCq2I/HOKFJPDPApB1mLmxQTYfMiChszxom4MKJ9cnsqIhua
	NvqqIpNM5/67rntCe3Ot+4cfnlEO5xuquqpvwaiWWdJyX76V6ky2HdeGIEoXsf2x
	dDrNbYKU7Sz2iYtKssUOBJ6n45nXM5ahXrxkQP0+5KW6HWKcTMyL6NI/ty8cNajb
	xfaEbZzTr/Ad+b8Sy7CXPa1JoeG9TLtW4JBY9QL9MGKrBRcj2coAc37ktpxfM5Sx
	Bcn8ZzZkZ3Ekx2HQU0nf3kK04Sn9eS096UMCVi0K3tZGRVGCeUuBPvku2bAQqmtA
	kXOorg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq99ajc67-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:00:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c523d611ffso24215385a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768572001; x=1769176801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjoEmTGmdqun7WIM1XyjvNGiQ+Uv1Ih/FUP2Ph7r58I=;
        b=I8zDb4Y7m5C1M1dXX8qSqLlBN98KEWMxD2ffima40obXsioOpaN9YQKr/P5vnfqNhs
         AO0DbOFZEQycS7tvquxkbZDDUH6HS34UMePLb6azV/flrAghK2ctJnRKCCAGdH83/PHa
         4j26zINgCa3NrReElfQb4hEbjyYa1JDeAMaWBahxlRNn0q776LxkfbYo99OQ+7F6NQIE
         DS4GZNQ2ZLubIDZkmddRTmEIAg879cX7y6YVLSgpNn3t/quSJVhFEAvYO/TjwfM2UTh0
         UzLjrcEP9bxdwWjmvfP1VGORofuXVkF+9WJFnYrCB2eA3ykutz+CNc3C6PC4xtsLG/Wf
         sFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768572001; x=1769176801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wjoEmTGmdqun7WIM1XyjvNGiQ+Uv1Ih/FUP2Ph7r58I=;
        b=NIx3eQQ7NNkvL9auIV/RxLZtymeX3XcQh4N9uGTZPi2O4KeXLiGlZEXArtJ/+vmLm4
         xTAzdKxacYThcpITUN4+yS3+E3CEIg6PhzUK3ZAdsFAFKqqbwRt/EBFgC1ms1cM05PlM
         BBZNqtpg5Bg5Dr1elALtNYsbhiNiyd/fZKn6oi8xDh7tWXSgj/UgNotZ7VNi3qB90bxz
         zNV78xb+yzK6sqIVxndrNmV0hUkdxDFvhGwCf2qEncx9pKN8SWTNAIjutmvc2pwcNqDy
         OdLAsH/4kKrkZtfg24tFTt2XgmAbpauPbbhloH1+JiausQ4L3E4bnwFCrLE4QnSGzqSr
         Vy2A==
X-Forwarded-Encrypted: i=1; AJvYcCVgAHL01nPm27wHVMUWuo1WfSCI3H3qX3YAd+4/wpkjym8BMBcM+xJtWjZEPEgOcjd6AxRlrPoKdc1D@vger.kernel.org
X-Gm-Message-State: AOJu0YybUzYQE2+U+fK6lR6955pSQCJoDTmSkzvzWfpOyJuhkD5y+hdw
	z22R9GuUyjayCoO0CyA7JBDfZ7rzx+jMnGLU7g8DfZPXMRnTRGZpWPx6fHTA3XjFtSjzmH7ouhZ
	h1l/mUKt6rIBQH8WqZUR1cZvoq9sAZzVWd962EDsyjGXPLod1/4IRLk9Hu86OGaUq
X-Gm-Gg: AY/fxX6783kTR9Jb8XR/SWC8syOivrbLfaGF65O8AattpIGo2UTpksi/XS8sOGWiJIU
	OD75EH33+UlTTpKeh/lvDO34EAAYc3D8+m0T/uN5heL8MEZCckhqzsoctB9DToWspyDeM+frWjA
	0q4LrAMvuKOA22+Ks0n+tKa29hO29PO2MwmjYs0AzF0obKBnW4vhGX3pjEXmm+TPSsDh1piA8xl
	XvFMHvJkr2WQdWrcfHWhiAH8/3eZqHiKhpRBPcbq5m88miTBX2mNFbkj9Xb1qauotBo/nKmAg4K
	jueay9sMxl94bjSjaRI6oYMjEvTqQHwwfht3Vx1bTBdQQeNAPX77Qye3puTdO3V896d5TC5QAjo
	9KVBBkI5WsUhXCV59VqHDUsisdmdRKAMVj3x2CM1dazUcHjV+cYY8DpTmnf4n7hKY4kY=
X-Received: by 2002:a05:620a:298f:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8c6a67b1298mr307394685a.9.1768572000676;
        Fri, 16 Jan 2026 06:00:00 -0800 (PST)
X-Received: by 2002:a05:620a:298f:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8c6a67b1298mr307393285a.9.1768572000248;
        Fri, 16 Jan 2026 06:00:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452bce411sm2505931a12.7.2026.01.16.05.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 05:59:59 -0800 (PST)
Message-ID: <ae73eac1-4e27-404d-af73-88eed699db0b@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 14:59:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: milos-fairphone-fp6: Add camera
 EEPROMs on CCI busses
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-4-28e01128da9c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-milos-cci-v1-4-28e01128da9c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KwGLyfU4d7NhRGj7GOadD0o6aixVXLXx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA5OCBTYWx0ZWRfX5R6qO7GRJ7f1
 9HIrZKz0zj8pquDjjEmFA2YyB60kJlYDlNra1KaEzY0n+6YXwsIGGASL2bKvZNl6cIsuMRWX4ba
 jzlbhH2+qCkeniaGdZXsyub82s/kaeZnecogjyZtdqzwwQw5xBrLEWQSJfhygNSSd9gCLS7M6R4
 8XUu+UEYEjZAFcm0ZXsbcxDIvRLPiiHl5dh8nCMyZ3NbpQ8IhdzPpNyYfWBTCMi8oNWSmiNuvJm
 Kvi6eDmz5Lr6Bwv+zJ9+nQ+1ogDFUn1KuniOlYi13q07UT7mAoxJTKWWf19AZWbU9gm9iJXRk3m
 34H9zUpmxMPtGorsc3KEex7cvDKu1iZVcpdX7ZqK4msjtF1CjvFWiNL0QX7I7Nb2WtvoGF7i91i
 shiXCsgdlHZ3582MuH3UCbomDI7Tq22A/DSeT1AfuxE0j+1Q6ggH/QEcJ4LmPwSQttdebfVuw3t
 OFBShTGjUF8AHZQNMtA==
X-Proofpoint-GUID: KwGLyfU4d7NhRGj7GOadD0o6aixVXLXx
X-Authority-Analysis: v=2.4 cv=f5ZFxeyM c=1 sm=1 tr=0 ts=696a4461 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=VnghLoSi7ao9u2dwz9AA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_05,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160098

On 1/16/26 2:38 PM, Luca Weiss wrote:
> Enable the CCI I2C busses and add nodes for the EEPROMs found on the
> camera that are connected there.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 50 ++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> index 7629ceddde2a..c4a706e945ba 100644
> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> @@ -529,6 +529,56 @@ vreg_l11f: ldo11 {
>  	};
>  };
>  
> +&cci0 {
> +	status = "okay";
> +};
> +
> +&cci0_i2c0 {
> +	/* Main cam: Sony IMX896 @ 0x1a */
> +
> +	eeprom@50 {
> +		compatible = "puya,p24c128f", "atmel,24c128";
> +		reg = <0x50>;
> +		vcc-supply = <&vreg_l6p>;
> +		read-only;
> +	};
> +
> +	/* Dongwoon DW9784 VCM/OIS @ 0x72 */
> +};
> +
> +
> +&cci0_i2c1 {
> +	/* Awinic AW86017 VCM @ 0x0c */
> +	/* UW cam: OmniVision OV13B10 @ 0x36 */

There's a driver for this one!

> +
> +	eeprom@52 {
> +		compatible = "puya,p24c128f", "atmel,24c128";
> +		reg = <0x52>;
> +		vcc-supply = <&vreg_l6p>;
> +		read-only;
> +	};
> +};
> +
> +&cci1 {
> +	/* cci1_i2c0 is not used for CCI */
> +	pinctrl-0 = <&cci1_1_default>;
> +	pinctrl-1 = <&cci1_1_sleep>;

Let's keep them per-bus-subnode so we don't have to override it

otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


