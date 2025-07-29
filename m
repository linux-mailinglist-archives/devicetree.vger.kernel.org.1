Return-Path: <devicetree+bounces-200581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECD5B15417
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 22:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF22B5A1D8D
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 20:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150D62BD5B0;
	Tue, 29 Jul 2025 20:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eHUvZAGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE252BD59E
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 20:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753819797; cv=none; b=B1Nz0M+DP6RP1wTToH81Ja6TErxxWxZcgR04tnn4kRcIH5fMSWcQSgoZuNT89B6MZWfeuIWDb2/nfv/QPdcj9F/WIJo7kYpsXuV37AoA67dAhZMZnQ3fUJaucsQmsJsrvL6xCnlBlH+L1MLH9ptzNJKyyhFkLpoY8EHDxTNSnPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753819797; c=relaxed/simple;
	bh=J1vX2XD7EQ6z1KzoEXDr8HcdYAzz2k49hEQ1ePPaawA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hPJpqTDkLHe2/rAym2Xp0hnzKidBdhrtSpLcz6wJ7woYecckIms1zJAxXSBf2cFiAed64l94oGkbONKeYvUk32tSow/evcTArnoVIBuA/iz2iKdMwZgiB0KOWKlz1L1N9PbIEyRWeTPUzeilKmJDgXDxbVQB5HcCBcEYGq9VM+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eHUvZAGn; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-af0dc229478so866000666b.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753819793; x=1754424593; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GsF9xa5Mt5eWvFYvP4ppl+lpx7xROA4dI7ZLgi/IK7c=;
        b=eHUvZAGnmDYQNu3+CW/gJPIXbtEKV6S3Hxm9SVXl6tMO5e9uZy97x4nqa9H57YYhpo
         RTIE/J7ugtSwotZ2N8FwrmaDKRTJORvt+10DLuJ4MW8eaLPfqKnfnSp00Uy2Jc8FVr7s
         /muMsEdgJKzsoSnGn82XwYk6E1VvcUocNCnaxGKeHCDDSHuSSFjxX7gHIwQFTbYn3Oiq
         LhUdx95A40oIUF2qbhOPEPZ00P412qxFwvz+uxCar4ASNyB+YNukBrVsF60UHqhR9Zfy
         L0qPcbDC6jsAXR2R0gJGrTdJt5ylxZqbXPg7A5Epi5RbToKDOOJwe/7otujjcJuu/ToA
         Nv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753819793; x=1754424593;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsF9xa5Mt5eWvFYvP4ppl+lpx7xROA4dI7ZLgi/IK7c=;
        b=lp60z3a+u/xqBT6BoiqEyHvLvwZ6mOv9pwV643jnNqQ5FunUirWN+cQsVApD7/yFyi
         Dl5ej6YiBktJOTJ7QATzVEYTDyMVcCvFzuLoqN9ibwjdW+acCJFNcEPcdD7/j4sDQ7yB
         wnccI060vmBzP6RsWW8n6iBiANHn2Ck8tZWkxGxGQtGnguCoCp11q+TQHL88qzpCVH70
         C0DoaIbxENuQBtTn0uijJRdJURcMSkkv4erOEv60JTzFw0M4lCJ2Qd+8mt5ATxem92/D
         9bBJdwXYIGq1JtDNVlsmfHSS+FwLJHeVLyz84EEtJKqtHYv28DH/n0bRT9AkN7IIg9PD
         +awA==
X-Forwarded-Encrypted: i=1; AJvYcCUws2xPQinEeV2Wqw7vXOutNOnUcHHpMhd9pTjrQgt78SQGVRf0L/9IETDGVEuyXrs3yoF2tDVeYSwX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2NkfPdsaeADy5tLT50gRC0WJgN10rlPlxiWVcE/o8Hoin3yIY
	T05hv4q7VVa3QMqB2RUd+E/JF+QGNxA/Qk4kGQcONDHjOnTpRUJrffVnELQ070uz/669Nsw3jZs
	kn4rmRhibD1ghzUbT7hs6m8OR5WhjZZU=
