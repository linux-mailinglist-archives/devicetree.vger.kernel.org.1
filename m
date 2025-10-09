Return-Path: <devicetree+bounces-225032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9022FBC9A88
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:58:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D53B189589F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F15462EBB81;
	Thu,  9 Oct 2025 14:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u4FxmJkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E5F1991CA
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021888; cv=none; b=kW1R7S4iLPH1UAIth4OYTPhSE+ZHwATBl01yhWormmmvwGv5lZ/6q7Q7stseAB/QfoaFeHf94tsSFQWPGbeuAO34IRBlCm/mdsS5zcnRqJFJghsjNrdVxy2tYPWSQe+goSt5TQg68VO2oDKXVc5/lqFBK3iDYf7Ze7VZq8FSEFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021888; c=relaxed/simple;
	bh=ZRD7a4oJy73bV0xO3g2NI6JZ482DHE6lS5QnvNDjTRE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BK38rCDxpJ9+F8GfhMn2WVEA0p5k58bmwFOebHGC2CjWiIDc9LhUv60MBWWDHLobjmHMr8FzAcpBoJxuD3fabswT5p2pevQR+ewyPemAnZcfr3AUwbrpA4m6AY3bNaZDCz9tzbqdf4qc8mlwTH74+aNztnF78Szvzs+obe3+WH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u4FxmJkg; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46e37d10f3eso7855025e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760021885; x=1760626685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DI8Lt9f6BsLmdDVFvYYoIKKe+39lpEmV+hgwH3EgCLc=;
        b=u4FxmJkgS9R+oVbOg3D3N1KtGFuID2SOJq1Q8kP4GNYsi7FACjtkJpGPagUszoQ8p9
         1UTW9peymdwGiVByH17WlvzAmbvEfyevyrarI6fEHtdWBl5GEqADKvgoF6mUl5k9vEQ4
         Fjv2ZXFGnYrsk/k+5Rm2VTwuDR5dtsQYSPb6/XSVIBlSWXmcq6lOhkDBVTpEF7pr8XhB
         099nrtV0i2WfkfwNg+Lyk9ZIUf9ZChtv6qtjnUWI0yTddlKZEfv3BOzaPxy3IkYRD2vV
         geo5IHzvIHtHnoIet4RUSjT7OATBhAFOE3vqvz1K8GvM1/vAesuYdCOgdrsNdNdrDwoW
         hl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760021885; x=1760626685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DI8Lt9f6BsLmdDVFvYYoIKKe+39lpEmV+hgwH3EgCLc=;
        b=oyvR0yDiMnqpQ8o9gY3SzdBPVZkoZEZgUN79zwRIIk/MuU8kLRfBwvov7aA1zkq9yh
         WeRyeqjXd6tbCg232hpS8XsbS/0FirXXAOKifne+IG27jkFKRHTP4Xhn+Dn0SATFN8kT
         pAwG8cbbrK7uwnds3FEcUSS2XHpuGpNWvJOWyufD2dozaHg2a3OTL9RvMyHqmsvrdjCL
         R4GnMCwkqroF/Gtw9iGEaKL3ADSTi2KzZxvmbbu44//5NpFfh1f/XzlVnPUmG89AzahW
         Nehhj7V+ljoT14GSkzP9bGWYjiQPa76803/VraXpcbJV1Ri+e9hDmQvGKGEcA+pD/B7Y
         05FA==
X-Forwarded-Encrypted: i=1; AJvYcCUcmW7mWwJxopgVLGtu7efzVxNqDDIhMN2Tsn25id+TmUZnU+nORN2HxJCLg7TlMz66mQ+f0Z037yIX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6fnnarweS/dP1JJWpvwTR71borzPTTn1tgxJ/dQd9yLIfDYCa
	5Ax9VGDVHJy31dRpI4iVeuNSSF9S6SWM0zL331mQ437m4oMle45vcC5tt/oj9HyIt9c=
X-Gm-Gg: ASbGncsdTM1asc5j9MUy8bvR1IwlR+QuZl0oAmm8ZHAzEZ3QHq0LId/VRiuMwGXu+ek
	xl2FnCK87keUS96SZyyFG55TPtFfNg38WJ6ODCrQKWkwFX/Pc6zvTJRYepVdOt4QsXF2FSPSkp6
	ayODbo1lnMAVKw6rBa1qTzu8CfXwmapZXm9at+4Kd66hC1NluSdhQjTEQkM2fkUxoX2dfklmC08
	MQrxth6Br1vExghmJOoOYphldv7s7wjPre86fuKOX5yFluGQRBSLLS7IcYl8YRopb1gpTCs5qjj
	MfbSkleSa6PP0oCauDCD4godJHTpJZCPwas66kjD5hiZkXQVIcGpcobM7QKoYHVs68d7DHtmQ3x
	LZ0ZzBNDGn6eIOLRQ+UvN+zpRK3Rdcu97HNawiNPQFqkXVUb0xhYV9ePjGe4jj3R0PF0R/LM12L
	ypPUk=
X-Google-Smtp-Source: AGHT+IEd15wLTU/WKwXFk1ZF/vJ2abHxPV2DvX0f4Jik3OjCnvsaplOSGSZo2ZzaPSlQCtIZbXVGcQ==
X-Received: by 2002:a05:600c:19c6:b0:46e:3d17:b614 with SMTP id 5b1f17b1804b1-46fa9a9440emr65070425e9.6.1760021885098;
        Thu, 09 Oct 2025 07:58:05 -0700 (PDT)
