Return-Path: <devicetree+bounces-149790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D7BA40718
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 10:48:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66A6A189D807
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 09:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8694207640;
	Sat, 22 Feb 2025 09:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VXHW6iT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FB81E990D
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740217718; cv=none; b=InzmfaTd8Swj/OQEjSW40VHLmkYL5IfNvwAYHZdbthaxdothZ2wdxill2TQzQUuDCc4IUmvXfmZ4ekeAMNNscETFVxTyxn1Bz1IJ7lGf3qTz+vyHOsTOAp9GsML7shZsaVwFA+FaoE9p4qS4cqEOt3AYJdiWkxbqlG8UbBPqWdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740217718; c=relaxed/simple;
	bh=ztSqARlpjqYzwMSasyTQ+otEfFsPH2w9nVNI61+VeH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=umkRNLCIiPgN7OvPlIcLoaZUujzrhVkxeA/qv38Wuf5YUlsrpYQ/X8roI5qiKWNl3n2GcL3nYo9xEwMFLF//mBpp7r1xlbc8xvwLW1426a9+BB8MMFmkbg1+5MgJk2yL33FK3DCBnMzglAKj28V6Quz6LM2jB6q3plnUr7EasUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VXHW6iT7; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43996e95114so18739075e9.3
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 01:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740217715; x=1740822515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=odi1efTWWEwIVG7IaIikJsL9BAzjMuppltEZzw/Hk9k=;
        b=VXHW6iT7rsZV+AszMp5sFVrTdyyn/cQ5R0qEA8ujxffZ5kT4AXJk53SWoFUOEtGBo/
         x1o+obHx5xA1R1YO/TYI6wutNIUNvHMSO+wp5F+R8+g5hqXHf6RiGFaK5EES03mpJbZq
         IVzKoOfzlx2LyuhkNeC7InkTnOuoankm03zMbfHar3RazwzuOX/0noRw8UrMqmORw7RY
         pK9fyRUAFi6WzeRVwjZ8nB7LxWK9jHzBblHQUyBBzkxBSkNZ1sKCheA6ynSjDeIEXzMB
         o2upP370hxftwDwvSPdCWwTwFv10skmlRMP+DXpN4JjIaQDjMDm5FaYhONZZRCdIpTB0
         fEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740217715; x=1740822515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=odi1efTWWEwIVG7IaIikJsL9BAzjMuppltEZzw/Hk9k=;
        b=bg6Nf5saItHQTidpJ3iasPqiddG1m4UqjL4n3MygtIQ2JdDHg12SKopGWVr2vnixfX
         gQ2pSCXEcZYNf5TSC/bMgHfjPiVNtqtg5sujbstZHh4hKbUdYJOfwu8qJogej1e5Ydbd
         +78kNzSXDgVf/xIYMM0AtMHqeG+C6QlON7FlaNe3nHF+P2xASpsbX4n7rUFGc0KXY4AS
         yHjqd6UnZaWTI+4ytwNg6YtA4Xac2gwFj+f4zCNIk2Z8TStQDft8GOau4edZWVCXftHa
         94NbPxP7yWfS+CDLDqCcNDu3O2MZU6FJG4Qt8JssojxLWFH6sdF+kgrrnbTyXqN2Z4sO
         UGtA==
X-Forwarded-Encrypted: i=1; AJvYcCUI6zPt7WW+zWyWkk6MYK/5R8IymZ8dGVWSV01Shu47v3CpMHK4/vbxCuhRPO5lmiB93zev2n8z0Zto@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl5vgB2RPr7yPJH2hKaLtEJlY368UJKmXTgvGdawDN0fJ8vW71
	yv8SsYsO9oha+1jXQDtjDd21fvD3a/jpDzDEUyvjFCQVVwu9iRmn
X-Gm-Gg: ASbGnctiBjgAu9X9YGYdpODrhbTBYp+SJAKM2XJUZ4rs65Lnz7KTBScLIcL5wopvo+Z
	2Dof92vXKaKoMFDMi4BQVYj8yhAI507udQIyQ2uscvV+g1WHrzxDYHGiPa+1dM4eLz0inAj29wp
	O8+xRKOUD9i3XMdF8bKl6WLDFdGZN+fi4SgLFd5mCtTf/E9eOA24GzbkjRDPQ52NDypkR6f/sBY
	rJ7wp4BhhSpLLqKtDwqeVWRDWMfXkbuiKOYVSgmULnBOlXNRl67Tvm6XydQT2OX8W5Lgl0vX3t2
	NhuFgGvBgS/I6wJhrvEkzASslrbaV3Z/oMVKKEK//7Xa0zqXb8CiJvJqrlP17l3ETIk81A8Th3j
	tMA==
