Return-Path: <devicetree+bounces-253333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C236BD0ADBA
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:22:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1CE683015BEF
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD90A35C190;
	Fri,  9 Jan 2026 15:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eqduVhVj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LikFXYeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10132877FE
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767972136; cv=none; b=S4x0NaMIY9VBXOAR1hvznkur9571TvqX7oKPcxeu90pVY6Mu2LOyOawzCatL5eeduUEoqKivzPHBRtAGFUqK59fC7aFpRHsxOln1JLZL/NlgjL5iGaeKnVikkKOu2UcJriGp+J9VgRVKroi1JwZl64N8ZGXgk9t0lM/0ZslA4qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767972136; c=relaxed/simple;
	bh=Zq1oIOPXOcVo2E7TMpgHn/G3kYv0MrCHxiO2BKSIgfo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tRDdO5EDy4YyxvI8L6SbzSabL8FztBU4+nSZ/XK2e9EBp0wEavqQDDETqqB+ctMEnG4ZCWoq9NMCnm5mKZAjhyEJ1xl8uZ1VAFhe2Sri56csy1uEE54VbuyKrDCyo5282JDKX0TsCZdzhXq7Tpr2+9XsoucgR1Vcm0VOghTXzdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eqduVhVj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LikFXYeF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 609CkLGA3542328
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 15:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FZZdHVKSP/wn7m6guW0yK8lVw+sOLWX5XebLvfN/G3g=; b=eqduVhVjuJbJUejk
	qcuVh+BGQCRogJH9j8ZtKyIiI1d0CSBAqA82+vD/2KhrWjUt5sPb15I8+ACrPS4M
	bDGAn0tTX6yopDJn9xbfMx//ioCJWMVUlWBn6WUDQfdYQ9McSyle4ERIKeT0tbuK
	50QBkSX8gm+PmLYpoHaxWAKj1dzA6KXBUNhcj2os91jM9TJIttV+/PfkxD1NsMzW
	e9ogAizSGc9vKPk+ddaBk8V7cBDifsKtoS3jA6XKyZkJRzLBiyatcWx9QZrO3Cna
	zv65typCoWjM4H07V5veYecsYejeagah0GTQQ8Ix8rdBoROySz+FhAPhWRWUNlmP
	Yo3TQQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bju6b1q2e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 15:22:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b24383b680so1610116485a.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767972132; x=1768576932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FZZdHVKSP/wn7m6guW0yK8lVw+sOLWX5XebLvfN/G3g=;
        b=LikFXYeF93tKrmZE8IiAyx4oUUOQPrJMT6pbYrP7K5fcshQDim+VNR/RXY5g7wnUX6
         thEj9AOkUQnsmMLZu8LaZ29x+/pR/ymUDH5fNk4gir6uC1OtI4kbn0VxLcBGJBsRulpQ
         VB1rgB+gj7v7YxU75gWGj/NXyTZ+03QC3EpWzKlS2R7F2saagvavSgzAv46UTrzxurzS
         qfEDG8qYIgCdAThHxBiG8L39UmY64R3C9fAYi1U4fWILu7ErjFgDEJOP6qpka9OoDh1Q
         utJFoC4ej4uTtobFPmm7KWbywKLn7xwuRU7YRqHTsfNviJe31RySwC3+b9+e7GyggDos
         JM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767972132; x=1768576932;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FZZdHVKSP/wn7m6guW0yK8lVw+sOLWX5XebLvfN/G3g=;
        b=bKTmqFBniRxFjPgkzYrBhNdiZ2WQbP63Q0RmPn14Dbq/dq57tsugQnbzbhoZUfIQMO
         g7iS+GvK3kKMeQwbDQs5VCiypJh6jsxWabmB6x6o01DKzHgmSXNBCEuZI/V4POitzCYI
         8LDCAygRk3CMIjmd85n7lrevxWI9WjzH4uE5INrAmr1MHO4jaTk2Pu7eLbuFonj24B9k
         EwTcmfqxq8YLHapsV/IuTlbSDdq2VECVZu4S2SHj2SygibwEZfsl12N71Eb2p3irRnE/
         aNMKZ/7YPAnl7X9JbJZkuwLDDcPiudAMtxnmRj/P5CGgPVWQVhdPdSnbMBbD1Ay+ypXm
         tcRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUeNla/pCpqWJNcHKQhm58pnzQgQG7GerdikSgCCDw+PmBL61w1/PWLxgmsoFj9Xr9gsyLrssEHRhQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwprqEzShilvHE4dSkjdT4JY1mIFvSc9g0uriHho4REFoC5eipF
	RDIw7ZNh05JEpffq+bCYBZSGJiZ4dYXiPLkOtBiux78AIkVqf6LpSAqrZ83BPPbfbosbenwnE7C
	bw4DcVgsV+TWDDTgb2UMpiHSMdsLm6VYPqfNEyAF5C5H48+f6g8jg8NuD65q/vHeb
