Return-Path: <devicetree+bounces-184336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9573FAD3B44
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:36:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73E2618852C5
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5A71A76BB;
	Tue, 10 Jun 2025 14:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mn4SUFjE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD15126BF7
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749566207; cv=none; b=Adiiy2aKb+crSTgMObeVPWFEmxWVhXsqIRiwSvnFbDwhz44ADOkV338vHZAqDvKbpA0BLT+CZ/DsiIEqz078+fIKjeJmPih7s0XL0fcj3LjeJL3ElFLmur3wZyoI3guPR9IUMKWjd1yG6AZjbp8F3CjE3hbZtAhdq7xXuIaweAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749566207; c=relaxed/simple;
	bh=z8bTv4mLDuRDlO+FaPlTDYKUXMESgx/vu0DK4Il2gU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KLAsfPUkkI3GITnMGKUro4NWyhBA3udwjHWrrvDPudmrrKTsFLnUQH3jl/lMd2L5LJ5rlvHg/MRlsoR0VBY00XBUdheL4cz8uahO1Saoj9fY37RhuWVjoJWi12UAbkC2FysFEunBvVpMPvKtLfsUeyH4cHKsWFebXbrdZf6AVdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mn4SUFjE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8FO9a020359
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:36:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BVZlJK/GxgJY/X9zC0XGrcWqi+GkfHWHyAwskSfnpf8=; b=mn4SUFjE8MRlZ8ke
	th4z4VSdiSRULhatOTzsxH3y97c1zG7QDfIUZKTm/6V7IOw8NTJXEcce9bnlNkqa
	dCLMgWGT83cZ+cqcYHmJ1t0AOAJp+mIkzzFgGlxhI847Sosgzv6wmT3F56XbzxDq
	c2p2JWle1/byMaVeY9OiCTu06028CUH6HFQ+pJdZxVYxs7U4hnb9HtReEdkxIQvJ
	ENBqgx+f9YrdpNbPDQnELhIYRDkrzTeHi5MwIOiHy9tpTmTXvzOGgWQUSyyS6acy
	88+43FAPKs6bOFi2QEzWcinAkUqHruexI4hoD8Eo/hdnPfd8c3UxCNHFY/AjFLIe
	Rf/1+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dgxt1p4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:36:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09b74dc4bso95859685a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749566204; x=1750171004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BVZlJK/GxgJY/X9zC0XGrcWqi+GkfHWHyAwskSfnpf8=;
        b=kwTJg/+lSO3BDqK+naSoDhSO5o3nAoLRBX/EmvFVYpcTmJGQyv3PKUDaZPykfWFa3k
         nh7unyuNh2FDwIiCw2VPs6OLpRAP3lZWigO5RwBrqlWSSujaafb08tUnpiAJhGNJE+VH
         wgrtNBze8p5RKVpIW0sIZiaCD9yBzfWbsMPnQV0+Z1mqZzO2FU/QJdGFJPLCcEbRze2Y
         2lvH+5ScELe19INqfrAKAZ9U0ejB84pU26YHUtpApHznZWICgzAThpCgoTSBNTb/Ue3V
         ZaqCAS+WeNCQdYVeo+4hw9/N2KTkO9b3j4wGL4fSfv+e4v0PgPsQ6CwsQyzSjJqw8L/F
         4Srg==
X-Forwarded-Encrypted: i=1; AJvYcCWVCgOGEiS4S5BFDZ2BQFeesZLdr0/p0OVDleCknwWOfuS12dnz4SDuPB746VLuO8QaQO8YaGk+oUBc@vger.kernel.org
X-Gm-Message-State: AOJu0YwaSFybdj24tuUGbLznP/e96kcFdZXO0FGTpb/jYC+xPiuOq9EO
	/YM5xzFfg99gY9iJgN/LJvxhT5QxzKs8w6YO4I+Rlo/VbaprmK9XypgCa3M5G11V8PGocWhsAmr
	xmsLs7eFZOGtQ+bTxL3YdpqD/lVs/PBdt63EDGwMBWbFmBD47/gBuYDyJ3RNN3JYJ
