Return-Path: <devicetree+bounces-212317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49711B425D6
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 702BA5481DC
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33AB8285C87;
	Wed,  3 Sep 2025 15:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l1NjJ32X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB2B286430
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756914528; cv=none; b=Iw+s4bSnc1YV3kCmyoJ96A78lgYGbeeCdsqQOUUAc5H8x6MSOi8KOd+uLBjMY1A7DxKXa9BH0XhNlHUjTU18AySRp0mpO5VlYuqo0A4bh/2EEfQx3Nit/k1qIhCFETiy9i8ZQDPPgWh/MAco3zkQH5MH0wFn9CglQwgBzAHot2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756914528; c=relaxed/simple;
	bh=I4dvzksBGLJ7YYqBj4cjUhjzhWLD2Q/j5EaHEBCG64M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GDdtgDjERDM6a04Y677h3AwBrFE8wN87LsxMl2rvpkTSdtAskkLlkIlKz3Lu6/vkM6xpVu22IljBKoQqK2rzxL3QcHeoHb5u139gLb3Y1EMgnExuoXqDmC8OAg80Crj8Pw/9u/YScEHhd1UF7c7V40FZavegTo98e6rvdgp0zHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l1NjJ32X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx7Sb003955
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:48:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AbNhMpUtMiEUnNVgjFV19+ZJvfwkIjVGX0qqonuR6xo=; b=l1NjJ32XMyIouWXu
	5D27dZcyCCd+V2HyYNKBkRytf2E1U5BQhTOUduM2VlnxIBbH0bk7JzAhnAwv6Tf4
	nVNQfvyFG58cvXVianxi8AlFctEDVBAVanAycQUTgoYw/KNW0y0OCn6K3qpuu4Pm
	zSKcLq1GRKGI2jepchKl40cZnRULSoS/JMALFkAW3BrrBpnuxiAMKLCgDTN6R1fb
	BFaf9lD6bm10cU0CQgT5n1alPDxQ5edxHB/wbP+FqqCrH9LQvEhzQcK2muiaPEpG
	jnGb5nxHjOLV7+plzke+kUklmwSUA1RAyJy7PIkROgcdhkKS4tHkBGsgC4vjuawB
	+10pRw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8v66x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:48:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b48f648249so179991cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:48:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756914524; x=1757519324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AbNhMpUtMiEUnNVgjFV19+ZJvfwkIjVGX0qqonuR6xo=;
        b=txD+TXL7PHiqSe+OurdQnbGTnTGRLaDb14sYdmNkgCTFluTccYovXsjd8r1tOfq60F
         VGBL5Z5j1o8RDNgpTliF/x9cM+GDQjGHNTw6OdGjfV9GCdp5oxALjqukW4q69k4C+syQ
         kQauZQku+n1iqGW2CHfUxz57NCmgMu64rRXPStoPW/K/sAv6AC+BuvyeQ3kmhem4j+VX
         dim/aoaf2jgeV3yiaHPAg1GGHdM8+vJUGLWJ8WxLd1frttCV941L+ZZFg/Hi10f2EWKs
         bjpEq8alXdiKdByaWwg2VaeOYIzsKABvWO1WloCqQ86Ezgq/Z0BWmn9AOdMxju2HsiDm
         61lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiCNoPkfcprsICtI2fDnWUPtpnDyVEyjjDEnFHZOAykeW3MAbQCS0MeVUmHQ0fuP9oXtiZ0qxg2rcp@vger.kernel.org
X-Gm-Message-State: AOJu0YzTap5LpWVNsQS6d8kHelPBD2iNKsFV2+7NoY+D77qRUB7ikAPS
	V5sswKjiVbOVq0Hx0vvtHEqVlWAkUwleYRQ56AKha6K84WxTkVa3g5A0zUH6hfwwUT2AzV/2bpo
	BoDcTvgutYRk3amSLTBbNKCNLM7GioBtVNWYmQJPIzbTT3U0gu3uBSDX6Lem2gKFv
