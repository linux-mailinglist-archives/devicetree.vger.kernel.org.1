Return-Path: <devicetree+bounces-130414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 622209EFB04
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:33:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9E211882484
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299F7223C40;
	Thu, 12 Dec 2024 18:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+aVZGCh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94F2222D7D
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028402; cv=none; b=uqYsXJsHx1p8nbiu8uPpXBRIdiTMBhHnqVKJxJUCtkrz7BuwPTvQVP6rBGBkH7P6+0BOmgc5zHnP5MjKbwhJ1bns4mnCSbTry2uazCodPKTJfe4Q7LuXkSBffncN863LRYwYIoE+zgndKzlHcpZ9w5mH+SviHCwgKnuMcQq+1h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028402; c=relaxed/simple;
	bh=S8pyGemZgDyFrB3LbBylLdpP1liWYPzQ6w+PiYfxTUc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T3xa7FYNTGJd1HTVUVMsBQ19E3hH3iTt6l6WQvrWTqFeWI7kwYTD5wNu6B4G2k9T+U4cxeOwsMsVhliJ0iOmIgB3cfc29Y3XMBmMkvzhwY7eIBcxodA6KlZNea2FS+aPLm8NzjY3FPYY70+EbH8EKSG3ibfDMiW8hV2cMHhlP04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+aVZGCh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCG7LBW002866
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:33:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7P0lT5CU0pXRpSIELwaVuf56/lpIFAAE4uyri3Arzm0=; b=L+aVZGCh2stHV2W5
	kCKcATDhp6Ty1c0xLKj1DE0gq/wHEIxuFLwc1RShbIkg2Ht4GhxQ9oJaU9cUAejY
	d3d7iwj7HP6rF/k/dw3lM9V8l2zjB9YtTWvtcmhH3/cciOvnqu1f1jciuPD5o5/+
	H2RSroSdJfH2KSGr8l2ZQnWkf8eHGCRKRfXyfkfrDYv0NsRh8vjUMIbkmHskpB0Y
	692uc1sqjjSAypk48xkBviIPJCEcy50zjH0qKzpN8m8cMUgQ3Kmy611093taRyuh
	LSzauJ32RR5WQJ2EI0/cnXAjDVvnrO1Y/NeWyNQKy+dTUmNhoDITrBuGaq4RFfnz
	xhx6xw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f0r9xbsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:33:19 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467975f1b53so2381221cf.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734028398; x=1734633198;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7P0lT5CU0pXRpSIELwaVuf56/lpIFAAE4uyri3Arzm0=;
        b=QyU2V/bBcKQc//+8qyAp9jgUSP3uLzH2UqK7P3WdMqSbUtf/2deyGFnthtzToN/m8F
         m4gpOq1OdKnp4dC2V1wKZZKrf5KhrhaA8k7iXTFmaC8Wbk9MUa+69qIMP4qRy0eDVGKL
         PD5noUovRKbwMLBMVUhTgh9rPclxnBn1x81dJA/Wq1SU5gOpAh5Jy1GkoA4zDbjZD+r4
         BZKv0XM0Iczs3siaA2yCRChTiSDrnuuasaK8iMPm2QX6r5HG/fm8MLp4EGq0Q6lS0eo5
         J+CWedIm9Ql35k3/lsHRbj7SnG5LHjp+Puzow3ZAdlnZhd0f5YRJdtvJFLYo4HQTWoqj
         TJYA==
X-Forwarded-Encrypted: i=1; AJvYcCWZjrgVu8bYff4R9qSheWxlH8zuuu8g+pj9z0gERPtbvok9rKiNpBAm8IyTZj9ezuuufFRyHIzgYr0G@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+3f95jPkUauidfoKsNB0r+TdSmlAPIdvXULfIkTZzpwJNBYyc
	YETuW/QsW52myR4WERMfEeWg20wwuZzAyQB4g+hXZUYK/WtdNId5KbirOei9sF6igFfRJgLeKB0
	W3ETD6YAIr+XSwMTH5w6dFt+k3aTUFmdbKLNmoArKjmmH7VSoqrLid0XHTu+Q
X-Gm-Gg: ASbGncvlckvIwDgHjelPGoHesXJKhPpABxoMfOy+G6zPSfHk0O7NLorjbgoZX1Jompz
	C5hs2Ooqr2rdjqvNjiG+TYpPaCQCByb5omoMu63FXn9IG7JVJ1hX2k2G7UljIgu0A3mqKPpsNbo
	vH5aUv6/+/DKg4uJ2dvPVQ9k8B48UW0LlSIhglqXCb958Ysb+N4bgBIXpUBmaaP18BqDwX3/SLc
	13CBxNxN07HPMS2JGzujfo8TnvAJWtfn7Ckg/GO9zYDiHeA7vp4RSnlpDii0EqRmkI0NyN1J+Jp
	9XVgFjGL/mizfNnIkp5b0+GaL6h9DD0YWNnj6g==
X-Received: by 2002:a05:622a:c9:b0:467:5fd2:9963 with SMTP id d75a77b69052e-467a157c299mr7693061cf.6.1734028398524;
        Thu, 12 Dec 2024 10:33:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+5d8r2euOhZpYPGkl75/hl53j9+GKYqvLkelPut+0NmoKj8nha2RmqO1ELxeypwqRDcftCA==
X-Received: by 2002:a05:622a:c9:b0:467:5fd2:9963 with SMTP id d75a77b69052e-467a157c299mr7692831cf.6.1734028398169;
        Thu, 12 Dec 2024 10:33:18 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa671f1482asm744364966b.107.2024.12.12.10.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:33:17 -0800 (PST)
Message-ID: <0776a26e-56cd-4838-9b52-210ae9a1f281@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:33:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: Update IPQ9574 xo_board_clk to
 use fixed factor clock
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
References: <20241107-qcom_ipq_cmnpll-v6-0-a5cfe09de485@quicinc.com>
 <20241107-qcom_ipq_cmnpll-v6-5-a5cfe09de485@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241107-qcom_ipq_cmnpll-v6-5-a5cfe09de485@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OxDO7ohtitGjKVsTceYT0Nk9UPXITks3
X-Proofpoint-GUID: OxDO7ohtitGjKVsTceYT0Nk9UPXITks3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120134

On 7.11.2024 10:50 AM, Luo Jie wrote:
> xo_board_clk is fixed to 24 MHZ, which is routed from WiFi output clock
> 48 MHZ (also being the reference clock of CMN PLL) divided 2 by analog
> block routing channel.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 7 ++++++-
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi            | 3 ++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> index 78f6a2e053d5..9a8692377176 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> @@ -174,8 +174,13 @@ &ref_48mhz_clk {
>  	clock-mult = <1>;
>  };
>  
> +/*
> + * The frequency of xo_board_clk is fixed to 24 MHZ, which is routed
> + * from WiFi output clock 48 MHZ divided by 2.
> + */
>  &xo_board_clk {
> -	clock-frequency = <24000000>;
> +	clock-div = <2>;
> +	clock-mult = <1>;
>  };
>  
>  &xo_clk {
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 8246a00a3e3e..25aed33e9358 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -32,7 +32,8 @@ sleep_clk: sleep-clk {
>  		};
>  
>  		xo_board_clk: xo-board-clk {
> -			compatible = "fixed-clock";
> +			compatible = "fixed-factor-clock";
> +			clocks = <&ref_48mhz_clk>;

This must be squashed with the previous patch, you can't introduce
code and replace it immediately afterwards.

Konrad

