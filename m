Return-Path: <devicetree+bounces-242968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CC943C91C06
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 54157345EB4
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F4030C60E;
	Fri, 28 Nov 2025 11:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p65ySBDR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="erYwhasd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C74307AC7
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764327957; cv=none; b=JXg43P6cZr5LYDKLULjMQNea/Pxo1/YIZufUeN5JokG8h+F8i31pTvLYorV5GpcBskANsT5Q5hVSD9HAej8Uw1GKwTYT0q5CdXgTt9TV4e5PRA93lg12vplqr/Hy0WU2RDo8iPTB8HNEuoN0fdYiDEl9Ayd8OmP9dnYeB4FU23M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764327957; c=relaxed/simple;
	bh=xpMRi3j2bo+6PObhQvvVYEgu5zJQHQXFCO4C/9f1XI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eZBmSTHvu3gzUkIEzerHa3Q7YSBzyXO1KTZs8v/SlwU+hO3HxfxAiNRBH2sm8mu/lfJTrUvNphrryuDCEsLXCmegxRr0q+Vu+kcjqxfdOoIHQaQblTHzaVXBiMYd0nx1znifbAqvjORn/xMs80Oq32CVZqoKYFVaSxbwoO9EVXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p65ySBDR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=erYwhasd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8OpfT3621196
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:05:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xpMRi3j2bo+6PObhQvvVYEgu5zJQHQXFCO4C/9f1XI0=; b=p65ySBDRBxdx/4nx
	v+adkex0rLbitO0baa6I495xKd9q62gkDn4YtgKAe8XC+pBmcD+WNiko0zNd2pEI
	TtlNBHrAO+vfPFdUt7LRF1VhFtkmhPxgc8OfC23tj8Znt8pllph3NktjTX1h1WZi
	Hhuoa4kb3ePJlb02xK6rMRlU1qjIzmT73WgCF20kDtf4ajmd7i82sIHctXYAg/Gg
	seNdOzPeQVvlPKfBGXgXDtSTg+tEV96Hl3/5bQ25HdRgRGTkUzAyWKLVlZ8QlYFX
	je8eiALIjhMW0UFwIFu2q0cI2bBiXBddXm65ZK9CHZxTZvySn3XxySdZrr7gRFik
	SXsUzQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmjdb5g6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:05:54 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5dbd3b72401so171482137.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764327953; x=1764932753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xpMRi3j2bo+6PObhQvvVYEgu5zJQHQXFCO4C/9f1XI0=;
        b=erYwhasd5EA3DnYiSxcJds477oD1vap/BKRQ/PshW8q/KeKN/+Zjn2t/o6KwsbTEXC
         +Zhdm+kZQQQw5KOvl/K3MLwowjdSjd/SFJ0psoYzTllUiJZrpnkGUbLGqBjcopCULhho
         RklSKjlecSxdn/Gsw9bT/rBbxvo42vqzrGtDPZl41LDSb/v/kH8Sj6WgFbArxmsAfDYz
         BOjty/ygfw5WU91XxM68hhm2S3EjxxApqbxJmRde/mYjtR5qS1YpMqeE2Rkxwka9LMUP
         H4SedGgzOiUEBEF9CqMhY7IzcRn2Lw/G5uNG+RMJxgzLBOyFK+wsyvWthL1dRu2VPxcf
         i07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764327953; x=1764932753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xpMRi3j2bo+6PObhQvvVYEgu5zJQHQXFCO4C/9f1XI0=;
        b=eyMYomJ7wRsuZupY3mxNYFFeB7MVE/NCoAj8U7SIhs9zVPRZG21x/baPRJLukEl+rc
         R7Y67RYEwA0QIVRRYeCEV6v7EsU67xJW8gJ9kHfYp9NHWXs2IAygaoLtGYvXSl2UohE1
         NnLh+INjK2wjOteHFv9Wd3gClHTIZ0qwMwqTZrnV4pNXCPcw2V0/q3z7tuQBf+yJtPkw
         nlkUjqLbzajQc++97AEqysOiIjVqYPxxgZBl0EVVtuqoSSvhnkt6g3QGrXKHhALlCSt7
         Yu1QIb5wuW7Yw8VQTEzq/F+ZJDwwEKd6Iq5X3b7qvEcICyDVfSl81UhRT0jR6BxrZrV9
         wSQw==
