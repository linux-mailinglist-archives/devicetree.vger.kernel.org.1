Return-Path: <devicetree+bounces-149756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A695FA405A5
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 06:30:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 309DA702EA2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 05:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D311D88A6;
	Sat, 22 Feb 2025 05:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K41Ti8Ma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC55E770E2
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 05:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740202219; cv=none; b=h4rX7xnjFTF//UG4rMsmrFWnEWxeIHtMmGjOf9LymRkw1vD+KYKzdO1SegT4uwGJ0Bp0BIHwavG3lsOKHuHFyCtP+ZOVj/0KSr1niZmzIE8w2/vF4Y7oIy60vzNm0mKeSNmP/ljtr9xULE1NihEmULuwj42B5ADQhwZ3AC2WAtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740202219; c=relaxed/simple;
	bh=8q8Q3pmm+ZjwOY4bUe9aKgAegdve7M+0P7Hc8em+cJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JDTvxjPeeX3V6rLQlKKKnqXbCeooAlYJ/F0ThLGtC7JHf01DwPmVZbnzFGcTbSkjMMTY2ON3J2oM3TESUegi5OcX+eh/hXxCg4rUmIx/HRZG4BRXqat7LBb6v7kl9uI9b7yoEwtr+BRs/nAT3egSzPXhBX/NPz8AwFGFheGQ1Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K41Ti8Ma; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38f488f3161so1419127f8f.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740202216; x=1740807016; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iY9X8GUgAarcymLQklO62zjT4lj8QHO11p4V9XKDp+8=;
        b=K41Ti8Mas4ya30ARmGmwJ8SNn93t9ttTDLA5WqT6X5AgDZwBmVPzPg34rt6KJRVKpY
         1DJZ0P61nPgcl2JyZoC8Zp2g36S1hcLx11QVchlq1DKmD1XLwhABiGq+Jo/xF/Vae81F
         +L8ThC2OHnMV056trXdEAZ1dKEGK4QBYe8n2XcM7LMdxZi30sS5Gdbmv+ue8V6rihpxE
         xGg5rTGTfqW3uTlVYOQHIN/S0cGxewmqdGN1ItgzA6NR21wRcv/vVcysZ7JBPKPx3YoT
         maCoSiPYrpgAKSp+jIk/EPuH18d+s7GpejSD2PbDlUf3Eu4vQ8wgd4OtQnWawgZVLrbj
         re4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740202216; x=1740807016;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iY9X8GUgAarcymLQklO62zjT4lj8QHO11p4V9XKDp+8=;
        b=AADWKfcqXLp0okciiLJ53/1tM0DYVHUupOBHdXT8yRHEOv211PHbHL/doHe0usZvzw
         y6mboFZk26bgqx/PWNGdnTuRMswwlK+uiJ/yaQov1qdlEOUuV27phAhvxe6VIegD35FV
         OCiql/PwuocCwCftNoDnZjogbC2xMB/GEbePcalYOonBHp56RcFqArfU0unIOn4SmFYJ
         GlNKVXEt4Fzr9ScUzqauLpXqu33JRPUTL5SJMC/sU0ePyx4TGJAYiAVxeX0WJyESfQ0s
         kIlW1CEcS93MsyGsv3Vndg2p0LTrhEM8aPEbF7J2Bztz8526i0Vf9OzGUOGn+qWjh0KR
         m4xA==
X-Forwarded-Encrypted: i=1; AJvYcCWNXV9PaCCyAUbDNxvMu2ar032VbFiUw6OlIr5NBnYzR5Q4v2r/2zwkq3BxulcUBbp15fuKTVjhlwRW@vger.kernel.org
X-Gm-Message-State: AOJu0YypkKWyXlFPVEFIqQMaL4q6VcxjbTsLMjsFGpWACu9nogKWxI0t
	iAH3GieTwuPpZwr1odnA9lSnwuLwC6Le6BySZc+xbAVdXbm0EqOWVVOWN05ooCtoST8Qgbns+fp
	OssfDqdWolZporRoDKdZ8T7mLW2c=
X-Gm-Gg: ASbGnctMMO/kFVkmSNG+G7uPSeydht+GOEoKfGQM3QaF8Ou/kJSjgw7sDNbDXw91Qik
	7M7RnLgea/k1+stYj1rmGHMrltFdSZpmEuw+t0DuUbCj0lxCA/fiNxhZieiErD0n82fE5V8WnnF
	3Zf7RXi+7qZBX8i5jnFva4EWBpHzOyGCRl6mExuAk=
X-Google-Smtp-Source: AGHT+IFeammiil5a9/1noeru+vi9TIuhuA9Es3u+CYHbT+oSSUHqUhnPVFbUi/71Tubxqhu8oNgM/z1QU2UQ5xLfYG0=
X-Received: by 2002:a05:6000:1a87:b0:38f:3344:361e with SMTP id
 ffacd0b85a97d-38f7079ec17mr4703850f8f.23.1740202215997; Fri, 21 Feb 2025
 21:30:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220041010.3801-1-honyuenkwun@gmail.com> <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com> <20250222043138.GT16911@sventech.com>
In-Reply-To: <20250222043138.GT16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 21 Feb 2025 23:30:05 -0600
X-Gm-Features: AWEUYZkvqmomvYYIvOfXxjg1nDhP9wZ1v_lMYrm-8oH8rdZjoXBX0pnZPrVaYz4
Message-ID: <CALWfF7+uXEh0=VhnqE+dgDww8etuOBKmXUsPcnDNCUW8KKn1jw@mail.gmail.com>
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

> > > Also, the green LED is constantly lit even when the trigger is set to
> > > none and the brightness is set to 0. This made is a bit harder to
> > > confirm that the blue LED was working. I haven't ruled out a mistake on
> > > my end for this one yet either.
> >
> > Checking the schematic for the Max and the Ultra, they both use
> > PWM4_M0 and PWM5_M1 to control the blue and green LEDs.
>
> Some brief testing makes it seem like the LEDs are inverted.
>
> If I set the trigger for each LED to "default-on", then they turn off.
> If both are set to "default-on", then only the red LED is lit.
>
> Also, "heartbeat" appears to be inverted.
>
> I tried a new DT with this patch and it appears to work correctly on the
> Ultra I have. However, it raises the question why the Max behaves
> differently from the Ultra.
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
> index 87090cb98020..ed51a4763318 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
> @@ -4,6 +4,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/pwm/pwm.h>
>  #include "rk3588-orangepi-5.dtsi"
>
>  / {
> @@ -62,13 +63,13 @@ &hym8563 {
>
>  &led_blue_pwm {
>         /* PWM_LED1 */
> -       pwms = <&pwm4 0 25000 0>;
> +       pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
Oh, there is a difference in the vendor BSP. The Max has
GPIO_ACTIVE_HIGH while the Ultra uses GPIO_ACTIVE_LOW.
https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts#L401
https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts#L416

On the schematic, the 5 Plus and the 5 Max have 2SK3018s on the LED,
but the 5 Ultra does not have it.

I will separate them out in v2.

Thanks for debugging it.

>         status = "okay";
>  };
>
>  &led_green_pwm {
>         /* PWM_LED2 */
> -       pwms = <&pwm5 0 25000 0>;
> +       pwms = <&pwm5 0 25000 PWM_POLARITY_INVERTED>;
>  };
>
>  /* phy2 */
>
> JE
>

Jimmy

