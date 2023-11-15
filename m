Return-Path: <devicetree+bounces-15779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 081C57EBBA8
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 04:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C30A1F249BA
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 03:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72125658;
	Wed, 15 Nov 2023 03:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GvXV6Bi3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA6D647
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 03:22:52 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E1AD5
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 19:22:51 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-509c61e0cf4so7693227e87.2
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 19:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700018569; x=1700623369; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jxR8SEff9QhQWGnC0bTicTu902xyqq/a50SrjOH4Vi4=;
        b=GvXV6Bi3Ef+fzSbrh2Qe11H5ZnG9zXavsPWTfLAumfwiATz5ZAeUnl+RVLYDVPsESG
         yQgUgxidJnTOayE9zCPOFE/cJhB63AI5JMq9pf+lKUZuUzrjN4RMqyTHZfcGtRdX0BuS
         arRK7ApDMwy3KqWYDO5HgTyziEHA8YLPtL9ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700018569; x=1700623369;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jxR8SEff9QhQWGnC0bTicTu902xyqq/a50SrjOH4Vi4=;
        b=Drazqniyw0OC1pVMzgrKD0zpRYG2in2wHrkFDN/dmcggVwjFlK3OqLNUNdfM5ldCyO
         kO4zKQ9B4ouBc+tqPNoN6050RMK2/DoD3pXSRn90MqnqyCFtJdMzwMohSMXVew6Wl17p
         /wmCH0AHkunLoOCPL9NkHV2+e+Iy7Hf4pVtKukpEc+TxNP1UbN7C1lEmthDR/PPCev0U
         6gb3mgIc8P8e0QnWWnpRh6pnN8f+SlRWHQ+xKBH3KFR89rEVz3uifsP2krkDGYGUxnVw
         UBqWsBmB7moR7eMB9EJc5pV+2k0WlG55UIP3yblRnUVT7AOexJHmKq0+N0nT43xyM44M
         vSNQ==
X-Gm-Message-State: AOJu0Yx4KXf9Ly8hHGnmnPP06pUA1dMFPBBi4MOn1KqCRNbaIEvdnj4C
	dqUEeGcMP8a6hOUXDtOGiXnZcO47+AFuvjpvXx6pHA==
X-Google-Smtp-Source: AGHT+IH/sEG2Ucut35rGScW2osfDdxASphCbak+GNijQXM9mN/aThAmwkj5q5kBza+Bkt5p0XJPSi1hAi7h0K4LMw1k=
X-Received: by 2002:a05:6512:1107:b0:509:7141:fec with SMTP id
 l7-20020a056512110700b0050971410fecmr8866004lfg.48.1700018569194; Tue, 14 Nov
 2023 19:22:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114104353.1693966-1-treapking@chromium.org>
In-Reply-To: <20231114104353.1693966-1-treapking@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 15 Nov 2023 11:22:37 +0800
Message-ID: <CAGXv+5FaCBdwhnwQPWPpxUN3=MW9HeGnpRtsK7a0A=E0rAJDKQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: Add G2Touch touchscreen node
To: Pin-yen Lin <treapking@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 6:44=E2=80=AFPM Pin-yen Lin <treapking@chromium.org=
> wrote:
>
> Lenovo Ideapad C330 Chromebook (MTK) uses G2Touch touchscreen as a
> second source component.
>
> Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> ---
>
>  arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm=
64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> index bdcd35cecad9..0d6dbc36c352 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> @@ -29,6 +29,14 @@ touchscreen3: touchscreen@20 {
>                 interrupt-parent =3D <&pio>;
>                 interrupts =3D <88 IRQ_TYPE_LEVEL_LOW>;
>         };
> +
> +       touchscreen4: touchscreen@40 {

The label likely isn't needed.

Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> +               compatible =3D "hid-over-i2c";
> +               reg =3D <0x40>;
> +               hid-descr-addr =3D <0x0001>;
> +               interrupt-parent =3D <&pio>;
> +               interrupts =3D <88 IRQ_TYPE_LEVEL_LOW>;
> +       };
>  };
>
>  &i2c4 {
> --
> 2.42.0.869.gea05f2083d-goog
>

