Return-Path: <devicetree+bounces-244296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 403ADCA3675
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 12:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 469D93027A4D
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 11:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7201B33C1B1;
	Thu,  4 Dec 2025 11:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="byZeSYRY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ftMQs/bH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5AB33ADAE
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 11:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764846920; cv=none; b=B7BE8kkF4QUfuUnjFh0TQ6tTb9zjh66WxUHZoOSZ41EhcOmzP5GJfWN9ywbMNvOThcKCW6qsTPZyRXctKqcKjYSuzzjhJI3ODpyADSOsSgZJMldUqSWgAbAAaMuLycHt++09naUt4/d8m2wjQWBpJ24OtPT9EU9p7k2McnHEA5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764846920; c=relaxed/simple;
	bh=gqa8NSNup4PCWfq/bb4opnpsyBhi/fJ6C3SDINgErpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Idy0X0zJip/qc/5t3pWNNLBjsWOrK/fdPbXYwEm/FlFlxtL/BQtpT5cFNXsAjclPZkQ4rv4EyCr1CWu7v0NaFu+QxZHUMqdejlkBXmafOJ9z0eTFP+bZIglSsr8RxbMUWVj2wFQ2jYjcptV/TUHqGCBw9YBFebeNJIsjHwEt9Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=byZeSYRY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ftMQs/bH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEqhY1042874
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 11:15:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6MvhqY4gng4VyqcMhiImm34g4N0drdjRXaZ9CYnfhUI=; b=byZeSYRYVoil/HCE
	z8eLIkqEYvtiqrtkd4eu6J6UBPt8ECrI7SlzT74VFaWtnzESfYi99WZK1SV9CUDo
	3YTiey3fLk5pPuux8t3Dco9Qwn2NCYJvWeS3WMtggkS0JrLLhaG04KZIAsm46cwH
	sBhfuXQdon48EX7IjmIuvPbhA6eqkraZlqErajCYOJfu8A11WqVau0255La/Usms
	zVwmRAdAE74nskhh0jMOpA7npwR5iM3sT8yaeTySChYtzebOnu5gaMsAFdD70tnM
	a1dCuBYz2fK9BrKFL7YgalN6BxCbtDJV656eqJ08n0KaHsXGLuTFyWMOOULIfGZD
	04B0mA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6xp0hs3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 11:15:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b1be0fdfe1so28931085a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 03:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764846917; x=1765451717; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6MvhqY4gng4VyqcMhiImm34g4N0drdjRXaZ9CYnfhUI=;
        b=ftMQs/bHuyCwRrya03R3KCDudUHfj4d1uLUhp9etpVJwPS0cHk5GVTMRbpPmlCAoeQ
         KPOL115vOMZpA7qsAyT/RjAtLRV0bA4CC+S5rLPQYnkCqPYBTmltyxj3jB1m3o+zdvS4
         MOgfQX1q/EEZgdM3rudEb6FSoxGp58z7ZulPPNOf0fSHgZudrHCyjRX2L5Rkjf9gst6w
         0nafehj2K+U0AcGIoNsVaIR+5IRU1giHxXcTL48mH3hVuj2jU8y9HbI2kItORyoyiquT
         ZQbu289dmPBOTwpHyLB0GbkJp72R2uuUY5BlU9GB3JCQLJwnKq+pjdBa3bYvEOq+oxKB
         tXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764846917; x=1765451717;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6MvhqY4gng4VyqcMhiImm34g4N0drdjRXaZ9CYnfhUI=;
        b=A0ZKBWJw12bYFhex1r6Bph6SsxHU+adD+OAnAedXNdQlGqy2YVctLYKYcSh1JqGTNp
         0mr2H9O++ZVX2fpdH3K9RGqZKbvxawGYEIH40b98sVZkEoq3K54Q3xV0eG58E/trX0uN
         wmORZ4XJ2TOMgLV/J1UI9DuKPS4TuD3VN3wfsJbCuAe3ToDSrP/XFTlzqeP1es180Pav
         /zvdmRVGgm/ItgfPwIGVqNypCgr1Dy/K/k+RbEHQGa6fmbcNk6iOaqaP/ffYsKtbfHvq
         wW+SGI0LLQId1l0kscUeRCK/O9SpJNu6+47LRZGHEalGt7LJT3MbLEW4SIwdoTrJ088q
         X//Q==
