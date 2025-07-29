Return-Path: <devicetree+bounces-200577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EBDB15366
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 21:24:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAA293B8386
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 19:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A98234964;
	Tue, 29 Jul 2025 19:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="A0BCxyrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1527621CFFD
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 19:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753817053; cv=none; b=Dh2vXMgksw6MgRuO6U3NPtAb/g7/YF2/4+a0KVkSohrW1OlWxz/pimTu/7hg9o9bjonEuAFIMmRyiWuT+lk4QCEfBy7SzO1q4SBHoSjqPWpZDd3T1XAQD6Wpz42gK4lm3GO55J47OKWQvBFK4eR9y9qA63tDK/OlDxQ7UoTwtkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753817053; c=relaxed/simple;
	bh=mHngYr0f2OU1QYVnNRWDUVanuzXp/fT0EoOJ63pEUv0=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=GEixbrk83009XzFHJNPEHbh8OdvwOJwKsD9IoEbPy9QkwQ4uvzmKFsEe5/iLTXJPuW4MxPp9KklJoVDSSY0qVUWoXH1W0hJa9xP3J7cHaZRnMNlOkvNaI8ONXHvfFg+c0Vm3WWh0Dp/OiGhv+V/TLVUmzaITFU+vrEnqebAYpjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=A0BCxyrn; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1753817048;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=45b7+iFHqq41vN2poZPExRuxtRpUIdHR17dsbMnjiIQ=;
	b=A0BCxyrnYyclR+WVu3Wj43vGJTqP0k11ahIrdKi5DyWe4f+5DjKoxKPijRoi+LlX7ZI3yr
	CG6/zPkzOmq4O2kjcihAop6JTDB64bDn/rm4zYVZfs07ceOTgBmI65qhNWEjBLe5tp+KYB
	6g1cjW8wPVvZfWuvtfNPYMJYryln3+dV2+4v9WVc00v6tzY0pi1jAhPjBr1yNtliUazcDb
	kOwjIwvdqEodc+4CDb2qeVYwoKastrAmMEjUElS142nXc053pjZPhO8xROckBWvUuzoVJj
	6ECRDcFe/BInJPA/Jkgm/HNxgy0Lt5G8yO8h+y5gpeab+NPFni8MyUJw4wZGwg==
Date: Tue, 29 Jul 2025 21:24:08 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Geert
 Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Pinebook Pro: Update WiFi
In-Reply-To: <6948463c8ca90bd9c72fb34178ddb029@manjaro.org>
References: <20250729185827.144547-1-pbrobinson@gmail.com>
 <6948463c8ca90bd9c72fb34178ddb029@manjaro.org>
Message-ID: <5c3a62a678f6d86e81913700c05e0286@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2025-07-29 21:10, Dragan Simic wrote:
> Hello Peter,

Sorry, somehow I managed to forget suggesting that the patch
summary should be made a bit more self-descriptive.  At the same
time, including "Pinebook Pro:" as one of the summary prefixes
isn't common, so perhaps this would be a good candidate for the
revised patch summary:

   arm64: dts: rockchip: Describe WiFi wake-up pin for the Pinebook Pro

Obviously, this applies to your PinePhone Pro patch [1] as well.
As a nitpick, please note that the second "p" in "PinePhone" is
actually an uppercase "P".

[1] 
https://lore.kernel.org/linux-rockchip/20250729190712.145817-1-pbrobinson@gmail.com/T/#u

> On 2025-07-29 20:58, Peter Robinson wrote:
>> Update the WiFi configuration to include the wake-up
>> pin and add an ethernet alias to allow assignment of
>> a mac-address from the firmware.
>> 
>> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
>> ---
>>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 19 
>> +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> index 5a8551d9ffe47..05c48cb09df6f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> @@ -19,6 +19,7 @@ / {
>>  	chassis-type = "laptop";
>> 
>>  	aliases {
>> +		ethernet0 = &brcmf;
> 
> I'm sorry, but this alias isn't acceptable.  In a few words, this
> simply isn't an Ethernet interface.
> 
> We're already stretching a bit the dynamic nature of, well, everything
> with the aliases in the Rockchip DT files, and an alias like this one
> would be stretching the whole thing beyond the breaking point.
> 
>>  		mmc0 = &sdio0;
>>  		mmc1 = &sdmmc;
>>  		mmc2 = &sdhci;
>> @@ -883,6 +884,12 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
>>  		};
>>  	};
>> 
>> +	wifi {
>> +		wifi_host_wake_l: wifi-host-wake-l {
>> +			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>>  	wireless-bluetooth {
>>  		bt_wake_pin: bt-wake-pin {
>>  			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>> @@ -940,7 +947,19 @@ &sdio0 {
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>>  	sd-uhs-sdr104;
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>>  	status = "okay";
>> +
>> +	brcmf: wifi@1 {
>> +		reg = <1>;
>> +		compatible = "brcm,bcm4329-fmac";
>> +		interrupt-parent = <&gpio0>;
>> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
>> +		interrupt-names = "host-wake";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&wifi_host_wake_l>;
>> +	};
>>  };
>> 
>>  &sdhci {

