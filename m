Return-Path: <devicetree+bounces-255530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AD9D23E6A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B6DB301C923
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D42835FF44;
	Thu, 15 Jan 2026 10:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lli9wUqW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RZYWPrZk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF42932ABC1
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472394; cv=none; b=N06qjgRbpabnjcv7pbo77wooPMw38bwQbluefbFtqSdt+jLFNrPAit+RvhrGMoSgbP3GwZmRSHpYaT5KigsMLcXKEZiefoy8PMVbQUz1AF05QskGFedXehePZMoL6z54m5+M/WZa/T6TMyy3iBFmBVvk5DXEWbBcBAKoyuQ6H1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472394; c=relaxed/simple;
	bh=3V4uCAcPNq3dSdV/O+Tlp8FlLTxB6bpTafTOVyxjik4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ItRJ8IrIuaFjl71qyQA0DYsWDZRWH6HJTnEGifhtV1+Ox1MY2UavYjvQI48UvtaK4Jn6lkAIFOn48yVA228jyP5wCKnbBptOcs88csKP8XqjpjxtiixDOINpSECzBx3HbOV5/MU/zVbSPuo2gEPEsEc+mUiT2W5pF278GNQ3tkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lli9wUqW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RZYWPrZk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6gF5e1056340
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:19:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Il3X9Wlp8C2NMVxdP3pGfX/fV4JJqh1j+hN02p3jjlU=; b=Lli9wUqWUgvx+D+f
	1sv+twj4jafqbjfttzi7e0vYDy3fKgMMis+H8HpL1fUAFSLRvOUYvIQfZqtUOavb
	e3SNnzU/i5YMHpJwo74xqqOJTIqen1HfI5WyABkdrvl6Yutc5QiVAIVnASHdg93D
	/pItrfmU2FXXnM1QTBcYihpLzAYGXlg+3ebv/xvGuEbzKvSMoA38tWmUDMNmV8Bt
	86H7k2i1E2TV6tzTee2n+tIHiNhhKJV9WQny1E3Z9HrC6ifBZEfy3VV29N5BkUr1
	dEI8QoI6b6ERi8l+Kfh6DSdSIP08Qpk2/uVrvYjHD47oManP29eaRf2QFB/G/rCh
	la4wvw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp8d34915-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:19:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a182d4e1so9788285a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768472391; x=1769077191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Il3X9Wlp8C2NMVxdP3pGfX/fV4JJqh1j+hN02p3jjlU=;
        b=RZYWPrZkn1bxcGrN1J6ew6etxiIwmtrYqATeNcwVXESgylWiAnLmgU14MDFGVqRaBR
         fTm3yN1ff+/0gCDFQdEEYhIbamc6go9ucBaMZZ9N4JKMtXJJylcwWdsA+zV8hDxuSsOu
         f86BkSoGUEQebwPNVBGIBZzDiXhDyrw630S4x2TMaXDbEVBSTAZBljpwgKTYpgUsdURI
         qkaLL9N9jih89sxSxNaEa9JJ45RjPvuJ84pTIffm5rWLM2OqkR2Q8SXLZk6zz1CFZokp
         LSCFmYNC2YEOO626Z34fltH4TeOGX4YNXE1Z8yHVQKn+VMDeEOP/qobhxWRMrUpte9JU
         Tu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472391; x=1769077191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Il3X9Wlp8C2NMVxdP3pGfX/fV4JJqh1j+hN02p3jjlU=;
        b=Id/DZE+0UARd3z09c+6kFECnGv6sfmoElynTRgf41lGpZQ5YQg79xzD8bm6akMNRSA
         wkKcFKfiL2KNoED02DGWt3/ETluHC9A3aGaXCbuWjmRGsxSHdxZNltw9hgWl5W3i8+e9
         QRj1+73T6qzkdKAFzNx+haop4AFNsHI3+BvURtmW7od2olH54TsqXCfoHz+oITGRi9Nq
         sdloEadBTHhHW2Szlno8SJh60Fxr2uHQo/3EjicUfDpJIYtBJIblAnMXCWg0x6cC7TmF
         3pd/O3bUBS71zvWcHWKyOFpd3EM2NKZM7R0ipA5oQ4QB9R5pQu7KJv1hEDjfPXvj0v9/
         x+hg==
X-Forwarded-Encrypted: i=1; AJvYcCU1kBHYCU+ssAL/bbNIRdyXesfmg9LMoweN8+pM0PWPkvY0RAVrh9LzXduxBBAk6+0wYWRVxoMBH6Js@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9reMMUkA/GGciQIIY9qYXxKhZ6nHaKoB1fWXA4K80LLbGavoE
	H0My+CbDX5xoyTWUtCaZSSBXdJq2wkgUgDfxXUTtm7NlxFvNNPdPgr0rKFqo7/4G6fx4UmP5FVY
	kbFX2atng5eJwh/7rSWnMqSMgAG4cbvyXhU8PO559W/4qopKGswRWGHy042qck/JIM3fsZccL
