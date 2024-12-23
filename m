Return-Path: <devicetree+bounces-133512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7286E9FAD63
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:01:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCDBF1630C9
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAAFD191F70;
	Mon, 23 Dec 2024 11:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nZnQw1aE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F0A18F2FD
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951662; cv=none; b=foreVLi27hlJz6GJ8PVoyVvsr7tq6FgWYXJGdqnvEiQMaYTQNnEf7CeBZ+eyk4J3brZ32+nU8Fz+1bGT5N+/1A0N7LfGlAiEIH9a5Ui8MBDcdl7UEjLfqAiNb+mEZZHYw1KTfkYVwRksUCLYR8WsLToOkKCwRrqrh9zo3yWbBaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951662; c=relaxed/simple;
	bh=/HNwfmbtDd157iLSvs6i/GXIxqbOufs/CRMUZNFGOm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k9K3YyBF31nPHfMyCOIXkcQf415QIOMaxCA1TlRPvTKgQFBzpQUIWlEP5C3vCUxc/k4OIyOmX/WWOvZX1O9dHvhrySLtFxXvOxqofA5tKwCDqdjsyTRqX4OMQysf0SldGdCSeuS1EVMgRXl+L0slpCEo9tT9MjkOPGMuYklAKhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nZnQw1aE; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so5401108e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734951659; x=1735556459; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0/yhLy0x2RPN2n+KfN3/CV+wY/86FBphCXJ0uI9cdtY=;
        b=nZnQw1aE/6fgn3HkYo/yj+F2goJMhjcOF/ccipV7IP3lJwLXNuJEx22cvsP+s6WOGT
         Spd51ztDDjPwhqsXAP0VSxgJf1ewwpeqlE26L6/pXo93MJ03TyUEI+GuHk33HCz7Zsu1
         PxGWbjYKur8beoGDDU/bSd/CScsE2ee8jKOwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734951659; x=1735556459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/yhLy0x2RPN2n+KfN3/CV+wY/86FBphCXJ0uI9cdtY=;
        b=hUIiLXevs/b3dzyTKPg6nys9a0TDFJENATRFmkSZchKbQYJxChUdqa6owPGEJtguqj
         I4emdD/jAVa6xq2JesXHefNmyWPrFtbF6vG9zyLiCus1J0fWh8csA5R3+Qy07KxwCDX6
         Fok6+y/Lv3N33Bj2KJ5Rq+Oz8wyXU/DP5eVa7I65ShoXNGiwYftsgYZmEtPj3nEmVGKL
         /6EnESWp7H+dJ1Ul6bsT29tqfl8XVWUHaGMGDaRtuW6Ea11LU4XnMKl4plj/juZRacBn
         48CgHuANZe28vn5+DjJq54ijJ2ZWKoU8nGMSUAUWU6VwJFvbr9j7qTPjxB/NpplYP0/R
         ShIg==
X-Gm-Message-State: AOJu0YwLYK+6Pa9/Thwkm9j50IjY0Zj7L1NwBZFE5sjE0SFBzlz/+Eo/
	m/gpchSJlfCv+ZYfJ2qivTglcrzjAk8GXxAjXGpZSSLzImrwUCASqK08did5lmmV0a/FTNLyn9V
	ac5+BnkjA7D9jImTep9RNpIwpb5f3sZxK9RtW
X-Gm-Gg: ASbGnctakC4C1ACzPdP5HTeP95qVj4rZoAXPOphA8tSlB/b4g1ng2EBn3JOClBFVr5V
	1UMWAa52mcKRFZ1/YYOUaN1WODkm6IZVCO5A1yhHOVg/PoFCbNd0Nzeg9tzw84G8s/Q==
X-Google-Smtp-Source: AGHT+IEeGxR1/A7YAIaQNwuIN8M3ispQzQz/1XgsBv21yWEtwbRwNLgwt8VDFiTZY3VyE4P157VtOboXyGxNebyt2WE=
X-Received: by 2002:a05:6512:4010:b0:542:2e05:313b with SMTP id
 2adb3069b0e04-5422e053206mr2012579e87.21.1734951659121; Mon, 23 Dec 2024
 03:00:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241223101434.2170166-1-wenst@chromium.org> <20241223101434.2170166-2-wenst@chromium.org>
In-Reply-To: <20241223101434.2170166-2-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 23 Dec 2024 19:00:47 +0800
Message-ID: <CAGXv+5FvhaqvsApufntBABFGRRtGbr_sUjqieWfy-d3K2x+drg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt8192: Drop Chromebook
 variants that never shipped
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 23, 2024 at 6:14=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The Hayato rev5 sku2 and Spherion rev4 variants were designed in
> anticipation of shortages of the headphone codec. This never happened.
> As far as our records show: the variants were never produced or
> shipped, and no such devices were deployed to any lab.
>
> Drop them.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  .../mt8192-asurada-hayato-r5-sku2.dts         | 65 ----------------
>  .../mediatek/mt8192-asurada-spherion-r4.dts   | 78 -------------------

Please ignore this version. I forgot to remove them from the Makefile.

I will send a v2 tomorrow.

ChenYu

