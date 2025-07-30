Return-Path: <devicetree+bounces-200736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAB3B15DC1
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E32203A9B1E
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2F427AC21;
	Wed, 30 Jul 2025 10:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OE9t+lPD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4536271441
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753869665; cv=none; b=uIrmSn1V8THaFBzdRpNPvUz7zTGXZuvny7jdaLR1JkLoW5/T1W5HqtoIKbMrYSROn3K1N5YbIquoQRJkaPLILDkpVUICEuHj0SJxEvL9E4AAWti5NumY5ab42yqGGG0y49m9pi5TGc8yu03kBrr6sZmV3mfr4n769Rkssvkdjas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753869665; c=relaxed/simple;
	bh=/NbRkipP9VCM+Lc6lxFwKRTG405kRiihzDFyNsOsLMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nyCUsalkjMJVWgRfUDfP4tvL5mvTFxX3FmpKfzKu9NXTl+ISX/pkq3EsNcpf/i/TcaaBblW5v3OSlWU+G6OKPo207ngVuY3lnyj82oiKrU9JPqfseKkk58n0KNpzamAAHQszbZPct8vKZBYuOixHdyUO+VMiGQ8KwT2e5Cd+onQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OE9t+lPD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U66d2j027698
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:01:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8qVYp0AZmQ8Y171B2X7YTOB0/ixgpTOlnQfewXcziPo=; b=OE9t+lPDtS4F0KFH
	BLAGtHen7/ksS9o5XXqVJZLcjjqWg+rh8AJ2TYIiYOy7mrhfjvqpTwc7/6AF0eck
	CYVvbW12dKXNl04dsYgRrzoQXMOER2xIN/ytB500jc51p1W1LoN5HCAHM0QiPvPu
	nZ2Hoy2uCON7PhNxpUzU1/Fvv7WAFpcZCWQQYTiNUDWW3pNfgxWggWNHok+2Pu4T
	C0tPKddpYMw+P9Q3PZGR3hySHs4/YhgnooZZ4yJyr6cudIKSZA0fKKB8d9V4OTpw
	FaCBWoB+ufuo8g+XqoW3CZVpvHrOZXxCvgkFaAz0pZv/a1dK2W8+ZIauTupX6eyF
	xN+fXw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4860ep0my1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:01:02 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7047de9a9b1so3537636d6.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 03:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753869661; x=1754474461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8qVYp0AZmQ8Y171B2X7YTOB0/ixgpTOlnQfewXcziPo=;
        b=P6C+tVHlheiA8yda90DB0udjK5S17q+cbssMaBqSGuOtkzlwqB5vAXheNe7+aRUMA2
         Ssz2p0bq3BFc4wod+cQp5UahW1+nrqt0L8ImjM65Droa8kz6iwc3dUsqDvhoijFZYDb7
         TBD37uTaq6VmvO5iiozkmrtCPRZ6jkaZl+EYz7PEjd8vP+0DZLbMuvk5dnZ4gRSKdkPx
         QLHH51PlCKM/6P+1xleegTJGg8ODw1HVZQ/a7RFvHsrS4JIN8U8U5wXiFkrdCjwG7GJT
         Y4ghn+2qxei2DDM+Y7+W9bu63zqcLBAilcyPgM3FUmK4IenIj0S8AtQf779adI22WSgF
         7B+w==
X-Forwarded-Encrypted: i=1; AJvYcCXTPPWJSHQvEJpyF1MxCsaruj73zoziEOixzf6zowy/VNTloP4faRqoz7jW58G05IgPteTmgmjN5Qxd@vger.kernel.org
X-Gm-Message-State: AOJu0YxpZAAp24Vqe9qb9mYdPizIFrcUg6HZ2F/MI1RuqaoDJaoH89ka
	nvMkzQoTZuLednMM8NddXIEHDhadKcZYy4NY4HucFvJX+nqZ/KWKuPzjYgp2vxaUi2HeqlDAwZe
	lZpbGO3haUe9sM3j9JIvDDDnMD/+0NJXm1wpLuJpz8ZOCi0y2o4Rpu9uLJ6Ud6nqi
X-Gm-Gg: ASbGnct6kcSYR/1pE6fwQPD8biB5G7stJfQygY9rj9PZD8le7qosI1InsGPVOi11WXW
	VAEyvXnCE+ZwujSAQonNBKcLFwY2Y4wboCsfE/QhPv2Pj/Z6lAHVkYaRYSx6XbKyxF5gahJbD1F
	HVo8rp5JYdw7SyDT0uRzppXmcA2EARBFn8oNg4BjePNIZ2EBkyHWZcL17UBNj2HvDb3/Pgb/FDP
	LmPzxJBUOXkxgaoWxDmBwzvCgnYz4D243uW72sQTzuZzmTahm0lHh0aw2eaH8Te2sVs71ycPHEU
	pgv5EY77GCYZAfZowKp0FWf4axgVjwauDZ77QSOV2cTgiIacructc14RO9RdUkrr6LtkNGBAQ/p
	hIJmfgSMGEGN2QRdOyw==