X-Forwarded-Encrypted: i=1; AJvYcCXnIS0u+E2o/M5uS3HKyCfKGAjcCETbFJKqQtcacnvtboF9Tfr36wNbu6eco/IVr5XOYoUZTgkcB4vy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0RqQT+RMXSws/0BcC28kA58zhEQp5fmMgDpM/gZ6VPHQ35D8V
	2HWKa7o2TM/yyIWlYhdwdJGMWBjefoInTLhRgiAQ4x6R+RpuTMQ57cWrTKREgGte85nVb6bHAwe
	tuJepH5+0nuBdgQ0Gwax2pESu9UgBbN2eHHAVWaMRwyAtcgqnU88r2llxr05jCc5KBWHgJmPy
X-Gm-Gg: ASbGncvwpA6J/XbeKoD9LCTk+mZiauqnfJazQcFl93MTReWWeQYl+vZTYF+dq6OM21n
	dWzSMMpxe8by7299VntuSC6csfAfsQkvLiQn3GsetPbg90dMnT2NUMq1wXcSHlcUdMxYTSk47lU
	U3vhqptIqPx3IH616bRupfMluTqV99veFkHm1AzNeTdzeGa86R53HwsCKLp8RnwoXhfuCznEAyp
	+N3jFGQBYFgLryBrBIVUGO/9tg/rpTeMaiVLtcqfSleVY6mqKVSrNY8QsDShQzQdZ0BmFGLTeF8
	Fx8Z+iN+7Bs0ngFnjZJscEdfqSbx/ACmR5ybMKRRTMd04GOgAkXnl9XUx58wZm/2R8izc+Z4hQW
	V2dOO+pCXljP8oGXIWn8M4nbJgUPSgWGLHAVoJ6ATOJKh98xw4NXkh/wWY3LzXK+drw==
X-Received: by 2002:a05:620a:7008:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8b5f952bbb5mr487978385a.7.1764846916775;
        Thu, 04 Dec 2025 03:15:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHgaJp8cQfByAF5muutKywqAmPk2+BCTyVN+PGosq/E0fHVhINp/w/EiJfmKdPPtlH3X59KVw==
X-Received: by 2002:a05:620a:7008:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8b5f952bbb5mr487975385a.7.1764846916221;
        Thu, 04 Dec 2025 03:15:16 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f449b160sm113161166b.23.2025.12.04.03.15.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 03:15:15 -0800 (PST)
Message-ID: <3f5e8fde-5b36-487e-b740-662d4f839fdd@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 12:15:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] spmi: spmi-pmic-arb: add support for PMIC arbiter
 v8
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com
References: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
 <20251126-pmic_arb_v8-v5-3-4dd8dc5dc5a1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126-pmic_arb_v8-v5-3-4dd8dc5dc5a1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RKW+3oi+ c=1 sm=1 tr=0 ts=69316d45 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=j3wpoAvkOW5Jk2P-UAwA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: yQ8mW2vuC4lY_hNuooS7wO7npUZipY5D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA5MSBTYWx0ZWRfX82ldWW7fWS9n
 RquYaCadl4fc+K3wca9lpnyUXoN1Btwx/bKlFWspp9HQIQa7pgiZz/rDnjlrci6dgSVN/9qfLyU
 euCzwq3mjcpWzTWdbziKT6siDaNrEi4QR9TpbxzDZc1z2HE63HN2OkTZpJG2L0D5VXk4VdWaAQ3
 8g5ACAUW+S8Z4YYH/tIOB4nnUpZkipG/jfDW11kQh053B2Ry3xLd2YjFxU19cXSEkYf0gE++uRw
 D9LwVe04Q3SxtNbh/BJn7cnoydocGrVqME/EA89B5WtxaxsMedy99aehfAsmqds8aMWxuXXdLPE
 8Pfm6RgyWuAy8+CiEHZyI2ozt0CuskBvrFZJOj2LsJSP8e58wdobP2e8NNT1cFvmh2qgmxl7Xk1
 py6GigXJdPAd+G96bq7iibDyxOzf5A==
X-Proofpoint-ORIG-GUID: yQ8mW2vuC4lY_hNuooS7wO7npUZipY5D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040091

On 11/26/25 6:12 AM, Jishnu Prakash wrote:
> From: David Collins <david.collins@oss.qualcomm.com>
> 
> PMIC arbiter v8 supports up to 4 SPMI buses and up to 8192 PMIC
> peripherals.  Its register map differs from v7 as several fields
> increased in size. Add support for PMIC arbiter version 8.
> 
> Signed-off-by: David Collins <david.collins@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> ---

This looks neater now!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

