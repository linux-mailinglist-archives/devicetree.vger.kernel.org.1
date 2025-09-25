Return-Path: <devicetree+bounces-221393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C16F9B9F3C2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C22F7A3334
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14CB3002D7;
	Thu, 25 Sep 2025 12:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gfp1mM3B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CFC2FE055
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758803319; cv=none; b=PNrQJbyub4w2A8PLhGysdwhT3l+cznfROfkQBZIvBPUbJPkOGXwKA+DUtXiIO4jBFoxpFJq6fGIzZTC76g4OKboUBgUS2O2nx0iq/X01i05SbaTzfin82oVAs6BD5wn0iLcQg81g2+dYyxzuFlZmxa2KB8CcQpJCcvV6JF6HfmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758803319; c=relaxed/simple;
	bh=xoBcjEOsWzKlUY+RY517e5wLJ9Njlv/IQK7AyZKOOqc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SV/hI3fbzeckEsZIy52Kw1aneMu/2OD9c1vKnauAGXTk57nntbXM7vqBmB4KjyULAQygAFHZu64nXUaPj8F8bQkSPakq1BK4QX2dQpZGJo/6SYoJb0mlPzK8cZlJxxqx1IcVEJpyplVBaiSrh+FNeWuE8Xc9RyENGmq1QVVoWlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gfp1mM3B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9SNXD018026
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V0GZRRknW9o7EW1Yvnd92OLQ2hYDNAl+jne1+4CXJp0=; b=gfp1mM3BbTepL/lR
	tqijfC4pqojPJ3Ke757LTAb0z4Kp120gmyEnXBMuqErMpOGjV9EbzTrmsjmKN0HX
	6TEVzfGr4AjR1Hrj14N9vrK+MixEYFm3qQKVVHyjsYmjMrSd1I9cJYoCUTM5fIa7
	64dmiOvx6ZRPMbpStv4mmlGmSB8LToMQe3lvmeezmVVb8DJMuB0MN2sc4dfEK6wg
	JDhmQzX+kwyewJoJoIfye59Qnx+mzcf7/cUoTalpbcofIUI7zRR3slGpUk8iPgfk
	/MWj3h+yy02hoBppVHnIKiOgeFqAegXTr/zvvuR+g+Cm9AuevZvyOcLGLQD2GqtN
	uP4Y1w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkc0xp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:28:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-82aa446f7f2so36214185a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:28:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758803315; x=1759408115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V0GZRRknW9o7EW1Yvnd92OLQ2hYDNAl+jne1+4CXJp0=;
        b=jHAX24jjdmoWxe7KXBqxUl7sxzBdbbfqVnPWBGtjQ6QRDwYz+wsvicI63UD1awipuc
         W73f/57d+uJCEojwIqMZ0lIoP3e1fkgOcL+3mUcycegWQ7hRbZ4u0FSZ4W+Dn9fzvmUs
         ZAsKw8FECVfp6M6aZHe+9DYR88L9Pp3lM1R04TqYZ9seIZ9URRGnlREloor0Fa7vMxB9
         XZ+Ipawz5Ag6+qFNFcetUVmdAkx1+1G62mVKblINQ+jl1mnzSYaOtc6VRzudqOfiJyM/
         eHwYo/+zg6Sfw4zRcUGT4/NdflppGrxNlerWkUG+K162XMbjTgLI7xY58L+YHM+JTg/p
         BVEQ==
X-Forwarded-Encrypted: i=1; AJvYcCURvXybgEz3ZhklfQlq0c/BGt6uURxeR1bDsDGORcsj8NTwjmdkqhiR5r7D4N+vMxgDi6aK3o/e5MWf@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuda9yQ0/vz2znlLAfIm0g3mYPHdFjCEYpwI0Aw+HXmN2CQO7t
	qz52+mmfsrGsyP3N14ZLuyEtrNU8+dzHKcffpKY9kpN2flgCeajctddXQHWKml4HJSV7Q4ohjfL
	37t9HfoWc7/gVr0tEJaO11h9mG0kEAU3jM02GhcXj2Kqnf2Kz19IEUiXKOalfmDd+
