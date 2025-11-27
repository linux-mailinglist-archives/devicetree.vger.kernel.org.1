Return-Path: <devicetree+bounces-242766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF04C8E842
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD3144E509D
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8664627FB2F;
	Thu, 27 Nov 2025 13:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mH4A9i0Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X4+ilkB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD522773F8
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250836; cv=none; b=d7VwRyP4Y5B7/vethKBp3XIanBBOfpbvu7BOFJA7tU0/BQwZlZCozY0ZbcfYt/EWoKOxxKAB0jjSl48NR6uy/PZivEiqwDgQ5N/TMvH+YCwgoUTjpDjT6Jgu+ZgoLc2P1xeYW7KfFmHXv+7uCpVvaYcyQ2UH6y1do5TaOoNGKS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250836; c=relaxed/simple;
	bh=rZSFoP6TqVN433OPM8wAyM+6qkgS8IgNLZJqO5ScsRM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cj/RaYzt529h9YpiaLyQapHkWDVMX/tKFOYf+lNguq/TH1N8NIDPs8/vnoNVhGlFCd+FRKYlOUEl9AuCJ8vCiVhWUbE4Srw+MDyRf1OCarQa247qMuLHzd/YfcItPeM4ViVa7yAz1rdsMVojB82T0ZOMGCe10KQ7xs+RElFyUJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mH4A9i0Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X4+ilkB4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR94M391668535
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EXfpJVkVCHqHBa7iIDVHdwlwEIE6IcmpTr2GdXkqTMU=; b=mH4A9i0Ykx5MoI1j
	igI9B+dzxlOKWMC88kgltcL0jywGprPP21j2POQRaS6BOGSq0bJPzansmaeYIzlM
	/nQzRGVsMnOiX2+iwWWwG0PYlTsGIWsYAQRXEU9sJyLNPVcPTXL0RdslYThhQ4e+
	djjOC/YWCj/M+BEmVHd26o8s/Yn2FAAnEnHzaqBKK/hkKTjZEIlstpb9+V9mV9pe
	uWl37qoAO+ph0mh69Xj1Xp8VSMbF3yNMg+o27nv3kuPzeMOD9n/D2sLYGi6PliJb
	dipCTDf/pqmsquGt/0W2UaZI5D29l/ueRAA6Z3anoJbTUa6Wo+XUn+8KA2SZ0yVj
	W2ELDA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap0bmux7c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:40:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee05927208so2445841cf.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764250831; x=1764855631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EXfpJVkVCHqHBa7iIDVHdwlwEIE6IcmpTr2GdXkqTMU=;
        b=X4+ilkB4RJyfP6uyLZuFYlU2f+5FTvE1Fl5g6RbEpEL/+S6St2CMTaLNWCCeV/QufO
         YOGrmrYnVc2RBH0BPVX5ltaTw0IVxvJ1NGu7hbZrbWmZtHxN5FV3vzSPubOJd9ZF/Z23
         6aVQZX3FeWAYNNs44yPiG36Q8zp/q0XnMYX50jqhzfS0qgIOhq0BlKntnRsxyfhr6IY6
         uRFRaLZ6bglzYa4oDylaEP3QaRHqpEv1Zn/8enPtT1SMtVvibzVRNXtF/pfJwPnRbh+Q
         Rj+bZtjIx8Z2ELsSrvvcekC/4BhHoFFtDEFiaBsAhvhQAfm59jjm3G0WO2f4FgpUJsU2
         8QEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764250831; x=1764855631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EXfpJVkVCHqHBa7iIDVHdwlwEIE6IcmpTr2GdXkqTMU=;
        b=M3YmFHZsEm7/AWaa2PWkD+CLqPE9VJ8/i1oZ9NjLFNDMhOfCb9fR7fc053A8L+cg0F
         w0swJVM30I5O96mWy/o691Uyy35iiSJajEv4m+EpLSgd1OfOI4J3DO8VLa+LH6ExVxfD
         xpEa6HUk34/z9PjPJpHmLPRpp4O7CSFDygfNc/cl956zO09QTO0WiThPwzuYGEH8+JIT
         caACtOTJ9jtb8Zji1gSsd+AyYf4yxRKvGwR+6RmSNEgSWVvGOZubjxUEYYMQZtG4sMIh
         OB1eMDego1liOovc7b17ZiDRdgNwLlaxzofjN9ybfxNNBn6tuU9Ty5vdpInamFtJyoZH
         JpJg==
X-Forwarded-Encrypted: i=1; AJvYcCUwpwW2cOC1agLfjIv5KqNsyfAsuxkj6Vtnzc/VDeBr42QFrdnj0Ci9cVseHm0SFG9XSoGpExXYrOUr@vger.kernel.org
X-Gm-Message-State: AOJu0YyVccKT5MkmpSUtQKgaB+T0+XB5wCmduskSbIMLCa5odEMYIx9z
	n57wd7rvyb3gryz0nQPVmJEd2GUdCnJWLNTxcOqun9j2hbIUHGrHengqi8zyAWLge63ysR7aFIp
	QnkxdUj9/98xVZHoq+n7ee+o2zav7QO3jLLX4x5LzbT1SwZsm2He6aPiQSUYvjiOD
