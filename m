Return-Path: <devicetree+bounces-199718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C1DB11C21
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:19:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 331B916AA7A
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFAE2DCF6B;
	Fri, 25 Jul 2025 10:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="J5iv/n3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0A82DA77D
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438698; cv=none; b=HTFn8+94xRhup0XOYY3lifQ09CYe9CXrLkvb82noFQ6h4N5l4rI7EKKNU5JO83OlrhLn/1le81IAnCa6tkhyiWhcGfq3fzA/5Et8eMXEcdh3dkB2/ZvDZ91CtrgrUQNZbBJGu168ZwrKCwTHv+uV6p4e0J98w+PJCZTgwWXifoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438698; c=relaxed/simple;
	bh=2XXVnmKfKOuWrZjQTjDdYxCXEPvU5YjHEeLez+QHVDs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WVAMjP+uy41n5dj9QCzc7xZ/BWzOyUOScgQhBRrqpv8fuEbYixxdMCAaLm+Xh/5jaCS9C1uBOOULpS4h6BaHlb/jnbGxWLC1pn9X4rRlqsDDj7A4bp1OFRYnWtZY3pPcx7YswKTzScD9JuxYU9N27P7TvzAHgXSO4+ePbiEATiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=J5iv/n3r; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-4efbfe9c7a5so1913676137.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753438695; x=1754043495; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9CPe4n6W7cHa+GL0hIjIVMWtvIyx6LwWGjspV/N2Ok=;
        b=J5iv/n3rma12RMXbJ0iPqndDMFk75vBSdjxbUKQtXYpd3wiKlOEhEekjUwfgByuRDs
         XAPp2XyClwU5FGahyNrDJjkNRgFV67HPZGJbMDZ72CM8bawRHpZvhz+fYozVmKvYawfS
         AMEa+LmcJn0IpilXLOyhEz9X3Ge19nsw0p2zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438695; x=1754043495;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s9CPe4n6W7cHa+GL0hIjIVMWtvIyx6LwWGjspV/N2Ok=;
        b=Bq/iMLOl6NqJVJM1U/K4F1QyopzC9H4Ecia0JD7uZIBCgb+wDSPAt3quTUbCIUYGqx
         HcC/9IHgQzhXhJ0KhEEyVM3enP9X+G0nnZrNyyj+udvnN7xJ6tHpxDKc3t/cB7tGZItH
         Jh3wLfuJn1Mqzanal2RqzHPnACCat12GwbObIe0xuOvVr6OQ09SmyX6g3WzybCLSFcHz
         M35X+8m7+j9iZApPQwgKk/wvcHfm4UM66ElJSXJzHvmpFfaqr1CfOMQ3smTlkHn/gsVK
         3V4ygimQ42G/EHrb3eJG2Fq91LWAL2kOk2ljlFOuTQMVUJ1Dx6MdRJKDOvkauTO04iO/
         WGnw==
X-Forwarded-Encrypted: i=1; AJvYcCWm1gc6ePSYfW9ehCW5ZJ+z5KUgN4qGpF4Uo2zLAAiO1s6V4CXw6+hy9B7JjA9WyO+3Vk432SeCsaSE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq7QcoRT/Rl9VfsTIETSkKcCXDBHp7hnJjUzUkP/lf8T4yCDHb
	gB++BwBTv4ZrcABFGaNY88UI82aj7G9UpfF/wGOY+PUvdHkiH1vYTXoBor0ZA1W4b5wQxFD1aAk
	2rk4=
X-Gm-Gg: ASbGncujDlO6+sseuI8md5RGMo8AInK/CUsOqtJnDV9DcXnM2jDuTe3WdSkk3mWCC6S
	BJCANeR40lqb9AQ+E0Q9W9qX1gV0ZqtPi/54BW/zpTxmoPah1NBhZxe12iNLdhMY2/xC+Qb5hC0
	56ubTB9o8qedDEKbnADR52cniTfCpnuzLgnETQ/qTDXyNgpCUbbg0dTaWOQrm8agW9qDGS5Q9lb
	o77F3CvuqcNhyB9fKhpnsGQC/Xk2zz4I55RgR+GOGh/XUb6LwlQgiVsQ6GKxN9Pk8QdvcTj7E28
	gSYiWOe6byQkF8fRLb6cSxZeaM2NzEIyJhGOypCJOcMadJ+CFh4ExAmg4i+YxqlFXC7wad+Jgzm
	xNL2CYU1TRluBf/0tg9UVAE5V/vxxxHwoJPid+gIMw8yHd+84RSSCqQ9ispyllvQ9yb6f
