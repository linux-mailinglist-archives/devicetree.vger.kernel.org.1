Return-Path: <devicetree+bounces-81070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8874891B2E8
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A0FC1F21C81
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 23:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DCC91A2FCE;
	Thu, 27 Jun 2024 23:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="I4aNvlya"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919661A2FC9
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 23:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719531628; cv=none; b=aLPvwAUuxB95xrd3yBXVWbr+R/HJsZmEgADRdIBXZcOXn5Kkf0GoKv9B+Ayp1al5AiNz+uTYLNA5NTZVk1NPNQxe7BdN/a9PAXVmOeosT7CGKEkJUD0pl73zA38aMkwzzw3ZK/VOeZOpcr+mlqizZxxtDX9Gu+4UizeH2feoogs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719531628; c=relaxed/simple;
	bh=3YLvN5/iWcnZs3Q0KBZzgW6erIJeeR7biVQO+hrxAZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L3kNVRwf0arr4Gnw9QgWrBYl5Gs10VxRkDgXxdeqlh/s0JxmOH0h9CabwOjieZR+QjabXEjax8x3EkCjUnqXc+WZsRgxHkaTm3G2wuLS2/djrdizIDS/gcJ0qICwq3g4Z5iG9MxtLaCt108nvH6zMsTxAdFCblIJPlxfXMqoVkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=I4aNvlya; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Envelope-To: andersson@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1719531624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ie79ko5ZwHfoNCk1wIpxCXgeugvWB+WfyJLcLpro6L8=;
	b=I4aNvlya48pBk20R4FvuMMw8yqtuXqjSwf+gUF9PkL4gKx0sOR6zFhY9xHOrKqL2TmLcwc
	ksL9/WWiwMdvVxGY7AlY5oPeFXcLgc54kKr5Po2JxSWDjFUBs1nCH7lXJSsQMh+U/w638C
	PWRhBn6ASko5N/9xNjDYFjL60N8ooVgJvyfE8EZMbfd8plOLBwr/YMSC8/fi2N1KD3YbLm
	3HFfPPENowli0BizsQIlc8JOJ4CfzenzM7rbx0wsVLdXXfBXbxihPh3Ihe0eOGUHjiGobb
	dXxoDP3qG8Bf6VX5c5KNUxWT4MhDD5qQNwR3kKU6FWQw2cvAZEUqEbQ0oinrOw==
X-Envelope-To: neil.armstrong@linaro.org
X-Envelope-To: quic_jesszhan@quicinc.com
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: dmitry.torokhov@gmail.com
X-Envelope-To: konrad.dybcio@linaro.org
X-Envelope-To: rydberg@bitmath.org
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-input@vger.kernel.org
X-Envelope-To: linux-arm-msm@vger.kernel.org
X-Envelope-To: ~postmarketos/upstreaming@lists.sr.ht
X-Envelope-To: frieder.hannenheim@proton.me
Message-ID: <f4100977-230b-4d0a-8a11-8040407737a0@postmarketos.org>
Date: Fri, 28 Jun 2024 01:40:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 7/7] arm64: dts: qcom: add OnePlus 8T (kebab)
To: Bjorn Andersson <andersson@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Henrik Rydberg <rydberg@bitmath.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-input@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Frieder Hannenheim <frieder.hannenheim@proton.me>
References: <20240624-oneplus8-v1-0-388eecf2dff7@postmarketos.org>
 <20240624-oneplus8-v1-7-388eecf2dff7@postmarketos.org>
 <ckl554gpw74ot7x7ruce3ik2judbwg3ift2aiqr2wycgu6zhbh@jk5wp2so6pm7>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Caleb Connolly <caleb@postmarketos.org>
In-Reply-To: <ckl554gpw74ot7x7ruce3ik2judbwg3ift2aiqr2wycgu6zhbh@jk5wp2so6pm7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT



On 26/06/2024 06:16, Bjorn Andersson wrote:
> On Mon, Jun 24, 2024 at 03:30:31AM GMT, Caleb Connolly wrote:
>> Initial support for USB, UFS, touchscreen, panel, wifi, and bluetooth.
>>
> 
> Nice.
> 
>> diff --git a/arch/arm64/boot/dts/qcom/sm8250-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-oneplus-common.dtsi
> [..]
>> +	vph_pwr: vph-pwr-regulator {
> 
> Please keep nodes sorted by address, then node name, then label (as
> applicable). Perhaps making the -regulator suffix a regulator- prefix
> instead (to keep them grouped).
> 
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vph_pwr";
>> +		regulator-min-microvolt = <3700000>;
>> +		regulator-max-microvolt = <3700000>;
>> +		regulator-always-on;
>> +	};
>> +
>> +	vreg_s4a_1p8: vreg-s4a-1p8 {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg_s4a_1p8";
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <1800000>;
>> +		regulator-always-on;
>> +	};
> [..]
>> +&adsp {
>> +	status = "okay";
> 
> Per Documentation/devicetree/bindings/dts-coding-style.rst please keep
> "status" as last property in your nodes.
> 
>> +	firmware-name = "qcom/sm8250/OnePlus/adsp.mbn";
>> +};
>> +
> [..]
>> +&mdss_dsi0 {
>> +	status = "okay";
>> +	vdda-supply = <&vreg_l9a_1p2>;
>> +
>> +	display_panel: panel@0 {
>> +		reg = <0>;
>> +		vddio-supply = <&vreg_l14a_1p8>;
>> +		vdd-supply = <&vreg_l11c_3p3>;
>> +		avdd-supply = <&panel_avdd_5p5>;
> 
> How do you know that the panel will have these properties, when you
> don't give it a compatible here? Not a strong objection, but perhaps
> this should be pushed out?

I'll double check, I assumed all the panels on all the variants of this 
platform used the same regulators (the 8 and 8 pro as well) but i could 
be mistaken.
> 
>> +		/* FIXME: There is a bug somewhere in the display stack and it isn't
>> +		 * possible to get the panel to a working state after toggling reset.
>> +		 * At best it just shows one or more vertical red lines. So for now
>> +		 * let's skip the reset GPIO.
>> +		 */
>> +		// reset-gpios = <&tlmm 75 GPIO_ACTIVE_LOW>;
>> +
>> +		pinctrl-0 = <&panel_reset_pins &panel_vsync_pins &panel_vout_pins>;
>> +		pinctrl-names = "default";
>> +
>> +		status = "disabled";
>> +
>> +		port {
>> +			panel_in_0: endpoint {
>> +				remote-endpoint = <&mdss_dsi0_out>;
>> +			};
>> +		};
>> +	};
>> +
>> +};
> [..]
>> +&pm8150_gpios {
>> +	gpio-reserved-ranges = <2 1>, <4 1>, <8 1>;
> 
> How come?

I'll check this, I forgot to make a note originally, but I do remember 
that I was only able to figure out which GPIOs were causing the 
crashdump by squinting at the magic writing in the tz log (one of the 
values corresponds to to a register address iirc).
> 
>> +};
>> +
> [..]
>> +&tlmm {
>> +	gpio-reserved-ranges = <28 4>, <40 4>;
>> +
>> +	bt_en_state: bt-default-state {
>> +		pins = "gpio21";
>> +		function = "gpio";
>> +		drive-strength = <16>;
>> +		output-low;
>> +		bias-pull-up;
>> +	};
>> +
>> +	wlan_en_state: wlan-default-state {
>> +		wlan-en-pins {
> 
> Perhaps flatten this? >
>> +			pins = "gpio20";
>> +			function = "gpio";
>> +
>> +			drive-strength = <16>;
>> +			output-low;
>> +			bias-pull-up;
>> +		};
>> +	};
>> +
> [..]
>> diff --git a/arch/arm64/boot/dts/qcom/sm8250-oneplus-kebab.dts b/arch/arm64/boot/dts/qcom/sm8250-oneplus-kebab.dts
> [..]
>> +&i2c13 {
> [..]
>> +};
>> +
>> +&display_panel {
> 
> 'd' < 'i'

Ack, thanks for the review :)
> 
> Regards,
> Bjorn
> 
>> +	compatible = "samsung,amb655x";
>> +	status = "okay";
>> +};
>>
>> -- 
>> 2.45.0
>>

Kind regards,
Caleb (they/them)

