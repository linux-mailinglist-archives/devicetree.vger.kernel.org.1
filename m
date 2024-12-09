Return-Path: <devicetree+bounces-128873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F49E9ADC
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 16:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78F291886CD5
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 15:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67407080D;
	Mon,  9 Dec 2024 15:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="wQl5oELe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0110F25777
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733759316; cv=none; b=HSt89dVsHSxZyJPVl67F22m1AdOeUAHooPQD0DKsLt3tsGfzKWLcrYa6uvCl3VlZUGqy70AAUAsoUCEl0nf69LJgX3SZGkfKdLtCHqZEmxnulS1IdZzH0cEm1i4kaZW9DagsB/CVOwlt+oObV1+LzH7robrhw17twvHNXPaOJS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733759316; c=relaxed/simple;
	bh=tkRV4A98VPqKt0nkRP4bO/sl+l5nuvjhdLHvhXHhjNg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=XT/aHAITX/igjnIv/Qdj+L10TFvgfUihcKUV/X+XUF+rT5q19PTr2rhkzjOxTaOFqqnNfFEBMw4NDNyzfsMa+mnk2TDVXTElU9EpItYJ8poTt0HzVBmzZDEU24QyOOsbcIJ/t5bcgWnYkX2Q/Hxayj2lcQ4nwHo0CGS8ES+hiUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=wQl5oELe; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733759307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UNbDc2+nbj0OjRywjZjUZGnKuFExxiJVLNQqpduB6xA=;
	b=wQl5oELeTbU2hPT1mMaTXQhjZpS0XPAoHPoOnPmcmQGR7VESc4+npimV6bb7w8O1CShooq
	kQzVikfQpAxbD8O+XG/nEoInqhUKx76lBMwvWKj8oeLcT+GdGYjmjkcMvZLXqkIpUrZUE1
	quY2JZHQC6lUgn+X/21hWCFqjZh5QmKqks8t6GxPBCFTYjNt5FUleg3QyHZ1hzqFqoM5MS
	RdVT12OHbRtDB5hoMDVKVbkOg+wgkcdRLJxm+uhlIOAPSo/Hn1fEtX4+32tDsuRSQZuWZW
	l7z9Z2Ss23pmFWypD8MA8DsfS5+ZE9ypOuezOpWtF273GAFTReVXLjfeHVoTcQ==
Date: Mon, 09 Dec 2024 16:48:26 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable automatic fan control on
 Rock 5A/5C
In-Reply-To: <20241209134113.4783-1-naoki@radxa.com>
References: <20241209134113.4783-1-naoki@radxa.com>
Message-ID: <99a3e08c923d26b42636ddaaa48fe08c@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-09 14:41, FUKAUMI Naoki wrote:
> Link the PWM fan on Radxa ROCK 5A/5C as an active cooling device
> managed automatically by the thermal subsystem, with a target SoC
> temperature of 65 oC and a minimum-spin interval from 55 oC to 65 oC,
> to ensure airflow when the system gets warm.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Looking good to me, this DT addition follows the rather usual way
for ensuring low fan noise levels.  The patch summary and description
are also looking good now. :)  Thanks for the patch!

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
> ---
> Changes in v2
> - reword commit message (Dragan Simic)
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index 7ae032b3534c..d0b9513d56a7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -64,7 +64,7 @@ led-1 {
>  		};
>  	};
> 
> -	pwm-fan {
> +	fan: pwm-fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
> @@ -380,6 +380,36 @@ rgmii_phy1: ethernet-phy@1 {
>  	};
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			hysteresis = <2000>;
> +			temperature = <55000>;
> +			type = "active";
> +		};
> +
> +		package_fan1: package-fan1 {
> +			hysteresis = <2000>;
> +			temperature = <65000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +			trip = <&package_fan0>;
> +		};
> +
> +		map1 {
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +			trip = <&package_fan1>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie20x1_2_perstn_m0>,

