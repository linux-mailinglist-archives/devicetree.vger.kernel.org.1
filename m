Return-Path: <devicetree+bounces-159474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38105A6B098
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:17:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08D49987281
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7FC22172E;
	Thu, 20 Mar 2025 22:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GFhPGhrR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671C515D5B6
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742509000; cv=none; b=QWlgGr9xgcWffnrfWoj/wHcd5gAna1pD0G4zlv93ofE7zZkpP1s0P0YGAtXnfDQuf3kSSMgdBhsAfeUIqN/CiGvdZP41oOn5GVshXlzuewfIQ1AWz82GvsT40GFzzRrUeuJWPZ23WdKXYU0Zelx0EB0md1qmxbpR/k7sbyG/Nhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742509000; c=relaxed/simple;
	bh=XDkXkOYgIyPoo6Enp9hnq1lKySVeP/oOl29rKkY3590=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RYiXnHYfomIuC1YNdMKiZcQkaCnW7GUmvbYmx9xNm8mB3txv7hFa+QY/jN5BJqAMesH2yH4CjihmX0fHupz0vyP/pDd+8jKDPj+wy+CRjA95kSWy6xns7B50qVLR3SthM9PmOnxEnFZI/AddYOuuNG3DkjrddG9KL2Nex3k6qag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GFhPGhrR; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfe574976so8166485e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 15:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742508997; x=1743113797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WfPnk7WQgtcfoHo8JXsI+oWzDaDs3bw9jASaZ3sIJgg=;
        b=GFhPGhrR3D2PbkBXSPgE3mgQWcuVmKLcv6Hy74RlsvBBdMDlvsFiRfGT5eN5G15sP9
         aa30XCvaxs7KSBnCgwBoLC5BgZUKhwq736HS2aSwckpoXKfKFNgkpjquo+J2CasyzHEu
         eW2xOfiXD/j7J2Ee9Rq0ssOjkBk9HL3NHie+h0z1jGOfmkQxhdTDxboBibuBANiCQjUq
         NLfCB9/W0Q7DToGsiKPlDeJTPUCM3uOS38uTaMt2+66PYXbY23u78E7lXqwsIcRM3HiK
         sicqhMt/vkH7CKKM9LZ5d5HIbg28RBw/gRIAvaXnTIqHw6BwOZ/ptMja2+YxupqhruHY
         o81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742508997; x=1743113797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WfPnk7WQgtcfoHo8JXsI+oWzDaDs3bw9jASaZ3sIJgg=;
        b=T2juQoh9rgLxu1e2B8vzQzj7uUpu50I8jaOd5fqoignhO10XVjaE+A0yRqWijBzpO4
         j+R9MFhMAtgdaZYUm5FMMREN0ctWegZWYMLiKo9SglYTg8OCx70fFquGxBQSMDiLjGB0
         0A/cdXIQ6V6MeHztMng3PdsOClpr8mJvVc+u+gERiVse6OWuvzxJTr5JeXsp/9jiQl3X
         dowIF4RnpDhgZP2gSLEx0dLP7KZM5mhE/xtvwJir1u075Konk+uf4x3VMOf7LcsRQ+vc
         17/F59M1T31WzsFK/UXHCVGFUc5WOWsJARVluH/QpCHIydtOoJDNSMOyFwllQSX6l6xf
         HAuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPhsiVdtz4bJaJZFfzqesd3CLi6iZw9wCnBN/ZmA2tiM56tjnhJ4iGzAZAaEPkNaimchkJlPIJPrKQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3C7Mh01rJkRjl27mOxa/40TH/Cnqb8Di574A72d+HbJbx3vcS
	zTn/joL0Q9EyGsQgOJ4tBYkldKL0mEZuEB6I9Rm/O/eziM43JhfyDKIGnpVyD7EzcsV64BfxOwT
	qQlsFDA==