X-Received: by 2002:a05:620a:3908:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7e66f372189mr195218985a.13.1753869661084;
        Wed, 30 Jul 2025 03:01:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK729sglyzfLvdcMWb65qyWQ1Lwoe8zYZPYieFqzmCOYEfteuWti2wa+QHRti968wjTGVNhg==
X-Received: by 2002:a05:620a:3908:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7e66f372189mr195212785a.13.1753869660444;
        Wed, 30 Jul 2025 03:01:00 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635aa4494sm717711666b.97.2025.07.30.03.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 03:00:59 -0700 (PDT)
Message-ID: <63da4872-2365-40eb-9b2e-d3393ddd9b68@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 12:00:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Add ACD levels for GPU
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-topic-sm8650-upstream-gpu-acd-level-v1-1-258090038a41@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250729-topic-sm8650-upstream-gpu-acd-level-v1-1-258090038a41@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: y5NWljsEfZPWdQ3wMeUhhQdFMhxwOg0x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA3MCBTYWx0ZWRfX1hg0/zFxYy7q
 Pq68FLNVxz0Rjvzr8bhhN2NK14DYGqTD0ptuwjEZMFNpdAsn5y1cskyWBd4odGUd+dPWHjPf3mS
 adndtvBQZzRIpP/+K4UYjxIFenwUX5+L5NK/HKOKrux2SJkEd7GdkZtzHfTLX1bMZsjPEjTgWWc
 KnQTmMjTLcvCp/NOHke2/VdYpz+m+LrmWpT5fuUkNnV07QZr2TrQupGzaqCeqce6BMElbege5A0
 GgeS0b610EPOOQlFgN8LKKHP3x/0sLc6FbYjDCsAzDLPgGzynCD27+Jl52w5tnh8AdaFNFrPwvr
 QPK+WEYdvaWdOSHTlFCoRDx1VKEX3ghXxj4f+kOw/VY5li7x8XmX9sf46Nt8/4t3zSeTYnl0YvY
 2ZjTEYjdlgsrWXIwzSRyM7UmEVIb3oqIxWq0GvLy1Z0PgCq7zULW5nM3sFCx5JT80SPpJPiP
X-Authority-Analysis: v=2.4 cv=DIWP4zNb c=1 sm=1 tr=0 ts=6889ed5e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=qC_FGOx9AAAA:8 a=KKAkSRfTAAAA:8
 a=uJl3NGG0jz6E0JRZAr4A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=fsdK_YakeE02zTmptMdW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: y5NWljsEfZPWdQ3wMeUhhQdFMhxwOg0x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300070

On 7/29/25 4:40 PM, Neil Armstrong wrote:
> Update GPU node to include acd level values.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 495ea9bfd008500dd2c9f46ceca94cf5f972beca..4cd933219ce008bd1c603c87778e210b6332e29c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4127,72 +4127,84 @@ zap-shader {
>  
>  			/* Speedbin needs more work on A740+, keep only lower freqs */
>  			gpu_opp_table: opp-table {
> -				compatible = "operating-points-v2";
> +				compatible = "operating-points-v2-adreno",
> +					     "operating-points-v2";
>  
>  				opp-231000000 {
>  					opp-hz = /bits/ 64 <231000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
>  					opp-peak-kBps = <2136718>;
> +					qcom,opp-acd-level = <0xc82f5ffd>;
>  				};
>  
>  				opp-310000000 {
>  					opp-hz = /bits/ 64 <310000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
>  					opp-peak-kBps = <2136718>;
> +					qcom,opp-acd-level = <0xc82c5ffd>;
>  				};

https://git.codelinaro.org/clo/la/platform/vendor/qcom/opensource/graphics-devicetree/-/blob/gfx-devicetree-oss.lnx.1.0.r1-rel/gpu/pineapple-v2-gpu-pwrlevels.dtsi?ref_type=heads

doesn't set ACD for D1/D2

>  
>  				opp-366000000 {
>  					opp-hz = /bits/ 64 <366000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
>  					opp-peak-kBps = <6074218>;
> +					qcom,opp-acd-level = <0xc02e5ffd>;

And other values differ too

What release did you grab these from?

Konrad

