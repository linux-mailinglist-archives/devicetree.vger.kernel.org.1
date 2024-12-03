Return-Path: <devicetree+bounces-126591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2D49E1EC1
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:13:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1ED1CB2CDB4
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4554C1EF087;
	Tue,  3 Dec 2024 13:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NWRDQpjo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005041DE4D9
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 13:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733231738; cv=none; b=T2Y1f+FQRclxbISX8jmsmLxhkMKOCxcX+cGX7+gWT7+axWGxvLfDYTsPddT+QKtkXUzX9Wm9TsLdPdf+DvUqQhQYrmxaxKo4RNlngPT8d68BU+AEvIKw7Dn971atZDdNbDM0i1JSIJ2FmStvS2RFS5HbessQsIryxbk5kYKb2Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733231738; c=relaxed/simple;
	bh=+NPaEEWIYefTBr1ED8QNa5xuRbDe5vHJEQkJB5mkpZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D1ljz9BGWuZr5DI8NmlRlG8YJ1kA/F1QhK0+AwECoESjEOK122EYuC5Hz+MlDHZ1v2YfQzithoukthqopIphJ4X3xBFmIO2NCCB+fD4GHpHI/SKmzDDGNH3lEuYGXSDbZhMsPSTK3q/WeFgvDQI0YKpz95xFMtqoVjD7PKk/nhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NWRDQpjo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B36pgjb005907
	for <devicetree@vger.kernel.org>; Tue, 3 Dec 2024 13:15:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OOK0liPv4TVk7FI2JPCBS/XyPbuhpQDC9APsqCH7Jao=; b=NWRDQpjo8TUHBjas
	6wX2UFGulEFhPXQSMbRpLfPTD1I/1wZFftSDrMMWOsCFa77vwY0ofW2H8UXvEvCX
	0Al3LihgCq0MfL5HQPskJmG8fVuof/orUbuzSF7f48+iclRS7b0O5cspzC95vsig
	X4qXnx3WFIAwttOIGJveva7EDwfI1G150HI1AnlYDNctZT2MIhsMt6moae9iemsk
	yM7puynGVQOmKqTBGHjTknwVptfOGOD9g55cDNtEpR2N0KZjhJY/sw7CPz+PPljs
	nQpb9WqcNZEhMrFh2NflwZEu10I0eb1Y4QFYFNWMlpjW6TbNuOc/x22qA4VWQKVS
	9Idqfw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w3egwsp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 13:15:35 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7250863ae6dso5345820b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:15:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733231734; x=1733836534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OOK0liPv4TVk7FI2JPCBS/XyPbuhpQDC9APsqCH7Jao=;
        b=iHN1c1M7c8KRBEtVNNb049tzHRHEq0ghV/O/1KHAfiLLoPLhaLVjRFG0KrDPDoUWW3
         2VC/PDF6NIILx2KmhnEhDMaw/TEKdKqa1r+HPzWcEhBZ9io8SO8rWoepHXmrxW6i+zTV
         yOrbxQILeNWbKmpqnQ6ZQev+k1P051r3PORU9APy0uOeAWtqZd/53uSmrbI6c5QdZFOr
         K8pFkYFOM7cSo0gezm/73fCsz0sqKGji5jRYYTGUri0HUwODuqOBcAg30xt/YCOkql6t
         KDoFXx9Q3c3LZm+IOoeDeGSR+GmQnquuBiNxUuA5pS4QA/j8OYmklroYNWWCaoq/D/IG
         FisA==
X-Forwarded-Encrypted: i=1; AJvYcCVbm/bLn2ehzs+qRqJTYJsYFnb0HCj4QokQnPRgAQjAtnHfUUj9hPlUY3z/rX/L1XA8Z4m7tsL/HnQ7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8FZAUa6EUMqiypyVkDzIY+DnnbOGOL3eCzieUK3Xhi/mC7AdV
	6vjka562hBF1yp41QystXzRD9qsFNong70ZCBoMWYexc1Ejg+631MQrp0fkF6JZegx9Y9a8woty
	pgA1gbp44EcznlZ3dl0JdMMlw0uPb07MNVssY9OohFC1/qblOpdOpsw2zv7GU
X-Gm-Gg: ASbGncts/8f3yMW/4Y5GNazUYQ+477O6KKMgCvQSd79JCRD2Ao+1EMct4212NkNtP3D
	NNFU+iDCynLAGJYizJKEvH63F3CXS6mWTOH03bnEX/vDdsbx50wrlnZVrOJLV7csjQNjVyKlvBq
	+02VkOC966PT4WSgk3hmMQ55z1pjy30YFgvRBymZCYsI6tVMp6l0BwfDAxg25AjzF0y8eEcEYsv
	i/gw76B9CvL45S8ygxa3y+wQmgn/rH/QhDIHGGU/UecC75m5jhe7kwen15SYQbNBVs6veo169Xy
	RgNdPNhxObqk
X-Received: by 2002:a17:90b:1c10:b0:2ee:94d1:7a89 with SMTP id 98e67ed59e1d1-2ef011dedcemr3026479a91.1.1733231734087;
        Tue, 03 Dec 2024 05:15:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGw64pLfrf6J3m44FM7ZHDGjsd9KKn4g/o9z71wBvUR/1fQLyIXagLUL9Sj7vaQecZGFOnF7w==
