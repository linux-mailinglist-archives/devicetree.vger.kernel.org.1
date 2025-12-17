Return-Path: <devicetree+bounces-247396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A61ECC7968
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04C2B30810B7
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325E033EB00;
	Wed, 17 Dec 2025 12:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTcWSqkb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RHmgNxJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C644033D6FE
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765973595; cv=none; b=m1ng7FYfzYTrM3o79BSPIZMm0LmMG2V8cBiNZkEQnceEcc4gGgCcHq5Rj+lH0wivywF8bTpr0lLDpBZ+JTzecYW7XpGlk9OYC+wXzWChXmeAxlVBgGmZuaAC1621Vy1hp9mquWctbSsQCXtZ/iImk18/YR2RyiGUcSWrpFxR6IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765973595; c=relaxed/simple;
	bh=aGe86kWkfD3nvG8oBci9toKNq0ktbkQOHU4AB26yg7w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E5w6h1P5jl11VKZRG4DdejOoKX0Cyc/618cajpdqCuJ99nFynEiHvy7WkID+QYbYY4L50eB9fm7YA7i+qwSizAx6TeGMuuI1Yah11wJDAOXsk7v4Q1+RCIggaHk+PooX0IXoxaU5XL/D4stTeMiP/SMRRjCE+FAjnDkhf+LxCl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTcWSqkb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RHmgNxJT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCDBfQ2448421
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:13:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S5xgaoTT69/pBHPgbjFkA4EHKqWZuC60C9uOsst3bQ8=; b=oTcWSqkbsxGmFqcV
	DKUxPRuWDotNrXy9NN6FyIIqTPEINRlgdnyMVT44Lym0NS6udIUyMLxX2o7ECUbX
	3fXFEXkPE/1XsfXGA/W0F9sMfVgzACEaXtqLYMpgtYnMPXuQu4F6jK6RzDRK22C7
	GH6tQ+zpdBdKmJ68+al2GmL2nUXHI7pY5kwGVhXLYFtMVeMKXRuNM/DF9EZdwrxW
	XHrKoLGJpQ77NTWLNhKK0ZBFwQ09lgVw31bWwSU+UnahwQMWzAM7b+ZfE6CgTZ8J
	dIUQixMoNwmkWqJmuTzAeMS4p6kI9b7ru4UMb0c9ecdF4E89pkajgDuVeF43gw/w
	YPaV2A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fe2aawx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:13:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f357ab5757so1247581cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765973563; x=1766578363; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S5xgaoTT69/pBHPgbjFkA4EHKqWZuC60C9uOsst3bQ8=;
        b=RHmgNxJTarPRp59DQ+JI7cNReInQ3PJY80o32rUMHnFJJ3Tjhln6+RdBtLR34x3p9j
         x8uXg88KJqWpWq9wZcbRli/hzQS6k9aG1n77vndm8goznRv1hhkjt3tndgoUlETKRSLj
         syz6W1UwJulL/D+gmamAAdkWjnbnLrlXSe9mh0j0JaWswX8VuzBOp+UBARsqiDgS3CV7
         W2OnBZ5z2maGo0WThLLg0n/aq3kAI0DmiURs6t76NX9/EZckK4dQ0JB+ea45acpeDrr/
         ofe+GuJ5pQoURGziZ+sH6bKVYqyPwuMJtW/wxGaCoSSy3mMyKZB4No6rxoGrNIOTweX3
         KgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765973563; x=1766578363;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S5xgaoTT69/pBHPgbjFkA4EHKqWZuC60C9uOsst3bQ8=;
        b=s9pHVdUhFfla24fy3DrSbFLgskRta6JeopHTZKxIq3RA6NS5/RBQGmI9rdIDCAnPoy
         tG3TbnAn7r6Khf79b2V8TYyyJl6Uo8YR5sxQbukLdaf2UJbjk6yElpbMCww2Y4sX+iWx
         kH59cBd5J3KiamsaJ005Fzh+Zldinbxj8k4EH3dwWuXR6UryDUIABwTD2TzzHQ0S4cCn
         bwFaCkOAlC5ZIqaimnft7CeVy3ivmHafOpNuQawpxrrp8iyP/Kx9TdUoNdhRholv8TsB
         9MmHvG2JZZ1S5jb3EsOpkll2vBVMo2RwadhoL/0ud8/f2spWJbz/dWFZY85lBq5rGo30
         CneQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5Lremyhr5W4FbIP03F63vh96NMKiLGE6Io7xQHpGjCGTbu65UZqZyhn0shZ+LDboOS7FBXJoxXP+D@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmxcd0P00s8h4FkhUgN1k2ckpuCKlCs5Sph1alIopj4rx0iOTQ
	4aMCOwYfaD8Qmps3p+RukWhkSPacUwaFJq/kBUr0o0Gy41PG36IchyDmUVbyHNGBZchfsBuIV/c
	R5YuveKcat3YqyZSDczAaBXFTtCTNKGjO+vEGisD1osPiI3yM+PGEt95Txsxd04w1
