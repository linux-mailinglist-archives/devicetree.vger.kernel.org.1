Return-Path: <devicetree+bounces-252158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B384CFBC4F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:47:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CFB06302955E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E3C1DE3DC;
	Wed,  7 Jan 2026 02:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lFwxsRpb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fECoZuIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595B86353
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 02:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767754046; cv=none; b=TaBKkRWOHAGGe3eiVtBA8SFn5fM7n8SRIO2mhPYbn7MJhU43G8+yRGjNEDTVKeGrCS3v/wqyMPBBZ+jlT/vllurNGcGM7k1GZ5gOwaAHBbMsjr7aTMGkBBSST0bphF87+eLAK81q4QKXaNTeKxXEkKoQ/DHpEKqhunVWPR5SgiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767754046; c=relaxed/simple;
	bh=aVUjkqBKuLkFvoFxQhqbD8RO9yFMzlqB2n0vIoOV57U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sz9h72zl4wJgTuQDHYrgm8WD4h2zgzS2tnr31ACCNkOIy359hz5oOI078He0n0v7CgaKFGrYRfwaDTUw3B1yEiQwLJ8ZehYErs/z8O97rFgzKqdCzcgoACyWFmmYd76CFsn549gfYpHY2ZQw5razJFgestcW5L7U0RqvvJEzPcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lFwxsRpb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fECoZuIq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606IGoZ81462343
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 02:47:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WiWzdhAD6zcmAW6Rhaf/VVCt0T+Y+P8B0EWKCRqfOA0=; b=lFwxsRpbEGQCqcuW
	NBSCiNw2EqqnwqMZSulvcgCTtl4jaQ4BMyHKP1+QRW3tMmcEtK8zdQlMYhWzRjCf
	m9WgAW0Ys7Nck31M1iF7vBBTLp6PGqq95RLjX3MK/9aoBEtzAA5xqUjPZfKCeqi5
	wtAMkTXsIhS1Oa6FLcuQSqfxUyUxOEXcQaVk5ZnGZ9f5C6162Dxw79zgQ6/7pTYe
	PgnWyF1LFusceWc0XCt7uehp/1EhHaguFxib0VaKg6frys9rr9KVMFwwnhUPLL5f
	O/9DkqZgppWeLkVtdEARf9U9XxpQAjwqygv4Ww4DBbUBC8xIyp8uH42HQx8L2SQ8
	s/DkJg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm2gsk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 02:47:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a37ca7ffdso24612036d6.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767754043; x=1768358843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WiWzdhAD6zcmAW6Rhaf/VVCt0T+Y+P8B0EWKCRqfOA0=;
        b=fECoZuIq7tlMYjWsr1Knvy8vXAVH3XNK1o4e1CfrI4PpNkVS5+DzgKGAPzNyF1SSYl
         CFu+QbQkcCQYJDJo31fUKd8cZS0SfUHotpt83ztRF0QVFw9QUEjtMQ0zEARplQF5tJQS
         2TOogFhxwWBYgpBp7hBnVy72zAU+8vb86+RdeI4XrWGJB9UK1Ucj64yhprC9Aa8JNfS9
         mf/PNXYKzm38oommuvK+Lc9VoSxNKc433psO0wHL5ilW7p867M6Bqz7uLrBzb/ytfSAI
         PSwQKc6hPWI/V6ylEcjNaHsvngjN8ruJ2vgYf+B9nVm+3ZuUU9fT7cIyxIUYVYmgbrzM
         4hyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767754043; x=1768358843;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WiWzdhAD6zcmAW6Rhaf/VVCt0T+Y+P8B0EWKCRqfOA0=;
        b=cat7tzULcQVJW7UkqJVBK3PVfyQouRGNY0JN4J5Cd8rDRUtAmhHnPMJWZWzXmxTaAz
         G9Z0siPa+RaUHixdEQHMdBMgvFy1KSdjxzf7Ijod7Ze7o05LlRT18SBYpna2DYhJ0LG5
         bT6wzShzuca3KTb2QO/EcLBE/L14SmbDFWdn9ZUOPxDVeu1dWxkl8EFfwUDmr85Oo9dO
         zP+9+VM607UwlGLpDHkp5yVqZP05tgRWquJVBKyY1NYex7MgEm8WOQ1LmWKBnt1xOdsb
         ZEKsnIHasPWT1KOCH/onGS7d0kLaUJdCx5s6pd/pTWKRz42Yo3VWQtw/hQ6AjdtilHBS
         jIBw==
