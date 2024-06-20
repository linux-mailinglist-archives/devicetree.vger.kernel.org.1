Return-Path: <devicetree+bounces-77833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DFE910153
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E2E9B211C8
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1B01A8C19;
	Thu, 20 Jun 2024 10:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UVWcf9U9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2672A4DA00
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878810; cv=none; b=pAPm2jTg0A7F36svQS289H2Y2WMuP/uc1cUBqlqxlDqkO0+o8YUaF4hqQjL3m9h7ItGrylMJW2PRPAEk9Tkc/HjbkTMLJJoySuNr+XRlOjzA+dlOLsp14vsvvGk5pGu2caAHRdp59KgJf0ukyIkDV/J515NYwibu/INqlOkg6l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878810; c=relaxed/simple;
	bh=PP+mMEHHt5goP6yNje1ACtoEQu4E7NC1K1SIUJoccZo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jfyaRlhci9n4nYQkktHnRTOH9O3WKsFWfUTyqA8whX/HzWQYFNXUwWV49HVPNED0ojF82TDdjvR2tSTefynZPxoVdN9kBlztKthQpQaNLOwqh54kZWedI6gt2TXR3FivsaeGf6HWk9GkwcrYXVpv/sos62a7M6xc8wj7g1Xxb9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UVWcf9U9; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so8211311fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718878807; x=1719483607; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kMQv+SI/kH2fj+sCWOpuzWhC+RAihSFQwyEfWFTRJ0E=;
        b=UVWcf9U971MfcIJwep941pIudFEw8+WAsZLJ3a9lx+d77Bw3gIuvcq3IQ2gmBgHIU3
         bePHneBbgFKv5F4YfnJH9pH49EHmGLcxlXXXDf9h267ndUpRs/LD+ov2gwTKstPHCjpH
         WAcWmgC+D9zR6wmi6knbgs2Ryim7x11w/lfog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718878807; x=1719483607;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMQv+SI/kH2fj+sCWOpuzWhC+RAihSFQwyEfWFTRJ0E=;
        b=eRR1TIftQhjujv6imle0/KUOA0r33eXU+dd8QHUOHOAIHnc0ubQmxjAhorDXSJSY9s
         VteKKZA/AEgsXxzhFvIzF/qLHzOYdPnGXHY9ylDByO4t+P7fS4OboNjSb6P5dOtEh1k7
         0lDeCGvwpP+Vkbv3iM1+Ng9AhNC7AjLfMkNaXRLwfkXx0Zk5K2OpyXKyIp9gwXHA4fbE
         3un1ituHzLJR7JhH1csBK9XHt7WQB+XrdW6hJkRe6syerMau2QGOcUq7+J9KNFGrB1Zs
         1wZuT8ra/F5zIpLEiGUHyCVI9pYbJEuMZL/aVwPz48G3RAeoxtKVII2pBdBo/hrgGbyk
         onog==
X-Forwarded-Encrypted: i=1; AJvYcCWD+T7FA9Orn3uRvGvEYjfE22aa434uGcaSXTQZHQyTSpU5zJp2Pe6Whc8NcC24sjOY9WWK6+AZ+078wmwx353F/bic8g2947TNzQ==
X-Gm-Message-State: AOJu0Yx2MrVd7QmEcnQViBYJPhoOxz7DcVe/cIprXxtojYnFLoJMppMw
	kSkKDZRaDR/9vZGR06S9hKs0Z/OvDHAQ6eRTOnJzWagsQc9W4KgeSSwwnF/gEqxBAhR6XQ6k3a4
	+KCO+MxquXQJErfxOsYlt+InrmyUsNHZ8KbmG
X-Google-Smtp-Source: AGHT+IFzCFhLF+GpdQivYBjTN44c3awT7QjJvjvCa4N6HMck3/8WvClS9kMnKrGjmoVAcGvXMshNVwpxInBhTRdLn5g=
X-Received: by 2002:a2e:8811:0:b0:2eb:e9cf:e179 with SMTP id
 38308e7fff4ca-2ec3ce9419fmr34233601fa.21.1718878807358; Thu, 20 Jun 2024
 03:20:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620101656.1096374-1-angelogioacchino.delregno@collabora.com> <20240620101656.1096374-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240620101656.1096374-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 20 Jun 2024 18:19:56 +0800
