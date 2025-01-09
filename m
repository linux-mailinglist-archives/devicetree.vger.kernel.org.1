Return-Path: <devicetree+bounces-137200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3311A07FD0
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 19:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB2EC1672E8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 18:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D06AD1AA1D8;
	Thu,  9 Jan 2025 18:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZlydE8GI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571FF18B470
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 18:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736447416; cv=none; b=Io2aWuY+uHD7Ld0o/UEFbHnKvL7kl8rLMA9dWtq3Tky68uxnuQGcpnAtPxdJ0jEmDbOFoQZt6S3NJDLwUndf1j9EJFWxOZp+yu7gBrzJIWxiezzFgLUUWQfTPdYWCy1y4JszSNx0hULUvSG8As1QxcSbgSQtZRgp01Y6apU7u8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736447416; c=relaxed/simple;
	bh=+bOeBnMux1aKyHiwqipqrY906xUkVjq+52Y9xTB8kG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UOBIdFSQgnQrcADYpGLZvk0SKiWA2xAm/ZEwgTAyLWuvYwCw46e5IGJHFqb8D5Q3k0LptWuBEIMNam+QEabrpDlfTo1cPZkU/GMcDGYJBqvvEUQqLmEwo5pq0vq+AOOpkgp6uom8hI2Cke2qf+aSsxmEuLkTGqpu8yjjYwLjc24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZlydE8GI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509CgbYU003779
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 18:30:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Az4FrLJJLkJnOLuo1NG40YkWnp7xeX9Jd4RxWaboHcM=; b=ZlydE8GIqFTKxWEr
	vKnoP9bElJithiKlctVM5cDaxzBfzQHamAmlVippIIZFy5aZ8qpWH1Gs8B8735Ue
	Ot6SyFA7APCiu5x6xQGnP0jwqky7DxBZXnhrnlu+IkRi6DdL7wPebe1unrjDvwpa
	Na0+yu/JWtUQn8TTazadHXPPPdkNy9I12JpAl4UVSGMSonWHzFCxO1sg9gbRb2oY
	58ILZHx5eUmYp0WFEx7aGQzQb9FeQorYMUnahFUiRG/0TmRrfj7/i98ucXEQBEAX
	vGlQoq7LgLNaRxK/8mSmYYDQYzawd/sfPj+FQNf4Tid9xTAeH2NYAb62UxXkvMyY
	bkkG4g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442epxgust-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 18:30:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6f28dc247so18308085a.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 10:30:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736447411; x=1737052211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Az4FrLJJLkJnOLuo1NG40YkWnp7xeX9Jd4RxWaboHcM=;
        b=VXD/YktxujKLsfFDpg+rXIaG2uvgU0V2n5ARWujHJzyBfnX5MQXjYuNBkd5L+q8E2U
         BYJmTO9AATnkdt8eSGsls8yjRA9G/WfoxYUoa1fA+iS2KR/K/y+vyqVrZpNvSKP//wKi
         hL8UqLBs46hrd+AklnyeaMbs0ttQcQgxu2U8AgyV7GkEjVRA/UKGO2x39tPY4NNLrjb0
         OUkC/4NBzNs1yzMRcmGqXb2oxgNAm9rzjLg4ucU89l8IDR19WbtagXmnjV9drPOvppn0
         cU4fvbKqwcGWstlwSnNKh75I6EkqPogcOIfeOQalAq+SKYD7oQ/XCzrRO+a2WeRA+dV0
         RIuw==
X-Forwarded-Encrypted: i=1; AJvYcCUqaT9kDatnCbalpyhaVtOIlVLiMZ6aJ0k4xiUR8EFCQW2uiihCPYgdMGyKmmEXHCgvrejLFn8NwKTP@vger.kernel.org
X-Gm-Message-State: AOJu0YwlcS/ByM6hXxqb/tAuttXJA/p3c12ez3f29MQWduckMJiyliNd
	UiRneNWA0pv3R6MQbad/LKXD8VrK02P+QcqaeOzntd+4XQ2CIELxYn4f00HT/uYe5TLo5GuoqMD
	uKrM94oDfZ7M3M98j6bc01sEtfWppQoz13sQZQTEDhhcyege5DjblPy7Gtmzb
X-Gm-Gg: ASbGncuBooclo3EvW1Swt1C4Wn6QoM+4xdyLsAU/4AvExQvYD8k0S55OOU7k5zOBjzU
	KhasUcB70mH5TpHjKsRSr3A+MJLenqalGRINuKZEtnohU/EamVzEZIhASt3aZ5ilH3XCz/793xF
	C7ejWrabv4iLGGIzRGkSFhGLKgGKjcx3w+jhA+nWWuy1x7J3W36kIbguaJlY/x8TRpec6i5dVL6
	NekogGfrKSEkZ6wrjktN3W1P04lGh1kbh7Bni1376nnmvg9iJUdvgzya7dbaVLXUQvyzC5FR7X5
	rvsPxbV68nW85YFheV06pVi3nikFm8p8j9g=
X-Received: by 2002:a05:622a:4c7:b0:467:5b1f:4060 with SMTP id d75a77b69052e-46c710a9580mr50098491cf.7.1736447411226;
        Thu, 09 Jan 2025 10:30:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaxZkwsOvEfVvmB+//TCqef+XaWWDJlkByRuOVeg9Iz8MpV6l6e9RzIhhfXg3Gr2O3fy/+hw==
X-Received: by 2002:a05:622a:4c7:b0:467:5b1f:4060 with SMTP id d75a77b69052e-46c710a9580mr50098171cf.7.1736447410708;
        Thu, 09 Jan 2025 10:30:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9563b32sm93430066b.122.2025.01.09.10.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 10:30:10 -0800 (PST)
Message-ID: <549d15ae-34db-497c-89d7-c9b9c18d8681@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 19:30:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: add missing cache node for cpu1
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250109-topic-sm8650-cpu1-missing-cache-v1-1-0e85148a48a8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250109-topic-sm8650-cpu1-missing-cache-v1-1-0e85148a48a8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zBmBU-NPPVvxiUyoPVr7rl0JB4_lznvO
X-Proofpoint-GUID: zBmBU-NPPVvxiUyoPVr7rl0JB4_lznvO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 phishscore=0 priorityscore=1501 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501090146

On 9.01.2025 4:24 PM, Neil Armstrong wrote:
> Add the missing l2-cache node for the cpu1
> 
> Fixes: 20eb2057b3e4 ("arm64: dts: qcom: sm8650: change labels to lower-case")
> Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

subject: missing `sm8650:`

>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..832f3a2c400e8348847bc24b27397e2a0dc08db8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -119,6 +119,13 @@ cpu1: cpu@100 {
>  			qcom,freq-domain = <&cpufreq_hw 0>;
>  
>  			#cooling-cells = <2>;
> +
> +			l2_100: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-unified;
> +				next-level-cache = <&l3_0>;
> +			};
>  		};

You likely wanted to hook up this new node to CPU1 as well.

Reading some Arm docs [1], it seems like with A520 specifically, both shared
and unique cache slices are permitted, depending on whether they're
implemented as single- or dual-core complexes (not to be confused with
multi-threading)

[2] suggests CA720s always have their own cache pools

In 8650's case, the slowest cluster has a shared L2 cache, whereas cores 2-7
have their own pools, so this patch is incorrect.

Konrad

[1] https://developer.arm.com/documentation/102517/0004/The-Cortex-A520--core/Cortex-A520--core-configuration-options
[2] https://developer.arm.com/documentation/102530/0001/L2-memory-system

