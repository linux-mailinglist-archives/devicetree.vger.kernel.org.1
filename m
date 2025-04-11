Return-Path: <devicetree+bounces-166124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 575B9A86614
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BBA867B1EBD
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A421278178;
	Fri, 11 Apr 2025 19:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a/UZX7Tw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA7258CFD
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744399165; cv=none; b=lW+/JDt3B5+3PebSccCQtrMvwWeBFHmbutWU9qIUXeqpOg/03Jz1M1C35l5pm8IyV9hk15RPIlv1b4XRF68W2OonKCLXex969+roAINaqArKwtEH2U4cOvgMUia8UCJBkSmf8yHvKCdHYFw+AX2rNfQ/Ui0y7ZO508BBlLFlWC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744399165; c=relaxed/simple;
	bh=NtXfkW5LPJcP7ivcL/JAlSww8WGxXJURYpmVZioWMlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JknW8x9txr3UfCEfZBlAqJArBP2+L3HlgMmNzjIS5JXTtpJZgPG0wY2S1RXtX+dRqcq1wF2OobEsrkuUb6fIdDdU0K02wSFK29Rz88p2vX4FIjwBD9XN9wCCSbwCCWOkLw7i71SBrgRqlkR0voNzqiQSOIk5MdnnFCNjxX1k2H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a/UZX7Tw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BGV3wB013904
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:19:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LjcP4msDHbFpszbnHyS9j3fffcSimLZXswhsHCqmmys=; b=a/UZX7Tw8+0rIQ5M
	ubU3pJgBF/mJ6wKp50aAmL9H9AKs+PYC6rVW0MKTjZoiJ99JL9EKOlnG1VRaKCEy
	8ZK5dOQIRSlxJfrrF/FVVvuhn0YXMebdW5/K/4Tpv+8Ns1gomqltp1Mg4QyK2TTd
	Bi+slqQDPE8gZkZaumk5Djaay7JctlIeUyFzeZ017a1agdiHs1+P9oYhEws2NmYg
	n2PiAKIlRm6QqNt0padQhAWvzJEiQCQx6vcLFBQrnmoK+8sXVirEbYLoYYR0EzYJ
	L+hIhnY9wchclFeDyrlaHSkpMd53+EWDzyrkUN9E0LGtz9b5AqFv1Z+Y8Wd/hApR
	1PbNdg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbekh1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:19:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f0c76e490cso3865666d6.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744399162; x=1745003962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LjcP4msDHbFpszbnHyS9j3fffcSimLZXswhsHCqmmys=;
        b=S0TVM711NBu9IFjlZtb/kh3OJwL6zzDvu3UtGYPHNPwCsc7543QOIUVg66zrsdHjE6
         MBUqKyyJV5hnNAnTPf1sUa+EAmFpJ1qKD0CO1gCmKup5RjVFLT2bMD0PksktkNHKx1lT
         inKwnIjjdd/zQZn8FzAHnN4sWkzgI2cjUYkKVKeccgM+4eC2U6sM4M6/+Q13YHuubFSC
         HkE9N2Gvx3idNgZfQkOiJ2lNJ2NeQTSKzqVorwpNd2YYJpk7DckLhDR0EuXDzeqMvjy3
         0ml0z+D0QoG0g6PDfpMsYjlf53Ufqa+E9zn3KlGR8ZuljLCOCotYqi7sa7g/jrTx+b2C
         Gxbw==
X-Forwarded-Encrypted: i=1; AJvYcCVpGEH4r6IwG4fSjmAWoJBqtyP0SpJ9DjdoNyWgPCrf/xdabSAHaMC+liTUJxRNtl1tjYMKYX9x/sQo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw0zUnNdL4bf7xNwL4DU7/BzPwoJTI0AL7frtZJ7uua67numjZ
	fYbatL7sN7+Ubsc3dvmMWyH63AMwSD9LWtoEBSRAEI3ULiidvwm0tWiUxXskCGUg5I6FdzBB1u5
	/9JqkCFQyJK5T4kKIFPZrl0KYO6ds4NzmziI+FymmE5NjdEHC5qsWdkaKaIuj
X-Gm-Gg: ASbGncszPuismzvLkS/GyyVdGqLPGDMStq71ZkCmo7s5artP3E8+Y2VohduoKQwWgbM
	efSGcl5feYRQRQOWdcdWVvUURaqLgm9uyOcXnvjBnA+TiV+RCoFm0kb6vaKSZWxj8v+BCz8PjlV
	mFjvSgpQlFnnaZeIoKy/32YFDsd+XglXU8toGtnvfamMBNB+ZQlpctAQ9yYeZlq2nCLX6uYXA9T
	QjnRv2AJulPBGVgT5V4yNw3teOnY44nvlVCaDHKRBfhTe5GJiZnPsBVOjyvJBK3QeIH81pXQgoD
	npABVkX2lg4RTPV8VQ/1Wpq7EIFQRQs/mTbx4UxW9T2LfQVwIfpAPgjaWS4usjjLWQ==
X-Received: by 2002:ad4:574d:0:b0:6f0:e2d4:226e with SMTP id 6a1803df08f44-6f283be6e9dmr14444056d6.8.1744399161996;
        Fri, 11 Apr 2025 12:19:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETkoAXTsep93PgvOG304UZMXCQv8pp/w7MUhWegqcp6fDQ9R+OshKwpZdKPx0wQYgOCpAU7A==
X-Received: by 2002:ad4:574d:0:b0:6f0:e2d4:226e with SMTP id 6a1803df08f44-6f283be6e9dmr14443876d6.8.1744399161605;
        Fri, 11 Apr 2025 12:19:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ce711fsm479053466b.169.2025.04.11.12.19.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 12:19:21 -0700 (PDT)
Message-ID: <824bf224-2a7e-4d3a-b160-8cdfb22e9224@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 21:19:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290
 compatible
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fUOvnUiRR0pxjt45ZI3dByBrWx51BENJ
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f96b3b cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=stLmoef1on31CLXXj-sA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: fUOvnUiRR0pxjt45ZI3dByBrWx51BENJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110122

On 4/3/25 12:22 PM, Loic Poulain wrote:
> The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
> It requires only two clocks.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

[...]

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,qcm2290-cci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: camss_top_ahb
> +            - const: cci

Since you've proven that only these two clocks are necessary and we're
adding new bindings anyway, let's call the first one 'ahb' (cci doesn't
really know it's inside the camss block), sorry I didn't think about
this earlier

Konrad

