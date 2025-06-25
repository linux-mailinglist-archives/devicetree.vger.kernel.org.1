Return-Path: <devicetree+bounces-189523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB6EAE8195
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E12D188A1E7
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979BB25C81E;
	Wed, 25 Jun 2025 11:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dtuawZ46"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0B61EF39E
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750851596; cv=none; b=kw16xnR5h5zkyke+x+HRBZswxedDokF/XX0Rq5CDQckvP7D93GZBMMrh7hhD2L7z5RTugAtpcsBFJPimGKGp5FOxkMQtpksBv2dCn5MAH6c7krnu620INjfZIokl/x9J9ISwUYy9Z3G5ZIDyUUdiBOombYjFz/NvMQn2eZuJthA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750851596; c=relaxed/simple;
	bh=C3JAMLbqJIpHXlQHI7FHWU33nNzthOTI2jHEkI8oJJ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F5l6I6z4UXKOj16FAZIJmY6/o9UgR8VNwlhomhvawnIsGoHpfJ09KYRRvsbpm+EM6MH5DYPEo3WCspwgSlj0KqMJm5Pz1vT/uDhrL3dJSr4wzvPwM3AKieP3G/iUf+R0Ut8jLj08bn3rzvn87qhak92KkvqW4NpkQjhbEA+PCno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dtuawZ46; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P54U6g022368
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D/9kOiApQXYH8AwtMI7zEvaiwqs42vrGQZ099rTXvMA=; b=dtuawZ46TwaUfPPj
	dya5rvusbKlmKciCKyMBZ3czC27aqrvA+878dsSLIZKCgSQy2mWSmaMGUtVMq1tV
	mF/9siDnq1I0PA6rxmFfab+wa+bPMZm2TUkdGHm2RakDaGViJMebpxm9RCnUi1YN
	vxsnaTVe4fYB8rftWcC5++0d5bOPhH36COoHiIsNRYAzlqUa8HQdq5eQnlermD+Q
	+VM2VBBum9TDrB7gJ62pbRQPJjs9obgQ+/8JSDRyRjlB6GjjP8tQtAQ8S4Xrocz6
	o+6AXBFEWWxkHmgkpUXah557wRpNQLv1OAIcLtWsKoaAcXF/QDA0Itf75TMdx78V
	udox/g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3yhsv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:39:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a6f59d5ac6so14868151cf.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750851592; x=1751456392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D/9kOiApQXYH8AwtMI7zEvaiwqs42vrGQZ099rTXvMA=;
        b=acuthN5knr2gKKLJIXCI0UA4J4rDAe5FVbno9SHCuQGe6WiHNirGpPVV9zRfDzDEcj
         hSfzJiMbwMxOhJHpcVWdw1iyKGhPRthxUBgJPhSQKvvW24+5k0V9gxXi1Eyg5Ics1in8
         DMNgzHn2MCdUKAyF7ZKINmTzFyZuMiA662vtc/+aBY6LS0iDubuPkhoM8PTTyOQP7vbw
         o0Cx+4ZMfdwa44rVqC5EjRII5mM6vjZDtoOim3eQFPHcL6MSVorAJwblnbS7th8Cvosz
         8MvqgTCbkXmD3nfwW+9ei+E3OFuGsmYJe/CWosM6PsVhNSbG55ytAwJWQJr9AHpoIGYH
         EzJg==
X-Forwarded-Encrypted: i=1; AJvYcCU1/bIGcr7gSdVi5XB/HEFuNWWyxZrc1jvSFd3bbedSZpLYHX/sHaPy4qU31BJ1dBxmxU8JxntM7RTb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3fRrKJnKKd2GppBGXxfMnifsxb31kmxk8hqRtIJ7+xPDFMQNY
	9u7/GquCktMryg1EUwKVjNS24axIn+3fRUzo+E6ADRMQYGu1g47P7++rxz8ktQzWTha7xjt69vG
	GG3Jg0C+PIUJEd4gpT35pW/mQb8n9lG4T4ZVRL/ex7EmIeVVdMU3J1p/LLjVNvrAP