X-Gm-Gg: AY/fxX5F19RYonFcNx34igu2Fzk49bGgeev/cC6vR+UfxDxIgdl/VpTz3dpgch74xO7
	dgR19+pf7901hgxMZY47bBp36zRr6WKfVejQbwHcz+rDD9d3EXaReXHtpyssBrhi1EJv1t9tlD7
	2WSvjDVjlfQu8Uin9ZqfesmZ/Uogx01kzzHVyML/P8NJMy1fpTdhghk7HAg8RcSwcdEMxCDiLWF
	fq8Ud1l1n0AcqygSGflAxYMQr2/buDTlKofX1Am/pbfqwpoA6N1oI+H9bn77Vy7rZpx3NgEQrME
	ll7z3kqiRs0kxd8/7xwxaPjo1zxl3WYeSSvfawJomMmi2VdQbzJaTyj90rR50zSyavVNxRfdoZW
	CXjIOIq0u2I1eDuhHbrDgfBUfgj76GkBe6H7hYw==
X-Received: by 2002:a05:620a:1aa5:b0:8ad:407a:16c4 with SMTP id af79cd13be357-8c38939566bmr1426182385a.22.1767972132134;
        Fri, 09 Jan 2026 07:22:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+rznHFyHxPSSqweXxGrKrHGrunMq7a3eZiSII1qX1Q9mFZ1SBrD2GAin6CDCzT5LCMaLgPA==
X-Received: by 2002:a05:620a:1aa5:b0:8ad:407a:16c4 with SMTP id af79cd13be357-8c38939566bmr1426179285a.22.1767972131742;
        Fri, 09 Jan 2026 07:22:11 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5edb7esm22584825f8f.30.2026.01.09.07.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 07:22:11 -0800 (PST)
Message-ID: <4e49ae45-87d6-469a-8cbf-6b43a1ea498f@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 16:22:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: renesas: Use hyphen in node names
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251223152358.152533-3-krzysztof.kozlowski@oss.qualcomm.com>
 <CAMuHMdX17mPy0__1Q=zDbfSTOJFO9jBCx7hFV=fSCRAi=o_sEw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <CAMuHMdX17mPy0__1Q=zDbfSTOJFO9jBCx7hFV=fSCRAi=o_sEw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDExNCBTYWx0ZWRfX0nZV4J6lnpnC
 T7cAU6crd51/MiD9isZIF52WZEfr+zefsevSqV4cCkxJrxi1bu3WYxZ27QkucoSxGff8Z4gzlYG
 jd4dJHgKe0alUTPyALAakbHy2RDpg9rOnTdQingwI6FaCrIn1lE753asoqPLD+0/tk1gsiHm/Kr
 4yDBGM471YAj7z5uG0ZJIbajuBfZX/6njWVtMJG+0UNor6W0Nzfd/Tam8VJYF+k3a4YBFMiY2qC
 B3D7QM8Qg1WpiEKBy0Dx/dF4gfw5E4zEPNzTzT94Uw2Rkqoqx9d3KgS44pDA4jBTryhnom7K0bi
 keVtMyp/6qp+bxzaCfC84ozNBUqXZFEKZFrL9Ieqk6uNcuey8EKKRet/gX+vmAY9/jnvl4qQ0SL
 ilTnHjd8LNYwhEVzQeACSsIKH0++H/JEdLLhQT0qijbIuvdq6JXtQ2v5TW0dT8FUTJeXeQLFi/n
 DmCo1bf0149rVQ0VA3A==
X-Proofpoint-ORIG-GUID: kHv-Vs0biX8-bEuiBI8XQy80LKPHz9SF
X-Authority-Analysis: v=2.4 cv=V+5wEOni c=1 sm=1 tr=0 ts=69611d24 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Y_8BUaW1qx8-Umtu3_EA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: kHv-Vs0biX8-bEuiBI8XQy80LKPHz9SF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090114

On 09/01/2026 16:18, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Tue, 23 Dec 2025 at 16:24, Krzysztof Kozlowski
> <krzysztof.kozlowski@oss.qualcomm.com> wrote:
>> DTS coding style prefers hyphens instead of underscores in the node
>> names.  Change should be safe, because node names are not considered an
>> ABI.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Thanks for your patch!
> 
>>  arch/arm64/boot/dts/renesas/r8a77970-eagle.dts   | 4 ++--
>>  arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts   | 4 ++--
>>  arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts   | 4 ++--
>>  arch/arm64/boot/dts/renesas/salvator-common.dtsi | 4 ++--
>>  arch/arm64/boot/dts/renesas/ulcb.dtsi            | 2 +-
>>  5 files changed, 9 insertions(+), 9 deletions(-)
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Is there any specific reason you didn't fix the remaining ones?

These are coming from scripted sed, so probably my regex was incomplete.
But in few cases (not sure if here) I did not touch clock node names, if
they do not have clock-output-names, because it might break users.

> 
> $ git grep  -e  '[a-zA-Z0-9-]*_[a-zA-Z0-9-]*@' HEAD --
> arch/arm64/boot/dts/renesas
> arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi:
> versaclock5: versaclock_som@6a {
> arch/arm64/boot/dts/renesas/condor-common.dtsi:
> cert_header_sa3@c0000 {
> arch/arm64/boot/dts/renesas/condor-common.dtsi:
> cert_header_sa6@180000 {
> arch/arm64/boot/dts/renesas/draak.dtsi:
> cert_header_sa6@180000 {
> arch/arm64/boot/dts/renesas/ebisu.dtsi:
> cert_header_sa6@180000 {
> arch/arm64/boot/dts/renesas/hihope-rev4.dtsi:      cs2000: clk_multiplier@4f {
> 
> No worries, will queue in renesas-devel for v6.20, with those fixed, too.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


Best regards,
Krzysztof

