Return-Path: <devicetree+bounces-127235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE1D9E4F2C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 09:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 172F328571C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0F61CEEB0;
	Thu,  5 Dec 2024 08:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ocVCW4fa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB121CEAD8
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 08:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733385766; cv=none; b=gef4Vcfj+JopkohgoGIXTMq2GLD68y7Obs0lAmL5SmxeFFJ6VTTPEZ5yVQWDdj72rXDpwmSR4zPIfmHM/+OUrHotOUU4sSsPx9p2ca/cXpbGSUgZ/EkcPV0VeHmpkHkYI60VP48fj8DpSPsLDpSWh4S13qZD4AYHOZRegKSVW7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733385766; c=relaxed/simple;
	bh=XwrjnNkQ4knvmDC7/9/Z1Nk8C/X91nId4SNN1HJvRLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YQJvCTWcy85EeLP+cIma1A1Pyz321ua9PyZoMQgt1WK5/CNvDNvl3Zn4eMJft2kzsjU+bCi+iacgNznQqkAKyyfqq9E/rwQrzeXm4e5YBGj3H/DOnPrFRadkIny5vZUgs0VC+5cIWSQuvD09e0ZPDN0kPN0LX+Cgh6t1p9VnuMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ocVCW4fa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B55eqJr010138
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 08:02:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yqbqqcJulAmbWewF5le6MsZzz4kokdCOT6f67ZVo8NM=; b=ocVCW4fa/Q1LgQWQ
	bdgwCfPTS0t6awWhQu+TRKU6UgdPcDCIKYZJOgk7klFa0diIGbp5PXqQI45DRTgZ
	sUiE8NZU3LPNUWMlSRNjtzVu5ieuZy5FxJqMumDFC3iN+jcVZ0kOTnz/XDIkQyPa
	xcEiLlfxLj1iXnK7ECN+laP6mYq4RKwgqHfOupENK0LtGgZkWbrC3Y8C4xXXKH8O
	HpW0nrAp3/QCn7kAQp1I/MMBW9WBtoadx9PCPFrRj9AoblbXRWnGBemDMi8Y1Ok5
	mNtCXJQFFq/KY73YzNp/Ho55jvbdoyIanohg+c09hYupoVj8RynxEs30B6RB64lV
	X8rJEQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43a4by5g17-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:02:37 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-7f72112de23so502663a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 00:02:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733385756; x=1733990556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yqbqqcJulAmbWewF5le6MsZzz4kokdCOT6f67ZVo8NM=;
        b=PXF3Xd7KRmSQUpZzUvh0XowJj+MT1d5xjBjyjq7Rc6Zo2tqhZWA5fE1XnDhJv7v17a
         4Ebps5mFGWcWXwnNP1S9jve/1AqyxKXiJ5ZJhcPZrHNFtMOFOJQdu9Rjo51b7C8pAytX
         nOvG9HwANCfGW7QBV7FtQ7A5n0qBvUtyo8FQNMKyIVcYNXwu8MRJeb1Yd8oLRT2Rpf52
         25zAzUrmJcnM5umm7TBPuGCxmwGP+tdKK+43MpJcGwowJaZbFSU8jy4U1hTOm4rosyfh
         URsRgTzfjOP/BxkXexRxuk/q6t0dmzSdcDIiigd+MOCMcK1ZVtGPSNY0lex1lyW6+nFh
         4hmg==
X-Forwarded-Encrypted: i=1; AJvYcCUilzfIlsHSvr4ucri07eSEJtxpIDLYvrnuHvnnPv9c7rzGGhN1ZE1M3UjsgoD47zIuhvcXSb3XFE8M@vger.kernel.org
X-Gm-Message-State: AOJu0YyEx3TQ4NEjcQ3TMHrgkfRhsqU3R1GvHmFAZmdN3NEc3Ip+pT8s
	LKUPysU/UHZVAH75cFDiI4BRHK+xFL4DbNgWvqSVZTHGPqGKoalcIicuXyOZ+j06Jbk2SL6jkU/
	QO51sgatSKafkNzybVtul32VdwWCID0EGxRcl1/QFF6Fb1o0hfq9JE3dFVtNk
X-Gm-Gg: ASbGnct3+CfIa0LEJ2jUS7o0E38P4PmzEfzy3XWIofL/i6oW1RCQduumuwwEGBludQc
	OA0WHdT7GZp2zA8mwXZ2jBD444Xyp3q7GBHjayBIJ0Tnpgj1bsyELbtev1lu4PdHz0olSwTjyQD
	o/Siqc3wmH32NkhTpjjlEZxCZM/yp0EVgpja09jspZLQF8b3pth1VpkdViUa0PKxfUEN7wO7IdA
	17+DRrI18wmNskld5BC46f9R8NnKKG9jhrX+XU5m2p/VLGk42xTFMuP1Vy7/Jwyif8bd02Yr9XR
	/qTm1A==
X-Received: by 2002:a05:6a21:3941:b0:1d9:3acf:8bdc with SMTP id adf61e73a8af0-1e165438833mr16445323637.46.1733385756343;
        Thu, 05 Dec 2024 00:02:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFerYsbdp1Pj/tRpDFeOsFzKZusCyeQcW368bYmYk17ZSI8YNxJAIjpZrugnZOIdSlvtWUTQQ==
