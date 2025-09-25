Return-Path: <devicetree+bounces-221261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2A4B9E25A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB2BE1B282C9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2CA3279351;
	Thu, 25 Sep 2025 08:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H7IzIFfg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33602278143
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790583; cv=none; b=bP6dxBZc5ZtneGpO6vPDVApgoDRhsPwEzXezCZ7K4kr26MtJs+n7lPO8EONP8BTRrvqzrtBHNcE5yqIPiCdFXsLvcj32wHIvo7UTTkQ5zUZVXhhLGBLDYPoIwSiZWqSW1e2pQKNK1BHKQ4LbRgjFN3h6pZCXsuz3AWmffUhTsaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790583; c=relaxed/simple;
	bh=mfBuiVc1jTrNnBpkc5m0CUezfJaYbkMF3CihobTqPNI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GF8H/om6l9n4GRGyN4aqhf/Isp5IV4kPxk5OcfUfbWKshGaqI0yq/G3flRoyQzrZRnzSDJQ3wyVAxZIouXVTyU1GmhcIYZJhCetEQWODF31ZP9M6wvOPFPjViKZeSg3igzZ4opg2z5M+mQtHkMh71G1j4RAQqQJ5uq24BUztIRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H7IzIFfg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Kad7017453
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:56:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MyjBhb2r/gU69fmaCmZ9Ifgn+LhunjwusqmSUhFSlqQ=; b=H7IzIFfgCOJyK1b7
	3oIvxiWtBbOozTBiscC8shuYKwGgMy06PMjokEx58soMCQv4XlpK84L+atmXamPb
	yRbal4CIQL8zhDX7vG53lyD0KRTWGGEcRENGP4lqjek/+DUPNiyenRlze9kRfjhX
	FqB7mEH0acP3v6CLFYNFmqLD7jRlvUYiTxEDqu5us7DSd2JwvhhYtxfSHlR3ZeIf
	Y1Y/0kE5z+8vWWnRSsQs4WS/Cl339iOqEd6MZ8cqFq0CrCkJWBRfOzLtH3QZEXPT
	HNwycXhCrtwp0xX9i0XlOVPR88gmE8OVWNRBoz/uUYEElC1broCTnjj7/n8YXg1k
	sAKtmw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk0stp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:56:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dc37a99897so25041cf.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:56:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758790580; x=1759395380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MyjBhb2r/gU69fmaCmZ9Ifgn+LhunjwusqmSUhFSlqQ=;
        b=Z/dC0Nvctvnj5KUFiuTIILGVSIW9ql0cUevui2GjL2XNZCgcz2rfZ1bPvcmMMwxTCT
         pJ7xWv2SdBRtnpcLakqEQC1xnpQgDk6QT2VRsNZBR9ee7SRjtGYCuRKydRPQkSsy5dBF
         Dfe8mTZQF+5E2v6SqpWBjjixUEik4IcZvWeAL5ewWk0T8WKvlcOGvCc2bUlmh1nIHHHW
         7Xphweu2brD0T5v9P/fD+ioT5KpY5szJZaca878iOnLjpD4wkDrd1agC7DbGlx0qPL0f
         T8V9WTrRvvjQGjwFO6+kK54LaujG3ilSWm918b4mEkWO/ZSlgGtNmvLavey/zMSdYCA/
         g/8w==
X-Forwarded-Encrypted: i=1; AJvYcCVla8RXFhIvo+Zkj4aHKOcyGim80qIJqqxro8c9YBAuS3ZQK3r6x3mRRThlwwH5say89ADRPqRZDMfp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7N4BqlpKN+29btIXrcUBx8Rwd2mlQbNU72MHlkeqxgNtnLLUo
	Du2z11Tz4K+E/JIE/cFeaJIdrh1bkd4Up9JpzN6HD2m8+DewMAVAqTLOtRlRyMG5mXcPEV5JZoD
	mJX/Q3CDUV/MssNafvgfd+bxbEb0KBpfxsq7uryY16DmgvcYq8DkSrSPMuuM5I8bW