X-Gm-Gg: ASbGncvkCicZiXusEmfQEol4Zxjz4Q2XEOw7fBuJhJ5/AyKdhQQniZuhC+yotkyg7SG
	Dl4e6sHHz5PBsBtbDxfCzRTqO9vjaEZ2SDd6KLUy8RnABHuK6w+zDPBGkysh1ATAKtietFeg7Sp
	tMkvaOLuyMSxP2zC7SrOMomO2d1OGWUcie9Ur1K9lcQEXGkn4bTR8+nknEodmFJXqG0M4FftDY1
	wtSVCQiAa5Bj6vBKeB+YwLgKgqkJQZQnRpb1JLi8XQ/mjJGgyK4rc07IPTCHDocF5hDSM+AexVP
	QTc1AXtieL7SPkNY9pZ/GGTFTy2gH3N6a9f56s9cmgVZuW5UoEoLexLUMEMV4ndH/8hpHQWQe3s
	NSJg=
X-Received: by 2002:a05:620a:2552:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d42976a0cemr132722085a.12.1750851592150;
        Wed, 25 Jun 2025 04:39:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGH6OiOdnFqNQFHZY08dzGnG49pbYdELxhLBkXKRuNNZyM0qKripYKhU48YUIEPhjYcS4p0BQ==
X-Received: by 2002:a05:620a:2552:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d42976a0cemr132719985a.12.1750851591653;
        Wed, 25 Jun 2025 04:39:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0ba7a3fcasm160221966b.117.2025.06.25.04.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:39:51 -0700 (PDT)
Message-ID: <1bc82082-32aa-429d-afcc-5b7050c82518@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 13:39:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: pmk8550: Correct gpio node name
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250625-pmk8550-gpio-name-v1-1-58402849f365@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-pmk8550-gpio-name-v1-1-58402849f365@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA4NyBTYWx0ZWRfXxO+Q6cjeVfq2
 GcqGub3ngVulr5fd5WyliCZcOB5BdUV09vtz42Cpsy5zkmaCrUT3bKVLEQz4Ya5N4RZWewIce3f
 k3rXzMecRdXvzB4afep5pETxhcKgT57jMiyRIrouT6MwZkcIOEEsvk9HpE4NWQgjMJ5hHktRUk0
 xhdCmhgKnQSK47EVvIhFfg/TLC0Utoyuy9vpezWL4EhqXcwY4pEHYrLjjJVrINpGiqf9bkUqcrG
 EO9Sa/T6s+0aDNYwWFjgGRTsb0+Uad/AaYAETpGw0PZ9zekwV/vv6R946QbPbtaNbXuaEHkwC2y
 IP2awjpXmav3No2/A5Nu+P8rFpw9R4vIuzBwTbiKgntuBAAexVFYtmocZpbHaVKoXgHmer1uxHB
 oWpJ37HA6YN/uxr47RqtOUdygzQOeZoY7Mx2vXjugdomD1ZQD8lFtrYD/oA7CJLFLjCvBqhe
X-Proofpoint-ORIG-GUID: GL7KrSwox1DA7QVOBtenNXFTIKnJOGMA
X-Proofpoint-GUID: GL7KrSwox1DA7QVOBtenNXFTIKnJOGMA
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685be009 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=l60TpK_hX5jhcLL__Y8A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250087

On 6/25/25 11:11 AM, Luca Weiss wrote:
> The reg for the GPIOs is 0xb800 and not 0x8800, so fix this copy-paste
> mistake.
> 
> Fixes: e9c0a4e48489 ("arm64: dts: qcom: Add PMK8550 pmic dtsi")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/pmk8550.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmk8550.dtsi b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
> index c7ac9b2eaacfe6e8363448d9d2ffb4ac8f5f4dd2..583f61fc16ad570972ac166aef12183382ebb4c5 100644
> --- a/arch/arm64/boot/dts/qcom/pmk8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
> @@ -64,7 +64,7 @@ reboot_reason: reboot-reason@48 {
>  			};
>  		};
>  
> -		pmk8550_gpios: gpio@8800 {
> +		pmk8550_gpios: gpio@b800 {
>  			compatible = "qcom,pmk8550-gpio", "qcom,spmi-gpio";
>  			reg = <0xb800>;

I was surprised DTC hasn't caught this, but it seems like the
relevant check only runs for `simple-bus`..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

