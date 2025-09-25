Return-Path: <devicetree+bounces-221340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 104E4B9E998
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:18:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB3D5167CBB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFDA2E9ED2;
	Thu, 25 Sep 2025 10:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SBZpuvDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD3323C516
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758795516; cv=none; b=AbM/oFLNDTVS0uCUBnwxMGe/XV36M6t5J5n9HllcymAU5fwXNOH0KqNJMMJy6p0WKJQKOmpORNn0IwU7h2lH7w9FFjTi4vqHP2WN6IbUEHvaY/IAUF4SetouZwrnQ68wNzNyqcaIlPMD/AHKRNlShuiR2rl5iPYQqRj0rt6myXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758795516; c=relaxed/simple;
	bh=IZgNx1W1QZTrD1Ehfq9YiwjcIhPzLhkZmIWo+Abt0ck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WQ3EphKthn2R9jf5GTZjmWHrtGCo61BNKHxp8HOo+heUZpH8ZFFq7RxYXAgaQOW90AaC0A4xC+rOPjhZY3bPiX9t3aqwopCUnBK/9JbtBJYoMPJKM23SS+tXgT81JyRLz8Ekhg5PgMp7IsmXeLyKAa3resJFR6rM7vGetJS/5X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SBZpuvDI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PA4NZw003945
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:18:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IWYVZENZspv4P6/8uM0cY4lKTEnxMEa9Cl47tXv/oVM=; b=SBZpuvDIQjx/DYIO
	+aZAzpqamVnTWwTz0XfPbjx9Aqq2JMIKcCCh825o/FaOPFbVirg9ZpNqLbSSEXoa
	VrYDT9Z3SJYypBndqdsJzAJdCYswDrnVsrkp/ptSXaShDLKQzaD0ADbcmtGULcNp
	uKKpHHje2Bpd+rEIojAWfjlfwfwOb9gedz4BKXq6SBm8jtAqma0ZWFNJaKKtwq+3
	cCW1ye66rIvAXA6okzdkbFH//5LW19o2iTz2cD1MuTteanXofmlQUpS0zXl+ij7h
	qmuT+Xjn8DuxzT8qLaObzmJ5rQcUsegDqd/b+qc48QZ5nqrwNd3+nRa5afFh821h
	5HA++g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf28p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:18:34 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7f4bca2f925so1929926d6.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:18:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758795513; x=1759400313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IWYVZENZspv4P6/8uM0cY4lKTEnxMEa9Cl47tXv/oVM=;
        b=nIjKc5HTezPF0xD4XcnPMRgeowbqQy5szjzFe8HSh/YPVuaFsuVoHjPaCD3vXSWaLg
         Yz6O7OXVfrQn48IkWbCih2lNBAw5NsoytFEt5BsxCjFGsmR9jlczpCMOa9r9y+TJhxjc
         9jm4GHjC3oe+FnM+XIHqjjCrGFIMlnQ2lVCJWzzwqJrg8g79kcp7SL5+pf8SmtBe4GCB
         22GIph/yZRU8PFNYcF7bdc9Ux9QXM2YyCtuENOg9QP4jwhbdEviqiCJod3dvi9KsGc0W
         Hpz6A8GYccxZk6s0D5XSz7BGk0PpBVYn71GJNLXTPaFnqypPqb8KHSluvZ3mNeM2gALQ
         e1Zg==
X-Forwarded-Encrypted: i=1; AJvYcCXD8BfQovqPo6AXxvamzz9xGly6UyFYMr3Bp5hdTok1xIEwiQ16czWcw5O+oNFjafW0MK7vhCnzV6dW@vger.kernel.org
X-Gm-Message-State: AOJu0YzufpK0FL1yURBGYpKDbIiU215yhfp/18xPFb0Y8QFVSgtlpBMs
	ZQF0UEi0OFW6PVH0xnF5z+x0XKFRVJCTk7CBqecU0tJdL2kbMwFPhK3ca+lUiiaCT2od29Nt9EY
	wwabeqRjI9yHgEzIsyufpMo8a3p8HWu4rREbrke+cnJgzPcXtWSgjcqDB5uKsjchh