X-Gm-Gg: AY/fxX6n6KwUtrUT2VuyHEyNvIuNbEdql02DOpzEpu5zepGqKiVMOn0Lm6ejY21/xMK
	hgakLYbvTGy6xVp644TQHxAwjnySnkJxW1rUZwZA6j8KbIGgd9A14qOu3OuJgbYzcnkCumf/ZTR
	prvi3Vh94B/nZRsNjo0aZP3mmNVzhpjHf3fcLTjmLBBVJxbkssPcgZFzzCk5B/GcIeGvG1RRU+0
	R0dv/T3l3KeUsxeADaQT56TUwKzhsgOaI7ik0XGESrbJvvAr9y7LoztOYQYeUTCTmRajKwqv7OD
	XE64ZJjzSpksWmvd5CygRIgkL+VlL9Vvqd3V1z6/srp7XvXKYjN1YenmzmH0KSfs5pmHgA/T66b
	OwRm0fFMUasbo5s+Rt6jKhbb0ZRwonrExNYwnWYb2m5ElGzRG6TnKALvCFouufxGhTg==
X-Received: by 2002:ac8:584a:0:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f1d062fccbmr159588681cf.6.1765973563355;
        Wed, 17 Dec 2025 04:12:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5eVGC3ZWYSUKoHlLO+PfDj5QMt25oSCp8OK57mCn7+0Tam8KJf/1iWxw5fxtG/X/1ogAfiA==
X-Received: by 2002:ac8:584a:0:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f1d062fccbmr159588381cf.6.1765973562909;
        Wed, 17 Dec 2025 04:12:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29f6cbsm1991353966b.5.2025.12.17.04.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:12:42 -0800 (PST)
Message-ID: <c786d33d-6c6c-4932-8593-857e7054dfda@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:12:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 8/9] arm64: dts: qcom: Add initial Milos dtsi
To: Luca Weiss <luca.weiss@fairphone.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-8-b05fddd8b45c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-8-b05fddd8b45c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ny6X8F1hO47dC5sT_3vsNm6ETeaTt0hh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NSBTYWx0ZWRfX+7EwgMkaYFkx
 KxXO652jWbEaDoZ1CkYSCTmOWMSrPi8OEuhjnUFoJIpc/3sJZEcjjY1dNIu+riJKOQ3IecrIzUM
 96dXrD8JFadWtIE8Wcl/pDUQ6yYiVtUb3pp5HmjAUFNAmoYO8886lr7Yvf9lvCsDUrz+7KCJ9Qy
 tgC+O5qCntt2ECIGccFUR2lSqwRzH+YWV+m0GGn7U3aYXfXP6cp+d9CIZG7WCSL8gMadxbqRgId
 V3fZVmm7LCdwcgEEZ5Y10Tsw+mQsqBIJCrNmP0yo8AcXUErVvrBkp6zsN3BBEo/eO4foVJ8YiWX
 sP4MB6K0/lf5zEkWMoDeQvio/OgziVaeJLCqv7f76yFwO67fO10tZuBvVXAzp1NXYJu7+vkMrWW
 Mnghkvgb8IFfSMCxfFsXFBkih6iOZA==
X-Proofpoint-ORIG-GUID: ny6X8F1hO47dC5sT_3vsNm6ETeaTt0hh
X-Authority-Analysis: v=2.4 cv=HpN72kTS c=1 sm=1 tr=0 ts=69429e57 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WSIVeowOIUgBBEAWWbIA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170095

On 12/10/25 2:43 AM, Luca Weiss wrote:
> Add a devicetree description for the Milos SoC, which is for example
> Snapdragon 7s Gen 3 (SM7635).
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

