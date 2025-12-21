Return-Path: <devicetree+bounces-248599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B525CD4495
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 20:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D92E3003BC3
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 19:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C60B3309DB5;
	Sun, 21 Dec 2025 19:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kIduwCpE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E451027FB1E
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 19:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766344344; cv=none; b=N8RPVgbYJWka/e3sJaHa+REp2ZZAHNQI+4Jtdvut3gPH0u6OdTDFpF6pJ55jABlVHr4O6eOs4gLtz/zqKF0WkE8z8ZsgipsJGIUp03/HlFx2qQeOMmcWoVSeTONSRY0DU185fYHIdvYeWtPzwYjfV39V9Ryr2lG98CYnFV57cMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766344344; c=relaxed/simple;
	bh=61HhO1rGWC0xdRhfIYNnGC1qPmp8H6TKtqhPcyyRmVg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SaermbFiWVQDf5f95+7lm7Pu3y6nEjMfyyP9Cz5N4J6WBN/sevS4ReBnrJynPe+PHUazxsUbn5r4Bcau9uSuknWV48ef3rryczf9WpGhyg7OpPqc4YyBa204hndto2fcUSIfhyIi+sAdns7gbfyu7vEex/xrwMMLy7s9azlFEIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kIduwCpE; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso28661245e9.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 11:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766344340; x=1766949140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vo6ksOhalhjiSBBXqxns23kvqzKoakfn5G4J5zm8oM8=;
        b=kIduwCpEnJkLXmQfdD8jPvp9v6aX/nwTU3dxSCgOFtBmU/MQ40jjmfjKFfx25DLdR/
         D8ZDGLJP6++IVkhXRpOE42NbMhQ58HRkTacAydehBFRYrF6TwR3xXj9Op4/8PsSRgV1R
         1S+hekQiEcxXMdO9dKpjflCTdUQdFpAbODWhP0/j2i+uAPGmnJSuaXclV8nVXDGVuzw6
         wTEt4j7mwmhZWyCzxGKMqC42NtzQTjZ1yUQZ++yp6QvMxmm5PS6MBR52Aus10LK+xzlJ
         UuEChLi+AOEa7mdPCMc3s9tUCKgSflMfLea+4YCVq1cQtYczmzj33eT1QcJnUR3ylrCt
         ra8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766344340; x=1766949140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vo6ksOhalhjiSBBXqxns23kvqzKoakfn5G4J5zm8oM8=;
        b=RIkfTMgD73Qf0rAT574E/OaA8z5aG9owAg2sWzlnbkatQe1Icyn6iVra4P8L05xuWm
         ytE3ge5FwqP+7i6QT3hmzTkp+b8BoBkvbjHI3XSrK/kSeKUIMaIIdpTLMS73gRY+5Ykj
         ueKB7eSlh5yYKmoYM7uuru9SYI8f3/abYn58lX/izYRES9vHSgsjmdN4qrtme6y5US36
         RkwXdeSwrTfelxU0IMCmMTtWy4eSsOZG6hhBiHi0Gk6+Kz7NnsGTpbEtOYXWqkfFC0Ei
         48/HYrtBxY0HimQ6FToOQOwCcWgdS7eXX6y4FUnLzdj+EGjp9BqIiK9adHvA7DjGkxAC
         93Pw==
X-Forwarded-Encrypted: i=1; AJvYcCUtyfCZJ7ssWKL0kXddIUrp7cZIRI+xEPBcABzgbRvyvV3Hcykf0T9X9VxYtPb64To+d7aRjDQm2Ga4@vger.kernel.org
X-Gm-Message-State: AOJu0YycRxpQTkMqggZwWr4jPdu/oJucUfaCOZWENXF548iXqkq3i8fn
	T/6iO08SXukWLXeLBY405ij7NegCyIK/W0E0NGF/HVo77OQhuPbK+7eB
X-Gm-Gg: AY/fxX5cBqAQCkcfdfft9aOB+NvCa0BiXe1fpJfFA8Lj3ozmkzHlxGa8mJtl5XwUag+
	xa8Zj5IJmOYeynO6aPOt6m3QV8IWfC0mDtQLh1/1lAw4HZDzRG6g4BrAtPCX3xpH9I8oqXqoS/u
	0tjJcdfooFAGJPYG5dMLFjYeMT+U61kTYJFflgWTWKd78823OTxEXaEQWkvVdIx5Mel8Fs4tQST
	F3eqQOaP3f8ppnP2PVo4PYbeQ25rBrFIKHILiYJa4gDCdQjHjfHxIA0W2rjqiHUY0CzGl21evnG
	0JPGBUlaoCWauafVgjGBt3LLpKxscMOlR8XNLfo995XMfOKWVDqqFUKb11ihiYDZHeSugfC7cEP
	U1S7oZvg6i4eei/o+0RxPNsmnmYKP9H3xS5fuwTQnPzwyexCErP+f5fwTtZnnzFYOWNW4dv7XlW
	oabfpSdYdgJGjOkxPwMALmnIhUlz2ifKWzi5LdoorzFnyZEXaBpq2A+0SQGDVbergPPzFpEMn2m
	/d2p4IDnIw2G+cX
