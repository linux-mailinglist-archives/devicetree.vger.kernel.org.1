Return-Path: <devicetree+bounces-184907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 852D5AD59F5
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 17:13:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D89A81E3244
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BDA01CEAA3;
	Wed, 11 Jun 2025 15:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oAa3HckZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800081C8605
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749654670; cv=none; b=UtAitV8Zjxa2UocAMQCCUQDJROW4bR1SYZsKwV1/iJ1aQinIAIkkPXBLIeSNheSLJ1aXLOLz7NlcjwlVF3kmEXomIl9FmLOJoYdqqerQqvrfUIQsdjktaCRbX9aO0RtGhpVha2goHE2+HkLs1XsRscvabCdqRjQQhyv3bNAr2sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749654670; c=relaxed/simple;
	bh=xIY+8vOXdTA2r3NFwtuqB6f0FhcbF1mjiXLO5Kqlg/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nKq1J0d8pbOGVJdmgRhe2bsUMDYn4OJYs6sWs8oFgbupwjHzXx83kJqOhKazkwRLYqLZkyFUTU5AvRvPSbCeMUQWBty7yc6ec3dG/nbMbZlBa6DCJHY/TuaSsindRoZiI6PXdE24I9dC0EmgQOM4bL2j373lkFIs/ro5+KNTBnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oAa3HckZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DMQL029379
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:11:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XRHkflpiDITTbNLmPmmf2fFvfeQDPpqdt8UJpTn703A=; b=oAa3HckZ02gycP0B
	Byr9IfZpMhU9dSCUa9WSbADnqkgFESYBvfzroEyhEKPxbUkp+4xlqcymVkIPe9g4
	GwtnAupEP7Fyea331nGAu8o9zV3zH6Ri1UmqSauXGAZKE+KtPcq7oKEcC3UKD1Sk
	EGmVTdKQy9h/0SlbNK6sLXuPoLTq37e69OaSZfWEYKBvytOoJbvU6CMqgximyKEs
	w5K6mhovWagsqY/qHKyhClvFe4ypvGDCLLkZFdWL+YCaB4jdqWM+Oy/EO+gXIIei
	cjxs6b2JbfYEMsnNY2ry+91q+YjFgq0zZEj1+iKakyOIQ0o1iZ2L5C/JyYn2E+M4
	tATx6w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn6dcbk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:11:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a5ae436badso1489411cf.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 08:11:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749654666; x=1750259466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XRHkflpiDITTbNLmPmmf2fFvfeQDPpqdt8UJpTn703A=;
        b=gQ1j0cv+VUd8pJnNY9Tl80N1xXkjB+7LtHSJLJ25HPyYRa9dqAUf7gFh5NYhCTLMGp
         IYXF5ywfBKAPqggEz9AIeyQmA79yrFvR6jBtXveuP709JuAd1qntpA5/YjiW+/bXpXOY
         NqQwGz5qI5syb+27n9aTzZ57UE9TgCMfQjlfTuhNUX/eg5hTq0RhX4JNs5JqjaMiVJWv
         vUKB+Wh9I1Qb8MxQnibv/JpSnzbkZ1v61XtXueD4Dloz5bdtw5zKnUw6kXC8yzcVnFxN
         0qFTN6F7utxewzOjv+1V296WuiYOsoWeLWfyGxl7t4cTYelFJ+mcXcQJa60HOK6Cjemu
         sJ4w==
X-Forwarded-Encrypted: i=1; AJvYcCW98TPrPlpepQC/gOA2Se5dH4cVGN0uOA3ynAO6z9J05oh1a8NGyglUyvxnDa5vhoYtDkxaMAAkR1lL@vger.kernel.org
X-Gm-Message-State: AOJu0YzUMq8nU35EJ01lC4VL2rI8Um89+fuj8q0jde943Mx/HnOT7O1I
	9oK+4yx9Hcr4CYQkSF5meCADgB6nvj2q1dQL2xwlA4++QTH1mNAK1urwikrsbmNQITwnNvlfxGM
	k7jFx7ByDouVex/VlNZv3gnrFBxvkumgmQKbieLwMOm9tFQdieV0LdIv2W88fKp80
