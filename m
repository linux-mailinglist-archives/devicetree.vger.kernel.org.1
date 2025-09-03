Return-Path: <devicetree+bounces-212363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC528B427C2
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 19:17:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AEEB24E2B66
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8760320CBA;
	Wed,  3 Sep 2025 17:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FK8sRegv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFAE28725A
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 17:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756919820; cv=none; b=RxuliXh6ROBSIpfQy+kRbCOKxjU7q9QWN5usBLRrK+Y6FMkePZdKBkI/xxbOqtzV3++zfRcX7KHa09QMtstAU6wccNwRHZ0gy9ZaMVns/GSWmxez3TG08BetKB/TN7xssZzdBNp1Fy42dS0DvKzSVzS6nuyDC3/7arvpJ+Fyg84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756919820; c=relaxed/simple;
	bh=nqlFhZhzUZ+Vy1SQPrseXFrBMF8Y98aiCpXePUraDik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hfTQ/i8trezCZgVZWMvT1Xu2igF4OGlnsiRUQaYSxv0eHhn6LbeBZpSn8ka4EfZwbz+zWJmP7AKK+JoNlA6Nm3J2TZXKBOj+pD61NLxaBzD65FUTE5nu1ohWAF38rXZTbeeudxfvBRGBzkaeEkX8shCjoHQiC7H6VruM/ZFg+e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FK8sRegv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx9Hr001019
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 17:16:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z7peoZhXj/0Yo2bV05F9I7qJDdTJs3fB7ALaWzJ/+MY=; b=FK8sRegvj+nzad/G
	x4nwE2u1SOyjQfNpCwU4f8nF2eyv2gn65se1ATns8YjKgpa6WqQniAvLdySSC2So
	ytM0qWhSipr0DmresAQA1/+GZ6Jj0Lxw/MybC+Ey2Wd9KiSFSwf1oiRRYjVccMx6
	8RxIEwk8WF8/FoQqDiXOs0DFOgBd9VWM9BqO0c6p0CXx/fLS4n7QUwJQMWG+aowr
	IsjKFBIEnnN5xQAWcalfDQrhTt/ZFQwsy4/+fTiLX9RMsx/8l/h2SME67nh4DbSR
	BUU0UzIY3qQpvozGjYSZrLjYkr4fhrBj6Tb8Wc5z/iM6py7qRkFDXDSSkw44Lf6/
	ZReCeg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush34gg6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 17:16:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b2967fd196so278651cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 10:16:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756919817; x=1757524617;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z7peoZhXj/0Yo2bV05F9I7qJDdTJs3fB7ALaWzJ/+MY=;
        b=bap940LxJ2bfcvMB7IovhoTsAXXnkxM1lM1BtgOpKz37IqtDusiQYu1jgFWl0GAdjM
         +TzyoKcPVkOTq9wj7x9bWBRXcVuR7WnnNDClWSZiKM+uGY/S/Tajc6j8yt6KtCib9qCA
         W6kNCLJ0/EJJ6g7497U6RC9MqO6Kv2WlJrlUhbiJ3QTOGgudCurbsK4rZFyxN0+tZwEN
         uBE4ETlYtJQu/WnPnFyxyd3oMilA+wr0ZW0hvLvPP84WwExka1kDb8cpR+ehoVRu3QT4
         mF4U5Sa5+3GC3w9levd7S9u9G/BwQ+HboIrbQaLdUJNXG4smEFMhINqg9qJQCpVnUihB
         3GHA==
X-Forwarded-Encrypted: i=1; AJvYcCWOZFzz9wtuveGic65pIrOXSJkN1hSEZ+uDJh6RTvmg666VNXsjoKNXlQrn5adbxBhX9EL2l0avrlpy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi3lHRauj9rKeChKEUau/y+YW6Ft8TNJH+VwdctMs5ZBANF2W4
	oDrBnzYTAudDr/dhfzhO7wucYHOZap88crs8SvvDtKj/NabeFJbKmBKkH5z+Mupsjs7Et5MeLO1
	4YZiEJPg/BBhYq3dVCzsPuz9mF/XdwKL3UUtRBZxzniLF+mw+nfE+Gci5rG01VkL0ZidNFfhb
X-Gm-Gg: ASbGncvgaqr35rCXRTiEknaBD9xKtJPUwN1qv1Eu9oZ7ze0zfb7WI/2mXIP6jDEmUZR
	3NHTcPLCmstaecN0xDiaiFlhnStHSLVbxzCm/lS5k000//TqBLq8m/P0ezigTEi+rp4BWiHcvwO
	LiSDLv5+CBEUfRtewqU7ZXNEi5Sf2BB3wCjBqFo708f4tPcBjP/7ImVYFRUCa03sFHgTGuHPT1q
	UsixjckRkyO8YcVxykQh+Omm7phnB7inEDCjNVrHxsUouZdCB8Qd8yj9VOYT12dZbSEZgYIgj0p
	fiEu41+6o9C/X/qKOqDV0xsfhys7pbH9hJ36O7UAQfOaCQ7Sw08rWcpkfYF4js2bx9o7loboCLG
	cKZjJunqsEQ/7L1pa2dc4Ig==
