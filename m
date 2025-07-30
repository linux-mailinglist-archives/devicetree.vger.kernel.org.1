Return-Path: <devicetree+bounces-200910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE0EB1690F
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 00:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A11F7620DAC
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 22:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77BAF2264BC;
	Wed, 30 Jul 2025 22:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a3V/EC2z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC22209F45
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 22:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753914793; cv=none; b=rw1w92wzC5gKXwis3/0CYd2J/JdD4wO57U87AsnTn3a3vvxj1rjqKCdyc4qtJiFQiydkR2Rhsn0sUhB4qmCv5h86CkezGPyAHYXbIEhOSfVfq1MMZOq6LRbCUzQYZn+x79z3B0AR34rsbD5znYs7LnjJ8q8dGHJ3u3aE9ihTdkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753914793; c=relaxed/simple;
	bh=XD8mWT7+uwBdZy8KdwpfcJE94eBSheB6SpO3Eck7/ec=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rE3xxmfnE2aQonGzFBA3/vfUYm78qGco9U9sTEnPa3po1KCggV1MwfUx70/fM9tbMRgGZ9bdTn0dSNvLZB/ufJTE7qnAqwwUQXqD9kkO5avZ7JNAsrD8p9uy/V24frIkVcCPPKSFFt2b9s+Gu82l4ws4DqeYfVFcFKZUmAw0v5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a3V/EC2z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCb8Qq009725
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 22:33:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KIB9+SMIMAIs+ix0aXzyrQiRdkqV0NUTde9TQd6wMzQ=; b=a3V/EC2z4ipyNlKh
	gqW7ffq3BvDUgYszA1pR7+aguXmkDMKR1xggTDN6Ox9S0p1JpSYg1LR0Y3NQO50F
	cvZY2ft2pW0qFV/IpFJHabsA9Y2WbIzDF19K23efnVSeyXlMD5YVUC9JeCDN3PwC
	ub3AU3ws9uOW7ojAv5hfV4pIT/IWYhi8pHy1RNwuX2RT48anj5+MluXB5u8zsqcF
	ZqjuKBYasKn8Ubwb7ThH8qxGLsrSz85Pc2gukXb3BZxWy24COmDWsIJ6k8sqiBUC
	srB/A4CelybrjPyIHWUucIYUoEIW5ZHfzJR6js8+hCvgVr7bGFT5g+IhjxwlKxjz
	XMhEkA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4860ep2vd2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 22:33:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ae762426d8so642151cf.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 15:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753914784; x=1754519584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KIB9+SMIMAIs+ix0aXzyrQiRdkqV0NUTde9TQd6wMzQ=;
        b=crJ5NNHS+6uT7dsjJ/UXQpdMATyZUNhLTnHX+6peojMUc0wPb+/VT+DH3Q9/2tQhb/
         b7Luvi0OWVHuGY++oJKB9WxXLhsjW4wRimhJlumgMQW/vNpdU3TZESRu6MKQ7l6mudNt
         h7owjYiw70RaOMxGt8vAyX40aCDSkBvQ99aFjvj7IwzwtUCbz8+wcrVvJF1f9VQzTYdm
         NilYNB/ciFirWo+kmJhnIj3qjuvQFrx1NySOzE3YyRPje6rB/SjkkGMFcYE7gVsXzSGg
         1FcmP62b2EKkvGge88G5peTwXXnW/5RLYYfGB+pe4C9Yfs8ZkcJsWEeqHYB423jZZgKl
         6dYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnWgYhzCvtpu7J2vLn5bo0ITBNrZ/xA+uJ0TAbA1VEr2aQiRV2/akSbrrj/zWjRciRbpjD13bhiV3O@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh/u4IEAOX84wS86vSLcdb/qrarMvHc4YqL1I23+vazTHGoWFH
	m28Rheya5AWUrq28QgXdZ8Ptl5TyYi6U47zCEzDiiDEN2M7McdILDQXycO1q1YB6JiOOsik9VHV
	qT4JI9/tkydlXGKyDAd2FCwWhA9e/Qf5oEAf4goPjsA3n+JYvsE0GtOWiy3+CklO/
X-Gm-Gg: ASbGncvOmjerWycQbhJczT8DxnFBZ3biRkzYBs7aF53TrL0freW+o7cMlEzy+N9vNdx
	XuJgMXpU0qmf+AEw1pBqVR4tcQJEuDznnGqE2nIGpq5SpH3rMJe6wC0Ie6wR5VuJ/rynsGt2ges
	7mdxvV3egD2EZ1J7pb3vynBRSEJi9k7x8sX1XO2HM6GwX0p1o5pd0kJcbxiRaS/iDOSVQA2U42m
	E8BK6S0voamjzV8iJmd8uX0VmWHOSxvVjeWuRauvHTACkJ4/+aL4mnz1JyHuWce2qLIMr/PbbKD
	g/8qzci1tNFNko7wPDGXSpR4Z9t+Rw/Z3/99yN/jrEevJg+cxn18BOE+Ynnsc1WY3Kz+BQHnD3D
	UHMGOakSyrIwQ49NSXA==
