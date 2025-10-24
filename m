Return-Path: <devicetree+bounces-230722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CC7C05361
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98621427A0E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0363081BD;
	Fri, 24 Oct 2025 08:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LZqMlZqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DEE308F07
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295160; cv=none; b=Cxxvq9h+8IJmfbedwjRZO8f8504/Xox1omiqUa1t3Chbp2PpCDuVpoyoODzgp/eJ9XLzbMSE11QjoOPY1SYoHn7OtdyejCpxUUuD4KrEidHvy7BEYYZDHMX4b7F+zu9NxY9hDm4yqsu/8C5tGRBXDfB744AlcVT41sxe22RlOOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295160; c=relaxed/simple;
	bh=uopKghKQJQC+vDU7zK18VSdaclR1gXuEayi1yBzX8Pg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=exZFKYIxonkciVovSySvCEIPZkBYELaxra+mB4cCNPTRUmFqm28o05WQApZUOq25poEULiWyfl0Pn2/8wM66+rx/FnDILN/UayiuZAC3YUE0UhueOUrYLrjA3neM8bEtwNPek9KBMLkzwg4Edm3EIyp8vHHs1iKnTtsUHD4JqXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LZqMlZqg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3MHf6021689
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:39:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mP156TZe01h9/msLZKaMsMU3teKXdisSYTct+iW2lOg=; b=LZqMlZqgyZDjhJTD
	5xG5l6Eubl9O4gA0EBsxv37EcBa6ly+orSWj/pIRgF6N6WLc786JImiQ1a9vA66I
	2MRQT4GDMsKyI9yA+pJMVYE7O90Uo4GoTbbnNDOSOKxxdTsqy608SAiHOB4fgVa8
	mO7J799Fb+uIBu5h9hJ9EMIq7t4QRYcDeKsmTjsXmC88X04IG3Pjujw1FLoIbsUa
	32m9VQDfk1xgm1XNW4qNP1odHhQjIZqCwBZgPmv51u0KYMu+uvp6iwsm4XYN/1EK
	hS3UYoiBqUK1X40P35wUJLLoCmiL8/1goP4Y/XYWM5XrfqPxcuKGxD6Fe8TlN3lP
	1y+fzQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5x8njk9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:39:17 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87c103b902dso4276046d6.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:39:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295157; x=1761899957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mP156TZe01h9/msLZKaMsMU3teKXdisSYTct+iW2lOg=;
        b=itjYyD6KvOCa9TR470e0gFc14ormW2FSjgzPRyD2XqVEl9Y/C579H8L5WYosU5eksi
         CB0ZwoBS8NZx9hFZPHH5OP9Jg0P7idPRWOH7oJ4x7HDN+M672tn0ntKw4DR8jT0+hlZp
         q54moEAWVhqEfPVQKNaRx1lHeWWSbPzg90W9TayEzlTFpv6TypKwUj6nus2O9o/3njFU
         9sUxaDQ/FCKo4ns0rMAxa6EuYt7fJETumeKlqR/dcR7QE29Je49qhEHRbYt2kk2VziqS
         MUcu1btTHAv1B6bFq5F6C+iSb5TcJNsVD7NaJqd3WKgLS1fh0wd+e+069xJgRYwrcA9+
         mpZg==
X-Forwarded-Encrypted: i=1; AJvYcCV1kS9Dmhm4LgQhEJ0VWN4HHnFbQ60xY38dLRxfNYaKdqkIeKkrJ6TTNy3GUwyc9ImnkB9rCvOhr3Ak@vger.kernel.org
X-Gm-Message-State: AOJu0YyIfvLBi/mJdjDfrZiRu8hMePCSF06+QC6VeCJtmssb5Hs2HGfE
	AcdryLdh+9TiWgV5jNvMukzv1L5NtTtHa5vYRvLeF2hG53Zs/K0npVUbeQP8Zc/mVKWsZsJRkrg
	fKrBhfK5hY3we4MtjUaJ4OyNTv8YWlbjo7rdN/0EREl5JUguK6tAuyB3SLUm0hEJK
X-Gm-Gg: ASbGnctoW7FCLdpQh3mJ7LT09+7sqBXfR1Bv4Usf6KFOejBrQJshzQsIuoN92N2+duV
	P/d+opJMMxWZdhop0aVZLk5p8bLToqhMLLOMrMB7Zb55ULGtfTuA2tpxLRwdaOuM+1YmUo21UCG
	7dTjXYbfP9xeWtxZ7TJrSW3biL6SEXAsD5k8B68vjEqBtrr9RsiesHpfq78gv+Q56csCf80fhQQ
	W7igZ9mEr0lzAL0E0sdV3kenxSkcNTLv03d6QrPlROyMBu1mm9cvyc2YC/RBFj8Ah7tH2NnT6XA
	/7f9SYFS8BD0PnXKjM0v3htL/MfsrvUfX9tA+NVg5sy+zIKd7w9jdjiPbtOHz+gSASiQRed2ayM
	uhwwJpBb0nwWQNwm4osQMzVZxqleakamkl7lP14maK3SxiyK4FSTlcs4O
