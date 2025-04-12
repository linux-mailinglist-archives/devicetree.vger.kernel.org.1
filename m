Return-Path: <devicetree+bounces-166219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3389A86983
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 02:02:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B75149C01DD
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 00:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E3710F9;
	Sat, 12 Apr 2025 00:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KLDgyOxk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21FD1804A
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 00:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744416122; cv=none; b=e3VbhTsnRS88x2KHwtf5bOyVCzQ1/YcVyshT9xsfIilgHq11vy8hWxNJTMKBuTzukCnsFADXUHzEST8l+BuL0UjhlkvLIUbiVQAamofvHk2jD0xx7QIjjNavO9ZMjgkwwEc2Ubm7RXRyD3amWQyuOlToymAw+ctLtDyQF0Ua8Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744416122; c=relaxed/simple;
	bh=rd1AJdhV7/Ur2BWv3yCleLXzp7+iOroG7wXSw3KkLq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=njqb3CcKb1W9BcRSmzyuui5ry+nPhpEXewWZdhmszmdIddsITNSUmzOluMaHgnmx4OIRlk3VRYHtxVvvaMstzUyGgkPrQNOSoman04PVgE7qKQUygLw9eY0662PxW8VvPoQacfWkbWdEgWWTI6YHP7kgAZeOpeJnJ5aHo3czA1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KLDgyOxk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BFJrhu018797
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 00:01:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/ugy8iP5VEi052uxx31ODrIS2gIFDMfijamYy3hRyAg=; b=KLDgyOxkhpOxNmGs
	UfHW9eGkJFf0YiX6WQO85qJtGGWW665RmT6OO+BkgibZVZ1uZRRTl2JXCkTo43bj
	MxmVqgqWkVMeZuHk5nkLWI4BGKtqVy2I/FDVzAZGLyoZummPUqyC7t+n4Z1IAMue
	s1x/HjG80qynrvxQpV/xk2pYS/xIni/dW15Vl2BvB9Wywkcoa452VQ0ysBY0HJ6y
	lSn3akZYXlKOwUC8xLvJXXJYDOVohC9pgPTxQL+qp3ik90qQ7lPH2BRFzhMstBuy
	B8+7+CZ+wAN9mbGLKL8d3AEwlnnWOtbCAkBjT7BDxL63dtCqcxvl6tG+tYkuO5Oc
	ZR1i0w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgv2g1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 00:01:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53d5f85c9so52956785a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 17:01:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744416118; x=1745020918;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ugy8iP5VEi052uxx31ODrIS2gIFDMfijamYy3hRyAg=;
        b=PPGM9LLR+PqoOC3Q3PUs+OgCFB9oQl+OHkhUFIYmyWPEF9TH+Z0oZIi644eTh6M4Oy
         cdyKT2+ooWRRn9FjCxmtnwmUzHeZ3D+vEwg+4aRaq1tX5zG3SYQzujsye0P0uzy910WH
         eqnoF7hP2mqmcOfoA+gTTUpaLr9NmOfVkexLp8eJFZhaXmtaICJNzb/tzJVsZ/AjoeQx
         zXfVOSoQIQ2WPwsRRqpx424ba4PbneXjF+3czA8XpEQDIGsTH42qbMrHLydchbzNH0T3
         m684V2Np2QgejQaRMg+7JefRGmV+AiaAJPzIn2iPfCmghw692bvtwMvSobRh3zbBLohF
         9wGg==
X-Forwarded-Encrypted: i=1; AJvYcCW1hoPbKU6rtqt0Zpp/StDLRSAgIEPJxfapALcKVYFBCU79SVIqFJ3Nvna9d1z50+nGu1wtDT+i9zH+@vger.kernel.org
X-Gm-Message-State: AOJu0YxV6MC718pmGyz7kq5wJYsXzo2ZfJVBgvS/dw3sYXuC3KGjhhW+
	7GGP81/KgnjWzp6TA7nvBkgh/88x25CWIKX8j9DHWHtI8+aS8TYMXqiZgpSSFEkQYRa/3YmaOoY
	cDyuRzqjHuERzRg7ttdoolF9XqjG2wiBlDnibUWZzQC89XBXnYp+1iPeq1lKa
X-Gm-Gg: ASbGncvBmNBC124GaPph4u44SLv9xKQT5Ce8Ueq6pRRsWO57n07LSpMCE4EAbymkzEI
	4HUA8e6YhKQXxwhBbKn6X6Fu2rVGANj4xU+i8vawyefqNP+47wnDmDrhiJbIYiVJq1e4bbZ3n1c
	0+eRmVmX7xrDEUVF46snMpvR5/KFkvz4d5AwW/8PX8pLg9onsqv8qFVu2Six6jHBA46CG9TWKOX
	hCyNHUv7cPvlDNzKImE0rW2iPHiB+zGR6WuT+U2azqtPWCRfSqaUxS5fNe42BBJUqy4RzsJQYJG
	ieEOxzW+XtlpOyDRPtsREVfYO83DaB3k12Qs1lZcnYXX+k28JBJY8CazEfXnMj8wQg==
