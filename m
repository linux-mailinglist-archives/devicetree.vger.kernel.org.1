Return-Path: <devicetree+bounces-162200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 05322A77661
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D8801885B21
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 08:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDA111E834F;
	Tue,  1 Apr 2025 08:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EVSKbaz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46626126C03
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 08:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743495975; cv=none; b=LCEoLWsf02lLm2OsSCcFb3xdGGKBvW8XwVP7FYi/Yp80thAVr1q6uhrz85nhbu4QBdBwwpaRQAhH5zMvYJM0ifhTS2v+luUxIitqxwt29oE56wlRxV609Hh+S6ORizykUH1YePaXvxkVV0oqxO+vzuSe+n5FZLbcpCMcxtZ1Hq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743495975; c=relaxed/simple;
	bh=f3kgk/b6eG9b6/UMe5RX/Dz8Wo1pLFNHHLoDdQK9Dcs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V7aLxJnzPbc7KgBk3TLFiAe+IRWswP4oVfoqZmU8SkxcGRA1pZW7iglvAJYyS0KZDEcX1XGhpGjs+E5qPh2lWlYT8hh22e+TUXuO8FmOt97IV9z+uqR0eCgKri2vQIHHtJYu4FEilAsRz/GtABaQ0jbKxCS2v32HBY/iXa2glTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EVSKbaz6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53186R1J008415
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 08:26:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AF8PK+R11x7P7bxRV/GWmVss1mgR4hU/cnGOj0vziUE=; b=EVSKbaz6inQfzbR/
	/aHviDvciuift882nW5g/+iRFqdsADaL6+H4ocYZmqOtWURd5HYkBu8qQfFnX0SU
	1Hhk98dywdNyywn3u7otUisqOmKyt9Kii3P4yJJ8XrdqJfKSPPq7MtfPmvWRpbCG
	IYdzIG0n6YtuyAASQ2djvuAhiYLzdOXD1J8505sDIPzUqz/h612rBKXYvIWlQcEj
	AEoHvpK0eKmq24/B6Tf8xvgzNYxznVF2tkJawLVkMwGyz/PF/cyziwkT1ERb59o/
	wqe17wEMez04xGjFrX2R1ImpndMpVr/LmGLKS6gCJHVDPJMZ4nhbIodibQ4BruBg
	fl+vtQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45r1xnhku6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 08:26:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-225505d1ca5so91607355ad.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 01:26:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743495836; x=1744100636;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AF8PK+R11x7P7bxRV/GWmVss1mgR4hU/cnGOj0vziUE=;
        b=fAczhhzQ7fQBSxvuZop5vwWSAdabLKl49sMARHomWGsXBkb5ZDNYMRrR7NO4XbVWU2
         m///rij5uKGpceQSZjChMA0+NtPGTtO1tXwypOMQ8Bbg88Sy8fa+iXZs3kfG+y5hvVUk
         eeXbRHiigIPtv053YL1Qj5PppyNdB4zhl4iSYLVVxfwz2z5GvzoLnI/MqBYF93AwXWct
         j9smTpWDj7R92rSFKsYddJzsDZdbMW2jKI2TPjDyk8VbuuBpqRq2RGmKK8xHJx+c7f9T
         1cpZpNa0QhMb8ALnryKKNN988s3tsNtH1zILh28rSUZH1nRWG0whwYbPQ5vK8u3KtNlz
         bOrA==
X-Forwarded-Encrypted: i=1; AJvYcCVnt/EHD3TkzFaKA+J7BBr++xn2UyoiOjCRCfbppw/HoIup3JS+xbyUkOMeobzIwAra9h3PSkSLx9uk@vger.kernel.org
X-Gm-Message-State: AOJu0YzibkEvfkaboql8zf6oG1IrRRaICp2GpmGJYOv6pJEmcmkwtCbd
	0F/Gc7igDmeYYd5J5yp+1IugL3uxQSIcw+0jqcG7EqhcfIiFrdNHjciuXbfue7W6i83I72OdTGx
	FO5C2g36DwZv5hUjglG4YlHbPLwRnZWJrQgNDpU2OXtFYvWP76XTsKb9VD29e
X-Gm-Gg: ASbGnct/nql0+2CTmdXD0JjiLAOnAtNphLI/XuhZ16+7zizgAWICc2EwSwJeTLRhRoo
	6F4Ds+CszKwiD0dmXUO2OZU8JgykJtH6JHfY4atPUzCcUSqcxHUIrXXpGHmdU6c0en76eWB7fmp
	qnVno0rbpOaCmd9wGrFzRuGmo3fnFzoN2ocq2r2itrt/+DO0YYTVeW/VsdWirm94jQ5PpQOmNLY
	QC8fInFT2PUe8+RcBtmljJfwtIaQcz/ol6nhL08StMB3f2PJWTthoO67WMC759F5BpBenrBI1dh
	vl0AmGwUeJbSiBKQ4WsddiOz2JQbmRX239S/dBpWiqYTYQ==
