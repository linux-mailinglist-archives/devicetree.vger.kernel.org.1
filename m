Return-Path: <devicetree+bounces-197461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8CAB095C8
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:34:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B4407B5814
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D6E225784;
	Thu, 17 Jul 2025 20:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cqYJL4ES"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFF820A5EA
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752784481; cv=none; b=Tbv8mc0y6SRaToszHKg4nD6bI3QCVgn1fCqnmAdof4zr/cfPfRdsuAuOo17kPwGtZmtrs1WGfGRShBFUs7Uqy73kITv0t4XWJSZdy2h3xZj1/itlxZOBty1Th1HXy29jYoh6nNkFIXhYoWtsLc/Z6acfM3sJRAqQF/0mQlZj1LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752784481; c=relaxed/simple;
	bh=hGJR3V/1tcHMB31VvpC4R8Zsvg2CwbMItsyk5iZAxy8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iniaMtvk9iIDcv6DVy5WM87EQkmrdDDThXX69f4U+XIG2QvLQ6tsqwM4k2gRZyifJUK0wOhI2DSvEw1mNn5aMPtqHTP81fcoQyHFDkNG7ZsiZohd4YiihVucGf4YPvgGquyCjuUGgo4dMxp5v+8MACOlKrhSqnSR85oUg5EWRU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cqYJL4ES; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HD5OFU021636
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:34:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6kgP0d9tIR6NHctzVbidbhSLAjPMVFzktI4gkLXeKhY=; b=cqYJL4ESt1MD9auM
	Nrg42kIguegh6DhejQY0DnvxiAmqQzzhVtWUht+pNUGbe0C6SQcwPwf1ZzVM4rbE
	VlEIHpHPsYPwaAuPKBQ1QDjfAza5LT9R/pPT9TFRB4W3784Cq/qCuFlxbHTUVVIc
	kmrMI/ry8lDEyK4pOKBMI1ofO+fWqNKAaJPH0EOsZzPPdjMdNm7404nvC3duQ7nN
	fkG2Om5sqq3YOieAWk5LDh8xrw24vgVbHZpPsb9t8TIrH7aSaTbmgTwtZFD6QVuK
	7wsWZSARXvYXbwsEQXYTi7dmozJBtZ3dkLFY1OtVrVDQt2Dg8S9M1GRN7WqdE5TO
	T53f6A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8gxmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:34:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab3bd0f8d5so1899801cf.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:34:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752784477; x=1753389277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6kgP0d9tIR6NHctzVbidbhSLAjPMVFzktI4gkLXeKhY=;
        b=Ds4CHQt1QSWEfYTvj3hv4Hmx1lO2c9CiqAKo42esHVAyqFvw293jsEMtepIv/16gKI
         xhnFDn0a3fKOsgyVbE5tZggbpdqXyjN37cDYljzKd3MqkW3CT6H5R5wS/Gf/mL0Y9Xc1
         Wi5zcUhtE+jUXCZdLa3IBPgH3DwOqcIlT9WnwhGejixAGYscJtdW5m9lpG3g2BxEFEVt
         x7O+8HQ1GPJHPHd4aIQN3BYbUXTv9sTL9HNzQKZkTcj08p4yHpmEMOC9s7ckTU3glCXl
         Pk+o3ZydOrcjhbvIk4OF4zutG/WMHGPdJsd0Fj6pCfRzf5Vo18SMwkuLZ+KNjLI9cy7U
         vd9A==
X-Forwarded-Encrypted: i=1; AJvYcCUW6EwUBCQ1e3ZiclXkXew5OnlsQ0ZoYfagdJhRd2bGKDYWBCtnjVcDrHNPT2BZZFnhkmCmSDxphcPY@vger.kernel.org
X-Gm-Message-State: AOJu0YyyjAcRxHTJQYd+L33VYFK3wtHbTEdxZxJB56S6ZhdpqGbu9TbG
	blzxCwaNMKexcL6vg9aAUgwWNlyVY0JXJkjHs8QBaIrmkWmzERXRrBDzDscfbF4Jzvsr4TjFymx
	9GxQDZEIv66PzZPJRIy1DTVnyekQ3V+BWBWPP/FUWFn/+jnTzL/tkg5wvdd65UmyN