X-Forwarded-Encrypted: i=1; AJvYcCWKa84P+wXF6NSIkh1fvTSNJ0uJGmGwvQmRMRX5gU63gHbeMVNmQs6kOSH/uUDvrdOJgZCgfnt0eAdj@vger.kernel.org
X-Gm-Message-State: AOJu0YxKTC+mkCNlDZ86gOjWjwIrYDuyo4USutmqAtvzHwhXoHLhaEaK
	CGyeubagBub7uwyeydx88dyUmvQCggwMDZVF8BYS/IisDImQQo46uFiPq4TwzZMB8+ZvptAigVq
	DF4g+fTtZGAUYmdNIuEn/LEPjFThNxp+FFqp3KJu38KX2nUJUOAH/X6n4tXskJWxa
X-Gm-Gg: AY/fxX79vFbmgNpk7meQbKoRV8SwQtHyjxGu1BBpAWUg1LVu22SQ4QXJgfRX5VOEh1F
	yP/vOEgZfE6PpwKGvbpxJRPY/JJIPXylAeKRThb2Mu2bqRTPspjWJkVbTj1ath1xQ97CErrMQ/Q
	LBTWCyxleG6eGXwBHjwGRc9Tt2Y0dXDWkWiB6otFBHePkW8DSX/sEtL/vovTB3uNPZCxp8v4xGo
	sUDACi93i5eYEowokRlmqloBSoZKW5yyA0n77onj72t8WR5AD32LfsDnZePzQqCj+QNtXfSKaWP
	DFh0fR5oIgWUnwZpdy2YLMpjDwvV1mAfZJWvAHKtRb9pwpUdypwmwXA9VDaGQiRVyDcAQ/+zHvc
	pr9jziGOkviK2K4xSgo/eN/duBafsyF0Lvi8Fmx1T5LrHjFz6sUY5z99OkT8m3bF53cwVzToJ
X-Received: by 2002:a05:6214:4a85:b0:890:7329:4cc8 with SMTP id 6a1803df08f44-89084183bffmr16456046d6.8.1767754042980;
        Tue, 06 Jan 2026 18:47:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUrHLKpex8Xy1L5oDQg4t4M46YX3NbV1JQUe4hRL6xcQN4GUC2xlX5yB+xllsl3kFs8YQs9Q==
X-Received: by 2002:a05:6214:4a85:b0:890:7329:4cc8 with SMTP id 6a1803df08f44-89084183bffmr16455826d6.8.1767754042504;
        Tue, 06 Jan 2026 18:47:22 -0800 (PST)
Received: from [10.38.247.225] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89077284f23sm24910446d6.57.2026.01.06.18.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 18:47:22 -0800 (PST)
Message-ID: <9730440b-b4ef-4b9a-ac77-37945c5b4f5c@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 10:47:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: talos: Add CCI definitions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-2-bb112cb83d74@oss.qualcomm.com>
 <z2co4ligqcydhk5cxzjdi72nuhf2gm36hrf4qae5hb36m7yvbs@sen7esib2k2x>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <z2co4ligqcydhk5cxzjdi72nuhf2gm36hrf4qae5hb36m7yvbs@sen7esib2k2x>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695dc93c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eyU4tusHGcKmyRKv_OMA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: EeYW6utzEhSfBz136mmOTnRa0U9ExyHZ