X-Gm-Gg: ASbGncvj6LFwpgCtcpqbxM1Lp9BWncIBuI+wJlR8Q4M4bb009Bn/BmRiclyz/fImEze
	0491oN60TCSI/bEy7Jll1xk2pAb2rawXNexSm0mKA8FUM17ICeONqLepys+KqaExjh9GmU+mg1J
	ptilmDFP9xyTsxaB319HYOcFCYknAmsLfl5LOLakl6lZxHAe1D9UvIIZzKMBpRsKgqDyNleZtnq
	U4XrXCkRv4V9PEoKKKnxYJtzu3AKYxaQ6YGPHf+FTf3muWmBjHM+DLnMZrnls+dlZGcFTyW0UNj
	+nQ0mEYsmH3EphdB1eWGRvKocMseNJo/VKo3eUHSKhHLAcM0OawNehSLazA8W/vIgjc2/PB+St4
	aw9v83aZmxRnNltXvPtiaow==
X-Received: by 2002:a05:620a:2946:b0:827:d72a:7b45 with SMTP id af79cd13be357-85aeba1f4b1mr214524885a.12.1758790579929;
        Thu, 25 Sep 2025 01:56:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvIE5OPFID+YJREvS0boNYXOcv2oaoxwC5+Hv9MQUwY7sobh6xykrZTLcHUGRL/Jq8V+GX/A==
X-Received: by 2002:a05:620a:2946:b0:827:d72a:7b45 with SMTP id af79cd13be357-85aeba1f4b1mr214522685a.12.1758790579433;
        Thu, 25 Sep 2025 01:56:19 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3539347676sm127658066b.0.2025.09.25.01.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 01:56:18 -0700 (PDT)
Message-ID: <c85c00b4-cd73-4672-8a9d-8c97aa0094d2@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 10:56:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] dt-bindings: leds: Add bindings for Kaanapali PMIC
 peripherals
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
References: <20250924-knp-pmic-peri-v2-0-32316039db2f@oss.qualcomm.com>
 <e06694ec-41a9-4d31-9fd7-8f24f6aa17ba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e06694ec-41a9-4d31-9fd7-8f24f6aa17ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ariXgQ1pkxbPgEv2Op97LqiHgLi76X5s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXw7iUQq1ED+qj
 gfm/8yP+Z1Iz7US7ad428kVqNMbUO9gO2YAggyjzi740xtZ8nrrmopZ/agVAsSs8Ofw6SJJXfpt
 a9ZDTXg8U/XlEUAyy1aH9TsOVKDQg00WzyQ7qJkedF78p0bNpt2YY1UYULikMRo+QFVgcoN/l6n
 8gNPDHXoWRxFreme+DxDV7xk4czsd136c83okrnYGuuGf/KHj0sh1XpVvDxCldAnr9Qqew3U6J8
 KRT0XDoxsBf2oye1kBPSSaMpFphFqRe8bu0mVdXYBGjgi37Q3I9udNbuSUNR2xqqGUc0DrDrYpv
 2tnnBPRyezWJtI9n4/g+L8anBr3Ymc+z58m24FRaSjkDuQokH803yzPOLnHsbRiennlbBO3PTpY
 SKPjQ1L9
X-Proofpoint-GUID: ariXgQ1pkxbPgEv2Op97LqiHgLi76X5s
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d503b5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=cUfx7Bp6FHvb-ErLiqwA:9
 a=QEXdDO2ut3YA:10 a=UzISIztuOb4A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/25 1:55 AM, Jingyi Wang wrote:
> this was accidentally sent twice, please ignore this.
> 
> Thanks, Jingyi

No issues. When sending a follow-up, please make sure you'll send
a *v3* (so that two parallel v2s don't show up on LKML, confusing
tooling)

Konrad

