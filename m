Return-Path: <devicetree+bounces-229188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 499FCBF4C92
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:01:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4C1D189587F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15422690D1;
	Tue, 21 Oct 2025 07:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E8g2vyWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1E31DF72C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761030096; cv=none; b=aSpkcaQQsCsHUOEwbmvnT3AE+OwLwbhID/u+bkfRqlyqyT8SwzRVSHyVOQaMxAiM6LNVjM8ezAtw68QDXIvKaK1fXcV5KIc5Ia0BVJpvXElNw3SIz/s7gU5tn6WxeOw6H+Iw6KYlvqslizLaC2LotBOzE4izOK80uJT/ux9kcQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761030096; c=relaxed/simple;
	bh=5zdzbw2YC3hlweJ/WIjw6w+lHmJbxaOJlTumDtqsI08=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sf7OT6KgW/hyLswCLdI67DBn3nogL9Ptm1JsBwBbbqT6T8c/PH4yBX0PRepXtrYJIGrukrIRo0UpyoUj6XiSLvJMvllkFG+y00nYwj5pJoGwzIHJAUdo/LAfHlz+ITqaB6/qnuV/AfP4E8E1AWWOe4olz1LsPRbhKEnZaPghUXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E8g2vyWM; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-782e93932ffso4467055b3a.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761030094; x=1761634894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m2FQv7IrDsGNuF+VBLarQhTzyJeCYKF3xgk+Hosk094=;
        b=E8g2vyWMpQpAd5ucZEmgx6RS3V2VohMO0L1R7jjEsMDirsPdVQHZOyGdZdKCaehYLl
         EvfbfaIDS78hrAiTmDrSBV2vqBhmVVoTQ6k0aAr0z2v+l9aUhJau2rocmm+3uEyK5sMU
         MjwXv0Zube+tO1L6UcVy9iiUw4JUyMtKsToSvMXv5CsKAKU/LZ0jDyjAwVTiVQ1SRy6z
         xxEq57teyreIQc4DZAHyYYmGSC5nca5lXzM73p2hF00JKjCsAwCAgUIB88eUokPXZA84
         Izr0Ihs/3Fqv5Aoa2EOdWMrVtWs8GgmyH6wp4ZZwcI/w00VKeuGljBRcjhXNzZslWYaU
         +fGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761030094; x=1761634894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m2FQv7IrDsGNuF+VBLarQhTzyJeCYKF3xgk+Hosk094=;
        b=PT+a8OTDBQDfVlyF61B8IYPql64E6bHsldr8KM79pk1D1P1bQ7PZ6t3gSRXY+Xx5Oq
         CTpTGgBi9KPrihAerUDWAr7HJV/zc/cvxt+MpYQJBTFXwj+losCLNIgwtGlTXWk/svex
         bHaNLq23p9TJc8K5vmbI0LJ2V36swVtn2xS3qY4nXzkKgZmoE8FsD9NIos8Cb4z33qqJ
         NK+klV+UvZwzR50cgOpoRMTJWr+1nOv4PQFkYwmyVSTtGvM3ICAoWqzNoyjir9fKpw+D
         bVJpfdkjOyWBpCval78snsUOMLWWViO+sH+O+Tj1mlfzWCiuKiVS5N9RS5r4zFb7N7TW
         dqvw==
X-Forwarded-Encrypted: i=1; AJvYcCU3MYG2vxb7r1oWgMK1D3RDQeMFToub8frJnZWnzXw42aGEOsLonibKCBUuaCsk9uw+5AbBYPXHsuYV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt6nF1hHlyjZWbay8+G1uHNBLSkDYOa7Sq3px4GeFmyEt9IDRc
	p8PRdjAlbw/vAOB65kYLV20ouHX3uvE1Br0a5iufasvbzlcpieKvtaTj