Message-ID: <CAGXv+5GLCrQzxGFSuReD77CLBa-w4=1So8qdbPm_1nohKOOnpw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: dts: mediatek: Declare drive-strength numerically
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 20, 2024 at 6:17=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> On some devicetrees, the drive-strength property gets assigned a
> MTK_DRIVE_(x)_mA definition, which matches with (x).
>
> For example, MTK_DRIVE_8mA equals to 8 and MTK_DRIVE_30mA equals
> to 30.
>
> Also keeping in mind that the drive-strength property is, by
> (binding) definition, taking a number in milliamperes unit,
> change all devicetrees to avoid the usage of any MTK_DRIVE_(x)
> definition.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  arch/arm/boot/dts/mediatek/mt2701-evb.dts |  2 +-
>  arch/arm/boot/dts/mediatek/mt7623.dtsi    | 18 +++++++++---------
>  2 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm/boot/dts/mediatek/mt2701-evb.dts b/arch/arm/boot/dt=
s/mediatek/mt2701-evb.dts
> index 9c7325f18933..4c76366aa938 100644
> --- a/arch/arm/boot/dts/mediatek/mt2701-evb.dts
> +++ b/arch/arm/boot/dts/mediatek/mt2701-evb.dts
> @@ -231,7 +231,7 @@ pins1 {
>                                  <MT2701_PIN_238_EXT_SDIO1__FUNC_EXT_SDIO=
1>,
>                                  <MT2701_PIN_237_EXT_SDIO2__FUNC_EXT_SDIO=
2>,
>                                  <MT2701_PIN_236_EXT_SDIO3__FUNC_EXT_SDIO=
3>;
> -                       drive-strength =3D <MTK_DRIVE_4mA>;
> +                       drive-strength =3D <4>;
>                         bias-pull-up;
>                 };
>         };
> diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/m=
ediatek/mt7623.dtsi
> index f0b4a09004b3..814586abc297 100644
> --- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
> +++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
> @@ -1143,13 +1143,13 @@ pins-cmd-dat {
>                                  <MT7623_PIN_121_MSDC0_DAT0_FUNC_MSDC0_DA=
T0>,
>                                  <MT7623_PIN_116_MSDC0_CMD_FUNC_MSDC0_CMD=
>;
>                         input-enable;
> -                       drive-strength =3D <MTK_DRIVE_2mA>;
> +                       drive-strength =3D <2>;
>                         bias-pull-up =3D <MTK_PUPD_SET_R1R0_01>;
>                 };
>
>                 pins-clk {
>                         pinmux =3D <MT7623_PIN_117_MSDC0_CLK_FUNC_MSDC0_C=
LK>;
> -                       drive-strength =3D <MTK_DRIVE_2mA>;
> +                       drive-strength =3D <2>;
>                         bias-pull-down =3D <MTK_PUPD_SET_R1R0_01>;
>                 };
>
> @@ -1167,14 +1167,14 @@ pins-cmd-dat {
>                                  <MT7623_PIN_110_MSDC1_DAT3_FUNC_MSDC1_DA=
T3>,
>                                  <MT7623_PIN_105_MSDC1_CMD_FUNC_MSDC1_CMD=
>;
>                         input-enable;
> -                       drive-strength =3D <MTK_DRIVE_4mA>;
> +                       drive-strength =3D <4>;
>                         bias-pull-up =3D <MTK_PUPD_SET_R1R0_10>;
>                 };
>
>                 pins-clk {
>                         pinmux =3D <MT7623_PIN_106_MSDC1_CLK_FUNC_MSDC1_C=
LK>;
>                         bias-pull-down;
> -                       drive-strength =3D <MTK_DRIVE_4mA>;
> +                       drive-strength =3D <4>;
>                 };
>
>                 pins-wp {
> @@ -1197,13 +1197,13 @@ pins-cmd-dat {
>                                  <MT7623_PIN_110_MSDC1_DAT3_FUNC_MSDC1_DA=
T3>,
>                                  <MT7623_PIN_105_MSDC1_CMD_FUNC_MSDC1_CMD=
>;
>                         input-enable;
> -                       drive-strength =3D <MTK_DRIVE_4mA>;
> +                       drive-strength =3D <4>;
>                         bias-pull-up =3D <MTK_PUPD_SET_R1R0_10>;
>                 };
>
>                 pins-clk {
>                         pinmux =3D <MT7623_PIN_106_MSDC1_CLK_FUNC_MSDC1_C=
LK>;
> -                       drive-strength =3D <MTK_DRIVE_4mA>;
> +                       drive-strength =3D <4>;
>                         bias-pull-down =3D <MTK_PUPD_SET_R1R0_10>;
>                 };
>         };
> @@ -1211,7 +1211,7 @@ pins-clk {
>         nand_pins_default: nanddefault {
>                 pins-ale {
>                         pinmux =3D <MT7623_PIN_116_MSDC0_CMD_FUNC_NALE>;
> -                       drive-strength =3D <MTK_DRIVE_8mA>;
> +                       drive-strength =3D <8>;
>                         bias-pull-down =3D <MTK_PUPD_SET_R1R0_10>;
>                 };
>
> @@ -1226,13 +1226,13 @@ pins-dat {
>                                  <MT7623_PIN_115_MSDC0_RSTB_FUNC_NLD8>,
>                                  <MT7623_PIN_119_MSDC0_DAT2_FUNC_NLD2>;
>                         input-enable;
> -                       drive-strength =3D <MTK_DRIVE_8mA>;
> +                       drive-strength =3D <8>;
>                         bias-pull-up;
>                 };
>
>                 pins-we {
>                         pinmux =3D <MT7623_PIN_117_MSDC0_CLK_FUNC_NWEB>;
> -                       drive-strength =3D <MTK_DRIVE_8mA>;
> +                       drive-strength =3D <8>;
>                         bias-pull-up =3D <MTK_PUPD_SET_R1R0_10>;
>                 };
>         };
> --
> 2.45.2
>
>

