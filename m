Return-Path: <devicetree+bounces-194144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9364FAFCD4B
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 215CD3A85C3
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35CAB2DFA3B;
	Tue,  8 Jul 2025 14:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eJMTJ1mr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51FC2DEA98
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984398; cv=none; b=lgf7xaBqlfnREXSAE29MIb8/phGW9eOBnLElGUrLgTilYgBBT6ds3nF9W3XlEoYeIb8zKCrJr7FCm9OMNctiNTPaU1aclu3Jp4bIFrhZ0EZtDXcnY3MvU4s8WdGdHfqpYzmCnZs0qlOCT65Znh6AQm1wspt/eBy1vxMT96i2AZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984398; c=relaxed/simple;
	bh=HkLphNqugzPNkULwlET2cC5FiOAU7AKlDuc+7g5S06I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AI2fHiLizhrLTXGil4lHTmQ11BrEWjRw0MHJNIKdtr7L+N0/69zXBOzLPj0qhii1IvG/0tChzx0w5nyXw8kKxPsHLvzFvJjGrZbZIOdfxfQ8JGd5Pxzp0gRGTCHNbJB7DaPcZG/jIzswQAt5k80Fy6tx0FNFFU4/26tnKA3DzQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eJMTJ1mr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AANnD030306
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:19:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BanEk2RHzaJeEV6ZyoootTk25UM5XmLdjVm0P5oXSIU=; b=eJMTJ1mr/+My54oQ
	vfYUTAx7Rw3nTNQ2FyBUe9fRnUVhHXViAQbaevHx2oD1eyLr4/JqiP8N75CI03WH
	yB5GIjmaLZOsjusrWg4KSJFi79SWfz/SgEQq5zbu0Zbxi/FVP2NM+YBNClLSQWoH
	PJXyaJCSXjG9Q+nMHuMZji12K7FN2lyS+x/V+73Cwa+GFxdksj4jBco2L3/ZVhYr
	vANXk+srJXm6msOTz+jKr2FO3QJpoYLIFcr1IV1hmVmRyosPR8eWJUgaUAtRw7Al
	0aQJXIlPUjZ7sP3aFbUp4IVGf9t7OJasP7MjTT+SmOiHuBCBVKl1nR+lo4f2xP4p
	pWn6Tg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47r9b0usbr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:19:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d41d65f21eso31377985a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984394; x=1752589194;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BanEk2RHzaJeEV6ZyoootTk25UM5XmLdjVm0P5oXSIU=;
        b=NHwWREBG/AEUAkyXkVnK5PTpRHWopRFn3mwho6kRVQZ6NDS0tDJDIAxszjTwBh5gQ/
         F9gFLAjRymoxrCRQQ0z1JC9YiSHk13xjW573ReD57yfYcKFUzc6Qvtp+iqHnUVPvp6yk
         YukoYTC61aSg/V+/xftDccl8JkmuMHMTFsUJf1qBOl8icOVFcGZ23lkRpCj4XK5fThSd
         oGgK8azgL6WQWg0w8HyiT3cc4JrOUzZpYHA4To6FrMPH2A1QmsFbWUXxaU+PFJ7wypHH
         VsBJFDvSR5wuhxQiHuqDlsmyQXD4byISnNeJZ9vAq08Bl4EePkZz/FYV6j7Yd28rh/6r
         i6mw==
X-Forwarded-Encrypted: i=1; AJvYcCWIZ+l/UcgEguylMwbSs0tXnmNE2e5ct69mKYFQ/6yqALBdWENrevx0zgXRDojzzhkyVMXWzBCvZn+j@vger.kernel.org
X-Gm-Message-State: AOJu0YzmvL9kCn0Uj6EhkRQQ1jqLo/j6VS/HQBosgIDPKPixGLqj3rL6
	kVdbS9aK1yc5affKy+YkW1uO5pJaRCCTByf5Aq8yVYDDoICLwbKNgH4Yrr1/2sqSFhSwUFYxoXh
	16MZHaRFTtR97vVug+btpzxOfB44EDeVxo9LtBy9c7vIUzxl2WDWt662zEi2fyRuY
