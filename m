Return-Path: <devicetree+bounces-251083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B93CEE7F8
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 13:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B83E83010AAC
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 12:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0566630F55A;
	Fri,  2 Jan 2026 12:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kP/e0tHg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iMaKcH18"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CA330F542
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 12:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767356442; cv=none; b=PAiyHtwqbzPejEbfkAic0a0A2DoBLFwTc4JH7bvh5eNvXFJyv9f+oo2jGuiaz4OakmMJXSK1MXgnfg4X2Fj8H3VnIJEi9+9qfDzihZA9VGIEtAUG1TdaFNoCKDXfzpnVLgB+2ALO9osKeh1sHDbMYjQ4GviGgQ97+RJHKT7JNvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767356442; c=relaxed/simple;
	bh=owC+cHpTAGTTsQgb792yY2Sij/IocKp//dcZLvc3k2I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mh6R0EZotQPe7I5AgVEYA2JN5zG2dp69lpeDR4MnmOzz0h/+s6y35JlsSXvx15T6UY/lsNbHbG+d4TnYg7WK36d/8q+Hmc9CLyGRGLGl5UMISTiTRca5PmvN/DTvRXNedUX62l8VKL7BWA40YP4C4vJN5MIk1JlxVFWXkMDkfus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kP/e0tHg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iMaKcH18; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029W24b617813
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 12:20:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	127mHB4mt2dFg8abT6ez96BYyktNn0EP2M/rkydMbnc=; b=kP/e0tHg45K0QH8G
	Q2UPA8p3zKC99UBFFbcIR97706Y7gwlKQRj00qDnEZ2b1kPd961PdUHvqKqSn1NH
	jXJtfz+L1HO6bn6osRyF1EcMs+BEed3+Ydmye9s15yxUR3K5eSPHKwuiGk3xj0Lu
	tKA8/emRx+R7dwctDciw8jaxkSR7kzrS48cwGRGzzSQQ9tcR/LwWpsV8Ev4M/DQ7
	8HU1pfDI9c3I0b77uJsk43EJ07e0nci8NM/9ewnCKnu8YZb3Y+by8XUhBhTa5+dj
	vsLxNUECiCQsQ4WJa/rxIaNsnjp6QUm2icQ+GExNm2PIKTv0v1KAGq/q1Uz8MADZ
	V3sjyQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beb4wrbuj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 12:20:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso32445081cf.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 04:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767356440; x=1767961240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=127mHB4mt2dFg8abT6ez96BYyktNn0EP2M/rkydMbnc=;
        b=iMaKcH187oPGYHp4o6dTppbaL2WRCVn4gTDCzBtLUVTbtAIzyYFPkaXxqVoS1ytMRw
         kFb1h2PpJMHkWHZ+ceVedIwCi/d2BBUsX9RiSr12t9wzu1TSYJ8UYcOWOdayLI35yKJj
         n9hBO5pW1adY6ARy3Aol9+Otsq1dBoP7XXhs6qztJz/PlJRa9/KajJWRCfY+4//ilyAz
         /n/lAchXhc4rkJlFqmghpZPlxx2CDdvMYidUFLtFYeNSdeUReFPZAkcnWh/HtVeYHT+Q
         82JB3vZ5mNNjW1IBvmveFU/jgJKjUaLaEYrgqDvY+f6zpg3pG792WAgVtmYyAd4xMw2F
         xulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767356440; x=1767961240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=127mHB4mt2dFg8abT6ez96BYyktNn0EP2M/rkydMbnc=;
        b=myQBGYzB92grzEEd45LSmfA5t6yVmMT1e0nQ9j6oN+uWY6qile22CuRKZiRm67Tutf
         Zyo/f9FRkVQu9QdtV7i+DAKO5LSwgOuSrGjwOpH8nFadrkfNQM7359Xn6pXWhFa9P5D2
         g2oY0MEvt8m1f69bxNfC4xeYBDVcrbXAKdEg2NcmGZ75kZwYby/3hkwDB33UCEUPZO4p
         OjgXShTUEz8QJCkYmUyLH4vOKA0E+CeVkIA1F7ziDSlJYtW98ye6STryNfv6WgBcB5uR
         VyondkiIiXvsfbg2czAJmlN/AY+9Khpe2GytO8PfG9nhf3yxANnUDzGY6M44eUSlFH8p
         VtBg==
