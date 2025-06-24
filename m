Return-Path: <devicetree+bounces-189097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 088B3AE69A3
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 16:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD76017C387
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D0A2DA76E;
	Tue, 24 Jun 2025 14:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OTHBkXZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58482DA74D
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750775912; cv=none; b=WKdZTI4nOqe1A2CtxpcmXN8nf9htd7TA9tJEfMSbbCXyu1lVsSQw95nXfdpA3u8ewnpdlPG746HeEt+ikDVw2BWYrntILFIE+A0+zBBW/B3UnHue09SdtCAmEjY0xC5K8RtQuMG3Y242j7V7DZTkuL6LbbNyO01AQ8UCb74GZKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750775912; c=relaxed/simple;
	bh=jqMDmMENWLRbCBOnq0ZVNeFnU2Eo6RNLnlJ3ig3iJEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BQ3t10+1vdW+lnaF77lb9ro5Owduz0pK2mN08IaeD9XtfCzTc7JFeeykbL/nLOvqnCfBrmp58fz2+vXTcWn/UtJ9NOPv7HqdBlPL+O8ssGDUEyOhpRLZSDFXbS/TGZNpXLFDN+1WrbIt5Swu9KGHlAPV2YSYyyrFLcpKYC2Fp/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OTHBkXZJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O9IKpb015282
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:38:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	46eqylrIoJ6C03WJIbQg3Uxk+6crYEmZoHpQ1nqIRD8=; b=OTHBkXZJ+Zsoy5dU
	w6HIIZexKvV8k20JtNrqdeLFP0//ANTEWY38Op083p785fra1GUekhhhgJzJyumd
	7Wy10ENjG2AgZNgnmTXvH3EkENUvZIcAzj5IBEceBjU+1tYViRhmKRJQlX6nFv/g
	7UiXHtcOXtq8iYZQujJfmCC9ew0QByPUAz7puVsDjdxiekcZ7aixDNtgXUaEINyi
	tmicmuKnjSFog+OkpQi4L2lyv+TlFzc9FfIaJy7XESoLFOCxTf8ZfUDzy5GuEBcV
	JN+XOWU1ZqGgRpRIRQ0Bkx8A6Ip10+h9JmjmOno4kvmxg3wXs7ailjJn7tbzdpP7
	qI1soA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5nkwd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:38:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09b74dc4bso141238485a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750775908; x=1751380708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=46eqylrIoJ6C03WJIbQg3Uxk+6crYEmZoHpQ1nqIRD8=;
        b=v1OqVK9Cp0TDyKNhLEE4pMLF6DA/OJxYSNhzY8UCo9VAFQJptZYIHA58V+p9BbE4f/
         pK0heUIWaX+j1Q+UnUbyHdf17ntN0f5R4jNgHz06S0RpvEP8yTLMYijoUxPfWkl10To6
         Ob2ms+KgDNWEpK4MccX24yVFT/4FFlS4bwhmDJC9jNxj7R6l+rI2OX7ymCWVqtlUxfD2
         yuUUSdwSEgvERah4mYBOGUOoiK5CyB5Y/05m/caMCtW461ZPYhzRWvq2s8hwhphQsTK5
         VHB1Ul0gWhiPAu1O6ig9x/Bmits1O2W9HwkTb6T7Qj10N89l1zhEgtHezSPEwdEqvwmc
         hzug==
X-Forwarded-Encrypted: i=1; AJvYcCV+2nfspvolzIgizW+/IwM0mhbKGSvNUMrlpZBSjrpaLx+vR8jj4C09TsooiUZ9XpllpZCJ9zN04yDo@vger.kernel.org
X-Gm-Message-State: AOJu0YxUIwqDHlszNQV9AaWOQxksay6AkuZM/+AybW2Tb8SiSlgJGmUL
	JHANB+Y1qMmNXZ2oJg1byFORKBaFp+aFZm9xM2gZDv4d92tzYd7JM6zrwNljp8ksAifBnKt6KiS
	BHxtWAC4p1uDL6fSD79kaOzZ5R8d6AmXWaG8QrQlxgGFZUU18uqtXn2BI7THG5l9RlNb1M+6a