X-Received: by 2002:a05:6214:f05:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87c206aa6f8mr219047706d6.8.1761295156991;
        Fri, 24 Oct 2025 01:39:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOrOr8mjjpJmal/kAMyGTYRQL+8CiGnozYYDyOe6Y1EwTvskD2SQQMA7irtDBZeKIs5gIx/A==
X-Received: by 2002:a05:6214:f05:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87c206aa6f8mr219047526d6.8.1761295156545;
        Fri, 24 Oct 2025 01:39:16 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3ebb3848sm4107106a12.1.2025.10.24.01.39.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:39:16 -0700 (PDT)
Message-ID: <fbab492a-e279-4ab1-91ad-2b4000f7229a@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 10:39:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
 <20251024-sm8750-videocc-v2-v3-1-6286bbda3c8e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024-sm8750-videocc-v2-v3-1-6286bbda3c8e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JOvkXDdRhnIttaEvVX9RfQKL__KMTP5l
X-Proofpoint-GUID: JOvkXDdRhnIttaEvVX9RfQKL__KMTP5l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2NCBTYWx0ZWRfX1ZV8wY2JS/Ke
 3QxT0w36lEKYRqJ0GuE4kK5isJSRqyOXAM8fH5OJ26J1wxpEYXxZIFxPP/TZBxHdRX6TK76DMHR
 usGLSWTeiB8tptrHKOo1uU1K5llage2AGwtuBXsmTNA35GjcrSwcecQXNyaPnedM6juaqRVZka0
 RbXXmzMKiCQ/PqyiWQDoJqQASLaDwPpEuu+OXGSrUBdhiENaxR/S0jE6g9C0DTlIxQTUhbwTOx8
 9Cc0875aNItEzpLq3UoyLOaePiYLzNgZbTkk4TCBq4w018tHitBU/mLH2UJs13Qwv6tqrE1kYiG
 eCH4kpeIEUPt8P55MPRbqAWAmcw2fIrBXERZ/Pc9uZDEbdK2EtnnkAzVhOfklQCbcmNp8zHhmOJ
 jWPTt5BXFXdOyxwlbtLnQaAWytXsSw==
X-Authority-Analysis: v=2.4 cv=UOTQ3Sfy c=1 sm=1 tr=0 ts=68fb3b35 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Uv4cyzw5Fqc3vRoc6LAA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220164

On 10/24/25 6:24 AM, Taniya Das wrote:
> Some clock branches require inverted logic for memory gating, where
> disabling the memory involves setting a bit and enabling it involves
> clearing the same bit. This behavior differs from the standard approach
> memory branch clocks ops where enabling typically sets the bit.
> 
> Introducing the mem_enable_invert to allow conditional handling of
> these sequences of the inverted control logic for memory operations
> required on those memory clock branches.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-branch.c | 10 ++++++----
>  drivers/clk/qcom/clk-branch.h |  4 ++++
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> index 0f10090d4ae681babbdbbb1b6c68ffe77af7a784..4094ffc53d0c91dfa9e4263134c3a996100ad078 100644
> --- a/drivers/clk/qcom/clk-branch.c
> +++ b/drivers/clk/qcom/clk-branch.c
> @@ -141,9 +141,10 @@ static int clk_branch2_mem_enable(struct clk_hw *hw)
>  	struct clk_branch branch = mem_br->branch;
>  	u32 val;
>  	int ret;
> +	bool en_val = (mem_br->mem_enable_invert ? false : true);

" = !mem_br->mem_enable_invert"
>  
> -	regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> -			   mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
> +	regmap_assign_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> +						mem_br->mem_enable_mask, en_val);
>  
>  	ret = regmap_read_poll_timeout(branch.clkr.regmap, mem_br->mem_ack_reg,
>  				       val, val & mem_br->mem_enable_ack_mask, 0, 200);
> @@ -158,9 +159,10 @@ static int clk_branch2_mem_enable(struct clk_hw *hw)
>  static void clk_branch2_mem_disable(struct clk_hw *hw)
>  {
>  	struct clk_mem_branch *mem_br = to_clk_mem_branch(hw);
> +	bool en_val = (mem_br->mem_enable_invert ? true : false);

This value is a boolean already, you can inline it below

Konrad