X-Received: by 2002:ac8:7f53:0:b0:4b1:2122:4a51 with SMTP id d75a77b69052e-4b313e59df0mr165737191cf.4.1756919815381;
        Wed, 03 Sep 2025 10:16:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzufSNCOLJcAHJBeXbkcXSuchMY9E0g8OI9XBOLb45HVfhiGviTYDOVr814FhPcFk6atK3Vw==
X-Received: by 2002:ac8:7f53:0:b0:4b1:2122:4a51 with SMTP id d75a77b69052e-4b313e59df0mr165736731cf.4.1756919814748;
        Wed, 03 Sep 2025 10:16:54 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc4e50fbsm12023875a12.38.2025.09.03.10.16.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 10:16:53 -0700 (PDT)
Message-ID: <7234085c-55b6-4131-acb8-a4ec097c6668@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 19:16:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: lemans: Add SDHC controller and SDC
 pin configuration
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-2-08016e0d3ce5@oss.qualcomm.com>
 <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
 <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
 <aLhssUQa7tvUfu2j@hu-wasimn-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aLhssUQa7tvUfu2j@hu-wasimn-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX6nglOY7j2wnm
 6i2GLS1+QmZSUyNFQ5eoQC8mwO4I6qQed39cWyrG+/lFCQnYatWHjbJaLtZ0jNpsWzsq51OvxNq
 ubH8OjQF86nS/bRKGv9e/B7i9bwSuvpd+rqXAJN5a4TkErbM/u7temyffn3kNrjbS+zK+wjKPgk
 TL8cq9sJ9bO0zQK27nZagRYBDtGSyeegcQaPtb0s3/T1o9ucMzXXV9LH+575+VaopzS2n7H97gh
 TCZeGsmRHBgGmUiSg79BIVmDtNcJFaBRgvxyzFVSLygeRy0258Hbr47p1w3mX+Kcq18dh9M0l4q
 LF7u9lcji45aUrzBMshFPW7KRounlKjnyJZZCVrLIfOAF0QU44k2omjKE/pcdKaVFkwQCqweNuJ
 hOFJ8LVK
X-Proofpoint-ORIG-GUID: EeFFjKGxr5sr8cQReDu1-kuaw857FhFs
X-Proofpoint-GUID: EeFFjKGxr5sr8cQReDu1-kuaw857FhFs
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b8780a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=_TSgDihk_Fvy7NELKkkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On 9/3/25 6:28 PM, Wasim Nazir wrote:
> On Wed, Sep 03, 2025 at 06:12:59PM +0200, Konrad Dybcio wrote:
>> On 8/27/25 3:20 AM, Dmitry Baryshkov wrote:
>>> On Tue, Aug 26, 2025 at 11:51:01PM +0530, Wasim Nazir wrote:
>>>> From: Monish Chunara <quic_mchunara@quicinc.com>
>>>>
>>>> Introduce the SDHC v5 controller node for the Lemans platform.
>>>> This controller supports either eMMC or SD-card, but only one
>>>> can be active at a time. SD-card is the preferred configuration
>>>> on Lemans targets, so describe this controller.
>>>>
>>>> Define the SDC interface pins including clk, cmd, and data lines
>>>> to enable proper communication with the SDHC controller.
>>>>
>>>> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
>>>> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
>>>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 70 ++++++++++++++++++++++++++++++++++++
>>>>  1 file changed, 70 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>> index 99a566b42ef2..a5a3cdba47f3 100644
>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>> @@ -3834,6 +3834,36 @@ apss_tpdm2_out: endpoint {
>>>>  			};
>>>>  		};
>>>>  
>>>> +		sdhc: mmc@87c4000 {
>>>> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
>>>> +			reg = <0x0 0x087c4000 0x0 0x1000>;
>>>> +
>>>> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
>>>> +			interrupt-names = "hc_irq", "pwr_irq";
>>>> +
>>>> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
>>>> +				 <&gcc GCC_SDCC1_APPS_CLK>;
>>>> +			clock-names = "iface", "core";
>>>> +
>>>> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
>>>> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;
>>>> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
>>>> +
>>>> +			iommus = <&apps_smmu 0x0 0x0>;
>>>> +			dma-coherent;
>>>> +
>>>> +			resets = <&gcc GCC_SDCC1_BCR>;
>>>> +
>>>> +			no-sdio;
>>>> +			no-mmc;
>>>> +			bus-width = <4>;
>>>
>>> This is the board configuration, it should be defined in the EVK DTS.
>>
>> Unless the controller is actually incapable of doing non-SDCards
>>
>> But from the limited information I can find, this one should be able
>> to do both
>>
> 
> It’s doable, but the bus width differs when this controller is used for
> eMMC, which is supported on the Mezz board. So, it’s cleaner to define
> only what’s needed for each specific usecase on the board.

If SD Card is the predominately expected use case, I'm fine with keeping
4 default (in the SoC DTSI) with the odd user overriding that

Konrad