X-Forwarded-Encrypted: i=1; AJvYcCWUgQAFjvXlb/sfyalCXpG9UtTgAAolTT64JnJ8PyjZcQ4Bqufu73xFWaUiNolPVN44KxhOlIZ/Q0cx@vger.kernel.org
X-Gm-Message-State: AOJu0YxY2klcC6Suf1eIcnw+buiRJeX5lm6rGXAy3zKPjY2o9oUVUBuA
	SahgR9MIWXPuy7S1HOzYwKhTKT0ccybjXzx6AUNai5E7keHSXa9+y92LRAtEGeyk0RPWo6tOMLL
	AtCruTO4zGGjWV7OduwjpRiV+oEYpk/vAQq72KOOXVv9/0VtDHf7MNAXsN96T/stz
X-Gm-Gg: AY/fxX4KeOcYCjIXdwRNQdexNbNr+PLmEY2mahpr87W2nZuqByavXgDfvEu3sUA///q
	I4BRdsDm0CR3wDRCLPQblK4shIAxsDWGzeAXOEOyTJs3bMvxMGHMaTk3tBvE9eoPcNGEAyMbV+3
	B9gRANyRBiu+I6UO/4snsO3AvSeVatt/KC6g7BhmVYKg5ou5giWdUTGOETRJDDSMRhbIyTxLbJY
	nxOV/RD87HL2vohBtsgFGZ/DhnxmIbwwiO4upYfT+XDChd64UGNwe+Vj2/1rEI0VwZu0AaqlpmI
	qijzxmz04e6m5TIeJY2r4n9N+zmYCT6+XP1pK2gr87/a7QwyLGUMfKYfwGp6a/2Gd7E8viASvvR
	NfPOK8w+Mx3w3MWwPmUHLht/uuf0CfjOu2YwROByuSZG2aOYQ3A0AlVS8h4thcUhGWA==
X-Received: by 2002:a05:622a:247:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4f4abce7d98mr486686341cf.4.1767356439790;
        Fri, 02 Jan 2026 04:20:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnkz5iZjMtxBREdt8+wbw1V/jZcZuDWnZGTltBvzfzqlFNSNd6s7j3yuIOrXpl4CLtljEJiw==
X-Received: by 2002:a05:622a:247:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4f4abce7d98mr486686171cf.4.1767356439451;
        Fri, 02 Jan 2026 04:20:39 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b830b5fe8cfsm3040406166b.59.2026.01.02.04.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 04:20:38 -0800 (PST)
Message-ID: <785daa0f-c9e7-4e6d-8140-dd16afdf2674@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 13:20:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur: add coresight nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251230-add-coresight-nodes-for-glymur-v1-1-103b6d24f1ca@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251230-add-coresight-nodes-for-glymur-v1-1-103b6d24f1ca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LAvJ0rN2anTDjYe4ctktY703dhIxdXKm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDEwOSBTYWx0ZWRfX5rySaumGK0Qt
 932PcFqw7NKl4DHSVAVOkag+gxEa5d+PVJG14cDBABrAVICidTb9dLUs8FJc1E+95X3rP7YQx61
 AtBgmjBS2Ckeq6qrpHvtmgTVxy+Yam7songxzvE/yoiGtE/EErKlgJjLTKkO4K841v+NcG1lusf
 g07nntPQ9l2Z654zOfpPoTq3UIUwDR5llqk0B9b0dmTNJwy5mJcvVlgRVpjubzEj0qSAOclUk1x
 M6x+mGk35Nvx4BYNzZ0+RYwCu0FSPzhrx0dRgT/ft8kOqgninTkctqi7RK1zHRFyjwREhNjmkpE
 zJwTVVMemRvoc0c4tLxvHLd617gHg/dfFIibGeXvTqrAYhM4s6+kZ19Rha403wunP184JddnDV/
 oBPDFDSbYoqG5BZME/fc5/Oh38OS26N8YUvt/i3KV5EUPqOypmelFF3VThGVLC9OFyyZiBqC6u+
 QEQOo511my+4dWCya4A==
X-Authority-Analysis: v=2.4 cv=I5pohdgg c=1 sm=1 tr=0 ts=6957b818 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=4tJ64ChziznmrUq2zEsA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: LAvJ0rN2anTDjYe4ctktY703dhIxdXKm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601020109

On 12/30/25 3:10 AM, Jie Gan wrote:
> Add CoreSight nodes to enable trace paths like TPDM->ETF/STM->ETF.
> These devices are part of the AOSS, CDSP, QDSS, PCIe5, TraceNoc and
> some small subsystems, such as GCC, IPCC, PMU and so on.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---

0x1121f000 - 0x1121f000 seem to have different/wrong names

Otherwise lgtm

Please try to convince git to output a less messy patch

Konrad

