Return-Path: <devicetree+bounces-126647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0CF9E28BB
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 18:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DD50BC6E34
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48AEE205E37;
	Tue,  3 Dec 2024 15:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XD/PUHdv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645E820011E
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733240256; cv=none; b=Dl49N6yhuswIdi45fXcBdX9/OJMLeqifbavWG21/Mg83V8zAB+kt0N9YeNGm8/zfC2n7FiN0Pjb75pznN+AIHAx0o7YS7nkwGQVSwMnsJb4O0X1O1YzfiXb7QVrnJod3MxNVjTpItw7/lZ6QJP3+j0UYZOZ+Vg+OuPmzNFmV9mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733240256; c=relaxed/simple;
	bh=fO/qh5sqTmf1eBA7gFi+J1C/OQQ+064q95v0fANMQ3E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CQ/H+wTaTijlTYCvX1J56inQGhZ1ubHJM3scg7EpxHgvmQN0Ut64cGZzNCNz7YdlWJzMOren7MpEY1EbMVpP+Bn8nKdxalzfzy8NDaSSuUPZtUXgDkDEbnnyZxbmv7qLokhywDVyHkeA+PJxoLczTeiE5HclDI0cV4lbEiLkbjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XD/PUHdv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B37Prgw017944
	for <devicetree@vger.kernel.org>; Tue, 3 Dec 2024 15:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WVsAf3br7q2QiAZQkRJosEe0peHLoK9e9ACnt+YXgwE=; b=XD/PUHdv0pH24DGj
	QktgXOvaT1YY7+tqc+sgFM6pJkrFYRvvxXEqjtw1dSD7jCicsW4iTFdW3HiSbkTV
	ASikHoLrlvz00Cm+zbDh1SHI6CQeEQiRIL9c2SSAekoxzsYOuw+w2DTtKzm612mk
	r/uu/ASE56q8BW3hia+/A2B42PTA7tN/HaR7r/2MCVY/V2/GeHeooLnZJlPI6eaj
	kAij6dxg7dAJiq1qGxSk+etXFAnwNzrDjI+vjitoWWqy038DcNEytwb14Vztyt2y
	Z6gLrF4nsybrJsXcqnbNlpmwFGPIhdlYlaxHydpZEaWCko4sD5fU5cdx2HAi1xpi
	yX/3Iw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437tstgg4c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 15:37:32 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-7fcb7afb4e1so3242569a12.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 07:37:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733240251; x=1733845051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WVsAf3br7q2QiAZQkRJosEe0peHLoK9e9ACnt+YXgwE=;
        b=ChYbmOGHFQLp9rRiiOp/ZefO/3zx9KPlLcvD1QMfLeVzPF0yH3U6KZ+dDDI8U/Ya6J
         Ld28lrnBe55k00014Y0eondXKDcgGAoXQMAvgEH4zxQcYZkYpJKZKFHgTd1UMdK0LWUg
         jZmSMD3ECg4a7dHU+VmXVMCKhgEO/2wDPAg/vrTSuPtmKfkKGEzAkyC92ft2xebhhSfT
         U24Xs1UrXUJnSjth+IMDIlbgRawCFEUw9acl6O10KmciqxGEbqCePsO/OBrYJJZEWAnZ
         ZQxFKa/NYAtkhoOJnbOAyxDJyjpB1kTNiU86ZUbxsiEngJaLQBchn/lq4yKSQSMTxuvY
         oJtA==
X-Forwarded-Encrypted: i=1; AJvYcCUAcCBTUxz7GO9OyVZtdYONxUPCsSANc3DOR+sa9lKw402KFvYe5mTENz0DwkTB/b0b0ymvNe2vZPuB@vger.kernel.org
X-Gm-Message-State: AOJu0YzXnbonU1pkTuNO7TnopvWY7BaBc2dLj0eFx9Wv4Gxs4e/ImuEU
	D0xw8hUXcaS6K2J+GtLd/THgBSFLsSXZnyzPtHyhxlep8r52SXzFS7mcUKIwE0p5U85/xanYxDv
	MeWYU790wfzsXSccqhxZ77d7lWVwqOPem6SbHnRjzVSdg211GKIK0P5A1HkPL