X-Gm-Gg: ASbGncsGbO/kOsk3mylSN36zPxViL1gcFodUOpAfBliVHUo3b/oFUXw69yyXtr7a3Ep
	S5+77I2ieDNH0PqvzQqx1m/WXC1KwIBfw5zKutLP5XIRFh5wZl4AHLI4Dso4KthdEo/hcfkl6KV
	I4MM55997Bm1UjgLrmOIr7ohHrGQa9+9vLD8bjpSPg0fPQ2TmykrLuUh1lwx+S2//6ROeE6pyQX
	zZ1FaavNZXePFzeukMbZhsNBk4FlvCuBcH93ss1sbajjVp/uXh8w3UF4934WREtuovEmOyff6Uw
	8ZXoBRe5Sv2tr57mj40JX4jySftSDAgjqpaeI+uEyGoPwU2uclsHBUHYGqYJUoHkY6aZO5pAh2H
	oWRs=
X-Received: by 2002:a05:620a:28c9:b0:7d3:e939:5293 with SMTP id af79cd13be357-7d5ddc718a8mr785765785a.9.1751984394287;
        Tue, 08 Jul 2025 07:19:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGv2ihPdU/PuYCUkAU8M6E+45LpiasyPqOUyBb92phaclqN6A134RMBPMQfpFuf+R7oVhVQRA==
X-Received: by 2002:a05:620a:28c9:b0:7d3:e939:5293 with SMTP id af79cd13be357-7d5ddc718a8mr785762985a.9.1751984393614;
        Tue, 08 Jul 2025 07:19:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b04d3bsm884795266b.126.2025.07.08.07.19.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:19:53 -0700 (PDT)
Message-ID: <bdb5e19c-dbab-4ea3-9a6d-a4ac795fb43a@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:19:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: ipq6018: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-3-692eb92b228e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-3-692eb92b228e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dYuA3WXe c=1 sm=1 tr=0 ts=686d290b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=o4o9nyK-Q1O9M6IKefoA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDExOSBTYWx0ZWRfXwCV/aHtIosdY
 wP2tin/xF10K99grkPjnlgaexSUucR3CyFbOctvgxUUM4j54IoFopS9DWpZZpztN4S+ewIw2n2S
 UayxLqKpogfQpJLX6UlTczdI8EoRZyjCE5SO4or1rrHAmJxdIntUXGkTk+xQBzvJd3USwcboA7S
 M8kWpdcCjniYoZBJDfh6eiBTU8MnruXoZRzll/+VW84r5I3rd59Etp6ZFMVE2Ec1gkovN136Qwr
 56Uu7JhN6/bTqU2R8M8a5HsMcX349rVirj5uG/NxhDj/wmFOqMgoTlQ6+cDXTOXPOdeLwSLfXiW
 3x9NAkB7bY82CkXwHUdOcK5Sv+8A8WCwiwObMr7JCKxVkw0oPAHGgg9JRcTseY2DbLkX6m/w1/I
 RuutQWGsNwGXddg1h63SKrCM6UjuTsKgP1Sqa/IVrOIOWpqWw7dymjvH3QU4IOg+FeQuuIKQ
X-Proofpoint-GUID: Khlq-cNXH1GK0IeWpJPU9-pfQEBYHhC3
X-Proofpoint-ORIG-GUID: Khlq-cNXH1GK0IeWpJPU9-pfQEBYHhC3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 mlxlogscore=821 malwarescore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080119

On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 32KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v2:
> - Rounded off the size to 0x8000 (Konrad)
> - Represent the reg's address space in hexadecimal format (Krzysztof)
> ---
> In 'ranges' property 0 is used instead of 0x0 to align with the existing
> format.
> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index bfe59b0208415902c69fd0c0c7565d97997d4207..3b9e40045906b26b94e2d2510b0570d3eaf084ce 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -659,6 +659,15 @@ qpic_nand: nand-controller@79b0000 {
>  			status = "disabled";
>  		};
>  
> +		sram@8600000 {
> +			compatible = "qcom,ipq6018-imem", "syscon", "simple-mfd";
> +			reg = <0x0 0x08600000 0x0 0x8000>;
> +			ranges = <0 0 0x08600000 0x8000>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};

On this platform, shouldn't it be 0x6860_0000?

Konrad