X-Received: by 2002:a17:903:22c7:b0:224:1c41:a4c0 with SMTP id d9443c01a7336-2295be31750mr31475455ad.9.1743495835887;
        Tue, 01 Apr 2025 01:23:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbC2PJQIUY9S4LAcfx1+uG9TqoXL9W61G9Ed1Gf/0mVoliZzpalR73CNKM2DVVkU3vpNzJZQ==
X-Received: by 2002:a17:903:22c7:b0:224:1c41:a4c0 with SMTP id d9443c01a7336-2295be31750mr31475225ad.9.1743495835533;
        Tue, 01 Apr 2025 01:23:55 -0700 (PDT)
Received: from [10.92.192.202] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2293648e525sm56689605ad.32.2025.04.01.01.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 01:23:55 -0700 (PDT)
Message-ID: <2be4472e-2931-fc62-fea9-02f3454ab61e@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 13:53:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/3] dt-bindings: PCI: qcom: Move phy, wake & reset gpio's
 to root port
Content-Language: en-US
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250322-perst-v1-0-e5e4da74a204@oss.qualcomm.com>
 <20250322-perst-v1-1-e5e4da74a204@oss.qualcomm.com>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250322-perst-v1-1-e5e4da74a204@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 695PdcyEM233PsDlXLrZflQLvFjhNeig
X-Proofpoint-ORIG-GUID: 695PdcyEM233PsDlXLrZflQLvFjhNeig
X-Authority-Analysis: v=2.4 cv=Qv1e3Uyd c=1 sm=1 tr=0 ts=67eba324 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=xMVSDGMRPTrRGbC6XWUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_03,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 mlxscore=0 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010054



On 3/22/2025 8:30 AM, Krishna Chaitanya Chundru wrote:
> Move the phy, phy-names, wake-gpio's to the pcie root port node instead of
> the bridge node, as agreed upon in multiple places one instance is[1].
> 
> Update the qcom,pcie-common.yaml to include the phy, phy-names, and
> wake-gpios properties in the root port node. There is already reset-gpio
> defined for PERST# in pci-bus-common.yaml, start using that property
> instead of perst-gpio.
> 
> For backward compatibility, do not remove any existing properties in the
> bridge node.
> 
> [1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/pci/qcom,pcie-common.yaml  | 22 ++++++++++++++++++++++
>   .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  | 18 ++++++++++++++----
>   2 files changed, 36 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
> index 0480c58f7d99..258c21c01c72 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
> @@ -85,6 +85,28 @@ properties:
>     opp-table:
>       type: object
>   
> +patternProperties:
> +  "^pcie@":
> +    type: object
> +    $ref: /schemas/pci/pci-pci-bridge.yaml#
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      phys:
> +        maxItems: 1
> +
> +      phy-names:
> +        items:
> +          - const: pciephy
> +
> +      wake-gpios:
> +        description: GPIO controlled connection to WAKE# signal
> +        maxItems: 1
> +
Hi Rob,

As wake-gpios is a generic PCIe property like reset-gpio for PERST
can we move this property to the pci-bus-common.yaml

- Krishna Chaitanya.
> +    unevaluatedProperties: false
> +
>   required:
>     - reg
>     - reg-names
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> index 76cb9fbfd476..c0a7cfdbfd2a 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> @@ -162,9 +162,6 @@ examples:
>               iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
>                           <0x100 &apps_smmu 0x1c81 0x1>;
>   
> -            phys = <&pcie1_phy>;
> -            phy-names = "pciephy";
> -
>               pinctrl-names = "default";
>               pinctrl-0 = <&pcie1_clkreq_n>;
>   
> @@ -173,7 +170,20 @@ examples:
>               resets = <&gcc GCC_PCIE_1_BCR>;
>               reset-names = "pci";
>   
> -            perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>               vddpe-3v3-supply = <&pp3300_ssd>;
> +            pcieport1: pcie@0 {
> +              device_type = "pci";
> +              reg = <0x0 0x0 0x0 0x0 0x0>;
> +              bus-range = <0x01 0xff>;
> +
> +              #address-cells = <3>;
> +              #size-cells = <2>;
> +              ranges;
> +              phys = <&pcie1_phy>;
> +              phy-names = "pciephy";
> +
> +              reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +            };
> +
>           };
>       };
> 