X-Gm-Gg: ASbGncsgPjIPk5lFawxm1EidI5aMWWU0PUY1l/I6b7XXdudPQZLpbutaN5MaC/uH1Uq
	L4FD9y+W7fwhki0hwk+hcNVKYPGR6Not3eL5QSb9rLcfmrWBFruNq6FD0mE29AWVZCJGmOmwzxF
	q3iwGjsuS7MitIJ0T+xXBETVzbG1/0eIpfsD5/+mg+pKctk++RgJE+FZkvIjmlbiC9PY4DMC9y/
	YBb8ZzmMyqCwYBoJqreoKX7pQw+D4t1acXp1ttBIyXBC/JG3BtBhqYdZr3m30cDFT31Kr5n3mfB
	L5pOsls48jM9
X-Received: by 2002:a17:90b:4e90:b0:2ee:a58d:cd96 with SMTP id 98e67ed59e1d1-2ef01204128mr3593132a91.18.1733240250764;
        Tue, 03 Dec 2024 07:37:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1wCFkJuDY3iAo1YW3xzVreeVpHJUxKTejY6gq824aM6cXlEoKfgBRQ345ghJyDtEXjV2f1g==
X-Received: by 2002:a17:90b:4e90:b0:2ee:a58d:cd96 with SMTP id 98e67ed59e1d1-2ef01204128mr3593087a91.18.1733240250314;
        Tue, 03 Dec 2024 07:37:30 -0800 (PST)
