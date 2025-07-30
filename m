Return-Path: <devicetree+bounces-200805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AFFB160D6
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9147E7B3180
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8F2298261;
	Wed, 30 Jul 2025 12:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CJqtUTJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1C153598
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753880329; cv=none; b=Zk2j2O9VEHHrEToXoloh1NzYf3ShyIC5NIboEI5QssVNBT133owOEGp1JvIFsuXAij9RSDYsFcToyulXbwJebudf2q34H7pQOkQGrC2b5LrAhgTmkd9T9Z1w3n7ubhrDY10ApdqeZ4gJc39oLxZ6hyyagV+nLH8iGutrrB2LYoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753880329; c=relaxed/simple;
	bh=qdoR/T1j974HV75S4tJQPO6oa6KOE5TIDMG6swHUT34=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZGAior/fohkKCQI6eAnNrrtIE1am1+O9aUjeLdpHeka5nwvbHLknZ0IpO06/8jI25c/6pPjGMiXFAeB3frxMWpbuH4/6b6JJUHbU3t51B59pivIE1QfN+BhB4PDCUmYRvNqrvrXWNbn0kjH6yeSTtYpccH7aQwdyiYNURMjx7t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CJqtUTJV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbYFr024996
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:58:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	REl7hvnxlp9SuuNQcg8K3JJn1OMshdLROkXEqPTt0hw=; b=CJqtUTJVteGV3fk3
	UDHOk/lJylpmzDnVz73C8EOi2ZxnN8Yu1s8Aqdl7Z6Buch7wHd3l357Hg7gQ4tlg
	cTk5KsaWtiOowqWEGBb40+85BsWguXPpPef12JVGn6zMzw4pfCzvU8vTUPMJf6pi
	FCkkD9ARE+ggBj+T5DzPr0y5cZ9g+c76aIfqP8UTgMARP6z3W1XhfKv6dYCWp/eu
	HEk8MaH0eMcTMt8t+sndkbk6D4eqmb+qx7ron7c8KBBxMu+BmccryFfjMjdZQ68o
	jOlStstUnEpaE0bWou9w3BhNYUokxWSflslyoswqj9+NJyjfftLE18VqtzxmVU5p
	cIjjdA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qut1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:58:47 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fafb22f5daso6316096d6.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753880326; x=1754485126;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=REl7hvnxlp9SuuNQcg8K3JJn1OMshdLROkXEqPTt0hw=;
        b=RyBaqYc8u7CLn74/XKfh0AZCmv8e5XoB66Ok6d8lYLZDzxUWT29syFy6tSb6goRUTY
         lncVd9j+eRa3qjeDUW6IlgXtGc+emPrZBw0qyM+7m0YwZbpH0E7wftx/N8x6uUtixIRR
         34Qq7Q8HuGMWPh9VHHB3ws6HZPs9e+fr6oXkYNxPdF2TstZKeW17GO52gObklZ3/GEPT
         iiM3Jho7NE5tr1ZNw+7fTLPujbCDJCBK/Kq7clkq0eFWdXnocBTQm+GErdp9I9pzaTK8
         jT8Ru2ZgnwkSbPk83Ci8OxixDevCxCyQH2s3RVFVAE9McvEIEf5pULqekn9bh9IEZYu7
         5MqA==
X-Forwarded-Encrypted: i=1; AJvYcCVPuoQEu08pMgRrWPfCHbhnT5dvOoZxXVvH+bqdEFMyrYSPe3z4FX+NZHjdS8zkVO/7TpTFU7F4Up66@vger.kernel.org
X-Gm-Message-State: AOJu0YycoFHBnRptWT3JL9lFWZVvbbrEa+y1vj7W4ebzGNojP2maPcvl
	Q0VOL6O2LtgPHpze/AwIL/qLlcC/NVktMziPsZQayCRcHBhL64fbwCfZu0H5kMTvUAMAb5KxrDC
	qWGVdI8ZewNyAHNTAA6yf0i8Z0XJ6Rm98mpYdqFlcb0yR53pUrTqxOKXxpGfYBGzQ