X-Gm-Gg: ASbGncs2Jtdl0ksFFuAOIREP1SRfG9bk1v6aTqWGMuyxTjLPd07xJJoEhtlYyYryRVQ
	S6BVuUn5XAQmcbMn0ADDQ96dXK8ZVsnxPeYsdf9DmmmsVB5qoxSeoiUK2fWfVVWPNzWIGc7Z1pw
	zKUVb5NWEh2wcOuVKwq3yf1Qb0puP8pMLUK7j+vk2zM4g39WcbBMVtPeLTJtQIBPj/1+PDGFSaU
	/51SpCtL4M3PP+ZjeyyE4WvjgPtSv30S8sa+7WOkw/y/wtJyYAghFhnNFb83INX2jT+gfCHuWMq
	ayXxN+xsgOS50Jl+x5qxfbbp+3LM7WdMbasS1GdLvhja2OAoNTzkdJmTeECgD5zqTltr8GBfN6H
	Wpt0=
X-Received: by 2002:a05:620a:2b84:b0:7c3:c814:591d with SMTP id af79cd13be357-7d3f98b4fc9mr932117985a.1.1750775907594;
        Tue, 24 Jun 2025 07:38:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRqvGsol/GE2aqt4yUEI9G6WdeEe6JbvbFKo6KtdQLEdH2V4CXkBo/5R5g0TJ8S64kcKTjBQ==
X-Received: by 2002:a05:620a:2b84:b0:7c3:c814:591d with SMTP id af79cd13be357-7d3f98b4fc9mr932114785a.1.1750775906918;
        Tue, 24 Jun 2025 07:38:26 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0ba7a3fcasm15026566b.117.2025.06.24.07.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 07:38:26 -0700 (PDT)
Message-ID: <bdf7e3e4-f1d1-4f3f-aebe-ded7b8091884@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 16:38:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VF23pXBJntvAQFW0UxnUCIe2GMYrm_n7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEyMiBTYWx0ZWRfXw6dhuaecX8J3
 NIQrFOvJtWEugGwK1QDRxSHIfkz6+PYu4vKNP5qNkx5HK7BH7COEBAERnS1KFCwyP2MGC8bEOj9
 GlIdGIUdBG+1M3/e25pfgF5oyToFql1Wim6UC7M1mV/qbH5wy3ZZ/1N/ddYXVZ4h16Kr7PY38lB
 ZtLH6L6YFawvp+F5psA9mZSBRhAh6mbGuhxu6pQq3bdWKPqQdtBVROVm8dbGlikOMblR+M7MvLR
 Vc1q/+N+z42I6MzGrQD6S83jubuBsXAysH2jDTm/5dZnb3L1T1Uml1HK5qywsqNk0Turz8J5olE
 W1GfAzU1oFkiKu73UdWYPb27PUgn1rTGzs2c8rHvyr7172GbzqJa2/uRRry3p34LcEl0kfGFMdq
 OoZQJlQ2wAddoXJxha9UBscDhriGowW4FWUXiwB0/KUx7u2DUt6HpMTXWOSOaDONkN7FNY2V
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685ab865 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=9lBeFAbR0IUyOWdzi5MA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: VF23pXBJntvAQFW0UxnUCIe2GMYrm_n7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240122

On 6/24/25 11:00 AM, Kathiravan Thirumoorthy wrote:
> QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
> first SE, which supports a 4-wire UART configuration suitable for
> applications such as HS-UART.
> 
> Note that the required initialization for this SE is not handled by the
> bootloader. Therefore, add the SE node in the device tree but keep it
> disabled. Enable it once Linux gains support for configuring the SE,
> allowing to use in relevant RDPs.

Do you mean fw loading support?

> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v2:
> - Correct the interrupt number
> - Link to v1: https://lore.kernel.org/r/20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 66bd2261eb25d79051adddef604c55f5b01e6e8b..2b8499422a8a9a2f63e1af9ae8c189bafe690514 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -417,6 +417,15 @@ qupv3: geniqup@1ac0000 {
>  			#address-cells = <2>;
>  			#size-cells = <2>;
>  
> +			uart0: serial@1a80000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0 0x01a80000 0 0x4000>;
> +				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
> +				clock-names = "se";
> +				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> +			};

I'd normally expect to see a pin configuration here as well,
especially since you mention the bootloader doesn't configure
the interface

Konrad