X-Gm-Gg: AY/fxX70xGkZWVCSdcSFr295kNA2AMB0M0grH5S60xBmjtM9wCQakt1NYWi798aBJyZ
	a5OfSwPetwydYkKKsm0hahIvj1uS5jqz0HuyhcS8JX/GJoysazkueuYNrDFJVlk9OTPiwyeNrCC
	4jGQQ5ry9I9pFkwHBsetng8NGNtLABPFBbVVPuML/G3DV/B7U23QQiW8j4HrEyt0I/drMZfPwi4
	R0OxbhiipI/3Tvisq9rbmJJLIKqrtI/dxgA7DVOO+LINhBSjb3tXeSQ6KtABof744RxUkq8cORR
	YAKtkRmT0fBxRXAhUY+lZU1haiTLrff9sMsVpLsYHGcyxoZHIktopYbmUZwNU0DAUZhyFT5G8bb
	kImuUNH4MvKReOutP1GjkL4VWXHgr/1lCES4dpZmnCJgU5uI0Ofltkij/UHmkkpyFCSQ=
X-Received: by 2002:a05:620a:1a0b:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8c52f972925mr593059385a.0.1768472390834;
        Thu, 15 Jan 2026 02:19:50 -0800 (PST)
X-Received: by 2002:a05:620a:1a0b:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8c52f972925mr593057985a.0.1768472390324;
        Thu, 15 Jan 2026 02:19:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87099fcef6sm1353880466b.22.2026.01.15.02.19.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:19:49 -0800 (PST)
Message-ID: <59ae6b16-7866-413a-a1d2-4a735024c108@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 11:19:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: cpus: Deprecate Qualcomm generic
 compatibles
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org
References: <20260115083503.43796-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260115083503.43796-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EkNidWG_xGMl46Xa0nbFDL1x9IyO5Jzy
X-Authority-Analysis: v=2.4 cv=fbWgCkQF c=1 sm=1 tr=0 ts=6968bf47 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=HDgntgnsfx8HdXrLBxsA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: EkNidWG_xGMl46Xa0nbFDL1x9IyO5Jzy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA3MyBTYWx0ZWRfX+0sQ4n44psHM
 tocwf7i55+4ykiWWXk9YrQ2ZKiTpn9GGXdBroWO2udd1gmX9b8/8WRPCUf3Q1UdPhF6vA5XRlwm
 L/ZfFN+0lNCTRQfs1JqKrskLaVZbO3kKIbd3CKSkVBlxtsgpjWxlqABrFdoDEB25P5I8zHY3221
 kRRqh+BegYEdSvmyV9MafVp5cQcdK8jMl20uxRrVtE5JDLlFS5Vy59lQz77g+ba42D5Ttha5hjP
 W/S5YPpXG3ZGPO4TAxT6CtEgI2DWfAq6JxfQSoVAon42vrAlQHZOlFlfX/FaGoiGLJO1gGMkIhf
 DBkT4fNEXzx+ZQD21KrHs0+imdGolmgtD1ECZLpUlOvBTfVxs7NcGPrBUGLS6ViSBvLctLFNxox
 aPVRgG2EP5b3sD9l3Lu7vXEa+6RzsJ3hpZTn8atXQ3tO4qJLSsADY0fHCjbX2y3SJtCwZKC9s5Y
 D6Dx8pk66ymhx/Qwg4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150073

On 1/15/26 9:35 AM, Krzysztof Kozlowski wrote:
> Move four compatibles for Qualcomm Krait, Kryo, Oryon and Scorpion
> custom CPU cores out of the enum into separate one with deprecated: true
> annotation, because these are too generic names.
> 
> These are names of the families and there are significant differences
> within individual processors, e.g. Kryo6xx can based on architectures
> from Cortex-X2, A710, A510 to A78 and probably more.
> 
> Just like other vendor processors are differentiated, also Qualcomm CPUs
> should come with specific compatibles.
> 
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konradybcio@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

[...]

> -      - arm,armv8 # Only for s/w models

I'm still bitter about this one existing

$ rg '"arm,armv8"' arch -l | sort

arch/arm64/boot/dts/arm/foundation-v8.dtsi

This makes some sense (see [1])

arch/arm64/boot/dts/arm/fvp-base-revc.dts
arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts

These seem to be spawned with a specific virtualized Cortex type

arch/arm64/boot/dts/nvidia/tegra264.dtsi

:(

[1] https://developer.arm.com/documentation/100961/1130/Foundation-Platform-introduction/Platform-overview/Processor-models-in-the-Foundation-Platform?lang=en

Konrad