X-Gm-Gg: ASbGnctubIIwwGCZSDqUyh3YnE3iS6+kvRPEPv4ZyUd+/D8oIY+IGR76hTL7xWo1K1H
	9Sw53iOqfeiZfjtvOZA/+RZvVyNozsbrAGdNjOTl8g4z4PA4QU9dEVao6z73Np+ZfG8qzHu+s1e
	VKRHWf56lN8/UH88tQ2iZPKizkXVa9AKSDXnYhFINEuXD3lPw0QY9uXTzudJ45ruI/h0XkvVdZ9
	qJ1HAhZhJ9XgDXsMR3rEAoMNAGifg/vPOiFlShnQamIrVupwAYZ6p4Edf9bOmkJoxZ99xZZEnAK
	mWFr/8bMtPrC7zcWZ+x6cCq5lLxABIIzR5LEvb2dWqkVYW4A6oQcmS2aD4e279GR9JWkHBE13wN
	KFzU=
X-Received: by 2002:a05:620a:c44:b0:7d0:9a77:fb0b with SMTP id af79cd13be357-7d3a888175amr184309185a.12.1749654665968;
        Wed, 11 Jun 2025 08:11:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAMLco/lP1MiIm1Dc5YET2BYjUFpCExzSZhN/HK38bVJxSEhowNFeEa+jpy1xWNrJRJx/r7g==
X-Received: by 2002:a05:620a:c44:b0:7d0:9a77:fb0b with SMTP id af79cd13be357-7d3a888175amr184307285a.12.1749654665540;
        Wed, 11 Jun 2025 08:11:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c316sm913363866b.98.2025.06.11.08.11.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 08:11:05 -0700 (PDT)
Message-ID: <aa9f23c2-8979-4e31-9f18-9be6ed0a45b8@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 17:11:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: x1e80100-hp-x14: amend order of
 nodes
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250610-hp-x14-v3-0-35d5b50efae0@oldschoolsolutions.biz>
 <20250610-hp-x14-v3-3-35d5b50efae0@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250610-hp-x14-v3-3-35d5b50efae0@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEyNiBTYWx0ZWRfXy4VQ1pCfurd3
 XJ4ABKdtD152VDqtxH9JImewqOci1nrj63U+RG5RRrVhfy8Ifmp63quJ5LKIX3ZzaftCSmNzayZ
 zWjqQwR439un8YSnU3J3auJcRx691e4G4MTyfjVwEb/se9VvpbPT9tPw7TJzMhxhwPJ/5pjnCG4
 ijRTN4gTPZ7u2+dwD5g+L7/VATis0E4NO0qyEPKHO3JKySXI6fUeZciZmanK7sxwpkbCLZrhtk/
 Hx248zbO4agPsaQYZ63BvhFSP6MTzNWczReMLeK9zUE1B6lqVjCL+PvRmOMabHtDa4w20v+I7TO
 YHzSpYtAuw1DWPgB/RxZsfBd0Q2mUr58CtXccipp8Ntg6teSxuttEX7RxOCe5SJCpGHGc3efPC9
 YOM/WtV++zblRjWl/5GwEDTp5+NNc8WaztKgCS6eKcWo3XNVCQw4rAJeR9GjWfDKWOYJWGqd
X-Proofpoint-GUID: ekU74ywaF1Bt--FhdOzRi72do7juhNxY
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=68499c8b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=vdNxfUKwvXZ3YRcdAeoA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: ekU74ywaF1Bt--FhdOzRi72do7juhNxY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=788 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110126

On 6/10/25 7:25 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> amend the order of pmk8550_* nodes afte pmc8380_*
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