X-Google-Smtp-Source: AGHT+IGanVGOppu4xZNimZa5u6ycQ+U+0KT1IHmbaejU3vQuyODZEc9RAHzK2FkTud+87U5PHJUskQ==
X-Received: by 2002:a05:600c:858e:b0:46f:c55a:5a8d with SMTP id 5b1f17b1804b1-47d1c629902mr68687605e9.4.1766344340080;
        Sun, 21 Dec 2025 11:12:20 -0800 (PST)
Received: from jernej-laptop.localnet (82-192-45-213.dynamic.telemach.net. [82.192.45.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be27b749esm205928155e9.14.2025.12.21.11.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 11:12:19 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject: Re: [PATCH v2 0/4] Introduce Allwinner H616 PWM controller
Date: Sun, 21 Dec 2025 20:12:18 +0100
Message-ID: <6113404.MhkbZ0Pkbq@jernej-laptop>
In-Reply-To: <20251217082504.80226-1-richard.genoud@bootlin.com>
References: <20251217082504.80226-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sreda, 17. december 2025 ob 09:25:00 Srednjeevropski standardni =C4=8Da=
s je Richard Genoud napisal(a):
> Allwinner H616 PWM controller is quite different from the A10 one.
>=20
> It can drive 6 PWM channels, and like for the A10, each channel has a
> bypass that permits to output a clock, bypassing the PWM logic, when
> enabled.
>=20
> But, the channels are paired 2 by 2, sharing a first set of
> MUX/prescaler/gate.
> Then, for each channel, there's another prescaler (that will be bypassed
> if the bypass is enabled for this channel).
>=20
> It looks like that:
>             _____      ______      ________
> OSC24M --->|     |    |      |    |        |
> APB1 ----->| Mux |--->| Gate |--->| /div_m |-----> PWM_clock_src_xy
>            |_____|    |______|    |________|
>                           ________
>                          |        |
>                       +->| /div_k |---> PWM_clock_x
>                       |  |________|
>                       |    ______
>                       |   |      |
>                       +-->| Gate |----> PWM_bypass_clock_x
>                       |   |______|
> PWM_clock_src_xy -----+   ________
>                       |  |        |
>                       +->| /div_k |---> PWM_clock_y
>                       |  |________|
>                       |    ______
>                       |   |      |
>                       +-->| Gate |----> PWM_bypass_clock_y
>                           |______|
>=20
> Where xy can be 0/1, 2/3, 4/5
>=20
> PWM_clock_x/y serve for the PWM purpose.
> PWM_bypass_clock_x/y serve for the clock-provider purpose.
> The common clock framework has been used to manage those clocks.
>=20
> This PWM driver serves as a clock-provider for PWM_bypass_clocks.
> This is needed for example by the embedded AC300 PHY which clock comes
> from PMW5 pin (PB12).

No. Drop all clocks related code and make this pure PWM driver, like pwm-su=
n4i
is. For AC300, AC200 or whatever other device may need clock produced by PW=
M,
pwm-clock can be used like this:

ac300_pwm_clk: ac300-clk {
	compatible =3D "pwm-clock";
	#clock-cells =3D <0>;
	clock-frequency =3D <24000000>;
	pinctrl-names =3D "default";
	pinctrl-0 =3D <&pwm1_pin>;
	pwms =3D <&pwm 1 42 0>;
};

ac300 {
	...
	clocks =3D <&ac300_pwm_clk>;
	...
};

Best regards,
Jernej

>=20
> This series is based onto v6.19-rc1
>=20
> Changes since v1:
> - rebase onto v6.19-rc1
> - add missing headers
> - remove MODULE_ALIAS (suggested by Krzysztof)
> - use sun4i-pwm binding instead of creating a new one (suggested by Krzys=
ztof)
> - retrieve the parent clocks from the devicetree
> - switch num_parents to unsigned int
>=20
> Richard Genoud (4):
>   dt-bindings: pwm: allwinner: add h616 pwm compatible
>   pwm: sun50i: Add H616 PWM support
>   arm64: dts: allwinner: h616: add PWM controller
>   MAINTAINERS: Add entry on Allwinner H616 PWM driver
>=20
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml |  19 +-
>  MAINTAINERS                                   |   5 +
>  .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  47 +
>  drivers/pwm/Kconfig                           |  12 +
>  drivers/pwm/Makefile                          |   1 +
>  drivers/pwm/pwm-sun50i-h616.c                 | 892 ++++++++++++++++++
>  6 files changed, 975 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/pwm/pwm-sun50i-h616.c
>=20
>=20
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
>=20