X-Received: by 2002:a17:90b:1c10:b0:2ee:94d1:7a89 with SMTP id 98e67ed59e1d1-2ef011dedcemr3026432a91.1.1733231733653;
        Tue, 03 Dec 2024 05:15:33 -0800 (PST)
Received: from [192.168.31.128] ([152.58.197.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2eea91a5ac8sm4722451a91.41.2024.12.03.05.15.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2024 05:15:33 -0800 (PST)
Message-ID: <d095ae2a-3f9d-464c-9dc8-a3e73eac6598@oss.qualcomm.com>
Date: Tue, 3 Dec 2024 18:45:25 +0530
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
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <Z07bgH5vVk44zuEH@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: o6TlvQNIQlgMAkFvzCCAhTk6sKVtEtvI
X-Proofpoint-ORIG-GUID: o6TlvQNIQlgMAkFvzCCAhTk6sKVtEtvI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412030113



On 12/3/2024 3:50 PM, Johan Hovold wrote:
> [ +CC: Krishna, Thinh and the USB list ]
> 
> On Mon, Nov 18, 2024 at 11:34:29AM +0100, Stephan Gerhold wrote:
>> The X1E80100 CRD has a Goodix fingerprint reader connected to the USB
>> multiport controller on eUSB6. All other ports (including USB super-speed
>> pins) are unused.
>>
>> Set it up in the device tree together with the NXP PTN3222 repeater.
>>
>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 48 +++++++++++++++++++++++++++++++
>>   1 file changed, 48 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>> index 39f9d9cdc10d..44942931c18f 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>> @@ -735,6 +735,26 @@ keyboard@3a {
>>   	};
>>   };
>>   
>> +&i2c5 {
>> +	clock-frequency = <400000>;
>> +
>> +	status = "okay";
>> +
>> +	eusb6_repeater: redriver@4f {
>> +		compatible = "nxp,ptn3222";
>> +		reg = <0x4f>;
> 
> The driver does not currently check that there's actually anything at
> this address. Did you verify that this is the correct address?
> 
> (Abel is adding a check to the driver as we speak to catch any such
> mistakes going forward).
> 
>> +		#phy-cells = <0>;
> 
> nit: I'd put provider properties like this one last.
> 
>> +		vdd3v3-supply = <&vreg_l13b_3p0>;
>> +		vdd1v8-supply = <&vreg_l4b_1p8>;
> 
> Sort by supply name?
> 
>> +		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
>> +
>> +		pinctrl-0 = <&eusb6_reset_n>;
>> +		pinctrl-names = "default";
>> +	};
>> +};
>> +
>>   &i2c8 {
>>   	clock-frequency = <400000>;
>>   
>> @@ -1047,6 +1067,14 @@ edp_reg_en: edp-reg-en-state {
>>   		bias-disable;
>>   	};
>>   
>> +	eusb6_reset_n: eusb6-reset-n-state {
>> +		pins = "gpio184";
>> +		function = "gpio";
>> +		drive-strength = <2>;
>> +		bias-disable;
>> +		output-low;
> 
> I don't think the pin config should assert reset, that should be up to
> the driver to control.
> 
>> +	};
>> +
>>   	hall_int_n_default: hall-int-n-state {
>>   		pins = "gpio92";
>>   		function = "gpio";
>> @@ -1260,3 +1288,23 @@ &usb_1_ss2_dwc3_hs {
>>   &usb_1_ss2_qmpphy_out {
>>   	remote-endpoint = <&pmic_glink_ss2_ss_in>;
>>   };
>> +
>> +&usb_mp {
>> +	status = "okay";
>> +};
>> +
>> +&usb_mp_dwc3 {
>> +	/* Limit to USB 2.0 and single port */
>> +	maximum-speed = "high-speed";
>> +	phys = <&usb_mp_hsphy1>;
>> +	phy-names = "usb2-1";
>> +};
> 
> The dwc3 driver determines (and acts on) the number of ports based on
> the port interrupts in DT and controller capabilities.
> 
> I'm not sure we can (should) just drop the other HS PHY and the SS PHYs
> that would still be there in the SoC (possibly initialised by the boot
> firmware).
>

The DWC3 core driver identifies number of ports based on xHCI registers. 
The QC Wrapper reads this number via interrupts. But these two values 
are independent of each other. The core driver uses these values to 
identify and manipulate phys. Even if only one HS is given in multiport 
it would be sufficient if the name is "usb2-1". If the others are 
missing, those phys would be read by driver as NULL and any ops to phys 
would be NOP.

Regards,
Krishna,

> I had a local patch to enable the multiport controller (for the suspend
> work) and I realise that you'd currently need to specify a repeater also
> for the HS PHY which does not have one, but that should be possible to
> fix somehow.
>  >> +
>> +&usb_mp_hsphy1 {
>> +	vdd-supply = <&vreg_l2e_0p8>;
>> +	vdda12-supply = <&vreg_l3e_1p2>;
>> +
>> +	phys = <&eusb6_repeater>;
>> +
>> +	status = "okay";
>> +};
> 
> Johan
> 