X-Google-Smtp-Source: AGHT+IFUTa70+9kLfcm5J6KugqNrq5ylrSHEHWyLg2k4fxiZqzwuPYhX/x3EnpJl6rQ7Cmu+/YYJkw==
X-Received: by 2002:a05:6000:1f83:b0:38c:5bfa:a93d with SMTP id ffacd0b85a97d-38f70772c98mr5722741f8f.10.1740217715291;
        Sat, 22 Feb 2025 01:48:35 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25914171sm26137034f8f.53.2025.02.22.01.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 01:48:34 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Ryan Walklin <ryan@testtoast.com>
Cc: Andre Przywara <andre.przywara@arm.com>,
 Chris Morgan <macroalpha82@gmail.com>,
 Hironori KIKUCHI <kikuchan98@gmail.com>,
 Philippe Simons <simons.philippe@gmail.com>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ryan Walklin <ryan@testtoast.com>
Subject: Re: [PATCH 6/8] arm64: dts: allwinner: h616: add LCD,
 LVDS and PWM pins
Date: Sat, 22 Feb 2025 10:48:33 +0100
Message-ID: <4407188.ejJDZkT8p0@jernej-laptop>
In-Reply-To: <20250216092827.15444-7-ryan@testtoast.com>
References:
 <20250216092827.15444-1-ryan@testtoast.com>
 <20250216092827.15444-7-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne nedelja, 16. februar 2025 ob 10:27:13 Srednjeevropski standardni =C4=8D=
as je Ryan Walklin napisal(a):
> From: Jernej Skrabec <jernej.skrabec@gmail.com>
>=20
> The Allwinner H616 (and its H618, H700 and T507 package variants with
> the same die) have 28 video output pins for RGB/SPI and LVDS display.
> These are in GPIO Bank D and are multiplexed.
>=20
> In RGB mode, pins PD0-PD23 are for 24-bit RGB pixel output, pins
> PD24-PD27 are for clock, DE, HSYNC and VSYNC, and PD28 is a PWM
> backlight control.
>=20
> In LVDS mode, pins PD0-PD9 are for LVDS0 and LVDS1, and can be
> configured by the H616 display engine for either one high-resolution
> (dual link) or two low resolution displays.
>=20
> Add device tree nodes for the LCD, LVDS0, LVDS1 and PWM pins.

Let's just drop PWM pins. PWM support is not yet implemented and it doesn't
fall into display themed patch anyway.

Best regards,
Jernej

>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> [ryan@testtoast.com: add RGB, LVDS1 and PWM pin assignments]
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-h616.dtsi
> index 242bac95840f8..806ad87705abc 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -322,6 +322,32 @@ ir_rx_pin: ir-rx-pin {
>  				function =3D "ir_rx";
>  			};
> =20
> +			/omit-if-no-ref/
> +			lcd0_rgb888_pins: lcd0-rgb888-pins {
> +				pins =3D "PD0", "PD1", "PD2", "PD3",
> +				       "PD4", "PD5", "PD6", "PD7",
> +				       "PD8", "PD9", "PD10", "PD11",
> +				       "PD12", "PD13", "PD14", "PD15",
> +				       "PD16", "PD17", "PD18", "PD19",
> +				       "PD20", "PD21", "PD22", "PD23",
> +				       "PD24", "PD25", "PD26", "PD27";
> +				function =3D "lcd0";
> +			};
> +
> +			/omit-if-no-ref/
> +			lvds0_pins: lvds0-pins {
> +				pins =3D "PD0", "PD1", "PD2", "PD3", "PD4",
> +				       "PD5", "PD6", "PD7", "PD8", "PD9";
> +				function =3D "lvds0";
> +			};
> +
> +			/omit-if-no-ref/
> +			lvds1_pins: lvds1-pins {
> +				pins =3D "PD10", "PD11", "PD12", "PD13", "PD14",
> +				       "PD15", "PD16", "PD17", "PD18", "PD19";
> +				function =3D "lvds1";
> +			};
> +
>  			mmc0_pins: mmc0-pins {
>  				pins =3D "PF0", "PF1", "PF2", "PF3",
>  				       "PF4", "PF5";
> @@ -348,6 +374,12 @@ mmc2_pins: mmc2-pins {
>  				bias-pull-up;
>  			};
> =20
> +			/omit-if-no-ref/
> +			pwm0_pin: pwm0-pin {
> +				pins =3D "PD28";
> +				function =3D "pwm0";
> +			};
> +
>  			/omit-if-no-ref/
>  			spi0_pins: spi0-pins {
>  				pins =3D "PC0", "PC2", "PC4";
>=20