Received: from [192.168.31.128] ([152.58.197.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ee488af41dsm8955256a91.28.2024.12.03.07.37.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2024 07:37:29 -0800 (PST)
Message-ID: <41106fd7-5348-4d21-9ae7-8466f5634b4c@oss.qualcomm.com>
Date: Tue, 3 Dec 2024 21:07:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Add USB multiport
 fingerprint readery
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Johan Hovold <johan@kernel.org>
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
 <Z07bgH5vVk44zuEH@hovoldconsulting.com> <Z07r3Upr50vLluyn@linaro.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <Z07r3Upr50vLluyn@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _UDxNbTk-95B_TVHClKXU8oN1djVlWoE
X-Proofpoint-GUID: _UDxNbTk-95B_TVHClKXU8oN1djVlWoE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412030132



On 12/3/2024 5:00 PM, Stephan Gerhold wrote:
> On Tue, Dec 03, 2024 at 11:20:48AM +0100, Johan Hovold wrote:
>> [ +CC: Krishna, Thinh and the USB list ]
>>
>> On Mon, Nov 18, 2024 at 11:34:29AM +0100, Stephan Gerhold wrote:
>>> The X1E80100 CRD has a Goodix fingerprint reader connected to the USB
>>> multiport controller on eUSB6. All other ports (including USB super-speed
>>> pins) are unused.
>>>
>>> Set it up in the device tree together with the NXP PTN3222 repeater.
>>>
>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 48 +++++++++++++++++++++++++++++++
>>>   1 file changed, 48 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>>> index 39f9d9cdc10d..44942931c18f 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
>>> @@ -735,6 +735,26 @@ keyboard@3a {
>>>   	};
>>>   };
>>>   
>>> +&i2c5 {
>>> +	clock-frequency = <400000>;
>>> +
>>> +	status = "okay";
>>> +
>>> +	eusb6_repeater: redriver@4f {
>>> +		compatible = "nxp,ptn3222";
>>> +		reg = <0x4f>;
>>
>> The driver does not currently check that there's actually anything at
>> this address. Did you verify that this is the correct address?
>>
>> (Abel is adding a check to the driver as we speak to catch any such
>> mistakes going forward).
>>
> 
> Yes, I verified this using
> https://git.codelinaro.org/stephan.gerhold/linux/-/commit/45d5add498612387f88270ca944ee16e2236fddd
> 
> (I sent this to Abel back then, so I'm surprised he didn't run that :-))
> 
>>> +		#phy-cells = <0>;
>>
>> nit: I'd put provider properties like this one last.
>>
>>> +		vdd3v3-supply = <&vreg_l13b_3p0>;
>>> +		vdd1v8-supply = <&vreg_l4b_1p8>;
>>
>> Sort by supply name?
>>
> 
> Ack.
> 
>>> +		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
>>> +
>>> +		pinctrl-0 = <&eusb6_reset_n>;
>>> +		pinctrl-names = "default";
>>> +	};
>>> +};
>>> +
>>>   &i2c8 {
>>>   	clock-frequency = <400000>;
>>>   
>>> @@ -1047,6 +1067,14 @@ edp_reg_en: edp-reg-en-state {
>>>   		bias-disable;
>>>   	};
>>>   
>>> +	eusb6_reset_n: eusb6-reset-n-state {
>>> +		pins = "gpio184";
>>> +		function = "gpio";
>>> +		drive-strength = <2>;
>>> +		bias-disable;
>>> +		output-low;
>>
>> I don't think the pin config should assert reset, that should be up to
>> the driver to control.
>>
> 
> I can drop it I guess, but pinctrl is applied before the driver takes
> control of the GPIO. This means if the GPIO happens to be in input mode
> before the driver loads (with pull up or pull down), then we would
> briefly leave it floating when applying the bias-disable.
> 
> Or I guess we could drop the bias-disable, since it shouldn't be
> relevant for a pin we keep in output mode all the time?
> 
>>> +	};
>>> +
>>>   	hall_int_n_default: hall-int-n-state {
>>>   		pins = "gpio92";
>>>   		function = "gpio";
>>> @@ -1260,3 +1288,23 @@ &usb_1_ss2_dwc3_hs {
>>>   &usb_1_ss2_qmpphy_out {
>>>   	remote-endpoint = <&pmic_glink_ss2_ss_in>;
>>>   };
>>> +
>>> +&usb_mp {
>>> +	status = "okay";
>>> +};
>>> +
>>> +&usb_mp_dwc3 {
>>> +	/* Limit to USB 2.0 and single port */
>>> +	maximum-speed = "high-speed";
>>> +	phys = <&usb_mp_hsphy1>;
>>> +	phy-names = "usb2-1";
>>> +};
>>
>> The dwc3 driver determines (and acts on) the number of ports based on
>> the port interrupts in DT and controller capabilities.
>>
>> I'm not sure we can (should) just drop the other HS PHY and the SS PHYs
>> that would still be there in the SoC (possibly initialised by the boot
>> firmware).
>>
>> I had a local patch to enable the multiport controller (for the suspend
>> work) and I realise that you'd currently need to specify a repeater also
>> for the HS PHY which does not have one, but that should be possible to
>> fix somehow.
>>
> 
> I think there are two separate questions here:
> 
>   1. Should we (or do we even need to) enable unused PHYs?
>   2. Do we need to power off unused PHYs left enabled by the firmware?
> 
> For (1), I'm not not sure if there is a technical reason that requires
> us to. And given that PHYs typically consume quite a bit of power, I'm
> not sure if we should. Perhaps it's not worth spending effort on this
> minor optimization now, but then the device tree would ideally still
> tell us which PHYs are actually used (for future optimizations).
> 
> For (2), yes, we probably need to. But my impression so far is that this
> might be a larger problem that we need to handle on the SoC level. I
> have seen some firmware versions that blindly power up all USB
> controllers, even completely unused ones. Ideally we would power down
> unused components during startup and then leave them off.
>

This question might be a dumb one, if so please ignore it.

But if we skip adding unused phys in DTS node, the core driver wouldn't 
have access to all phys and we wouldn't be able to get references to 
unused ones (un-mentioned ones in DTS). So how can we power them off 
from core driver if we don't have reference to them ?

Regards,
Krishna,

