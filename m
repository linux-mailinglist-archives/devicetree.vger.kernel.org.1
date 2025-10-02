Return-Path: <devicetree+bounces-223423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1D2BB4841
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 400651769DC
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59993258CFA;
	Thu,  2 Oct 2025 16:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TN1HQ9WG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9A9257830
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759422161; cv=none; b=QgQ1oBLixhMMLcN7Q8b8vHzUVY9024KP5CJlTwaBGmI4BtZSz2cV4CIx1eZ54IH8eTTT+qf46W3zN09PnAZDGaQ0Nso7Q32aZKIlyXM+sJq8+3CDgZWDdcovtcgMlofOMWU8nYE6IF0guneX7kHWKcZ93Sv/3xbaYHssj5ha5dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759422161; c=relaxed/simple;
	bh=HpaP3TCDX68OcDypYmYu4LEO9PSfR4XHL0EswYJIQCs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=httkuCUyAX2r8wHY+C9H1PXqpzcRzOk1p4hJ9AX8NMUuzJUfcsPLdSz3VrfiE7B3zlwfyAJEkGIa4sYTbF5lVDScNM6gK4fB7ttZBewh/0DCrdN4QB8a7PthijnF1N18L+4woQ9nagah0pyTaXnswkVY2IKcSnMAuWkU+PhSCuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TN1HQ9WG; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2680cf68265so8883945ad.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759422158; x=1760026958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2LbxYgnEojJ93c8rsOWf/bBt3bhhAFbsmGgZt+eHULs=;
        b=TN1HQ9WGMrGO3AHKrIR0l3y9dqtkLGHJAaAb/OCkHE0Hfr3R/+O7/61RDZ3IyTDAld
         wiLxmk0rfbnFURWvgtq6Asu5PvGOp0Fsu06QWEyxHcmi3HdekEQgPv70G8VbVmRBb3FO
         xYboqRQUhUfJO69ymOJrRFgEwF2aU0tstcSePsaOz3Mpu4PAMSfwZFiXPFfSC+OMbT5q
         ZiYthBj35GaOGL6C5vSLLE9TPPY8GXQT2NOgNGg8QJk/VHES84zeKbZDiK4sKv5i20aB
         +2h8dq7SZDJMqPZR5RqedY3u+93HOInx90EyWJC0/ArKkVjluFcpS+mVOK91jm9m6npL
         P6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759422158; x=1760026958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2LbxYgnEojJ93c8rsOWf/bBt3bhhAFbsmGgZt+eHULs=;
        b=DkUW0gEULNUCTaX2BeVClN3ycDFd1FQP48cj7zyI5gJdAZ6XdrKbL2pJ44VAOuh33p
         yMpFwtGlp1JOoPgsT6chgpNgx+CMyIQVPj1uciiw8Iy1HNYg24LJ33pP0t19azxgFHKQ
         enrdjdV1OgG1e3UAwQcEmhYjB0N2uHr4mJZFXUH4s/l8IZSqMbg3rsTjRKryu3oRSIpj
         y9K49kLR5KIYXKBaBYuN6ly1OLkIDafVlotO6LX0WGdkyZkBXBRjBd9mmSHMk4wJHU2j
         v7U095kOsE1WkKCPF5ryPkWcnsn4ZqDmnA8ih+awLBmVP77niSYDgORh6eD57iAjl/Ev
         djew==
X-Forwarded-Encrypted: i=1; AJvYcCWdziTdgJ80gAyJYEl1UrUECt0YV8qeqTSzlT1GvtGBT0q9VDuCz4MGoYH5/31bMssm5e+viwpgKrvA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7UdaptaGbhLP//4Md6iX3zPVt+z0nwz38AncRolx5lSUQO3cP
	wcCF2nPZONjoacdIzxbXjH/pWWkvb7Wdqn8lZJ3HCkHqAojxy9/qOmifm1rzW64EnxqIk5tXT1V
	w1Z1KqLue6RwwA4v2M6tGspX9/TLGKTQ=