X-Gm-Gg: ASbGncuHMKeVZt3h0cJ6qWxN0yv78qp2CJZ5z3Gc0WVq4gLjb3pmSWP2XRbYZntR2vu
	/Cx5vV2L5Lm/p/kY1UKgDtHu/pQLh80jj1BoypTwP1gCK2Q+TBLojvp9s0QOCtubsCxpX//TR1W
	zU1jgZcdKgxKfKFHEpjMA5b4Mq0TE8+sAYpMRlfqp6d6nonkz1bglvReTlvjkzbQyYf1rM4ZuGW
	nbczjSXftP7ivb+JFILJ1SvRlVf04A0kSTpN6gbz23Zc+fHpUS17VWPYzKkx/FWHMbnwkf8M53e
	4CCdVAf/DP4lZwHwoUZ4yfOzWjkIt+KXC3zAwiCYd3CPTb80pBhDxjO4O7DPZTrGyN2K0YP2qet
	hrfp87YvkmWVc72eccFSEINJz+4mjsGdPJT2nw2OgFbG6pfiPhCDfpILsgMlf674LeSc=
X-Received: by 2002:a05:622a:12:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4ee5b5ed98dmr220764361cf.3.1764250831627;
        Thu, 27 Nov 2025 05:40:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEw7SzxsqboAxtq7qY8CfpYJdV21gdngQCglYQEwtkf3PXTyadkxvR0yyKVhro7DHUim4ydDw==
X-Received: by 2002:a05:622a:12:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4ee5b5ed98dmr220764121cf.3.1764250831108;
        Thu, 27 Nov 2025 05:40:31 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a7afb4sm163922466b.70.2025.11.27.05.40.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 05:40:30 -0800 (PST)
Message-ID: <b07b88ed-83a3-46d6-8b97-e8661e2cfaa3@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 14:40:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AKyLkLWT c=1 sm=1 tr=0 ts=692854d0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=DfSktKokjTjfYq3N_6AA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDEwMSBTYWx0ZWRfXy5YTZ/WSc1wW
 aX3CgGrMi/sdUg6O+yxsF2GjLaKqtdvptbfy3y3cF1DNndPv20AbygL7F09kvEt4eIInHo0OrL5
 NnIvvxK8uUgvAlC1L8yd/jz4F80ePoyQ12NFD5ASyfdav6VJAiBko1ibGUzHlDeB5UvLBXqbIrc
 XSvLasFKIRpJscytdHjplIXc+AxkYaTb9Zk2e0WcwepLpai2LZSVXgL9JWQDlYjzuFxAtgu2U7n
 T1L5wwyaP/axg+B8767Pu0jL6KSdnY7OGG7hLFoZRaZbBW5CEU97iG8a2AujnunyQHJ5865+Oim
 RSC+Hl+hdu1EQLwegUKoRspyHvdP3vmJFacDy1zf3X2a91PmjgV0cZYHmOK5LDmkL8p2bdIPMft
 6C05/tanUvqUXWS5jGBTm3m/H2RXww==
X-Proofpoint-GUID: unvEWPrtvnB7nhHqE5Z5cuaWN7ul1bMi
X-Proofpoint-ORIG-GUID: unvEWPrtvnB7nhHqE5Z5cuaWN7ul1bMi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270101

On 11/26/25 2:20 AM, Vladimir Zapolskiy wrote:
> The restriction on UHS-I speed modes was added to all SM8550 platforms
> by copying it from SM8450 dtsi file, and due to the overclocking of SD
> cards it was an actually reproducible problem. Since the latter issue
> has been fixed, UHS-I speed modes are working fine on SM8550 boards,
> below is the test performed on SM8550-HDK:
> 
> SDR50 speed mode:
> 
>     mmc0: new UHS-I speed SDR50 SDHC card at address 0001
>     mmcblk0: mmc0:0001 00000 14.6 GiB
>      mmcblk0: p1
> 
>     % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>     1024+0 records in
>     1024+0 records out
>     1073741824 bytes (1.1 GB, 1.0 GiB) copied, 23.5468 s, 45.6 MB/s
> 
> SDR104 speed mode:
> 
>     mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
>     mmcblk0: mmc0:59b4 USDU1 28.3 GiB
>      mmcblk0: p1
> 
>     % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>     1024+0 records in
>     1024+0 records out
>     1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9819 s, 89.6 MB/s
> 
> Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
> file, there is no indication that the SDHC controller is broken.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

8550 has additional limitations. One was addressed recently with
max-sd-hs-hz (HS mode can only run at 37.5 MHz), but when in SDR104,
the frequency must also be capped to 148 MHz. I don't know whether
the driver respects that today.

Konrad