X-Received: by 2002:a05:620a:430c:b0:7c7:a574:c6d2 with SMTP id af79cd13be357-7c7af12697emr246263585a.9.1744416118423;
        Fri, 11 Apr 2025 17:01:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQ1mMpJHH4b8C8m5swdNvznZRTvMXw/RD0bWNjiHoi2ylhg4o1veW/1BRleH+rNHcCHjE8fA==
X-Received: by 2002:a05:620a:430c:b0:7c7:a574:c6d2 with SMTP id af79cd13be357-7c7af12697emr246261185a.9.1744416117874;
        Fri, 11 Apr 2025 17:01:57 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f068968sm1560677a12.35.2025.04.11.17.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 17:01:57 -0700 (PDT)
Message-ID: <dc535643-235d-46e9-b241-7d7b0e75e6ac@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 02:01:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: add the pcie smmu node
To: Pratyush Brahma <quic_pbrahma@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250206-qcs8300-pcie-smmu-v1-1-8eee0e3585bc@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250206-qcs8300-pcie-smmu-v1-1-8eee0e3585bc@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f9ad77 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=COk6AnOGAAAA:8 a=JpUTTvQeKOGwk5RR6f4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 1leRKBPqHMr5Ub-hnNnEmITQxdKNMbYb
X-Proofpoint-GUID: 1leRKBPqHMr5Ub-hnNnEmITQxdKNMbYb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_09,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=735 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110158

On 2/6/25 2:43 PM, Pratyush Brahma wrote:
> Add the PCIe SMMU node to enable address translations
> for pcie.
> 
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 75 +++++++++++++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 4a057f7c0d9fae0ebd1b3cf3468746b382bc886b..fe88244771583de9fed7b7e88c69a14872d4ffc8 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -3199,6 +3199,81 @@ apps_smmu: iommu@15000000 {
>  				     <GIC_SPI 895 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		pcie_smmu: iommu@15200000 {
> +			compatible = "qcom,qcs8300-smmu-500", "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x15200000 0x0 0x80000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <2>;
> +			dma-coherent;
> +
> +			interrupts = <GIC_SPI 920 IRQ_TYPE_LEVEL_HIGH>,

This IRQ is not routed

> +				     <GIC_SPI 921 IRQ_TYPE_LEVEL_HIGH>,

We want 922 here instead and this is the only global interrupt we care about
(set #global-interrupts to 1)

> +				     <GIC_SPI 925 IRQ_TYPE_LEVEL_HIGH>,

This is a PMU irq which is apparently left unsupported on DT systems..

https://lore.kernel.org/all/b51de3ac-5dbe-a1f1-1897-febb52f3cb34@arm.com/

please remove

> +				     <GIC_SPI 926 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 927 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 928 IRQ_TYPE_LEVEL_HIGH>,

+929> +				     <GIC_SPI 950 IRQ_TYPE_LEVEL_HIGH>,

-950> +				     <GIC_SPI 951 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 952 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 953 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 954 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 955 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 956 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 957 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 958 IRQ_TYPE_LEVEL_HIGH>,

+959

> +				     <GIC_SPI 885 IRQ_TYPE_LEVEL_HIGH>,

-885

> +				     <GIC_SPI 886 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 887 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 888 IRQ_TYPE_LEVEL_HIGH>,

+889

> +				     <GIC_SPI 820 IRQ_TYPE_LEVEL_HIGH>,

-820
+821

> +				     <GIC_SPI 822 IRQ_TYPE_LEVEL_HIGH>,

-822
+823

> +				     <GIC_SPI 823 IRQ_TYPE_LEVEL_HIGH>,

-823
+824

> +				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 446 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 447 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 452 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 840 IRQ_TYPE_LEVEL_HIGH>,

-840

> +				     <GIC_SPI 841 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 842 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 843 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 844 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 845 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 846 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 847 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 848 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 849 IRQ_TYPE_LEVEL_HIGH>,

+850

> +				     <GIC_SPI 802 IRQ_TYPE_LEVEL_HIGH>,

-802

> +				     <GIC_SPI 803 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 804 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 805 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 806 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 807 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 808 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 809 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 810 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 811 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 812 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 813 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 814 IRQ_TYPE_LEVEL_HIGH>,

+815

> +				     <GIC_SPI 836 IRQ_TYPE_LEVEL_HIGH>,

-836

> +				     <GIC_SPI 837 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 838 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 839 IRQ_TYPE_LEVEL_HIGH>,

+840

> +				     <GIC_SPI 854 IRQ_TYPE_LEVEL_HIGH>,

-854

> +				     <GIC_SPI 855 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 856 IRQ_TYPE_LEVEL_HIGH>,

+857

> +				     <GIC_SPI 790 IRQ_TYPE_LEVEL_HIGH>,

-790

> +				     <GIC_SPI 791 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 792 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 793 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 794 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 795 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 796 IRQ_TYPE_LEVEL_HIGH>,

+797

> +				     <GIC_SPI 639 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,

-79

> +				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>;
> +		};

Konrad

