Return-Path: <devicetree+bounces-94258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D896954809
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C17F91C20B69
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D05F1741D2;
	Fri, 16 Aug 2024 11:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="tmV3sjbx"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDCA14D703
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 11:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723807571; cv=none; b=AePGdK8zIiVZ6hzxtLh1eMLqDM1GLytmeIi7O+Glshy9VQQoB+hA/Ej2L3DO+ESPoZ1Fp14sJ1hhz9PSRW27YHO90cM7l/zM/h3OZOm6NgbDesj0r5Ln2tBUBShcLeFzdEACM1CzvQHQBD5S4hq3OR2cpo82UryxH9//nzBHH6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723807571; c=relaxed/simple;
	bh=UVceh2yAX74vygzngcRcSST6UeVSCj2Oyzytg96w6K4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LGEyTeaIG/UHvzRK34M2PzYYUbV81M8GKCgYOmFpsafJBGfAWmn59OxaUpaBdMkc2r4Dz9sq5Yk7aYs9/s41lGtD6kOSQ7i532rP+1UvLWtifSiVgljzGekgQgxYj6KCuhueXxGeHMWDr8z7F5jzkfuJOYE5s2FLa0yn4OyRAfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=tmV3sjbx; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pjkbfxq4x3XhzcLHixMbRi+ZdWlKUrjKOhvA83UDL68=; b=tmV3sjbxtOHPgp0rewkmuL+0Kn
	jtYf4/sOo4ifOrToaJxaLzV050FHbw/Fg2evo1pKtub1/At+S0kAl7xNrTlMeWJETFqjpgJju1ZLu
	knQWWpfu9/D2VO6JBVXemzX2+E5Bt6EQbnGz6SFrw6t4lavDuA5b+v10M0zPjYzxrEa2Tl9FN/DIW
	D6mRTIbBGf2Bi+wiQPoQb4hSobCAjcdYwvcJH77c1upPpu7VbBK4F1EZb4R0nHcVWKUQjpZWhbT7U
	hY0AF0VNGfIONpgAy4eq94sKv3JhUwpwqCasGL9pJFmVe9PmBroX6HnXVcCIoylVorwUusRI/ryyi
	ogmKo0qw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sev5p-000164-Ti; Fri, 16 Aug 2024 13:26:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM LEDs on
 Radxa E25
Date: Fri, 16 Aug 2024 13:26:04 +0200
Message-ID: <2335200.ElGaqSPkdT@diego>
In-Reply-To: <20240816110402.840-1-naoki@radxa.com>
References: <20240816110402.840-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 16. August 2024, 13:04:02 CEST schrieb FUKAUMI Naoki:
> to make multicolor PWM LEDs behavior more consistent with vendor
> kernel[1], use "pwm-leds" for it on Radxa E25.

sorry, but that is definitly not a valid reason.

A devicetree does describe actual hardware and is not a space for
configuration choices. So that whole notion to "match a kernel"
is not correct.

Looking at
https://wiki.radxa.com/Rock3/CM/CM3I/E25/getting_started
the specification table clearly designates the board's LED as
"RGB LED" - so one LED and multicolor .


Heiko


> [1] https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts#L100-L121
> 
> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 36 ++++++++++---------
>  1 file changed, 20 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 72ad74c38a2b..0b527f67bdbd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -12,26 +12,30 @@ aliases {
>  	};
>  
>  	pwm-leds {
> -		compatible = "pwm-leds-multicolor";
> +		compatible = "pwm-leds";
>  
> -		multi-led {
> -			color = <LED_COLOR_ID_RGB>;
> +		led-red {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
>  			max-brightness = <255>;
> +			pwms = <&pwm1 0 1000000 0>;
> +		};
>  
> -			led-red {
> -				color = <LED_COLOR_ID_RED>;
> -				pwms = <&pwm1 0 1000000 0>;
> -			};
> -
> -			led-green {
> -				color = <LED_COLOR_ID_GREEN>;
> -				pwms = <&pwm2 0 1000000 0>;
> -			};
> +		led-green {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			max-brightness = <255>;
> +			pwms = <&pwm2 0 1000000 0>;
> +		};
>  
> -			led-blue {
> -				color = <LED_COLOR_ID_BLUE>;
> -				pwms = <&pwm12 0 1000000 0>;
> -			};
> +		led-blue {
> +			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			max-brightness = <255>;
> +			pwms = <&pwm12 0 1000000 0>;
>  		};
>  	};
>  
> 