>  2 files changed, 143 deletions(-)
>  delete mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5=
-sku2.dts
>  delete mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-=
r4.dts
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.d=
ts b/arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dts
> deleted file mode 100644
> index cd86ad9ba28a..000000000000
> --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dts
> +++ /dev/null
> @@ -1,65 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> -/*
> - * Copyright 2022 Google LLC
> - */
> -/dts-v1/;
> -#include "mt8192-asurada.dtsi"
> -
> -/ {
> -       model =3D "Google Hayato rev5";
> -       chassis-type =3D "convertible";
> -       compatible =3D "google,hayato-rev5-sku2", "google,hayato-sku2",
> -                    "google,hayato", "mediatek,mt8192";
> -};
> -
> -&keyboard_controller {
> -       function-row-physmap =3D <
> -               MATRIX_KEY(0x00, 0x02, 0)       /* T1 */
> -               MATRIX_KEY(0x03, 0x02, 0)       /* T2 */
> -               MATRIX_KEY(0x02, 0x02, 0)       /* T3 */
> -               MATRIX_KEY(0x01, 0x02, 0)       /* T4 */
> -               MATRIX_KEY(0x03, 0x04, 0)       /* T5 */
> -               MATRIX_KEY(0x02, 0x04, 0)       /* T6 */
> -               MATRIX_KEY(0x01, 0x04, 0)       /* T7 */
> -               MATRIX_KEY(0x02, 0x09, 0)       /* T8 */
> -               MATRIX_KEY(0x01, 0x09, 0)       /* T9 */
> -               MATRIX_KEY(0x00, 0x04, 0)       /* T10 */
> -       >;
> -       linux,keymap =3D <
> -               MATRIX_KEY(0x00, 0x02, KEY_BACK)
> -               MATRIX_KEY(0x03, 0x02, KEY_FORWARD)
> -               MATRIX_KEY(0x02, 0x02, KEY_REFRESH)
> -               MATRIX_KEY(0x01, 0x02, KEY_FULL_SCREEN)
> -               MATRIX_KEY(0x03, 0x04, KEY_SCALE)
> -               MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
> -               MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
> -               MATRIX_KEY(0x02, 0x09, KEY_MUTE)
> -               MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
> -               MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
> -
> -               CROS_STD_MAIN_KEYMAP
> -       >;
> -};
> -
> -&rt5682 {
> -       compatible =3D "realtek,rt5682s";
> -};
> -
> -&sound {
> -       compatible =3D "mediatek,mt8192_mt6359_rt1015p_rt5682s";
> -
> -       speaker-codecs {
> -               sound-dai =3D <&rt1015p>;
> -       };
> -
> -       headset-codec {
> -               sound-dai =3D <&rt5682 0>;
> -       };
> -};
> -
> -&touchscreen {
> -       compatible =3D "hid-over-i2c";
> -       post-power-on-delay-ms =3D <10>;
> -       hid-descr-addr =3D <0x0001>;
> -       vdd-supply =3D <&pp3300_u>;
> -};
> diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts =
b/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts
> deleted file mode 100644
> index 5e9e598bab90..000000000000
> --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts
> +++ /dev/null
> @@ -1,78 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> -/*
> - * Copyright 2022 Google LLC
> - */
> -/dts-v1/;
> -#include "mt8192-asurada.dtsi"
> -#include <dt-bindings/leds/common.h>
> -
> -/ {
> -       model =3D "Google Spherion (rev4)";
> -       chassis-type =3D "laptop";
> -       compatible =3D "google,spherion-rev4", "google,spherion",
> -                    "mediatek,mt8192";
> -
> -       pwmleds {
> -               compatible =3D "pwm-leds";
> -
> -               led {
> -                       function =3D LED_FUNCTION_KBD_BACKLIGHT;
> -                       color =3D <LED_COLOR_ID_WHITE>;
> -                       pwms =3D <&cros_ec_pwm 0>;
> -                       max-brightness =3D <1023>;
> -               };
> -       };
> -};
> -
> -&cros_ec_pwm {
> -       status =3D "okay";
> -};
> -
> -&keyboard_controller {
> -       function-row-physmap =3D <
> -               MATRIX_KEY(0x00, 0x02, 0)       /* T1 */
> -               MATRIX_KEY(0x03, 0x02, 0)       /* T2 */
> -               MATRIX_KEY(0x02, 0x02, 0)       /* T3 */
> -               MATRIX_KEY(0x01, 0x02, 0)       /* T4 */
> -               MATRIX_KEY(0x03, 0x04, 0)       /* T5 */
> -               MATRIX_KEY(0x02, 0x04, 0)       /* T6 */
> -               MATRIX_KEY(0x01, 0x04, 0)       /* T7 */
> -               MATRIX_KEY(0x02, 0x09, 0)       /* T8 */
> -               MATRIX_KEY(0x01, 0x09, 0)       /* T9 */
> -               MATRIX_KEY(0x00, 0x04, 0)       /* T10 */
> -       >;
> -       linux,keymap =3D <
> -               MATRIX_KEY(0x00, 0x02, KEY_BACK)
> -               MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
> -               MATRIX_KEY(0x02, 0x02, KEY_FULL_SCREEN)
> -               MATRIX_KEY(0x01, 0x02, KEY_SCALE)
> -               MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
> -               MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
> -               MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
> -               MATRIX_KEY(0x02, 0x09, KEY_MUTE)
> -               MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
> -               MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
> -
> -               CROS_STD_MAIN_KEYMAP
> -       >;
> -};
> -
> -&rt5682 {
> -       compatible =3D "realtek,rt5682s";
> -};
> -
> -&sound {
> -       compatible =3D "mediatek,mt8192_mt6359_rt1015p_rt5682s";
> -
> -       speaker-codecs {
> -               sound-dai =3D <&rt1015p>;
> -       };
> -
> -       headset-codec {
> -               sound-dai =3D <&rt5682 0>;
> -       };
> -};
> -
> -&touchscreen {
> -       compatible =3D "elan,ekth3500";
> -};
> --
> 2.47.1.613.gc27f4b7a9f-goog
>

