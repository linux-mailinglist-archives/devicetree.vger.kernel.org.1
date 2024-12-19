Return-Path: <devicetree+bounces-132882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D4B9F86EE
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 22:32:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D262616C763
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E0C19DF6A;
	Thu, 19 Dec 2024 21:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TmDxdn66"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D01662E9
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734643962; cv=none; b=ZXoDjFYvk3nvhRPGWh+J7Apss2HvdXdwXjQNdtKsjsyh2CYmYcgtLVpO/+3TuinojbbuYiimlajuxoEh7mZOZ7KOvQ1sNeeEoxW+PyGTBcwCknRTHYiGBJacikKqFIGoAIher5e2xu2d2bqsY95/6sQ8y7Gh8dY/VU0Y+d2eLcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734643962; c=relaxed/simple;
	bh=CvPQg2SehXPtMQ7odfp2Axb5Sv2UGsXSYvVUc0Xhgco=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=APX8WmS1YUU51c7UvcImi1R/eom5YFxde6tML6LJR1Lo09gVCfFeHYHZEg6LqU9acxkCg4PBj1WiM/Dc11XmcyM054DZAu+vfM792cIlyGq0ZxUT8nlDkf7lZBqlW79L2q3PAy65i8n5fSejVGpiPW97L3kh/HbNri8ij4meius=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TmDxdn66; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJL8dPq032483
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:32:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ENDa67ziS+SSPznKUdTsfN1hFPAlsjZ38yLEsFtRxl8=; b=TmDxdn66JKwWwn2w
	tL7GSdgutvXv1AqHQLJyKJQG34w4nlSO3e0Oc7i828ZGBIyeqRGWAn+vPi/KT1fB
	snoQmka0PFqCH7vVbYEwfiv+eQVxEKOIoomG3DaNg2/acDDAIjoNU73w9WcYSS92
	3jmbeO39Z/ABCPKCwB3P18Ezci4zHSpPToMc9fgTMFVXyCGOGQIrXwk8wlhpeIUC
	PZUYO4MX3dIs26QNdCbUloF6cKF5g/FShlQqpu2ZAnxfE5WPm1kwKXorttb0K0RD
	1gMXlKQNk8gKqMAENJtUXhlvtxNZGVje10AnWkxv0d2F2lf8nQBqHa/jUwv3gInW
	UZuB+Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mu5301xp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:32:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467922cf961so3052151cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:32:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734643959; x=1735248759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ENDa67ziS+SSPznKUdTsfN1hFPAlsjZ38yLEsFtRxl8=;
        b=nZ17cUoecFw1k0W7UAIM/BY0abCQashbuMhxVEuHwIkXJmcmArQ2o52PybLtHX0z5Q
         Nj8yOKEX1DsNGaYkZGYfWs69gkLWzyw6PYqgjoogp0rf77ajMLxifObeWAhyZ/sznM6U
         kV3Jq1+mzd4EQhEqrCOkig80dPw+RUI2uv0ARI6r2x2yqWRBUDg4M7z081zbUzVsSTAU
         d2ki2aOu751P2jO0nY0AqxwtguaaVGq+wMWIY7AlX4NcPX217eTsHh0krmioJ04lkrgS
         uTT8mJZ8WlLDDhtyJgTX1uo+Tp2sbBz1AiLh5g6KxIZIQ5PufVNoOvIn8tRF4aNUUTUK
         KBew==
X-Forwarded-Encrypted: i=1; AJvYcCXlKvsF8Rnyu8QgeOY/1iP8mXFIXoyLuAOrtNFIG2YiACU4bOAWVKbJla7L3F228mljqLVs2+fcCcQE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc+NLmGJ1VlmjiHZR0dpwA5PBEI575UdqyyXLgsTnIe+wz8VNK
	j/FYahfah16ZeEYJHUe0eU5RWftXe/r1aTiJgEIPgy1kc479C07O/j5wt2HmY7HmmMfWR6Yqn/G
	n1x4rTaEA/aIjKOx2aWggSYOtLFCokyHGhaIDUY1yiDKlkQ3GXkzml1ItobAP
X-Gm-Gg: ASbGncuerBwQ+DLT28ks85yBT6NHezJW3xOiWLW8QaZ/gNMIWp8XxxJbw0+3V+ms2ev
	T7yD6K76S20mDfh80qfqN3oYo6XLMgtpN6HGPmk0BUVFTE9EB9LokyUQ1TVGP4Hs8gBOdWcezfA
	4Qw/1cyoGLdNvacnaNzTil3W+i1u8VJcbc0ke7LdpTfQiCEnPMzvDUwbkXfq5DyJkqAMdXlp1WD
	9ZhVR/tqJrTRFpOCryXWJKttMqI/dXbttne539VkkIXVoa3Iw1YkTb1vEID5XccP49uCmeJhNlx
	mlZY645yUIqlTP+DhOkwMYrWm/9Epz6xIpw=
X-Received: by 2002:a05:622a:1794:b0:467:5715:25c8 with SMTP id d75a77b69052e-46a4a8b81a9mr4279571cf.1.1734643958943;
        Thu, 19 Dec 2024 13:32:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGL7kIua1ME/KQ6yQ6AkFeUfGEOYYj5b7vNMMfXbL3E/2Y15gg3BULYhJ5K9xraAyOzcK8vUg==
X-Received: by 2002:a05:622a:1794:b0:467:5715:25c8 with SMTP id d75a77b69052e-46a4a8b81a9mr4279411cf.1.1734643958545;
        Thu, 19 Dec 2024 13:32:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm104401766b.183.2024.12.19.13.32.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 13:32:38 -0800 (PST)
Message-ID: <366e9b11-d253-4907-9cd2-3781a127b79d@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 22:32:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241217100359.4017214-1-quic_varada@quicinc.com>
 <20241217100359.4017214-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217100359.4017214-5-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: j-FuWAXgoJnkG2wEVW3dRe4C1xEubF8C
X-Proofpoint-GUID: j-FuWAXgoJnkG2wEVW3dRe4C1xEubF8C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 mlxlogscore=934 mlxscore=0 bulkscore=0 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190171

On 17.12.2024 11:03 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Fix compatible string for phy nodes
>     Use ipq9574 as backup compatible instead of new compatible for ipq5332
>     Fix mixed case hex addresses
>     Add "mhi" space
>     Removed unnecessary comments and stray blank lines
> 
> v2: Fix nodes' location per address
> ---
> 
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 212 +++++++++++++++++++++++++-
>  1 file changed, 210 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index d3c3e215a15c..add5d50b5fb0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -186,6 +186,46 @@ rng: rng@e3000 {
>  			clock-names = "core";
>  		};
>  
> +		pcie0_phy: phy@4b0000{

Please add a space before '{'

[...]

> +		pcie0: pcie@20000000 {
> +			compatible = "qcom,pcie-ipq9574";
> +			reg = <0x00080000 0x3000>,
> +			      <0x20000000 0xf1d>,
> +			      <0x20000f20 0xa8>,
> +			      <0x20001000 0x1000>,
> +			      <0x20100000 0x1000>,
> +			      <0x00083000 0x1000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";

Please turn this into a vertical list (both controllers)

> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0 0x20200000 0x20200000 0 0x00100000>,
> +				 <0x02000000 0 0x20300000 0x20300000 0 0x0fd00000>;
> +
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";
> +

[...]

> +			msi-map = <0x0 &v2m0 0x0 0xffd>;

And move msi-map a line above interrupts (like in x1e80100.dtsi)
plus keep a new line between the last property and status

The rest looks good!

Konrad