X-Proofpoint-ORIG-GUID: EeYW6utzEhSfBz136mmOTnRa0U9ExyHZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDAyMSBTYWx0ZWRfX9kiQKj/eg7wk
 uLrCIzSdsJsSeA4xCX/GPgNT5A2McxuShj48eIsAu64uz7ETdhYi3agjgczMSchlSDdHmJpeMoa
 RCne8XjGOR8NB1LaOx3AO7876qLhdpB3RYwHBd1CbUU00bwW4jXPSAOVJRROxbg7GCJuyQWMT+K
 htDho0eKvSj7IbimBh8YmdkT3kV1lJEQs1+RTdkZFgHBknsWkJHDT4CafU7hEvyfvAQbI23Kcmx
 15soXZhY9uyjvRAy5Yb6uqsRVWrpmg84dUoluXwEwl3OGUvKn+6nZgSNhW7jFsYbQ5IuveiMpJC
 SrqEVY12qBgOMd0YW813HiWcwPjT8PZZPQ9X5Rx70whE6Z6Z5Ra9cTCCDlM0Pr24Zcw9sq2hs/a
 W89GWSVjAJ5NNCGPVuiAsTmzPKCus86wV8znrZ8F6HSPep0rLREumDnbxDfHndANdXLeptyDNMB
 +lvNGONYfyQIAzH2Qyw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070021



On 1/7/2026 2:27 AM, Dmitry Baryshkov wrote:
> On Tue, Jan 06, 2026 at 05:39:54PM +0800, Wenmeng Liu wrote:
>> Qualcomm Talos SoC contains single controller,
>> containing 2 I2C hosts.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/talos.dtsi | 72 +++++++++++++++++++++++++++++++++++++
>>   1 file changed, 72 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
>> index e1dfaff9b6bf8641b19a685e74d60ad4e1e99d41..461a39968d928260828993ff3549aa15fd1870df 100644
>> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
>> @@ -1549,6 +1549,42 @@ tlmm: pinctrl@3100000 {
>>   			#interrupt-cells = <2>;
>>   			wakeup-parent = <&pdc>;
>>   
>> +			cci_default: cci0-default-state {
>> +				cci_i2c0_default: cci-i2c0-default-pins {
> 
> These need to be split, having just one host per state.
ACK.>
>> +					/* SDA, SCL */
>> +					pins = "gpio32", "gpio33";
>> +					function = "cci_i2c";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +
>> +				cci_i2c1_default: cci-i2c1-default-pins {
>> +					/* SDA, SCL */
>> +					pins = "gpio34", "gpio35";
>> +					function = "cci_i2c";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +			};
>> +
>> +			cci_sleep: cci-sleep-state {
>> +				cci_i2c0_sleep: cci-i2c0-sleep-state {
> 
> The same
ACK.>
>> +					/* SDA, SCL */
>> +					pins = "gpio32", "gpio33";
>> +					function = "cci_i2c";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +
>> +				cci_i2c1_sleep: cci-i2c1-sleep-state {
>> +					/* SDA, SCL */
>> +					pins = "gpio34", "gpio35";
>> +					function = "cci_i2c";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +			};
>> +
>>   			qup_i2c1_data_clk: qup-i2c1-data-clk-state {
>>   				pins = "gpio4", "gpio5";
>>   				function = "qup0";
>> @@ -3785,6 +3821,42 @@ videocc: clock-controller@ab00000 {
>>   			#power-domain-cells = <1>;
>>   		};
>>   
>> +		cci: cci@ac4a000 {
>> +			compatible = "qcom,sm6150-cci", "qcom,msm8996-cci";
>> +
>> +			reg = <0x0 0x0ac4a000  0x0 0x4000>;
> 
> Extra double space.
ACK.>
>> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
>> +			power-domains = <&camcc TITAN_TOP_GDSC>;
>> +			clocks = <&camcc CAM_CC_SOC_AHB_CLK>,
>> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
>> +				 <&camcc CAM_CC_CCI_CLK>;
>> +			clock-names = "soc_ahb",
>> +				      "cpas_ahb",
>> +				      "cci";
>> +			pinctrl-0 = <&cci_default>;
>> +			pinctrl-1 = <&cci_sleep>;
>> +			pinctrl-names = "default", "sleep";
>> +
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			status = "disabled";
>> +
>> +			cci_i2c0: i2c-bus@0 {
>> +				reg = <0>;
>> +				clock-frequency = <1000000>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +			};
>> +
>> +			cci_i2c1: i2c-bus@1 {
>> +				reg = <1>;
>> +				clock-frequency = <1000000>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +			};
>> +		};
>> +
>>   		camss: isp@acb3000 {
>>   			compatible = "qcom,sm6150-camss";
>>   
>>
>> -- 
>> 2.34.1
>>
> 

Will fix in next version.

Thanks,
Wenmeng