X-Gm-Gg: ASbGnct4UOe+M7Vrepc7/mjd92S8Zf6oK9Hg9nL+7NqT7ZeOQ4FlUoHo++hSWk9zSaR
	njWxHtzjNPws8x7zE3/4Cr2GtVRysjzw1x8ZMBj4mO9GSp9zl+HCwSQemM9WGwy8DVJTWs06/3H
	lfwhpujyjBzge0E8f9/Fhx6fggT+dieDFFb4EzLQMgiJ3Jore9+WTTlYgg3JDN5C9/Sd62zBWd8
	AH7fR+ooUAHbT6BI9pFOEZNme2cASGTmuJ+lBYa46P2+rAiLf5/ODuEvODTg4N3XBmBZClrpBn/
	b3tonlRvDQZf+dvD7Qp2Q8/y0Innls0r/mDsgy3WSbbr8V/dIYdfKKc89+Sxx639XI02m5zlHQ7
	x
X-Received: by 2002:a05:620a:1905:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d33ddf703amr932427685a.8.1749566203896;
        Tue, 10 Jun 2025 07:36:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBbQ7SHFJAIcnH7aGz2wAofoXXYsrztV5V109VXWdIgAcLNVnSvMvyMhOqmTXg8HcgDxWrxA==
X-Received: by 2002:a05:620a:1905:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d33ddf703amr932424885a.8.1749566203410;
        Tue, 10 Jun 2025 07:36:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d7542c8sm734986766b.21.2025.06.10.07.36.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 07:36:42 -0700 (PDT)
Message-ID: <33fe6caa-6720-4af2-a0d8-44b75b6792da@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 16:36:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/msm/adreno: Add Adreno X1-45 support
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
 <20250607-x1p-adreno-v1-2-a8ea80f3b18b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250607-x1p-adreno-v1-2-a8ea80f3b18b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: A4F6FDUgbMPxwdJSi_u2BekWbiPGy0VO
X-Authority-Analysis: v=2.4 cv=HMbDFptv c=1 sm=1 tr=0 ts=684842fc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=KtEEE0qNWcsMKkko6jcA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: A4F6FDUgbMPxwdJSi_u2BekWbiPGy0VO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDExNiBTYWx0ZWRfX5d0fzMFukfae
 SAjOMTHbtQ9Zk4Ki+XY0MHDtnFactWBmyMEF6kO0UlnxnIwW0bTHiTZqmOHKPS16tZb2RW1+Zcz
 BMQPuV9xGN0Uwz85U5xEJGPS/Bhs2YPIctRoSP8gSeLFNkhIfEkMF1pCfh5bPkKzOYTLk5WB5Cv
 iRdyooBQ2Cfe94ugAuFPz1RPymZiN80886rzC888Bltd9OAygrx68lko6ZhD3PrV0jSgceP3hXo
 ir6te55WrGjQmg+5xXf1bGMOd57rlDsdVysM9vsHgSw383m0Qfrn3D+hNKSOQYfpxDUmuavjC9K
 pV86Qho0Xk4off2wP1cxAq3H4jPXP19xuf0kPcTDUyhggttCgKQGF7EGLU9qvQ1rhUVCypN3aWW
 S8aJwjAlfqZPSi1kL4eYRJ8g7Geh9zXqCNPaVV1zPBm2fvy/JdDJFFMNmSPchXtkvSv2FaKQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=907 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100116

On 6/7/25 4:15 PM, Akhil P Oommen wrote:
> Add support for Adreno X1-45 GPU present Snapdragon X1P42100
> series of compute chipsets. This GPU is a smaller version of
> X1-85 GPU with lower core count and smaller internal memories.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Matches what I had running, I don't know the source for fuses but
I trust you

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