X-Gm-Gg: ASbGnctuTbPbHXJYtf1ZnoJ/aGW6P5MxYWe1ZPrYnHLP3yVRFyXBQyo2l7Do4aP1hop
	X9ofKMXfAzCsPcM6w0GUfS1BUqEdXgUrUdy/Yc8942di87dvkZ+ecdLdUP7srmEGAUOndV7jtrr
	3/PR4HoWgWoPiA7iuKXYy+yaR6poC6jO5gxNrrxvBEs0CnmUEASh+ZD5JPPpZLfB9TUyeuvDR3M
	/XDwYlXFaoTmdoBrxx3HdcUBORYL3/dkbSpHfBi4xPuAa0XcR4tf0d/vxAf8IjFQWvIhjdNsUrW
	Wtert9FKz7//266VrMqmcVuEjX3XDCg8ALiTcyhbPjZwK/HDTmI++L3h6dKbzQ8IA1JRaBh7aHF
	yaw7Y0GYISbLQz58Xaw==
X-Received: by 2002:a05:620a:2546:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e66eec65e9mr236934185a.0.1753880326014;
        Wed, 30 Jul 2025 05:58:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvVN/RcoYodTnfrZL516pu8LNotIBvCtHLo8vMi2gcHequN79TtT5m4Nb7CMoeTdOjan/dqw==
X-Received: by 2002:a05:620a:2546:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e66eec65e9mr236931885a.0.1753880325583;
        Wed, 30 Jul 2025 05:58:45 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6154cf801fbsm3305166a12.31.2025.07.30.05.58.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:58:45 -0700 (PDT)
Message-ID: <7217ab5f-680a-41f1-9b90-3d68d4ce5e96@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:58:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/9] arm64: dts: qcom: qcs6490-rb3gen2: Add WSA8830
 speakers amplifier
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com,
        Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250720173215.3075576-1-quic_pkumpatl@quicinc.com>
 <20250720173215.3075576-7-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250720173215.3075576-7-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5MiBTYWx0ZWRfX+mONco0657Y7
 mlkxhJZlHBgc5YB8nqUHfluKW9njRTx58WdLzty58xzZdtGu2R8Yx7bi4vAuFWW94/73LyVWFvu
 xbKkNTS9Qs5yMVw12Z0dUOsdt5cmMavD4bx6nsmnnhpbzSFq+NTBov+ViGw52imsEVh3Jam10PW
 cPMxtDIDWwuuawcgj9qbA7lDEU8uyhIF/lqyvakvaxGGswaqgZGEUXV8z/7VOmCgcV2r6R7QssA
 UdkPpvCNXYzK2GB2lkv2iPcTke+R77LPjp8r6zw/Z6OmMPr1Hfjh521BJ3E4P2d1oW4dxNEI3og
 wiPfol5EfPMLh1q158baWuX7kcjiyX3OhtDq2E+BksTTFWvtsfkdQT9U+pYbjjs/+cFdguCE1m+
 rOapp1m7xFXGxXYwvE59QMUifkP/BpF+cWjuNtylnutAWb4PAkT8ptALEExD7rXy7XtZ4VUf
X-Proofpoint-ORIG-GUID: -g6cFaisSLhuMXrwLMeaKAH8fZou0qGO
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=688a1707 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=_z6rx1Am3YmXwjxqEOgA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -g6cFaisSLhuMXrwLMeaKAH8fZou0qGO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=672 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300092

On 7/20/25 7:32 PM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> 
> Add nodes for WSA8830 speakers amplifier on qcs6490-rb3gen2 board.
> 
> Enable lpass_wsa and lpass_va macros along with pinctrl settings
> for audio.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index ff5b3568c39d..fff92fd836ab 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2872,21 +2872,27 @@ lpass_tlmm: pinctrl@33c0000 {
>  			lpass_dmic01_clk: dmic01-clk-state {
>  				pins = "gpio6";
>  				function = "dmic1_clk";
> +				drive-strength = <8>;
> +				bias-disable;
>  			};
>  
>  			lpass_dmic01_data: dmic01-data-state {
>  				pins = "gpio7";
>  				function = "dmic1_data";
> +				bias-pull-down;
>  			};
>  
>  			lpass_dmic23_clk: dmic23-clk-state {
>  				pins = "gpio8";
>  				function = "dmic2_clk";
> +				drive-strength = <8>;
> +				bias-disable;
>  			};
>  
>  			lpass_dmic23_data: dmic23-data-state {
>  				pins = "gpio9";
>  				function = "dmic2_data";
> +				bias-pull-down;

If you're adding drive-strength to one, please add it to all of
the configs

Konrad