X-Gm-Gg: ASbGncscwnQ/2wLYJDYbO9IRd/M7wuAiYaN+9xpGUxzCSvCUTEEcCBAQDu/doinf27d
	LfLJCTUEd/Lbpe3VoMWpV/9tw2Jals5z7M9rgM1waSJqnncKQFTDg2HnPZWOYSoR1UDJvxOudfL
	3NqzldLJKnb4W5a3S9TnH9OCWsAgRZIEO8HwO/jWO+0bZEfrU1LZB0QpfpQoZ5e+GxWkZ8f5z2B
	ryahQejPyQONB1oIvTz9/2686vOFzq5Q8VEMgymBl74JUrJqpnhFcXKGeGWS43rfIyDOrX6lNdV
	Qk2jXbdu6AbyTzSSnXGKhjJUXU4r1n4FaOXst0PGhduZ+Ffv+WfBPXad+7F6LVbLrLAk4RYQbkD
	3JEaiz/cEnA==
X-Google-Smtp-Source: AGHT+IHNuD3oxALNHIxu9dYwYRUPmP+cyvEmCJ1ayFakdYJH3c8S+O6yOUzhs//I8smCyDXpzHD2VQ==
X-Received: by 2002:a05:600c:3155:b0:43c:f81d:34 with SMTP id 5b1f17b1804b1-43d509eae2dmr5415125e9.9.1742508996459;
        Thu, 20 Mar 2025 15:16:36 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd348sm9042715e9.39.2025.03.20.15.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 15:16:35 -0700 (PDT)
Message-ID: <d64b222b-0b4f-4a17-a4db-74079502f7f4@linaro.org>
Date: Thu, 20 Mar 2025 22:16:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
To: bjorn.andersson@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <1nCVo0cfBlz7dR2Jqu8M0rjyv_aRuYvO5M8Ho3sHTuU7-BfteG7JQ6iklpXIsiVEheMKOx4-JSJNsdf37ObJag==@protonmail.internalid>
 <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/03/2025 03:22, Bjorn Andersson via B4 Relay wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> The fingerprint sensor, hidden in the power button, is connected to one
> of the USB multiport ports; while the other port is unused.
> 
> Describe the USB controller, the four phys and the repeater involved to
> make the fingerprint sensor operational.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>   .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 59 +++++++++++++++++++++-
>   1 file changed, 57 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> index 967f6dba0878b51a985fd7c9570b8c4e71afe57d..a35557c562d771e2ce209fca05b82c1943d70f63 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> @@ -744,8 +744,21 @@ touchscreen@10 {
> 
>   &i2c9 {
>   	clock-frequency = <400000>;
> -	status = "disabled";
> -	/* USB3 retimer device @0x4f */
> +	status = "okay";
> +
> +	eusb6_repeater: redriver@4f {

How about

eusb6_frp_repeater: redriver@4f

leading to> +		compatible = "nxp,ptn3222";
> +		reg = <0x4f>;
> +		#phy-cells = <0>;
> +
> +		vdd3v3-supply = <&vreg_l13b_3p0>;
> +		vdd1v8-supply = <&vreg_l4b_1p8>;
> +
> +		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&eusb6_reset_n>;
> +		pinctrl-names = "default";
> +	};
>   };
> 
>   &i2c17 {
> @@ -967,6 +980,14 @@ edp_reg_en: edp-reg-en-state {
>   		bias-disable;
>   	};
> 
> +	eusb6_reset_n: eusb6-reset-n-state {
> +		pins = "gpio184";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-low;
> +	};
> +
>   	hall_int_n_default: hall-int-n-state {
>   		pins = "gpio92";
>   		function = "gpio";
> @@ -1172,3 +1193,37 @@ &usb_1_ss1_dwc3_hs {
>   &usb_1_ss1_qmpphy_out {
>   	remote-endpoint = <&retimer_ss1_ss_in>;
>   };
> +
> +&usb_mp {
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	phys = <&eusb6_repeater>;

phys = <&eusb6_frp_repeater>;

That's how I did it on Insprion14 and it helps me make sense of the dts 
back to the schematic.

> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p9>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy1 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p9>;
> +
> +	status = "okay";
> +};
> 
> --
> 2.48.1
> 
> 
> 
Completely optional obviously.
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

