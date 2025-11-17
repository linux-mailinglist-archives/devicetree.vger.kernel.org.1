Return-Path: <devicetree+bounces-239366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9CDC64349
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6EF3D3804F2
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69FE43358DD;
	Mon, 17 Nov 2025 12:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nza+9LbK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W6JtRHqG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A88633557D
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383237; cv=none; b=CVkDeA2reTnuH0SNudeHKXva/QakaGwVom9ozTq6SgaXjXWGG9WTfoOGdSJjrG/PoOoVLBbRjpNaOGgjOQxm7zNeZ8HUeaiRbKIcZKnHMSqvnk1QjmU7X5miMv06uToS4lmxJBQJY35fKc/dk6xT6TvTcgzIUWxpySeQh//Gd6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383237; c=relaxed/simple;
	bh=qOZJF+TF3+BuDvg/qnCQ4xpZJPRscxHIB7SeQ5jLxEE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rq2F4h4sdK0n88yNmQlkMzJbq6OM5ApSAZS6uIg6JVDd7qfhc84n9tj80OWJqF1o1blWsGjhS9bvSxki33mFtmV8PXGIACK5eULhoinpzuTojxGnoB4GpzUfYoheyZ8B2anjIiJOwXYnVWGsEfTcGa8CeTc2jfXt6nrB/D3vqDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nza+9LbK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W6JtRHqG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHAoS1Z2791939
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TMqWzpjJBLhN7aSXKykFWj6dqZupU4VaGr/5mEoMJwM=; b=Nza+9LbKw1hpf40o
	oT8K2lKeH4fB3uBS9xFnHnJzdCwR8kVUzWgGk7uibhXFBqDBB4PbNs/E3jZfEo6Q
	Kfgv/rd7MXxwLMn9GJYz3BXdNA3+ttXQ9i7Sk/MMLrl1w+xAC4K9dlJskosVcMth
	iej3bv+Zjo3SlxLFbkAwANhBb/yGl8aCWMqnc6g0yJ87xzFWWIunk3owr8q18rIr
	BxN9B6E4eqtAQDtol9zkXNYBAyKt79vMzO/Eih2Txl8w/tVzNFkn5aZZkmC2xn3y
	pU005yjptFiFQlsbWaWedY3emV86Rnhc37dtkZQfpgaAIMYzyOLjHNormptGa1aY
	jfVRXQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4afu5bhkvp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:40:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8824bb12211so15946826d6.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763383234; x=1763988034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TMqWzpjJBLhN7aSXKykFWj6dqZupU4VaGr/5mEoMJwM=;
        b=W6JtRHqG6rhaLg5yj/FFTc9s23P0YY2mfyLw5ah7ZXlPLK5AZSvBDGzAS2FXzkZpj7
         ePXcXGGDWtdA9IXBxxcxYlTfwA6OKddohGX0EjbVdyH616CUKz9tTh9SKw2VUSr//OMf
         Sq+Z+t0SPe1axRWnlWB8jytWwophxCVbqV2HDpZy9rOGt4XveK3w9MYN9UYu4MXmzVHe
         rAXH56t859vA4WHbmBJYqMRaGdW+9JTYUiIPTbXy7oYbGrQw3KEPCF+HdOhkO9W+3YOn
         eYg5p9tLJnPQFs5ysIAtweb33gP5BgIWjHlbDF+CQXqQkUhi5wLOAlGptsvm7isEY0LO
         14gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763383234; x=1763988034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TMqWzpjJBLhN7aSXKykFWj6dqZupU4VaGr/5mEoMJwM=;
        b=TQ1jtREpbpl+0Z04aZ1Zb96KjbT0U8Cvl7sw0DTpiWLqvxHC6usiKh3jtiPW2em2oM
         iUzO2L914ueAh9OmZgC129zi96j1fTXB7bBEgXhqsJTUfig21xga6nnwGmXhReqTxYbF
         5FUxAxIc63n5uSALc2CGm4cjolwa+z/wHWopSIc8B8AaOhbskgo2azWiZl/SXKe7p7Ho
         ilNNtva9jYhKiK37Mr2sC6CQLSEn61A2rdlqVyH+amkM/xHgcNCMBTl0UUE2/pN9+HBh
         2MdI1lkb13TDQM/YTpOFXzev3OOt+01D+73epuTOkpGLja4vnGpK10RrMCNZ2cnttAM+
         +3aw==
X-Forwarded-Encrypted: i=1; AJvYcCU4pHLN03BiJNHEHbEYezUhpML3PiYH0243Gd348OxtehKJ+SEdQxGArHQG32ua48IgqooiO8/v2DzI@vger.kernel.org
X-Gm-Message-State: AOJu0YyyFqYpDX819l+N8YoYjEd2ep3TDvTtNeTd3DqO1vWRlRCY71KP
	ApUIDF+93+D9SUwxpTkfT9Ki3U9BGHwu4Fc/PadUhFg3XVlgi6Nq+L8VhNhXwZRXkgJ3R1sDgiK
	qepC1XkWyoyd1jW7Ix8pjqs8X4ctqPQprxWY4KWTcQZjX+pNfEFkQ+NcgMT5z+FsX