X-Received: by 2002:a05:6a21:3941:b0:1d9:3acf:8bdc with SMTP id adf61e73a8af0-1e165438833mr16445278637.46.1733385755960;
        Thu, 05 Dec 2024 00:02:35 -0800 (PST)
Received: from [10.92.169.167] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fd157b229csm735543a12.52.2024.12.05.00.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 00:02:35 -0800 (PST)
Message-ID: <98b2b88b-9690-44a7-9b22-2f23e6606e82@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 13:32:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Add USB multiport
 fingerprint reader
To: Johan Hovold <johan@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@linaro.org>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-usb@vger.kernel.org
References: <20241118-x1e80100-crd-fp-v1-0-ec6b553a2e53@linaro.org>
 <20241118-x1e80100-crd-fp-v1-1-ec6b553a2e53@linaro.org>
 <Z07bgH5vVk44zuEH@hovoldconsulting.com>
 <d095ae2a-3f9d-464c-9dc8-a3e73eac6598@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <d095ae2a-3f9d-464c-9dc8-a3e73eac6598@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JvkkJwxpV_94CR12jAqPrzE-eOPzjGR4
X-Proofpoint-ORIG-GUID: JvkkJwxpV_94CR12jAqPrzE-eOPzjGR4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1011
 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050058



On 12/3/2024 6:45 PM, Krishna Kurapati wrote:
> 
> 
> On 12/3/2024 3:50 PM, Johan Hovold wrote:
>> [ +CC: Krishna, Thinh and the USB list ]
>>
>> On Mon, Nov 18, 2024 at 11:34:29AM +0100, Stephan Gerhold wrote:
>>> The X1E80100 CRD has a Goodix fingerprint reader connected to the USB
>>> multiport controller on eUSB6. All other ports (including USB 
>>> super-speed
>>> pins) are unused.
>>>
>>> Set it up in the device tree together with the NXP PTN3222 repeater.
>>>
>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 48 
>>> +++++++++++++++++++++++++++++++
>>>   1 file changed, 48 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts 
>>> b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>>> index 39f9d9cdc10d..44942931c18f 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>>> @@ -735,6 +735,26 @@ keyboard@3a {
>>>       };
>>>   };
>>> +&i2c5 {
>>> +    clock-frequency = <400000>;
>>> +
>>> +    status = "okay";
>>> +
>>> +    eusb6_repeater: redriver@4f {
>>> +        compatible = "nxp,ptn3222";
>>> +        reg = <0x4f>;
>>
>> The driver does not currently check that there's actually anything at
>> this address. Did you verify that this is the correct address?
>>
>> (Abel is adding a check to the driver as we speak to catch any such
>> mistakes going forward).
>>
>>> +        #phy-cells = <0>;
>>
>> nit: I'd put provider properties like this one last.
>>
>>> +        vdd3v3-supply = <&vreg_l13b_3p0>;
>>> +        vdd1v8-supply = <&vreg_l4b_1p8>;
>>
>> Sort by supply name?
>>
>>> +        reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
>>> +
>>> +        pinctrl-0 = <&eusb6_reset_n>;
>>> +        pinctrl-names = "default";
>>> +    };
>>> +};
>>> +
>>>   &i2c8 {
>>>       clock-frequency = <400000>;
>>> @@ -1047,6 +1067,14 @@ edp_reg_en: edp-reg-en-state {
>>>           bias-disable;
>>>       };
>>> +    eusb6_reset_n: eusb6-reset-n-state {
>>> +        pins = "gpio184";
>>> +        function = "gpio";
>>> +        drive-strength = <2>;
>>> +        bias-disable;
>>> +        output-low;
>>
>> I don't think the pin config should assert reset, that should be up to
>> the driver to control.
>>
>>> +    };
>>> +
>>>       hall_int_n_default: hall-int-n-state {
>>>           pins = "gpio92";
>>>           function = "gpio";
>>> @@ -1260,3 +1288,23 @@ &usb_1_ss2_dwc3_hs {
>>>   &usb_1_ss2_qmpphy_out {
>>>       remote-endpoint = <&pmic_glink_ss2_ss_in>;
>>>   };
>>> +
>>> +&usb_mp {
>>> +    status = "okay";
>>> +};
>>> +
>>> +&usb_mp_dwc3 {
>>> +    /* Limit to USB 2.0 and single port */
>>> +    maximum-speed = "high-speed";
>>> +    phys = <&usb_mp_hsphy1>;
>>> +    phy-names = "usb2-1";
>>> +};
>>
>> The dwc3 driver determines (and acts on) the number of ports based on
>> the port interrupts in DT and controller capabilities.
>>
>> I'm not sure we can (should) just drop the other HS PHY and the SS PHYs
>> that would still be there in the SoC (possibly initialised by the boot
>> firmware).
>>
> 
> The DWC3 core driver identifies number of ports based on xHCI registers. 
> The QC Wrapper reads this number via interrupts. But these two values 
> are independent of each other. The core driver uses these values to 
> identify and manipulate phys. Even if only one HS is given in multiport 
> it would be sufficient if the name is "usb2-1". If the others are 
> missing, those phys would be read by driver as NULL and any ops to phys 
> would be NOP.
> 

However do we need to reduce the number of interrupts used in DTS ?
We don't need to give all interrupts as there is only one port present.
We don't want to enable all interrupts when ports are not exposed.

Regards,
Krishna,