X-Gm-Gg: ASbGncu0Iijm5AkmzGpH6eIQXVxwMYr5HwiuXwQxHkIUXwwTaRjH+UtMh3girAI2HYi
	YnWbyMnrCFS1392yTh8M/CWvYCGOwQJyR5TydyyBFtATdJnxRUxop3GOqY1QWC1i2993ZEdjNeC
	A10qv5sASakuogmsf6SHg9Anr6CJkLLWHxEeI08F5LexzlrI7fa3m0smUDY7tk8Yl9/Nwb6rq07
	LdhNXywxKqDH2a3StZsygUJVuKZUZDvYPq3ddHrlQ6y9MvPcw3T5NLorhRRBX+zeHM6c0XCIHz3
	jjWS06EGe3pWiuirqJNR43TOfUJ9tP34Ee8T2amdUAjlB6GvBjCRnNVkLDeoj/XIvu8iYmVKyp3
	gcdHo62W9RLAupOOHpAKbBg==
X-Received: by 2002:ac8:5790:0:b0:4b2:d2ea:f8fa with SMTP id d75a77b69052e-4b313f40452mr157015301cf.9.1756914524035;
        Wed, 03 Sep 2025 08:48:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZCJQ2TWEynp/QBOoS3m9oi3irQOjHy8GVuyxF08zwcCb9nsDksfZu3ls0HCvZ0YFtj5n0xA==
X-Received: by 2002:ac8:5790:0:b0:4b2:d2ea:f8fa with SMTP id d75a77b69052e-4b313f40452mr157015011cf.9.1756914523509;
        Wed, 03 Sep 2025 08:48:43 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b03ab857474sm1070857866b.89.2025.09.03.08.48.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:48:42 -0700 (PDT)
Message-ID: <8a963e12-1113-4604-b15f-a5867c4b5bbf@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:48:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] arm64: dts: qcom: lemans: Add SDHC controller
 and SDC pin configuration
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Monish Chunara <quic_mchunara@quicinc.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-2-bfa381bf8ba2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-2-bfa381bf8ba2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: p1x1uT56U5mTtwDm9w4Y48tKaC8bvrM6
X-Proofpoint-GUID: p1x1uT56U5mTtwDm9w4Y48tKaC8bvrM6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX9rcI5gfzbzqZ
 iPDXjBpk9EogRlcKtvhFPgEJwqfgJp8KmeU6W5YhvQLtNmDKvP2m+XABj39+Ps5gz7ZJki0QF8Z
 UB7Z2DE5Q91gt1HHOPWByvnGsxnBEc1EZzHk6luVmdy6X4M1GgIdDmFvAOd74eDOJdf4jNGkXyc
 tG3NRcVNuBqo5qfAfBy8us56mfE5Vd3ZGPOJG0xetNVJNCtKz31Hx5uxKxspF3f1i5HQniv4se3
 pBtbUOHHJcGR0/GV9IJcCXxqPI1nSDsLQkJs9QVewhTJg9D4lUHSz33pIh4kowUpr8TqtPLR26p
 KLTGp/0w/txjYzd0jJ0q+6wy1f2aVnV5r+AFR3XFck5yIxZoggCl54I8BwKGgtjRtbKGwuiHYCd
 bNflf9L7
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b8635d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=GqXf0neY-Zx-3wbHtdMA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On 9/3/25 1:47 PM, Wasim Nazir wrote:
> From: Monish Chunara <quic_mchunara@quicinc.com>
> 
> Introduce the SDHC v5 controller node for the Lemans platform.
> This controller supports either eMMC or SD-card, but only one
> can be active at a time. SD-card is the preferred configuration
> on Lemans targets, so describe this controller.
> 
> Define the SDC interface pins including clk, cmd, and data lines
> to enable proper communication with the SDHC controller.
> 
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 91 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 91 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 99a566b42ef2..9e4709dce32b 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -3834,6 +3834,57 @@ apss_tpdm2_out: endpoint {
>  			};
>  		};
>  
> +		sdhc: mmc@87c4000 {
> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0x0 0x087c4000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hc_irq", "pwr_irq";

1 entry per line in xx-names too, please> +
> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> +				 <&gcc GCC_SDCC1_APPS_CLK>;
> +			clock-names = "iface", "core";
> +
> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;

QCOM_ICC_TAG_ALWAYS for the first path, both endpoints
QCOM_ICC_TAG_ACTIVE_ONLY for the second one

[...]

> +
> +				data-pins {
> +					pins = "sdc1_data";
> +					bias-pull-up;

Please put bias properties below drive-strength for consistency

Konrad