X-Gm-Gg: ASbGncvlYnsqtLGVVmru46Ne/d1x79Sy1S55H7jKAeScgV7B/c9MHTbMO3OD8sdlKFz
	pnHlzxqUVF/tQK6wn/rfDMnixXDnwetg/n3jp5KyQUCmujbdyI+nqsTS8WRpjITPBPQbaPuNbLa
	0MhkrR2l4EXPXfEXGLCXKoKzFQ9Ovz32VOx1bRdMJInQhtt2knF0UYm4MNRCVQxbFajG9XVmqDW
	VlMfAggXwwX4uwxRPjTck0M47692CZyaz0sswjDL11bWQCzKurzSoNQ/jXsacYhGdAEaN6ajgG8
	4BAFFp2Tu29j7nZbhdptb6PvqZuK4QPBudkfAsudg0sUuYzT2aj2/7BMmpakK6in3uCSzdoF7b6
	+qudeRQMPNAEPEUXxjirrsg==
X-Received: by 2002:a05:620a:460d:b0:82a:21ce:47e1 with SMTP id af79cd13be357-85adf2f359dmr312957285a.3.1758803315274;
        Thu, 25 Sep 2025 05:28:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGM6c2h1CrqV8ug5St6KIgjLq4LwvQ1d2xsdc29T9g57ZuIMtMPgBqdlsWzhMkQSR6YAu8poQ==
X-Received: by 2002:a05:620a:460d:b0:82a:21ce:47e1 with SMTP id af79cd13be357-85adf2f359dmr312954385a.3.1758803314834;
        Thu, 25 Sep 2025 05:28:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f79a7sm158384566b.62.2025.09.25.05.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:28:34 -0700 (PDT)
Message-ID: <9685e29d-bff3-4188-b878-230d0f161ce3@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:28:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] arm64: dts: qcom: kaanapali: Add QUPv3
 configuration for serial engines
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-13-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-13-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vO9rHfZET122e1JdvweZbqndaLfnCkLk
X-Proofpoint-ORIG-GUID: vO9rHfZET122e1JdvweZbqndaLfnCkLk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXxZPMLn+t6crS
 9w0tdkTZN/2vf7fDr+EbAzu3LRaVUPmwFl7twMnHgJOcXkWONwh1DvbQNFGvJTveKSye3677cNo
 U/UfbwRQDj/M9lef7M6vlCYUif6NuDqQGhfcV+4a0d4IOtMGTLRRP/jH64MR7YoIHaFtI1DfpLa
 rRZpyFbZmftBWlvv/KsCj5aBSohIo+9bf8ioukVqa/oai46U+T47XDJkuijlZYlNOmqoI8Ke+Lv
 uXVwLdcF3/xrBV/jur5D9ZZu5a8ItJ9YwrBk/wvlIYh73JD5Si4LZqne63QB40gxRNP26AyDwKN
 1ecbm2Ssw/pBFzb0w+S6MimS+of9W7YVv0Y5mbNiw1QAtV9UYuUPPSE7NCA+q4hOvoB1SfLOkQr
 Uw/LykHZ
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d53574 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pIWn_-EevS54mbaqKt4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/25/25 2:17 AM, Jingyi Wang wrote:
> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> 
> Add device tree support for QUPv3 serial engine protocols on Kaanapali.
> Kaanapali has 24 QUP serial engines across 4 QUP wrappers, each with
> support of GPI DMA engines, and it also includes 5 I2C hubs.
> 
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

[...]

> +		gpi_dma2: dma-controller@800000 {
> +			compatible = "qcom,kaanapali-gpi-dma", "qcom,sm6350-gpi-dma";
> +			reg = <0x0 0x00800000 0x0 0x60000>;
> +
> +			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 848 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 849 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 850 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 851 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 852 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 853 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 854 IRQ_TYPE_LEVEL_HIGH>;

odd indentation (on almost all gpi_dma instances)

[...]

> -		remoteproc_soccp: remoteproc-soccp@d00000 {
> -			compatible = "qcom,kaanapali-soccp-pas";
> -			reg = <0x0 0x00d00000 0x0 0x200000>;
> +			i2c22: i2c@1a8c000 {
> +				compatible = "qcom,geni-i2c";
> +				reg = <0x0 0x01a8c000 0x0 0x4000>;
>  
> -			interrupts-extended = <&intc GIC_SPI 167 IRQ_TYPE_EDGE_RISING>,
> -					      <&soccp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> -					      <&soccp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
> -					      <&soccp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
> -					      <&soccp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
> -					      <&soccp_smp2p_in 9 IRQ_TYPE_EDGE_RISING>,
> -					      <&soccp_smp2p_in 10 IRQ_TYPE_EDGE_RISING>;
> -			interrupt-names = "wdog",
> -					  "fatal",
> -					  "ready",
> -					  "handover",
> -					  "stop-ack",
> -					  "pong",
> -					  "wake-ack";

Please try to use git format-patch --patience

Konrad