X-Gm-Gg: ASbGnct+ueaE3a4VobBUV3gzNJhMzOXJz0bD6hif/9LuvNTLYalgfxrSdKtLMjazqT6
	l/YNHML7yZlMCabWHkV/YBmSa5bSzk3H4B/ZsHvEk4p+Ciqql6LEeJXoItYyZJwWD+Ji5pALaVe
	SShZfzMEx4u9SZkyJE4FtH4pmKnWZKYM1paqv+5de5LddxM9fSmNibsAqnVBXjqpbQiNaPXQ4cV
	LrWuTSUUNIQJYdo55RtWsqaLXDhH2CEk0INTvvHWg2KDYEbdGoVhV7VUAhwss8bjJ6ycQkQl3R7
	YvVqMNgYLSaM+FhCi9k+jF7lxg/Z6aq+c84baqhfGmwM1+nvWpJ/IKL0tCXQrZ+4ZbtskC03dit
	HiM+BVrM8eiF+HZMqeJ2uCP00YWLL1JVJZ8/0oUugewR19VOMU+0EsvQG
X-Received: by 2002:ac8:58d1:0:b0:4ee:1f0c:c19d with SMTP id d75a77b69052e-4ee1f0cc6acmr31678121cf.0.1763383233601;
        Mon, 17 Nov 2025 04:40:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHK94OwN6PicgAHosly/8/eoaFb3uwdwO/NeN1Y+NwRIScBrBLzLlHlY5QDTIwCeCx1OgG1Gg==
X-Received: by 2002:ac8:58d1:0:b0:4ee:1f0c:c19d with SMTP id d75a77b69052e-4ee1f0cc6acmr31677811cf.0.1763383233092;
        Mon, 17 Nov 2025 04:40:33 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2eesm1066812766b.68.2025.11.17.04.40.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:40:32 -0800 (PST)
Message-ID: <ee2123ee-c500-4db6-bc9a-2e5fcbeb8ae6@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:40:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] clk: qcom: gcc: Add support for Global Clock
 controller found on SDM439
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adam Skladowski <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lanik <daniilt971@gmail.com>
References: <20251116-gcc-msm8940-sdm439-v1-0-7c0dc89c922c@mainlining.org>
 <20251116-gcc-msm8940-sdm439-v1-4-7c0dc89c922c@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116-gcc-msm8940-sdm439-v1-4-7c0dc89c922c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XuerG58qu6hZkUPhqaWzmyIx7UDO7yUS
X-Proofpoint-ORIG-GUID: XuerG58qu6hZkUPhqaWzmyIx7UDO7yUS
X-Authority-Analysis: v=2.4 cv=Xvz3+FF9 c=1 sm=1 tr=0 ts=691b17c2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=xjdICbAXnItIs3Mpx1cA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwNyBTYWx0ZWRfX0FE19Cn4mZ9g
 0+oaHQ0qfuGWrtbZE0oHEI7JosAENuTtmhfBrXpU9RI0iipM4Nc1qaE8UlQJqEz/LZdCJqM8w7l
 dvyqX5x2zLfE4cOp2OH6EhpYwLPKgT8GZoDdTlNpV8FN45MMB+OI2c78mG9QbIbJNow11Lz7c3y
 6U7cbvmAfTdbo0+ap1wGZDDGUp1zaxQi18FXKGCjABGx/kM5WjcgXDjzs0EgVm3N+JTn0tLkzsG
 K7lEtkfX5yQM05NyMwLo9bAxajUbJQiNxyFU++ihNXcRqrU9FTkjabJiR84Pu3ngSeSezCyr9VI
 mvryU0f/beFTZl6r6LRhYjMfst/kHfWgDWjRhbmV8Xx4wHJ/KKWR7jSfY/OW9hcShpD5CXnIZ+5
 i6Ve8D+V5aRoS9B46VlwxmeGmRZjiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170107

On 11/16/25 10:35 PM, Barnabás Czémán wrote:
> From: Lanik <daniilt971@gmail.com>
> 
> Modify existing MSM8917 driver to support SDM439 SoC. SDM439 SoC has the
> same changes as MSM8937 SoC, but with different gpll3 vco rate and
> different GFX3D clock frequency table.
> 
> Signed-off-by: Lanik <daniilt971@gmail.com>

This doesn't seem like a proper full name, please fix up your git
config

[...]

> +static void sdm439_clock_override(void)
> +{
> +	/*
> +	 * Set below clocks for use specific sdm439 parent map.
> +	 */
> +	vcodec0_clk_src.parent_map = gcc_cpp_map;
> +	vcodec0_clk_src.clkr.hw.init = &vcodec0_clk_src_init_msm8937;
> +
> +	/*
> +	 * Set below clocks for use specific sdm439 freq table.
> +	 */

These comments are rather self-explanatory, you can drop them

Konrad


