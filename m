Return-Path: <devicetree+bounces-82463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D039246F7
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 20:05:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6433E1F21A6E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 18:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3239E1C0DF4;
	Tue,  2 Jul 2024 18:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="IDy15wNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAE1178381
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 18:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719943537; cv=none; b=IZE+UYQo4adwThonDxfcTdZK6pxYMJ4i558bctsCXYEEwdSXbFteP8gASHGjQGsCzViMv+e7HJ8z0xAiSnlWX8f96WeqEzM3TseqyG8h2pExe7gs12ooExAxB0sfXn8ffgOmRIJLuVZiGmerJ4PXMYcVUi43lpj7AKSNRhQtTjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719943537; c=relaxed/simple;
	bh=IhADheJ4MCQws86s4dyvSpyee53pST8IcZeuKVl084U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DKjNY8g4vSqEUY0Pb/Q2euOTAEqcRLj2XHsTXN8kQYvn3J41QgiEYGoC90IxqKZAUkUct5H87QkLNYHilFetVv1VgeFGZ+WPdjQm52eh+u5+Gs0owvuBzGsbssVXO3NvMxJVXAxP2M8YUIuKSw1rPzc+k5+4f9eoR3aSBA/si3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=IDy15wNN; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-585e774fd3dso2575802a12.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 11:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1719943534; x=1720548334; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=neuCJSU06RPvMGk5hgkw9i+FYD+XXbuXygP7TS87Ag0=;
        b=IDy15wNNuA3LsQYcxRHn/UdaVgXCm6otLtkTEakAKf19yIKGlws0O0dgaALYIHPyG1
         frd278y4pFFcWnS9Wbv2nDYhfZ8tc7K1XlqKasynKTwqIJE27LfsylTFIRxog9LgHz08
         Eq40QHNm1uyVVTNoYlaLsrHXuFFKxaMxZtJaR7NErwm/zDMUgwwwuAAz3MXtYoBPKgUF
         hCJvEhs8uzwIrBOrJN2JH9ETzvWhS4SsbPI43jxFpfC06YhPDWK7w40f6tFSHi8wRcyO
         4DPuS+8Rwb/ZbY3TLtycMEjNpSWm/MqcyqDvcOmsgcIrMYr5A4Z7kgWUAKaogQ+aQgIc
         TvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719943534; x=1720548334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=neuCJSU06RPvMGk5hgkw9i+FYD+XXbuXygP7TS87Ag0=;
        b=WZV4DkQU9v9QGk0r29e/5dbC2pmNbo40JgrJFgptZNnF29eETayU3q1Jr2ScoPTbEe
         1W7gcIOoeqZb374dAlPs+TaSxfAqzQHgHmV6mvwI+M0556sEl5GCvaGtvK/Oa5yzshhX
         C3rbbpX7JHgUfACWs/7KbrsmDppYaKKfZBQ3L3JGQVyZh+9aWJNjwMT/3dK/HfgHq/gv
         Jvo73qsxE0I/VDlF//ZnlEW79FYhsTuZG7TfEi1ntZeUGQSDFkgHD1ReABQdd3NZWDqn
         9ebMvdF181nYDcrBAOa0T2xlT1e7g+PonuBMzpOq2/9nQvvzjh8FixemQ2OhkxI5xf/C
         OfzA==
X-Forwarded-Encrypted: i=1; AJvYcCUcJizHgi2IHw4BZlUCu3KW6OSdVDeTtUCH05jXAR8zDcFawdlMM8EBQJxNmTwZX2PSI38OroAl1PcNwiUMMPL5v+oglwrBE+DidQ==
X-Gm-Message-State: AOJu0YyXXhO1j1ZnOqvpaFsTr8c0ScD+gRoiOrrhArnHJi9GNgWT1Dwe
	ValNPYjfWJhcgRpZHNG9L3Ja4gm68UTq2myrZpR4NC6mhCB8Nq4rjLbJRKCl5uhgCxbf+zWNQPt
	JOnZqwJ1NqMCUHUeiIg5CTsMShqdRs+yFqhcQ/w==
X-Google-Smtp-Source: AGHT+IGPx61O1A83r/hc3FpjX6QlsFNw2NosY8V3WiRcpSayYE4g0icasgE7S1qqlMzZ6SXQYz6OO5EMduZegIZLeSs=
X-Received: by 2002:a17:907:2d1f:b0:a6f:48b2:aac5 with SMTP id
 a640c23a62f3a-a751441f052mr726607566b.15.1719943533307; Tue, 02 Jul 2024
 11:05:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240701231229.197614-1-festevam@gmail.com> <20240701231229.197614-2-festevam@gmail.com>
In-Reply-To: <20240701231229.197614-2-festevam@gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 2 Jul 2024 11:05:21 -0700
Message-ID: <CAJ+vNU39xU+NKtLUux0s6JMSaNV_6NHcxBcTJX3kpPTCGkbgNg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm-venice-gw72xx-0x: Remove
 compatible from dtso
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, parthiban@linumiz.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 1, 2024 at 4:12=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> There is no need to describe the compatible string inside
> a dtso file.
>
> dt-schema produces super verbose warnings about that.
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso | 4 ----
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso     | 4 ----
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso     | 4 ----
>  3 files changed, 12 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-=
rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.=
dtso
> index f6ad1a4b8b66..47d3c0c49e8a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dts=
o
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dts=
o
> @@ -15,10 +15,6 @@
>  /dts-v1/;
>  /plugin/;
>
> -&{/} {
> -       compatible =3D "gw,imx8mm-gw72xx-0x";
> -};
> -
>  &gpio4 {
>         rs485_en {
>                 gpio-hog;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.=
dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
> index c3cd9f2b0db3..7fcd8c851159 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
> @@ -18,10 +18,6 @@
>  /dts-v1/;
>  /plugin/;
>
> -&{/} {
> -       compatible =3D "gw,imx8mm-gw72xx-0x";
> -};
> -
>  &gpio4 {
>         rs485_en {
>                 gpio-hog;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.=
dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
> index cc0a287226ab..b19e38fc27ba 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
> @@ -18,10 +18,6 @@
>  /dts-v1/;
>  /plugin/;
>
> -&{/} {
> -       compatible =3D "gw,imx8mm-gw72xx-0x";
> -};
> -
>  &gpio4 {
>         rs485_en {
>                 gpio-hog;
> --
> 2.34.1
>

Hi Fabio,

Thanks for the fixup. Is there a warning now that detects these?

The same likely needs to be done to imx8mm-venice-gw73xx-*.dtso and
imx8mp-venice-gw74xx*.dtso. My original intention with the compatible
strings was to define what the overlay is compatible with but this
certainly was not the right way to do that (i'm not sure what is
honestly).

Acked-by: Tim Harvey <tharvey@gateworks.com>

Best Regards,

Tim