Received: from [192.168.0.36] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab5250ddsm38392705e9.6.2025.10.09.07.58.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 07:58:04 -0700 (PDT)
Message-ID: <0c9ca026-9986-4347-a86d-8bf65e2d12e6@linaro.org>
Date: Thu, 9 Oct 2025 17:58:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <588a7b68-2e2e-4e65-9249-fe8b18b67927@linaro.org>
 <831f6fd7-b81f-4d6f-b9bd-5a8fe514befb@oss.qualcomm.com>
Content-Language: en-US
From: Eugen Hristev <eugen.hristev@linaro.org>
In-Reply-To: <831f6fd7-b81f-4d6f-b9bd-5a8fe514befb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/9/25 16:54, Jishnu Prakash wrote:
> Hi Eugen,
> 
> On 9/25/2025 1:33 PM, Eugen Hristev wrote:
>>
>>
>> On 9/25/25 03:17, Jingyi Wang wrote:
>>> Enable more features on Kaanapali MTP boards including PMIC peripherals,
>>> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
>>>
>>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
>>> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
>>> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
>>>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 663 +++++++++++++++++++++++++++++
>>>  1 file changed, 663 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>>> index 9cf3158e2712..2949579481a9 100644
>>> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>>> @@ -5,9 +5,23 @@
>>>  
> 
> ...
> 
>>> +
>>> +&spmi_bus1 {
>>> +	pmd8028: pmic@4 {
>>> +		compatible = "qcom,pmd8028", "qcom,spmi-pmic";
>>> +		reg = <0x4 SPMI_USID>;
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		pmd8028_temp_alarm: temp-alarm@a00 {
>>> +			compatible = "qcom,spmi-temp-alarm";
>>> +			reg = <0xa00>;
>>> +			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
>>> +			#thermal-sensor-cells = <0>;
>>> +		};
>>> +
>>> +		pmd8028_gpios: gpio@8800 {
>>> +			compatible = "qcom,pmd8028-gpio", "qcom,spmi-gpio";
>>> +			reg = <0x8800>;
>>> +			gpio-controller;
>>> +			gpio-ranges = <&pmd8028_gpios 0 0 4>;
>>> +			#gpio-cells = <2>;
>>> +			interrupt-controller;
>>> +			#interrupt-cells = <2>;
>>> +		};
>>> +	};
>>> +
>>> +	pmih0108: pmic@7 {
>>> +		compatible = "qcom,pmih0108", "qcom,spmi-pmic";
>>> +		reg = <0x7 SPMI_USID>;
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		pmih0108_temp_alarm: temp-alarm@a00 {
>>> +			compatible = "qcom,spmi-temp-alarm";
>>> +			reg = <0xa00>;
>>> +			interrupts = <0x7 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
>>> +			#thermal-sensor-cells = <0>;
>>> +		};
>>> +
>>> +		pmih0108_gpios: gpio@8800 {
>>> +			compatible = "qcom,pmih0108-gpio", "qcom,spmi-gpio";
>>> +			reg = <0x8800>;
>>> +			gpio-controller;
>>> +			gpio-ranges = <&pmih0108_gpios 0 0 18>;
>>> +			#gpio-cells = <2>;
>>> +			interrupt-controller;
>>> +			#interrupt-cells = <2>;
>>> +		};
>>> +
>>> +		pmih0108_eusb2_repeater: phy@fd00 {
>>> +			compatible = "qcom,pm8550b-eusb2-repeater";
>>> +			reg = <0xfd00>;
>>> +			#phy-cells = <0>;
>>> +			vdd18-supply = <&vreg_l15b_1p8>;
>>> +			vdd3-supply = <&vreg_l5b_3p1>;
>>> +		};
>>> +	};
>>> +
>>> +	pmr735d: pmic@a {
>>
>> Hi,
>>
>> The PMR735D is available in pmr735d_a.dtsi
>>
>> Can we find a way to reuse that include file instead of duplicating it
>> here ?
> 
> In pmr735d_a.dtsi, the peripherals are added under the parent phandle
> "spmi_bus", which was commonly used in older SoCs having only a single
> bus under the PMIC arbiter, but in Kaanapali, there are two buses
> present under the PMIC arbiter, with phandles "spmi_bus0" and "spmi_bus1",
> so we cannot include the file as it is.
> 

I know the problem. I disagree with using include files in one case, and
having the PMIC in the dts in the other case.

So there has to be a unified way to handle this in all cases.

Eugen

> Thanks,
> Jishnu
> 
>>
>>> +		compatible = "qcom,pmr735d", "qcom,spmi-pmic";
>>> +		reg = <0xa SPMI_USID>;
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		pmr735d_temp_alarm: temp-alarm@a00 {
>>> +			compatible = "qcom,spmi-temp-alarm";
>>> +			reg = <0xa00>;
>>> +			interrupts = <0xa 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
>>> +			#thermal-sensor-cells = <0>;
>>> +		};
>>> +
>>> +		pmr735d_gpios: gpio@8800 {
>>> +			compatible = "qcom,pmr735d-gpio", "qcom,spmi-gpio";
>>> +			reg = <0x8800>;
>>> +			gpio-controller;
>>> +			gpio-ranges = <&pmr735d_gpios 0 0 2>;
>>> +			#gpio-cells = <2>;
>>> +			interrupt-controller;
>>> +			#interrupt-cells = <2>;
>>> +		};
>>> +	};
>>> +
>>
>>
>> [...]
>>
> 


