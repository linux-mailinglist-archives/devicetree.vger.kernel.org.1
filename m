Return-Path: <devicetree+bounces-150984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B57FA44129
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 14:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9059D177185
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED88726B08C;
	Tue, 25 Feb 2025 13:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xw0Hvceg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C19C26AA9C
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740490739; cv=none; b=N+UFadkgXZwfMRF7CSvTkQ19JOqSZvYcuu+VkIiGrRAIss+KQgfXHeR0tZCHbE6Y/XpwFkKhEislbL5b8b4xhUnjEvV6nwqgczcTNanHQ3iY+xBXgo+l3yyxHRYKVFZkcINE4q/mc1qdg9nEYvvfTkKwKDRgEkPQB4wv2SfxYVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740490739; c=relaxed/simple;
	bh=v0bj/zqw+24ErI/9iNiFwIBMrJ6F00qOqAwC3m6PJmE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EFme/gJcYcOBxgVcf/uaCAyxX/ubd0YQdVyN8f6V8ue3uOZZq9Nr7yuRdy12y47D0z5B5dmrODbAyKxaLW3TtGTpvCRVQHwhE3E6C6pz4IKccxOHeW29JBZQQbE90D5dpn2h9UNpqk+kYNZBQAA15OVmLsBqDwKZeG5BDQuBSUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xw0Hvceg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P81u6v020463
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:38:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	woumc9GjD8qeeQzGa6RZ11jkdHts493OKWZQDEqYj3c=; b=Xw0Hvceg5hBS9mkI
	eGRpBipCHpFRWz179D8DzpEGhAi6LUzQwsAxurvqMxR2r9Hv1lCpoe5uMY99Q5KM
	nWp1FZdkjxGYQ70829sTBB3VXn2LNGzzbI84U21I9P0rOE32FCBWfmGRtezdmlTv
	yixKlxybdY6emzQtjuiw8WwMbRT/G0nqQ0PWaBkTjGAGviROsK43N18QOFC15VOq
	5NOIX1Q+TS+1oDi3CL6+uUKMiCet5bZHAN/ugn8TSiolUC+vOulrFooEOex9wiGO
	8Iq2VKs8dDe6em1z8ynxN5GlNPPhl1E0tI6z3WRDMNfj2oCY8XYY4aTi9QxzVJPD
	3S4nAw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y6t2rv3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:38:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-471f842ebcaso13916301cf.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 05:38:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740490736; x=1741095536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=woumc9GjD8qeeQzGa6RZ11jkdHts493OKWZQDEqYj3c=;
        b=rFFRwedGwKckIe4W+/SS9arNIjNj0b+YNGyOAf69gpOZ1/lTlaxxXnfCcjIDweRZjZ
         oI4P+MbFBpeUTrRYTOXCAtzkmPswq6Zkv7uhY5H6DzZHhE2Kj+VlK9QIJ9LL6cqdjO1H
         qKEAEqKsdprvH+cDUgeK39MxqHvSUSNZ0+xtx+c/VEpz8k1fmSYZwhBiJrDLkoMwk6Aj
         xGeFoGcBLdNU2Aj7ZlWGjENZCQb8slHLK/0el+LGBW7/bLALeYGB4j+qEmdItSaFNBbH
         tggL+07Mubib97+/zdCYG7zX9rE+NacYTs9FrlZln4/RHeyRern0RiFwSv3mBbO599dE
         KffA==
X-Forwarded-Encrypted: i=1; AJvYcCU+KqTeODkiyX8zAqJSYzX7RhOktAOeXbgk9Wg85PmIRB/1dYnILbRLqDQCXLXovHGl82cF0R1t7g2f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2T0s3fFBZamqRE8ccQUHANNiY6EeTuwRD06T7y4kCVj0f/L0C
	FRvjowrh03/jG+31SHps35k6HgDKf0GPF/MfJhm6tqtQsAzb2D9jPaWZfqpDQzijXxZkOI1IjhX
	DeeXkJpDYS/kiNNwiWFdSv1dy/EENs9BXfLpZ5kzvTmz+t6gXhIttTb00FY8P
X-Gm-Gg: ASbGnct+jOleD7DhTzNuW1S3Fq6YMTHZNr0KweV1wXqnsLXYHBNLIxnnbf5K4wzIUDi
	Jt0q5FuKHMauVDFJzDgTmOElGCbWQj5jTcvblUmOBud+I2wAMnTqSwZDnbFVeUrsqmwy73UCmn2
	Nw5dt0BL7obugap9tCuuuaxK1RLwpnDqLOmNp3ykyIQvvv4JY2tthH0tqgbsSRCXJS0AICsjVRt
	g9qJyurWtD6Eavqq3SclcrrFPFQ2tQWmtk34w4rRD2X7fj2/vy5bFqfjUhh/ZrL3tXcHEOih1w0
	nl64t9hnlOsOBb7y2hicpOYyj0kKotWiSb2U7WzYdnL0BgiK2+rHpiLxBcoqd26bQjKYjA==
X-Received: by 2002:a05:622a:5595:b0:472:1d00:1fce with SMTP id d75a77b69052e-472228abedamr101174471cf.3.1740490736236;
        Tue, 25 Feb 2025 05:38:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjOXuBD+5u6McaA71MsHpTumzGjAxp/BpGHbEliPe5AFBeQouuQ+C3kOjYUnIrWHRb3ZXhjQ==
X-Received: by 2002:a05:622a:5595:b0:472:1d00:1fce with SMTP id d75a77b69052e-472228abedamr101174241cf.3.1740490735850;
        Tue, 25 Feb 2025 05:38:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d6b153sm143635766b.73.2025.02.25.05.38.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 05:38:55 -0800 (PST)
Message-ID: <3956606b-71de-4c71-afb0-c4918888db19@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 14:38:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm850-lenovo-yoga-c630: make SMMU
 non-DMA-coherent
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <quic_kdybcio@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250215-yoga-dma-coherent-v1-1-2419ee184a81@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250215-yoga-dma-coherent-v1-1-2419ee184a81@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: di_gNPIyyia-qq8b2DzxrIyizl6JAs0Q
X-Proofpoint-GUID: di_gNPIyyia-qq8b2DzxrIyizl6JAs0Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=740 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250094

On 15.02.2025 3:43 AM, Dmitry Baryshkov wrote:
> The commit 6b31a9744b87 ("arm64: dts: qcom: sdm845: Affirm IDR0.CCTW on
> apps_smmu") enabled dma-coherent property for the IOMMU device. This
> works for some devices, like Qualcomm RB3 platform, but at the same time
> it breaks booting on Lenovo Yoga C630 (most likely because of some TZ
> differences). Disable DMA coherency for IOMMU on Lenove Yoga C630.
> 
> Fixes: 6b31a9744b87 ("arm64: dts: qcom: sdm845: Affirm IDR0.CCTW on apps_smmu")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Let's revert the offending commit instead, this must have been some
sort of fw development fluke..

Konrad

