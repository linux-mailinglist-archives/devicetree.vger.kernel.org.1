Return-Path: <devicetree+bounces-33994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F43838639
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 05:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 717E61F24CBC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 04:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3001869;
	Tue, 23 Jan 2024 04:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AGQsdm8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B861846
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 04:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705982604; cv=none; b=Psbo5XNtz1oV6jZQGQExIxb+izi1oRtriHCbU8q0hZBBz0IXI3kbJ2Ml7pkGvYqadC9402rHjOwrhCiHTP98+6GTYr30rkyJq0uRQhzWgzMrUJCnGVmdZD+PdtRKH67riNc2fq+mGY+rxRWrDV7B6NG7MPECjVJmiZrgB6zYzWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705982604; c=relaxed/simple;
	bh=8zPcSrF6GmbzOiYc91taFPys9TJUmsTbr1QKDG1KWzc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eOi+ax/KeQFC5Z56JikrNvXMeCN7V3V6hd/sOUweBv6HILH9lmqzN7Be/3D5txDOgf5eDxOGbtUtQ6Cf1XzdA8cVS+9tFU6qK+cfCUonAz77BLj7dZnRzHn46Ns5Nc1/tuJCVnX+8SInB1LeQqJk9YULZn9OtpZPrnkLIQDbUGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AGQsdm8G; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50ec948ad31so4290406e87.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 20:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705982600; x=1706587400; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZiWFNa696bYRV0aTpMTHBZfZZ8Fbva5ASueNEpSuTo=;
        b=AGQsdm8GnZmIgookWVaY/7zA/9hm1n0LfseZIidLGefxH6cWNG3c6JRNupaIZQRmn9
         8GBAtlt1sMjZmk5JlusWJen5CpdybU9xRHBLCwGPPus5bH+XCE6MqWjcaTjrX2FdZB9e
         A5CC3t0IzcgU0SAXjN3lO7vSOjVOzMz1ilLhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705982600; x=1706587400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZiWFNa696bYRV0aTpMTHBZfZZ8Fbva5ASueNEpSuTo=;
        b=wc5swLB9aDnKZAzmbeX7C6u+5qQWQ7GlSdqAANVpBnaNRHVxtSSisKZB7zW64Juvga
         1jO6G7WgoO/rxkcvKjqb0MPDUfzxLZwcxVjSIWzQRK9TIGFBjzj1ZOAiSKoLweNz3Hxi
         0fDIf2sdxzjH5jtOeQfpITCqwodYMgbiOYejmwfpGvCHyS6aLl2fJpeXJcj2sUXci9YT
         A6tP2WPgWXEYlvJWsA9dj4XOzOW+Ao4DtJ8s2jkqtJVhpI7iJEMX5txmIKJtovKO21Kq
         lMJEauaUrHT/6yA0fIkwOiL6fDZyPJQKbTZN0FEvm+Z/Hl54A2JpPBq7d3+OIgMRh1GG
         OStg==
X-Gm-Message-State: AOJu0YwUmLZ/gNFliFpNjbjHBHL3SbCWNhWRehQD7+5iqyj9qjFBFccU
	PCfv6Ysy+ye7TvQhCA2RAZ1oeAnsq2j20kMdxk2Anr2T6xGRcm2Mp3hQ2zPnT1XHMQ9PG6UmxOg
	vLfrb9TlUtyYqoOCFMT7xvUaL23RRYSMFrbom
X-Google-Smtp-Source: AGHT+IGiy9y9L53Ax5tTXs/dc2tT4NfqKH1k/Qj4AXIACAgYekrtU+BVkqbTaBWD6iDaDB+W8QdXO0quF0B5cBl9/58=
X-Received: by 2002:a2e:9112:0:b0:2cc:769e:723d with SMTP id
 m18-20020a2e9112000000b002cc769e723dmr2352566ljg.87.1705982599785; Mon, 22
 Jan 2024 20:03:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231228105717.719624-1-yuanhsinte@chromium.org>
In-Reply-To: <20231228105717.719624-1-yuanhsinte@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 23 Jan 2024 12:03:08 +0800
Message-ID: <CAGXv+5H-mpXZ_0H_HchDWeTgx+4Nkxh6651DEs1C62mrXczTkA@mail.gmail.com>
Subject: Re: [PATCH RESEND v2] arm64: dts: mt8195-cherry-tomato: change
 watchdog reset boot flow
To: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

+CC Nicolas

On Thu, Dec 28, 2023 at 6:57=E2=80=AFPM Hsin-Te Yuan <yuanhsinte@chromium.o=
rg> wrote:
>
> The external output reset signal was originally disabled and sent from
> firmware. However, an unfixed bug in the firmware on tomato prevents
> the signal from being sent, causing the device to fail to boot. To fix
> this, enable external output reset signal to allow the device to reboot
> normally.
>
> Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>

Friendly ping?

Also wondering if you folks hit this, or if you haven't triggered the
watchdog at all.

ChenYu

> ---
>
> Changes in v2:
> - Limit the effect only on tomato.
>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++
>  arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++
>  arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++
>  3 files changed, 12 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/a=
rch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> index 2d5e8f371b6d..a82d716f10d4 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> @@ -23,3 +23,7 @@ &sound {
>  &ts_10 {
>         status =3D "okay";
>  };
> +
> +&watchdog {
> +       /delete-property/ mediatek,disable-extrst;
> +};
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b/a=
rch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> index 2586c32ce6e6..2fe20e0dad83 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> @@ -43,3 +43,7 @@ &sound {
>  &ts_10 {
>         status =3D "okay";
>  };
> +
> +&watchdog {
> +       /delete-property/ mediatek,disable-extrst;
> +};
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts b/a=
rch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> index f54f9477b99d..dd294ca98194 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> @@ -44,3 +44,7 @@ &sound {
>  &ts_10 {
>         status =3D "okay";
>  };
> +
> +&watchdog {
> +       /delete-property/ mediatek,disable-extrst;
> +};
> --
> 2.43.0.472.g3155946c3a-goog
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