X-Received: by 2002:ac8:5709:0:b0:4a9:a320:f528 with SMTP id d75a77b69052e-4aedb93aec3mr46218011cf.3.1753914783942;
        Wed, 30 Jul 2025 15:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzJ1DWPgTqRJxs6el7saUaAs1Unr4la0oOLT0iT+JU7OrzOzfJloiF82fDLMEGg79NNIYk0w==
X-Received: by 2002:ac8:5709:0:b0:4a9:a320:f528 with SMTP id d75a77b69052e-4aedb93aec3mr46216811cf.3.1753914781653;
        Wed, 30 Jul 2025 15:33:01 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a1e82b0sm8695266b.87.2025.07.30.15.32.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 15:33:00 -0700 (PDT)
Message-ID: <36f3ef2d-fd46-492a-87e6-3eb70467859d@oss.qualcomm.com>
Date: Thu, 31 Jul 2025 00:32:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sc8280xp: Describe GPI DMA
 controller nodes
To: Pengyu Luo <mitltlatltl@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250617090032.1487382-1-mitltlatltl@gmail.com>
 <20250617090032.1487382-3-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250617090032.1487382-3-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: D78FSz-zoQJpq7phXwDqsztBgFNaK6UN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDE2NCBTYWx0ZWRfX7bOtD0OwDG9N
 TuamZyVQEXdnJQ7qsyHg0ExuxdHGi4arYpSRqXNse8S1lg1tr77gDgGt2t/Rzea2dXRBJ1ztgDT
 NlO/bEMQ0YZIWEwMm2/rYLup65aOVJKCWj6+GjbY0wcyqWpd8diN8bZkuOun0QS2Q1jdHM8iXuZ
 nYXq5+JtZB2RRgLH6OQZshpoNz6zgB85RcW2IKT0fhx0UjaqiuMP+KGXp7jny7zTKixKne0YLZn
 /7zcEiZwdiHvfwgCYW7kwdaUMD6BW+FgcSz3WO7O0z7Sa5rqkZ0sBZlHE/6D6JFJR74lgU+eRWI
 2hnkNeNyJtRjhjMjNKVcDmNSzpQkTPLaQo/NkHG8k8h73Px6exwYFIefjZbf9XXGIdGnmsuOq1e
 5LHWyQ83fMk7Lc5BHbgvaX4OMxEP7G99jJiKpwaJ4Q2TYpfQf4f9LtJ8pxKvAa9kOQ8p2Z8u
X-Authority-Analysis: v=2.4 cv=DIWP4zNb c=1 sm=1 tr=0 ts=688a9da1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=3m9cAMs9dPIHispIsJUA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: D78FSz-zoQJpq7phXwDqsztBgFNaK6UN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_06,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 mlxscore=0 mlxlogscore=974
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300164

On 6/17/25 11:00 AM, Pengyu Luo wrote:
> SPI on SC8280XP requires DMA (GSI) mode to function properly. Without
> it, SPI controllers fall back to FIFO mode, which causes:
> 
> [    0.901296] geni_spi 898000.spi: error -ENODEV: Failed to get tx DMA ch
> [    0.901305] geni_spi 898000.spi: FIFO mode disabled, but couldn't get DMA, fall back to FIFO mode
> ...
> [   45.605974] goodix-spi-hid spi0.0: SPI transfer timed out
> [   45.605988] geni_spi 898000.spi: Can't set CS when prev xfer running
> [   46.621555] spi_master spi0: failed to transfer one message from queue
> [   46.621568] spi_master spi0: noqueue transfer failed
> [   46.621577] goodix-spi-hid spi0.0: spi transfer error: -110
> [   46.621585] goodix-spi-hid spi0.0: probe with driver goodix-spi-hid failed with error -110
> 
> Therefore, describe GPI DMA controller nodes for qup{0,1,2}, and
> describe DMA channels for SPI and I2C, UART is excluded for now, as
> it does not yet support this mode.
> 
> Note that, since there is no public schematic, this is derived from
> Windows drivers. The drivers do not expose any DMA channel mask
> information, so all available channels are enabled.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---

[...]

> +		gpi_dma0: dma-controller@900000  {

Double space before '{'

> +			compatible = "qcom,sc8280xp-gpi-dma", "qcom,sm6350-gpi-dma";
> +			reg = <0 0x00900000 0 0x60000>;
> +
> +			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>;

The last entry is incorrect and superfluous, please remove

You can also enable the gpi_dma nodes by default

lgtm otherwise

Konrad