X-Gm-Gg: ASbGnct8gJstfeg/5LwXXFsVafUr5gDuSUJEM3kQf8FUvzOIgQOr7zum5jJwjks0iZL
	y5xzZUuJ2A786G7TRWpZRMWtv+YTt5HaiUFXuUZu5YixiBxc5cFgaeV/7pKsGlIYFSxmC710udg
	EjEuSNoUCMoIpWwVTibfIbTBwS768RQbbNIFUk30cBiv40Q8/0zpqJG1q2m3rTOlPKr97HGdOfY
	HDng/61fk+x5eQZLYHIaFdl0qqwfROzYjPOK8uyDDg6je4CxOxHCR3l2OG6INABKEL2TFslSe3f
	tKi2aYDpD0lD5DrwUBgt2MRj/Zn/VsNVxAA7dInlIe4rawSxs69FUsWp2eq4MEzs6pbsulrNirg
	58Joo7z1n6dIQkuTIXitbPQ==
X-Received: by 2002:a05:622a:14f:b0:4b5:e76b:d621 with SMTP id d75a77b69052e-4da4bfba467mr20495761cf.11.1758795513098;
        Thu, 25 Sep 2025 03:18:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeYn583fkq20lV7VuagbZHBYgru0v4T7NMmM2UU22IGNtqwrtQzNW3vAC1VInKdbhbl5CJdQ==
X-Received: by 2002:a05:622a:14f:b0:4b5:e76b:d621 with SMTP id d75a77b69052e-4da4bfba467mr20495641cf.11.1758795512683;
        Thu, 25 Sep 2025 03:18:32 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f753csm134383366b.55.2025.09.25.03.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:18:32 -0700 (PDT)
Message-ID: <8828946b-3979-4e7b-a11c-740d8a6253ce@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:18:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lMRC6xkoHlqiFYwcxqboHPOYSWMzqGEI
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d516fa cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=PXVopu1NAIokzL3Bk5wA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX5IlZizrpTQKj
 wMytTXeyTGRZABojmCytq1I07bEkDFtYHKom0m7KvjxEn1Ud7Fs9HtxXb8xroK1hdjw20uxu4Dz
 fHasvXSJZWZRW31M1M6fdrWljq0L3U/K2jx9bpKFCjEJARcDwkfJhZ8uUJvU5j185cJpqKOc5EK
 6nvlGfixzQB736Ez4VtHptIYWtmw62kPOry3cnM4csz3Au25quVXVoDL1xEXElyTBibWOzYjbZg
 H6EzX/PeUIYbv/hBlDJ3I5h2eeWvSmXe20W/a5BMyseH3jx/ElSUde0jQYtdeiQiYB01SwTrju8
 +7fhCliKrQfTf+Cm0pYqvfmO6zlqmoa43UUvkjkWuUbuv01TeHWL2bajXry2yCTEZxHNnuPVlcv
 7Dee5ulF
X-Proofpoint-ORIG-GUID: lMRC6xkoHlqiFYwcxqboHPOYSWMzqGEI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> 
> Add device tree support for QUPv3 serial engine protocols on Glymur.
> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
> support of GPI DMA engines.
> 
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +		gpi_dma2: dma-controller@800000 {
> +			compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
> +			reg = <0 0x00800000 0 0x60000>;
> +			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-channels = <16>;
> +			dma-channel-mask = <0x3f>;
> +			#dma-cells = <3>;
> +			iommus = <&apps_smmu 0xd76 0x0>;
> +			status = "ok";

this is implied by default, drop

> +		};
> +
>  		qupv3_2: geniqup@8c0000 {
>  			compatible = "qcom,geni-se-qup";
>  			reg = <0x0 0x008c0000 0x0 0x3000>;
> @@ -718,6 +744,339 @@ qupv3_2: geniqup@8c0000 {
>  			#address-cells = <2>;
>  			#size-cells = <2>;
>  			ranges;
> +			status = "ok";

ditto

(please resolve all occurences)

[...]

> +		cnoc_main: interconnect@1500000 {
> +			compatible = "qcom,glymur-cnoc-main";
> +			reg = <0x0 0x01500000 0x0 0x17080>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +			#interconnect-cells = <2>;
> +		};
> +
> +		config_noc: interconnect@1600000 {
> +			compatible = "qcom,glymur-cnoc-cfg";
> +			reg = <0x0 0x01600000 0x0 0x6600>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +			#interconnect-cells = <2>;
> +		};
> +
> +		system_noc: interconnect@1680000 {
> +			compatible = "qcom,glymur-system-noc";
> +			reg = <0x0 0x01680000 0x0 0x1c080>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +			#interconnect-cells = <2>;
> +		};

This diff becomes unreadable really fast.. please play with git
format-patch's --patience option

Konrad