X-Gm-Gg: ASbGncvroT1eMszwj97xXBeyGIFp4kvtyl/s3neH7Io70Z/Zh8KHomH8p6SHdB0A3dq
	IF7rkbnFM/2Kpfl+mPeeRO1VJWx7QY/7spQUEx4R6uxa85V75PtyvYwRTZn/ioega5x2u55S8K1
	PUQsgSBxMf408Lzu2lRKCvWb5y13WuGCt/CSPY3ImfWGih9PK7X6qjB/cyEpl6kQe+j3lig3TEb
	pgsgzOCfQFeNgfjDaWgM/o3MmVvRnSqDC94h0akK4xN9HGtJI3rr2KEO6e9K0jg6jB3ENn+4ifC
	CXgbDLxBSNr+NX0zJjOvZKErUBdcIBMmyTeinWV+6rIiwY7PdRYj1CxYqLR9Yh2yPE+2izze04n
	4nB0yIOaDU3UN0CiV/Frs
X-Received: by 2002:a05:620a:2b49:b0:7e3:3419:90d with SMTP id af79cd13be357-7e342adfc02mr465487885a.7.1752784477338;
        Thu, 17 Jul 2025 13:34:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEupMN70iJ4oocSBV5jSP32Z5K9i0re731zgAYdP0kVX56HgTG8n+/PmtNQbmI3Nu0wihezSw==
X-Received: by 2002:a05:620a:2b49:b0:7e3:3419:90d with SMTP id af79cd13be357-7e342adfc02mr465484885a.7.1752784476917;
        Thu, 17 Jul 2025 13:34:36 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8264fbcsm1437115666b.75.2025.07.17.13.34.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:34:36 -0700 (PDT)
Message-ID: <27e4a27d-6e91-4e91-b55f-d6aa4a5be800@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:34:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/15] arm64: dts: qcom: x1e80100: Add MIPI CSI PHY
 nodes
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-8-0bc5da82f526@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-8-0bc5da82f526@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4MSBTYWx0ZWRfX5gcoPq7tGU0g
 /WQLvUg59164aDFp/goyEnZYSA5nXjIOD9lkRuM5q5B7wWgFnQ4/j8yaF4XUFp4piTZoWS056Df
 ycqzA7MqYqsdteDO1U+/Tic1JHsJqSiY7TKsWSqqQ+RjQQLA7jUkM1HfxvSjs84tlOmaePCFIJV
 35jTe8+hriX4PTFkb7hFwcyMkp6YUmkJUKhPkz3yRlmdYBZCDKBmOlhD9X7d5B6bwelcD/Jx/cM
 1NW25eGFPy2cWUkAV2var7glSfGm90Nm5trjdYiIl99cPjY03hhAQ20l42kU0r03eBZ37qSxtbo
 6TN12gFSDWfyYVWNgNz1hFe9qlK7dC7UZ2HnTXLkTqYy8QqAULEFrcnGeW7ivDRsFNcfraxoMJK
 4+dCPYqq++Q9Zf1iSHLlmfj9VukjabAaxXP5LSttE1kMKFUTwnZOjvRMqX8b38VXCmHuaVds
X-Proofpoint-ORIG-GUID: TQokWrMLs4kxPIz5nj1NJgca4A2-fYEs
X-Proofpoint-GUID: TQokWrMLs4kxPIz5nj1NJgca4A2-fYEs
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=68795e5e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=jM4f9QFlUBkeW2BXBzcA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170181

On 7/11/25 2:58 PM, Bryan O'Donoghue wrote:
> Add csiphy nodes for
> 
> - csiphy0
> - csiphy1
> - csiphy2
> - csiphy4
> 
> The irregular naming of the PHYs comes directly from the hardware which for
> whatever reason skipped csiphy3.
> 
> Separating the nodes from CAMSS as we have done with the sensor I2C bus aka
> the CCI interface is justified since the CSIPHYs have their own pinouts and
> voltage rails.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 88 ++++++++++++++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 41245e8592f78edf141141f2f5b7c5b841318f46..e385d6f329616360e089ba352be450c9eca6aab6 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5244,6 +5244,94 @@ cci1_i2c1: i2c-bus@1 {
>  			};
>  		};
>  
> +		csiphy0: csiphy@ace4000 {
> +			compatible = "qcom,x1e80100-mipi-csi2-combo-phy";
> +			reg = <0 0x0ace4000 0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "csiphy",
> +				      "csiphy_timer";
> +
> +			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;

I realize it may not be easy to test their functionality without the
rest of CAMSS being enabled, but are the CSIPHY's registers accessible
without the TOP GDSC being enabled?

Konrad