X-Gm-Gg: ASbGncuXTJ8T8yRE8OCx+acylNLkt/GOxSrPjJ85x4MZEXIUE9A3QlOEeawPAyzPXFE
	qKNyN3iCIPjLWuMyLn1HNJjAWf8sTs17+VjzHfl83LVKFs/GapJJu9TgG/HfLMVv3iQ5Tmo7mjq
	+aLv/4rEsJRGoBnHaqDF6KpmrWOhUGuRCsP0rYNUJr5y4B6lpQ62fezhP9v2Q7qNIdseMoI650i
	kwxjp90bf4t1d140Z0nfnBcQMpi3NNEWvVmA229n7eu0xS1tcfMEHhyRibYljsv322udbnLee2T
	zxY3RIaganzfLOFLJYZX6rv/eDTcsX3FiJDSlG1im0qOxZ+ZAnwBpgSrVCoq5YJYSJPJPt58dKp
	7stUgEIhdAhIqVDj+X3z7CVirL7ZwTmAPbxEYh+Q6z2Dg5Zd7gFOYowbAGRj9lJbB6VwX4AWRkh
	02WjdFSueRZOAs
X-Google-Smtp-Source: AGHT+IFrq1T2/60HxK0sAsj3uWnPxbyAuG9Rx9n1/xuPi+Q+nMvXPsTCvDdWlDsQodL+Jzhe72B2GQ==
X-Received: by 2002:a05:6a21:6d95:b0:243:a2fa:e526 with SMTP id adf61e73a8af0-334a8585143mr21235286637.25.1761030094019;
        Tue, 21 Oct 2025 00:01:34 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5de7c0b7sm10006056a91.16.2025.10.21.00.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:01:33 -0700 (PDT)
Message-ID: <beacb926-3b1b-4e4f-89cc-0737ebee5868@gmail.com>
Date: Tue, 21 Oct 2025 12:31:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: talos-evk: Add ADV7535 DSI-to-HDMI
 bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251015122808.1986627-1-tessolveupstream@gmail.com>
 <53ef53b423uespn7xspqfxnnvqvhzb5b22a4oaimf6g2qy7ruo@273oegazxbaz>
 <b3390184-a3ef-49f6-8b68-dbf94564ab43@gmail.com>
 <vcjsz3x3bbzf6lbgbumutfymuz7hbfpr6myg2hiyqbr5o245sb@ydr7bunig5bi>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <vcjsz3x3bbzf6lbgbumutfymuz7hbfpr6myg2hiyqbr5o245sb@ydr7bunig5bi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 17/10/25 18:22, Dmitry Baryshkov wrote:
