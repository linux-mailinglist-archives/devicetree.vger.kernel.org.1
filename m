Return-Path: <devicetree+bounces-203923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64790B23243
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 20:16:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A24C188CBE8
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 18:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5A12F28E3;
	Tue, 12 Aug 2025 18:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iUXH5g+4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5ADD2ED17F
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 18:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755022193; cv=none; b=VUc83CoHdc0cG9tWC7IARRXsfMzTK+JfJnciYStYFe7b5Wxx9+l5flvrS1qoDgAIj/1KumFbTE7c5azcIoDiTYq4mg0Jln9wNzOrXBMel+XXwsrORrFanHhuQ+Wo3DgkSdni2JNw48JPeweP48YEHNQuKetW395Hm4g3Uw7Un3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755022193; c=relaxed/simple;
	bh=8SVlR0ZGn4tYykI2NDJKhd3NEzE3rYSmxO7D47ZcTGk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HAhHEtqkjT4ozKEsvvlKMvpYVIGvxsabi6KdgE/7vlIja3zGHWzwu18pS0UYDHqSB7QVpAHCuYgVQ71pdjgSf8vCBE+JfCPy1vr/Jcc4dBezgB2H/UCueHLNrg++4/UHQiXjP50gXtrvu1QxLpl5spyWACdl1V8uC5R4Its4KtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iUXH5g+4; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-459ddf9019cso19390915e9.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755022190; x=1755626990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=np+mETWK/wBLF8wyDZBrdyhOUjfjYt6Q61iq3OWGzGI=;
        b=iUXH5g+4D+KOwcgJ3FqTo5Pmq1bMO0wW/jlQVm/wlfeIXMfYcwlsPCc0UVWzH3uPh3
         oQ2atZNODCFbkoRdbkuRv57sVqfN0gVBy2dpU7oTkjJt+WOv061YwuM4sRzlkPlc+GA/
         +xtmo1vjNS8EAtfWyp7VNhOs1PyZIiKJ5PBpznOhG8B90ZySlg5n/bxz3VpuWN7eCM7W
         V49VIwTRG0wQnvU2kicqJ8Xz4fQrFo/3ljLMABDtmNA0neTigVs4aTa6MruXFR6usJJM
         w0vbE8ueuZOP44AzDfDYlV73Dd9r2TW45ivWP8Fo8jDjc48PtVv9OyuOpqDJZv1ZkRbg
         TCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755022190; x=1755626990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=np+mETWK/wBLF8wyDZBrdyhOUjfjYt6Q61iq3OWGzGI=;
        b=QFfMCWoOySW+ylgUF4h+b995MKSgl5uARDWEJq1Yv5mkt/fGsD3jHJj3Ntc9e/b8kI
         j+SnS/Y248mbfz4HFBVE+Kc944usAq8g6p279ntfRG8p9VwDaaPP8OJrFFLUVycLsKIp
         K5F1fKBbxhoxNUPEFetYYbn6lwz1egbhYhz8+4wMeimOwltAlX+2JncJWO8YYQthWH9+
         s+npLRE8ceS8heJjWGEexqGTmfrufAlCWBu6g6ogpD+tMlU0MXQcJCtBJGIA5A7Li/FU
         bAT/GluhRLGs9/TMgLcMk6S/t9l7rO6yVjB0iEfQ0blf20AbTboT25dnNXfDuFX+NxvF
         Rbug==
X-Forwarded-Encrypted: i=1; AJvYcCUUXgukrGVRz0YI97cq1L8uGZIDIaHN5r1EQ9jHL9+ebXCAvmwDWfyA6FXwyDlyedlaoC6ZNjUywB6b@vger.kernel.org
X-Gm-Message-State: AOJu0YwytnZFNMTeP/G0faEZp3ogmQsAKpk7wHMSaaOj14GeOAv6UjMC
	OYmEq/qVQZNCNEvnQXZvfjZSqz+DcL6BBZpOhLX2aWIYqOXFnpM+k9/b
X-Gm-Gg: ASbGncszzNamvzK2HPYVnFPfSn8uMRFAnezj5E3FSainhVKj82hzX3TB1o/pfgXwLar
	Tt3YZ/EU4zZCcqXwlld3mI1nkqOrfQNmd/vrujMXVMYI5tBF8MgnVBpFxPXKRerGg6I/RT6kysU
	33JUZyokIR9yfqq0qeISvSRtvJF8DnXuSyFLn0plB6/nlZOph8wPdY440BWve3GGUkHEA5/+Gf9
	LdjwHMvsElHJx/YSCbVDCxDriI579rLqQySxt2WjcjAfn4R0mbYnXwJ1Xz0G901Rfx+fqS7ERlM
	U1yffwFRpzUOriioF+zwtM89ewajT5IxbtCrLxRRagmTpVbSh+4jBR5LTobuILTNCC5wySnq0YW
	HQbSVF8RZVpWCd213evYAOlGQCXyyywpl3W2lEz20Bs/4Hyt2OrgX5hI0XhQSajKnEckae8ngvL
	RhBgb8o99dQzynuRWmJg==
X-Google-Smtp-Source: AGHT+IHWtgRWErWP2CSUOwz7QQsptjEQby/FRSJDH+fOmtg9bVEzwZN4gkoyiwE022Ft/1p1KtLEdw==
X-Received: by 2002:a05:600c:4fca:b0:456:191b:9e8d with SMTP id 5b1f17b1804b1-45a165a62d6mr1107935e9.11.1755022189674;
        Tue, 12 Aug 2025 11:09:49 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459db3048bdsm411212805e9.29.2025.08.12.11.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 11:09:49 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: allwinner: a527: cubie-a5e: Add LEDs
Date: Tue, 12 Aug 2025 20:09:47 +0200
Message-ID: <2242978.Icojqenx9y@jernej-laptop>
In-Reply-To: <20250812175927.2199219-1-wens@kernel.org>
References: <20250812175927.2199219-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 12. avgust 2025 ob 19:59:27 Srednjeevropski poletni =C4=8Das je =
Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> The Radxa Cubie A5E has a 3-color LED. The green and blue LEDs are wired
> to GPIO pins on the SoC, and the green one is lit by default to serve as
> a power indicator. The red LED is wired to the M.2 slot.
>=20
> Add device nodes for the green and blue LEDs.
>=20
> A default "heartbeat" trigger is set for the green power LED, though in
> practice it might be better if it were inverted, i.e. lit most of the
> time.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  .../dts/allwinner/sun55i-a527-cubie-a5e.dts   | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> index fce2b7d1ba3d..cb2a2b62a2b2 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> @@ -6,6 +6,7 @@
>  #include "sun55i-a523.dtsi"
> =20
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> =20
>  / {
>  	model =3D "Radxa Cubie A5E";
> @@ -28,6 +29,24 @@ ext_osc32k: ext-osc32k-clk {
>  		clock-output-names =3D "ext_osc32k";
>  	};
> =20
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		power-led {
> +			function =3D LED_FUNCTION_POWER;
> +			color =3D <LED_COLOR_ID_GREEN>;
> +			gpios =3D <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
> +			default-state =3D "on";
> +			linux,default-trigger =3D "heartbeat";
> +		};
> +
> +		use-led {
> +			function =3D LED_FUNCTION_ACTIVITY;
> +			color =3D <LED_COLOR_ID_BLUE>;
> +			gpios =3D <&r_pio 0 5 GPIO_ACTIVE_LOW>; /* PL5 */
> +		};
> +	};
> +
>  	reg_vcc5v: vcc5v {
>  		/* board wide 5V supply from the USB-C connector */
>  		compatible =3D "regulator-fixed";
>=20