X-Google-Smtp-Source: AGHT+IEJdNGjzjLEm4OQVGNI34iCDH3LsA45Wrzqg+qi+Ie6w/keKRy8SSDsB7ZvC/xvf2dx3k5caQ==
X-Received: by 2002:a05:6102:5491:b0:4e9:963f:286a with SMTP id ada2fe7eead31-4fa3ee2e958mr368419137.5.1753438694713;
        Fri, 25 Jul 2025 03:18:14 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4fa2a9c508fsm697449137.17.2025.07.25.03.18.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 03:18:13 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4e80ff08dd6so1217165137.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:18:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW5BtrgVy3XJwVwqAqpF2xqhM5WDqofB8pFuQ+NhqhM5+bBdxYmcmw6iYOy40dGPYTuBHb1CJnT7rTV@vger.kernel.org
X-Received: by 2002:a05:6102:1623:b0:4fa:dd4:6877 with SMTP id
 ada2fe7eead31-4fa2eb0ce5dmr2502816137.4.1753438693359; Fri, 25 Jul 2025
 03:18:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-31-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-31-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:17:35 +0800
X-Gmail-Original-Message-ID: <CAC=S1niM4ddPSaOM9uMRQuUS8HwPw+gtxe9kGUggWQx6uio5eA@mail.gmail.com>
X-Gm-Features: Ac12FXzF0-E5XCOaIf5MFeMvqjYMvWSzSdwqzh1uEwhsUpfXPcd-rqBecXNopmU
Message-ID: <CAC=S1niM4ddPSaOM9uMRQuUS8HwPw+gtxe9kGUggWQx6uio5eA@mail.gmail.com>
Subject: Re: [PATCH 30/38] arm64: dts: mediatek: pumpkin-common: Fix pinctrl
 node names
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 5:50=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Fix the pinctrl node names to adhere to the bindings, as the main
> pin node is supposed to be named like "uart0-pins" and the pinmux
> node named like "pins-bus".
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  .../boot/dts/mediatek/pumpkin-common.dtsi      | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm6=
4/boot/dts/mediatek/pumpkin-common.dtsi
> index a356db5fcc5f..805fb82138a8 100644
> --- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
> @@ -198,8 +198,8 @@ &usb_phy {
>  };
>
>  &pio {
> -       gpio_keys_default: gpiodefault {
> -               pins_cmd_dat {
> +       gpio_keys_default: gpio-keys-pins {
> +               pins-cmd-dat {
>                         pinmux =3D <MT8516_PIN_42_KPCOL0__FUNC_GPIO42>,
>                                  <MT8516_PIN_43_KPCOL1__FUNC_GPIO43>;
>                         bias-pull-up;
> @@ -207,7 +207,7 @@ pins_cmd_dat {
>                 };
>         };
>
> -       i2c0_pins_a: i2c0 {
> +       i2c0_pins_a: i2c0-pins {
>                 pins1 {
>                         pinmux =3D <MT8516_PIN_58_SDA0__FUNC_SDA0_0>,
>                                  <MT8516_PIN_59_SCL0__FUNC_SCL0_0>;
> @@ -215,7 +215,7 @@ pins1 {
>                 };
>         };
>
> -       i2c2_pins_a: i2c2 {
> +       i2c2_pins_a: i2c2-pins {
>                 pins1 {
>                         pinmux =3D <MT8516_PIN_60_SDA2__FUNC_SDA2_0>,
>                                  <MT8516_PIN_61_SCL2__FUNC_SCL2_0>;
> @@ -223,21 +223,21 @@ pins1 {
>                 };
>         };
>
> -       tca6416_pins: pinmux_tca6416_pins {
> -               gpio_mux_rst_n_pin {
> +       tca6416_pins: tca6416-pins {
> +               pins-mux-rstn {
>                         pinmux =3D <MT8516_PIN_65_UTXD1__FUNC_GPIO65>;
>                         output-high;
>                 };
>
> -               gpio_mux_int_n_pin {
> +               pins-mux-intn {
>                         pinmux =3D <MT8516_PIN_64_URXD1__FUNC_GPIO64>;
>                         input-enable;
>                         bias-pull-up;
>                 };
>         };
>
> -       ethernet_pins_default: ethernet {
> -               pins_ethernet {
> +       ethernet_pins_default: ethernet-pins {
> +               pins-eth {
>                         pinmux =3D <MT8516_PIN_0_EINT0__FUNC_EXT_TXD0>,
>                                  <MT8516_PIN_1_EINT1__FUNC_EXT_TXD1>,
>                                  <MT8516_PIN_5_EINT5__FUNC_EXT_RXER>,
> --
> 2.50.1
>
>