> On Thu, Oct 16, 2025 at 02:24:40PM +0530, Tessolve Upstream wrote:
>>
>>
>> On 15/10/25 18:34, Dmitry Baryshkov wrote:
>>> On Wed, Oct 15, 2025 at 05:58:08PM +0530, Sudarshan Shetty wrote:
>>>> Hook up the ADV7535 DSI-to-HDMI bridge on the QCS615 Talos EVK board.
>>>> This provides HDMI output through the external DSI-to-HDMI converter.
>>>>
>>>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 21 ++++++
>>>>  arch/arm64/boot/dts/qcom/talos-evk.dts      | 76 +++++++++++++++++++++
>>>>  2 files changed, 97 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>>>> index 55ec8034103d..b58cae02c9cb 100644
>>>> --- a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>>>> @@ -244,6 +244,27 @@ eeprom@5f {
>>>>  	};
>>>>  };
>>>>  
>>>> +&mdss {
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>> +&mdss_dsi0 {
>>>> +	vdda-supply = <&vreg_l11a>;
>>>> +
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>> +&mdss_dsi0_out {
>>>> +	remote-endpoint = <&adv7535_in>;
>>>> +	data-lanes = <0 1 2 3>;
>>>> +};
>>>> +
>>>> +&mdss_dsi0_phy {
>>>> +	vdds-supply = <&vreg_l5a>;
>>>> +
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>>  &pcie {
>>>>  	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
>>>>  	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
>>>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
>>>> index 25057f4f6a91..f7e8be3667d1 100644
>>>> --- a/arch/arm64/boot/dts/qcom/talos-evk.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
>>>> @@ -14,6 +14,82 @@ / {
>>>>  	aliases {
>>>>  		mmc1 = &sdhc_2;
>>>>  	};
>>>> +
>>>> +	hdmi-out {
>>>> +		compatible = "hdmi-connector";
>>>> +		type = "d";
>>>> +
>>>> +		port {
>>>> +			hdmi_con_out: endpoint {
>>>> +				remote-endpoint = <&adv7535_out>;
>>>> +			};
>>>> +		};
>>>> +	};
>>>> +
>>>> +	vreg_v1p2_out: regulator-v1p2-out {
>>>> +		compatible = "regulator-fixed";
>>>> +		regulator-name = "vreg-v1p2-out";
>>>> +		regulator-min-microvolt = <1200000>;
>>>> +		regulator-max-microvolt = <1200000>;
>>>> +		regulator-boot-on;
>>>> +		regulator-always-on;
>>>> +	};
>>>> +
>>>> +	vreg_v1p8_out: regulator-v1p8-out {
>>>> +		compatible = "regulator-fixed";
>>>> +		regulator-name = "vreg-v1p8-out";
>>>> +		regulator-min-microvolt = <1800000>;
>>>> +		regulator-max-microvolt = <1800000>;
>>>> +		regulator-boot-on;
>>>> +		regulator-always-on;
>>>> +	};
>>>> +
>>>> +	vreg_v3p3_out: regulator-v3p3-out {
>>>> +		compatible = "regulator-fixed";
>>>> +		regulator-name = "vreg-v3p3-out";
>>>> +		regulator-min-microvolt = <3300000>;
>>>> +		regulator-max-microvolt = <3300000>;
>>>> +		regulator-boot-on;
>>>> +		regulator-always-on;
>>>> +	};
>>>
>>> Please describe the power grid. Are these regulators being fed by
>>> nothing and generating energy from the thin air?
>>
>> Thanks for the feedback.
>> You are right — in the previous patch, the regulators appeared
>> to have no source, which was incorrect.
>>
>> To clarify the hardware design:
>> The 3.3 V and 1.8 V supplies to the HDMI controller are not coming 
>> from the PMIC. They are generated on the carrier board as follows:
>>
>> 20 V (USBC_VBUS_IN) → 5 V rail (V5P0_OUT)
>> → 3.3 V buck regulator (RAA211250) and 1.8 V LDO (TPS7A9101).
>>
>> The 5 V rail (V5P0_OUT) acts as the input supply for both regulators.
>> Both regulators are always on.
>>
>> example:
>> v5p0_out: regulator-v5p0-out {
>>     compatible = "regulator-fixed";
>>     regulator-name = "v5p0_out";
>>     regulator-min-microvolt = <5000000>;
>>     regulator-max-microvolt = <5000000>;
>>     regulator-always-on;
>>     regulator-boot-on;
>> };
>>
>> v3p3_out: regulator-v3p3-out {
>>     compatible = "regulator-fixed";
>>     regulator-name = "v3p3_out";
>>     regulator-min-microvolt = <3300000>;
>>     regulator-max-microvolt = <3300000>;
>>     vin-supply = <&v5p0_out>;
>>     regulator-always-on;
>>     regulator-boot-on;
>> };
>>
>> v1p8_out: regulator-v1p8-out {
>>     compatible = "regulator-fixed";
>>     regulator-name = "v1p8_out";
>>     regulator-min-microvolt = <1800000>;
>>     regulator-max-microvolt = <1800000>;
>>     vin-supply = <&v5p0_out>;
>>     regulator-always-on;
>>     regulator-boot-on;
>> };
>>
>> These reflect the actual power grid of the board.
>> The 20 V input is not modeled since it’s a raw external
>> supply and not managed by Linux.
>>
>> Please let me know if this structure looks acceptable,
>> Thanks again for the review and guidance!
> 
> I think this is perfectly fine, especially if you add the "powered by
> system 20V rail" comment to the 5V regulator.

Thanks!
Will update in v2 patch.
> 
>>>
>>>> +};
>>>> +
>>>> +&i2c1 {
>>>> +	clock-frequency = <400000>;
>>>> +
>>>> +	status = "okay";
>>>> +
>>>> +	adv7535: adv7535@3d {
>>>> +		compatible = "adi,adv7535";
>>>> +		reg = <0x3d>;
>>>> +		avdd-supply = <&vreg_v1p8_out>;
>>>> +		dvdd-supply = <&vreg_v1p8_out>;
>>>> +		pvdd-supply = <&vreg_v1p8_out>;
>>>> +		a2vdd-supply = <&vreg_v1p8_out>;
>>>> +		v3p3-supply = <&vreg_v3p3_out>;
>>>> +		v1p2-supply = <&vreg_v1p2_out>;
>>>
>>> I think this is not correct. Please consult your schematics isntead of
>>> adding dummy regulators.
>>
>> Will take care in v2 patch.
>>>
>>>
>>
> 