X-Gm-Gg: ASbGnctvH3rksyPeRlTEzfaGCYDCA3+oVvaHdWEHpYZckyYNyRbWZcd9xlRQEkz+KHL
	YVy93ZsRPGwVyepnjsq9TqtQPuJBm+8GzeTG0PNnESp+qe3J000u2/N4TXoJf0sRZMHVt77JRxm
	qbMCHoNvGYEFWsHE0hcVXT+nawDYGYr8uKrTaYkyE31TpVUm4ccimeTuyJsTAIGwU4q0nkO7xVE
	FbkeC2NZE4DxV8g7lh9zqmyyAZACwC3YAiLROVa
X-Google-Smtp-Source: AGHT+IHp08a+dqAcG2SqZdg/Q/IaPZikdzCFE1YVv3PwaCR2cMYRBTvpJ0sMCJoMk8buiVXu2JvpXqMV1MUNd/Qb36s=
X-Received: by 2002:a17:907:3d0e:b0:ad8:ae51:d16 with SMTP id
 a640c23a62f3a-af8fda55064mr88607166b.55.1753819793020; Tue, 29 Jul 2025
 13:09:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250729185827.144547-1-pbrobinson@gmail.com> <6948463c8ca90bd9c72fb34178ddb029@manjaro.org>
In-Reply-To: <6948463c8ca90bd9c72fb34178ddb029@manjaro.org>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 29 Jul 2025 21:09:41 +0100
X-Gm-Features: Ac12FXyxfZWg8J34PdCYZFxIOQsYsTBJ_0Qnm0fc0wOJNc5kZopjCpZIel3xgKc
Message-ID: <CALeDE9PBnfu9Oxo4xc8O+uJW8p+_=43Y-goe0i3=VmT0SsovNg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Pinebook Pro: Update WiFi
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Dragan,

> On 2025-07-29 20:58, Peter Robinson wrote:
> > Update the WiFi configuration to include the wake-up
> > pin and add an ethernet alias to allow assignment of
> > a mac-address from the firmware.
> >
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > index 5a8551d9ffe47..05c48cb09df6f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > @@ -19,6 +19,7 @@ / {
> >       chassis-type = "laptop";
> >
> >       aliases {
> > +             ethernet0 = &brcmf;
>
> I'm sorry, but this alias isn't acceptable.  In a few words, this
> simply isn't an Ethernet interface.

Can you explain why? It's a wireless ethernet interface with a MAC
address, there's other example in the kernel doing this so there's
already a precedent, can you explain how else to do this or give me an
example?

> We're already stretching a bit the dynamic nature of, well, everything
> with the aliases in the Rockchip DT files, and an alias like this one
> would be stretching the whole thing beyond the breaking point.

Why? If you look through DT outside of rockchip there's even more
stretching and I don't see how using this goes beyond breaking, I
think this is a bit of an exaggeration. Rather than saying no how
about explaining an alternative solution?

> >               mmc0 = &sdio0;
> >               mmc1 = &sdmmc;
> >               mmc2 = &sdhci;
> > @@ -883,6 +884,12 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
> >               };
> >       };
> >
> > +     wifi {
> > +             wifi_host_wake_l: wifi-host-wake-l {
> > +                     rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> > +
> >       wireless-bluetooth {
> >               bt_wake_pin: bt-wake-pin {
> >                       rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> > @@ -940,7 +947,19 @@ &sdio0 {
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> >       sd-uhs-sdr104;
> > +     #address-cells = <1>;
> > +     #size-cells = <0>;
> >       status = "okay";
> > +
> > +     brcmf: wifi@1 {
> > +             reg = <1>;
> > +             compatible = "brcm,bcm4329-fmac";
> > +             interrupt-parent = <&gpio0>;
> > +             interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
> > +             interrupt-names = "host-wake";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&wifi_host_wake_l>;
> > +     };
> >  };
> >
> >  &sdhci {