X-Gm-Gg: ASbGncvu02JzVqQ5xJzr8WmkVZrLxImqhBoBSDqIk+lNOpDtfsCTHtwpLr3AirtbdQh
	nC01FXBrpz+2Zy0d8HrGeCCqqrlgy/POB9uSrAK9kgywRUBGUMhQnNGG+u1hgYEEi4OTbGkG+mX
	xEF5iyHE4wyQqQiX3JHrSbkw+wTDcvK/lvtmpCU/6nk2v9gqGs6HpfXKU+d5A1Y0pW1RlWW3EfQ
	EztEogzVKJNFvOCW5U4kcU/0reya8U=
X-Google-Smtp-Source: AGHT+IGRvLPIfPId+ThviLGcDguWvaiXYJhGL7lLP2ZYkgJ5H9fCJdaZmo7Lu2lqeUHQNIJJrKq42s7JgSMOk7shsiY=
X-Received: by 2002:a17:903:2ece:b0:275:81ca:2c5 with SMTP id
 d9443c01a7336-28e7f47a3f2mr86332225ad.59.1759422158111; Thu, 02 Oct 2025
 09:22:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250819131752.86948-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250819131752.86948-2-krzysztof.kozlowski@linaro.org>
From: ChaosEsque Team <chaosesqueteam@gmail.com>
Date: Thu, 2 Oct 2025 12:27:35 -0400
X-Gm-Features: AS18NWDLQ6hD1LnWbuZES13_YjRj4m-0ztzOfBvznDKgHuJ8g5udlLpfwGDslIY
Message-ID: <CALC8CXf+FJDcYLr4NwZMesa0kaPABw4j5Jy1bOU3XX7UJ1VcqA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: allwinner: Minor whitespace cleanup
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

KRZYSZTOF KOZLOWSKI... So... Kyrgastani Polish guy?
Doesn't sound Russkie. Bet the ethnic Russians (Rysskiy) oppress your
ancestors. Who had to just TAKE IT. How does that make you feel?

On Tue, Aug 19, 2025 at 9:25=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The DTS code coding style expects exactly one space around '=3D' or '{'
> characters.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts  | 2 +-
>  arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi          | 2 +-
>  arch/arm/boot/dts/allwinner/sun8i-r40.dtsi                | 2 +-
>  arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts b/a=
rch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts
> index 83d283cf6633..d425d9ee83db 100644
> --- a/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts
> +++ b/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts
> @@ -218,7 +218,7 @@ &usb_otg {
>  &usbphy {
>         usb0_id_det-gpios =3D <&pio 7 4 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)=
>; /* PH4 */
>         usb0_vbus_det-gpios =3D <&pio 7 5 (GPIO_ACTIVE_HIGH | GPIO_PULL_U=
P)>; /* PH5 */
> -       usb0_vbus-supply   =3D <&reg_usb0_vbus>;
> +       usb0_vbus-supply =3D <&reg_usb0_vbus>;
>         usb1_vbus-supply =3D <&reg_usb1_vbus>;
>         usb2_vbus-supply =3D <&reg_usb2_vbus>;
>         status =3D "okay";
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi b/arch/arm/=
boot/dts/allwinner/sun8i-q8-common.dtsi
> index 272584881bb2..a0f787581dd9 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi
> @@ -82,7 +82,7 @@ &de {
>  };
>
>  &ehci0 {
> -       status  =3D "okay";
> +       status =3D "okay";
>  };
>
>  &mmc1 {
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi b/arch/arm/boot/d=
ts/allwinner/sun8i-r40.dtsi
> index fa162f7fa9f0..f0ed802a9d08 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi
> @@ -705,7 +705,7 @@ uart2_pi_pins: uart2-pi-pins {
>                         };
>
>                         /omit-if-no-ref/
> -                       uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins{
> +                       uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins {
>                                 pins =3D "PI16", "PI17";
>                                 function =3D "uart2";
>                         };
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts b/=
arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts
> index 5143cb4e7b78..cb6292319f39 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts
> @@ -29,7 +29,7 @@ chosen {
>         clk_can0: clock-can0 {
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;
> -               clock-frequency  =3D <40000000>;
> +               clock-frequency =3D <40000000>;
>         };
>
>         gpio-keys {
> --
> 2.48.1
>
>

