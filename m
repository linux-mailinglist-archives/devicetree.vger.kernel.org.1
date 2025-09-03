Return-Path: <devicetree+bounces-212229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C317FB421EB
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD93A1888D02
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5DB3093B5;
	Wed,  3 Sep 2025 13:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LsmQHOXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889B82EACE2
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756906651; cv=none; b=jC03eUW+0OhmD1CuFwOM+dIcVA0AgpPCyRif5FRcGG+GCX//wx8PsjpG9HDkxe67iG1Uq0zjAYGv+LjDG6ey31Dfc7RH1iFhznsw5ouV8zQBMwnwQsGhlWQAqqLV3FqbnwI6gGfLQ/tPestJ1zHuf0U1PXO6L0kTIl5CUtcxlTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756906651; c=relaxed/simple;
	bh=tacXb3I7sD82JjGMbS8Dqgx1hL17l0hk8fOJ6PMQcq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hjwyKbHbjWEbR+djp11kr6Yn1qe1SDA6mh5Wr2kMgjJ+1CjYPRME9AROCdTK2FKJwIUdIJW5S0LgvUluZJ0B1Aadm1l6UovY15AfCJPN4cj7gUuQqx1tyPX2HWFNR2cHEmzE2UYQqZh1xvZIjPCM6+aS/5MRBP6UMLSnqV5J9Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LsmQHOXI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEwhY022943
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 13:37:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G6WxjVs+4qB1wpptnxje/lLl2BWE/gnMjf/dmXAtLn4=; b=LsmQHOXIM/ofd/2i
	Gk9P9qYur8B8+LvatykrcBUBrN7ecmvdxnI4IekSsM26hRqjzhy0Q4lcw0+tH2XD
	D0PU7/PjIpqbMxMLzKkpC765oMelSfI3HaSgloqXsqrIyKinaOLLokmJdTPcMf5a
	Mfi3nl5T1UWSQQeyjQ+wTjpwGnIEYFwcg0YqaCkrNjGZseUL9enRcIWi1FubdYzY
	WY7iS4wDK+vvi9vkP4fmqzngE8oZDbgSc6mlCDJNA0ee4UAyr/Ju+GF01dZ0jd6Z
	Sl6Q5jJxYrn6RWgNABOffNV1vPKQA3BtkXIUt9Z6N5mWZjCBQeQwpTsNk+qIGdXx
	VlKBnw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ekytr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 13:37:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso873761cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756906648; x=1757511448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6WxjVs+4qB1wpptnxje/lLl2BWE/gnMjf/dmXAtLn4=;
        b=vDkShyEH1SGbvBce/QTJPnT1ElfYUJNJ2AaYquSXsmypKOz/xh9apDtegSRyS2hRvt
         3qWGbLL+NLQOjT9Asa5oAw3s+A4Pe5JcVUpA94XZxOM3ZK2jMoP49oPpvh9PTY8KJ5YH
         c2UUcnKw01MUV150G6CVYV13bwsFENlkYAGrAu0VH58KNpeO0oEPnV4t3h+28h4kk9hQ
         VMcJqpFHGsEho4wxZsgnbsedg1rNSWD4/9r8rzAz32vv3VfETT2A8NtWYQsYNFSsrsQd
         rlKmqJ7Wty6NcSJ2p7jMqVOTxma1Xkg/XXVRN6zsVimtayxvsqYoaaOCdsBYftEAARYt
         gBwA==
X-Forwarded-Encrypted: i=1; AJvYcCUdgOVi4rYe030asK1GGy96A4vVT2ocO4TR/B7l960DwP9cyT62jQfN+0MnamA8uWsnhto5P95H5606@vger.kernel.org
X-Gm-Message-State: AOJu0YzB/c7OwxBcNz4SqKiI7NGMx1xITmBmR/4+PjlIv1WbNmjYQUSa
	bZDaFq4LW0wv0tV0KiSRSvPFgBwKmASONFH49XIcF2cIB6UJTBgiIaACKoEsWLUiV5KCyPmJ9F/
	YbHgnlzUWoM9zBh55OmUugwVzRNyoELqIxww/05HATlR1c0onOaA74rmjDkIzGFyA
X-Gm-Gg: ASbGncvhYZbDjCqLyouZ5TA81lBxBfg7cCZDZr89oMV/LZVo/R3jekvujCX2G64gyhf
	7XTI5kEXS2nrDozZaZ609HbDW17HXa01ZhQOYos9GVKFZwJ89GUbGii5BHzQTK7puLX+ZzklhiT
	BALRI7xzV82t1jyox0AT37vcYxH6SSy1Xk12YKLO0TZ7kBQr8odh9yEQEWUfFdqn+0mu0i13je+
	qe0X0NujdF6fmS4eCmKP/PYMmDlMCjgRBiBtOWmNUxonSJ2dJ79D2rtdhYyxhhMoMN0dnoCkK4t
	fySR2AOzIm2UvRyWOFBZBmTzaKujytauwpubkoeOLTZhpFFTWnBSAS0/Q4XG8phtilsj7crsZkL
	4lNq0GzVfg2esGoJ2ci9iew==
X-Received: by 2002:a05:622a:5f0c:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4b49655aba8mr8680561cf.3.1756906648261;
        Wed, 03 Sep 2025 06:37:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9aESjDi7u3ikl+t7p2SljGJv1hsVA1MO3GfCrupQw910Ny+G82IIly/jBPP+7T98Yksz3kw==
X-Received: by 2002:a05:622a:5f0c:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4b49655aba8mr8680251cf.3.1756906647585;
        Wed, 03 Sep 2025 06:37:27 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0431832a98sm699384166b.80.2025.09.03.06.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 06:37:27 -0700 (PDT)
Message-ID: <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 15:37:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: trB33ssF9E-AcRoyGz-bKG7VhjBCGz2S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX05MaTBYYxWeM
 WRO1ZMf97HBszmqZCpsp9oO6I+FqABwyJ0/4SfG1PzewFs4Bx7OUUAwPDeYp1mNiDba/Sv/k4hQ
 kt5+g85uLImmmlDHvHLXE9OwbRIfIgqfZ2n7JsXUo968+qoL/p04jg16TxYoBXpJpHT74PPYa12
 591+SOV/cHS9xXygGAUvMLSAtg54pqUiHYMs+abjv5MmLe8MMo1A8KlNnz8p46bupKKWORcibRe
 QYimWYRT9ofyE4Nv1mIFi3UeoZyTWf8QzIntMymPpDtSwHFY+XiLAhDNoDaDSbiWmEJDbFGlscO
 /LUh7abBivZ1Ny7nPRgOn4n+2+VVwWRKIdxgVhKnZYh1K0SRqWRZIjQtjEtPu0+C+hiDqZqZXmC
 WoixJWm0
X-Proofpoint-ORIG-GUID: trB33ssF9E-AcRoyGz-bKG7VhjBCGz2S
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b84499 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=D1QSBg5h22RYVcxFYwcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On 9/3/25 2:37 PM, Abel Vesa wrote:
> On X Elite platform, the eDP PHY uses one more clock called
> refclk. Add it to the schema.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -37,12 +37,15 @@ properties:
>        - description: PLL register block
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: aux
>        - const: cfg_ahb
> +      - const: refclk

"ref"?

Konrad

