Return-Path: <devicetree+bounces-188487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD629AE3E07
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DDFF1696AB
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8132B23F295;
	Mon, 23 Jun 2025 11:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kTMMMmD1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3AA23C8CD
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750678468; cv=none; b=mlp2bsYpRbGONHjN4HFJ/RdoIEl/BK56ZOxeKfUMv+7KZhuIC1GoZqLDs5aceisrPPA32r8SndUmFrtxXY1M7h9MG1Lb0GSP5SfznwZmMqcYkrxjo896ashMDdkL36DAHqs516I948bHt3gguBexGqu2yo5h/r8LLe2VEicX8hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750678468; c=relaxed/simple;
	bh=PFy6DZqYijFvvzn5Rs4R3EvlKOJ49HtPp5i9VMENABc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QyBLTGSZwe3sGUKePEkIT7UBBgPoayR3tl8CoJPD1Jt4Kgk1yElWJCWwA0R87Hi4GG67IJhGIo8WPG1XN0M14LoTLt3Q6VvyJIeOX4XKTCnB900FyV5DRIFqzidDyb6nkKuKZHUn2IqEVa1y3NTbJJuKPIm9+h8OTcCeuguOYKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kTMMMmD1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9TZpH020990
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:34:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1P4gqQHkmhqMopG25g3g+FXXW4439jKx8yVBtkS8vRw=; b=kTMMMmD1fSIvw7Jg
	dZO++ktt8Fo/6HzE2zsAUlXoEPPqEKIDUptrbzetKgfBsAs6Fi3S5r4b1AaNQPEf
	UGNbUHMtjHLMdVgxHwX3fdj7oChOJ0vAXjmwCWCKyxAlD6AMy8cT+rgdzxn68ex1
	xC/TnTaG+q9nNorO8ZRk2v/QZgRukXfc1ZtkE0Tm0SnTRiKs8fLZQVJV8FPZ1/Mj
	2KLSTiWYNOswek+bsSP80lx6sd7IbOpYH1vUkZS3PC4DOpaaELFTWTi2EJuKXrO0
	z2q3DfvQas2pkGoEZWoezTUN3PIqXhMp+FecM9Tqg5Jna2UDBV9Wh/1kBMXnr3Kx
	b4EU9g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3rbex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:34:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3ea727700so66153585a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 04:34:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750678465; x=1751283265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1P4gqQHkmhqMopG25g3g+FXXW4439jKx8yVBtkS8vRw=;
        b=VnHj8xgExsBVALOAT8BGn0LWsCXXBNmGeZ0OOLUEV5b9eLNLILZe3QtG02XAeRGrI0
         KqPWLO4PS0K7UqTYv3+w8mOOKzoe4/JFsKBL9WGPX6liGyruPWsyx50C77j6MXNTCmvC
         fcdltdRJrhBaREx8UaDa4bE0urH7FojVSrPXz1xI5SXCjMlru87XZ3JD9+/tlitcsiRl
         4KHmhIXsGSE+C2FrTl9sVt3hiJiHY6R4QmTvzzq3cZTt6BoecW2DgSX1lW0xCywrYRXV
         tGcFxd72BsehdsjW0H5rryd0px5vLHBvtmLUvmYviKP5aROk18TpDZE98LxIHPSpF5yS
         mHZQ==
X-Forwarded-Encrypted: i=1; AJvYcCX//X2YiXH3vFB7AVrkYwUKb5PHJ2ZXZXO6aVewv3V3CkSy+XQsbuHIVEfKp3PbRydmXmonoif8LHaX@vger.kernel.org
X-Gm-Message-State: AOJu0YyOgbkkpwmDog3mVi3hXa1NsNMYz2rBKzeZ8zmop/DedFJwAVj7
	cCyunXIIEY1nBOHLoqHujEQIiS519CU1g1R2g/KhDcuTz7JfHeydS+8ZgiysTx63VKZms/emnHe
	DQR6iS6vD/A5DTxlCrB1Qi4VIP8bHYAxjfaOvDXbOz3TJU+gJ62cq/Jg6FgYTSGTJ
