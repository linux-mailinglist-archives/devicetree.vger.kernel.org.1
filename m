Return-Path: <devicetree+bounces-95945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2443895C009
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 23:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6FC61F2352A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 21:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730F11CF2A9;
	Thu, 22 Aug 2024 21:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="l8Ir/HHY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [164.92.70.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2891D1733
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 21:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=164.92.70.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724360405; cv=none; b=JhSYfMTi+h17E6RXl27RfnVXP9ObP2R0aatHKOWgLJQlPDdwDo7uVMxeFpWbYzzJdlb2CH4lVNmbr0qhikl0TOK6jaxG0leJ8gL5BbqvM5KNdxB7MrpbjP/5uc9mnnywp3sTcpuI34UFigvahVS4erVMQF7cL18XiO8WMmn5wos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724360405; c=relaxed/simple;
	bh=ErYyQ4vKz30USg0Y1HAdBEEtGEf99rK+BpWgiQpFFEs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sTEUYqcd/RSM3a+jAUPFNl8N/9MyMIKxCHTZbop0jPcuZwCynd/Odr1KqtAIEBr0h3Wc7m4UPlTJz6mS0XJz8xnB+cTwerFNK0mnKxNrWvv5Or8pmgpIezpyXx2zhy2HYP1xTtAMuonxDiYH1fVZAcfTUdLc3u7FVsQe2ItrRmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=l8Ir/HHY; arc=none smtp.client-ip=164.92.70.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724360396;
 bh=7CTeAZ67/8TnQ6dDu7507qtJ44KBopnAcVuGKbx0BFQ=;
 b=l8Ir/HHYAF95gLpmDrth64Wpf2X0Za4zvU2w+93FeVYRW1UCtVuuqES3iaY9SXNc+5Vo4h37g
 9SHZNoRvTAi+973TbitfnjDEojjYAxmSqooSgPCz7/KtbZc2hD/6t6sewDMpv/EvvHToQkdmJG6
 RkSZTrNqcAp16zWqZ7sCjJ2lqyRGxuXRsch9z8QXLCeOGRLGBS5AMzly1YzFzLZRVYWWXPSM8JJ
 iwBfxAAbBeFeAhUcSaP264mysrTrAMP7TABYl3og5KpoVYUX2ICWbqc7lWP/QxXfRg+ot3d3mUf
 YVOmaFt/ibf6yJ+hUP9nVolWE2zJCd8hC29BXIvYU1cA==
Message-ID: <50d768c7-56f1-4a60-b6bd-e31fe7448f33@kwiboo.se>
Date: Thu, 22 Aug 2024 22:59:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-5-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-5-892aebcec0c6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66c7a6c79c6972850a4e99fa

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> FriendlyELEC NanoPC-T6 has IR receiver connected to PWM3_IR_M0 line
> which ends as GPIO0_D4.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index 292022a56332..fcea11ff2af2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -25,6 +25,11 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;

I would expect to see pinctrl here that configure pin for gpio func use.

> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -228,7 +233,7 @@ &gpio0 {
>  			  "HEADER_10", "HEADER_08", "HEADER_32", "",
>  			  /* GPIO0 D0-D7 */
>  			  "", "", "", "",
> -			  "", "", "", "";
> +			  "IR receiver [PWM3_IR_M0]", "", "", "";
>  };
>  
>  &gpio1 {
> @@ -530,6 +535,13 @@ &pwm1 {
>  	status = "okay";
>  };
>  
> +/* Connected to IR Receiver */
> +&pwm3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm3m0_pins>;
> +	status = "okay";
> +};

Is this really needed/correct? A pinctrl for gpio func in ir-receiver
node should be enough for the ir-receiver?

Regards,
Jonas

> +
>  &saradc {
>  	vref-supply = <&avcc_1v8_s0>;
>  	status = "okay";
> 