X-Forwarded-Encrypted: i=1; AJvYcCWwtKChOZSFjHcxulIAkY0QgMXM+TYFKT55ZKa32VbWBitAZQcdnSwKR9PMlA4vR0gr6DaSfaiFqtVT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqcr8skfIkj5ayqNIhilyRlHBvy+SWHXaw6uapYfBz+EIf2Def
	R+3xqbkritP/0WcrJofzRKURZG3crYfJgsXf6ObaWE+WLWC4kUPOofFfTU/+FNwfd8Xx3I+8y5k
	gZrLSCI+gNvBtMFyNRSREAHwDxPldVmYCjp6CCSlW9Pcyr8cZiUEQcCHaKle9uM8f
X-Gm-Gg: ASbGncsjQosRK0adZCimp4MqNwgoPYyxeCrNxVd5XFICwgiWUY0dgMnyM7CRCTgrwjc
	aCxknebsmkS1LtLiZBoLAWozroRT2QSJDR+RD+54O7sJvnt7YYH9NyL5xMxXKHj3WoPkbD4C+Xe
	m7taTBgs8ROatcuWHwudgupq0l804FSUyQrckDlsPjLl/nW2kFuTsDQfx0ZlHSCYAAdU8haZDTL
	woBdgfDYYJNOFaUo/wIH8WRqFzC9WT4OGBOLbHHjQJ93K3n/W6KBE491wpOiLoHVil4BM73Lgha
	DRKIr3St5xNLWSHPyQsu27WiLd2lZVMZjGwLxYcCp5cfHPlSmjHk8VdYmswa8Z47xYNVwLOX3nR
	ZzbvIUYU0cdldLEhYUnLNQsQ9ykN4ZMrV0PjJzH7xprqD/bzSX3F6BnZmVGOlXzXKt04=
X-Received: by 2002:a05:6122:91c:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-55b8d5c2d79mr5412222e0c.0.1764327953618;
        Fri, 28 Nov 2025 03:05:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGudpexyP0X/zmv3p9rERNMQ3AtObJtIj9hiMLbTfiCUjH3F9QaQCnekNYVsLOEWZ9Br6ffvA==
X-Received: by 2002:a05:6122:91c:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-55b8d5c2d79mr5412178e0c.0.1764327953221;
        Fri, 28 Nov 2025 03:05:53 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751062709sm3981675a12.35.2025.11.28.03.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:05:52 -0800 (PST)
Message-ID: <b85c25f1-65b3-4277-82b1-402daef6fe8d@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:05:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] PCI: dwc: Program device-id
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251127-program-device-id-v1-0-31ad36beda2c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251127-program-device-id-v1-0-31ad36beda2c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VEBiHiwc5MHFR7RrFBZzRgod0IHSL-5w
X-Proofpoint-ORIG-GUID: VEBiHiwc5MHFR7RrFBZzRgod0IHSL-5w
X-Authority-Analysis: v=2.4 cv=OPcqHCaB c=1 sm=1 tr=0 ts=69298213 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Oti8CWU9ByRd_oxdf28A:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MSBTYWx0ZWRfX1wqYx7LEINA8
 S30hAfl3MVUsinhnkOiC6RR9mti035TJ/q6yTbL4+0B/TmzpITbrpzlnO08catW93geDe8u9PWB
 Xm9LM3NDQE3mnjamLkfYgsz5pDQG/vt7oROL7p5/vnp1Kp0b+I8gMTcEXYV0CV0EBbDdM/NjSEY
 cI2DdYamn9F3xP033Uil3ZA/z4Ff9kb4KE3hAL+8iO27Sndh+DbdnKTEH9YCoAXJ12kmKlXBHms
 QFsxLrWA57QPM5tcbwrW+Z8Ro9arkjMpPQGsHLjK7k6v8fOguCdgaNA2LihcQ3Gfwg3QjVlZ2dM
 BQSSccWqX1g8wGswX3NVus5MP6UPlutQC4aYqX3Xy6Vg4MiYRyQcnfzC8hk7ZVE+OeaS6vlYoQa
 gibfcZKi0afQ6An3qp23KTB0xsnsYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280081

On 11/27/25 4:30 PM, Sushrut Shree Trivedi wrote:
> For some controllers, HW doesn't program the correct device-id
> leading to incorrect identification in lspci. For ex, QCOM
> controller SC7280 uses same device id as SM8250. This would
> cause issues while applying controller specific quirks.

Is this the only instance where this happened?

Konrad