X-Gm-Gg: ASbGncuvxPRe6SsJktK+XlLw4EQAVCsCqgA7nKDyErk4PpHZnei0sukkcTvUt2nANVn
	lZE07YYvLLAYn8UKMQC9xUX3iLfK3N1Rz3opcePQ4MGB3vGD2j0Iu3rzg76ng6bkgqfbTGqnH/s
	zqTMjXYrqKdMrDDZ7lmltMM9Y9lb0z9pynw+CCgqvF1Rt566W+ONach4E3XFfLvsdSkEz/pUfdv
	MT2EXt0bbHKPYVcsdSHv4IEJXzn/KdFC59EvAKhxFMTW5ff03D0QCJgbmHVYGJUWNKlpeSE067A
	MpXAc71Rzvf1NRwwYh5jv+pFHVL5dSV/dTrmUnDzOst/acArUU/TwmuXv+OdbC7ahUldzmJk9fe
	uZoE=
X-Received: by 2002:a05:622a:8f0f:b0:4a7:7f80:7a8c with SMTP id d75a77b69052e-4a77f807e4fmr40214271cf.1.1750678464668;
        Mon, 23 Jun 2025 04:34:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqS4ZDp8SWWd7RHWhdDGT8Y9mjrW/Hb5L9OlYTHjzT2jbPYQIQhvFBuzyl/0D53huNkma7TQ==
X-Received: by 2002:a05:622a:8f0f:b0:4a7:7f80:7a8c with SMTP id d75a77b69052e-4a77f807e4fmr40214181cf.1.1750678464137;
        Mon, 23 Jun 2025 04:34:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ecbe9esm688093966b.44.2025.06.23.04.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 04:34:23 -0700 (PDT)
Message-ID: <465751c4-a45a-41ce-ab65-ebddb71dd916@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 13:34:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: Fix 'l2' regulator min/max
 voltages
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, lumag@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250623113227.1754156-1-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250623113227.1754156-1-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2OCBTYWx0ZWRfX51y9+7+anMBD
 D42Ga5l+Dzy1YMT3ilecZ5wg08uP6WnUzUUdWVMHE9x41JmyKzBRRI+LV6ygozrIO+UBadxhHtR
 6aIEnyq1mhVZKVJ2Z4Og5G0bgm6flHFJpPdRV4NjGqnhHg5wXkk33Y4djooAEojoPWNGiLbw4yd
 uzvp/6+u05yfY2offXw7cdo6OU/MkEfSZLEs5rF37rc0hKre75ukp/9hDnYarfevRVCSz0xneGg
 oYdwY+rNkGchnFOf4dtcI//B/rKjK4WFZhYda6KWe+H8k+MftRByjaC1tVo1KCDX+1tpiBedoiH
 a3Goc4BtDA3J+SOg6uds9vXBv+itFw1LE8RuzS+z4uf2UrGicL3C9lBEEXdE8n3Ud7TD5sPCJo4
 7qoVWYpqjaAnDfU/I66MR8LiVoYrfLEApmFt+esJharrFtj+85ZGWZFigF4ykr0be6Ez0hMj
X-Proofpoint-ORIG-GUID: aptt91O1WC0TINeyKrQVICJq3xtS-Mru
X-Proofpoint-GUID: aptt91O1WC0TINeyKrQVICJq3xtS-Mru
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=68593bc2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EVHRmTP1ojgPMQ00PA4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=787 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230068

On 6/23/25 1:32 PM, Varadarajan Narayanan wrote:
> The min and max voltages on l2 regulator is 850000uV. This was
> incorrectly set at 1800000uV earlier and that affected the
> stability of the networking subsystem.
> 
> Fixes: d5506524d9d9 ("arm64: dts: qcom: ipq9574: Add LDO regulator node")
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Shouldn't there be a consumer for it, instead of it being always-on?

Konrad

>  arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> index bdb396afb992..21b04a2c629d 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> @@ -106,8 +106,8 @@ ipq9574_s1: s1 {
>  		};
>  
>  		mp5496_l2: l2 {
> -			regulator-min-microvolt = <1800000>;
> -			regulator-max-microvolt = <1800000>;
> +			regulator-min-microvolt = <850000>;
> +			regulator-max-microvolt = <850000>;
>  			regulator-always-on;
>  			regulator-boot-on;
>  		};
> 
> base-commit: 5d4809e25903ab8e74034c1f23c787fd26d52934

