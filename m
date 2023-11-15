Return-Path: <devicetree+bounces-15801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D637EBCED
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 07:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D724B20AF1
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 06:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 151F07E;
	Wed, 15 Nov 2023 06:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="S5tBlUMY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906A33C1C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:08:49 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D33C93
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:08:47 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507bd19eac8so8598470e87.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700028526; x=1700633326; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vrRtND/YRUzURuoQwjKJk/HonLng3kvTj/8TZ3Odh2Y=;
        b=S5tBlUMYSc8tCkMz+qNoAyoyCed8ciKJuLDunru4IFPcL9XnYZuxEBjVlmeUnzKl7d
         N75cxkPn3PMp7CnxAG1NGOY1IWj+JnKyjuFVv0uzsZiYpl6LzRe6WA2EeUHEy4JTNFPf
         6nJLfidy3e2wz8M8fpvRV7jIHmFesUbRHYk7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700028526; x=1700633326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vrRtND/YRUzURuoQwjKJk/HonLng3kvTj/8TZ3Odh2Y=;
        b=A7tUz/XTxJMBGxtHd8ZIHIt5QVdkv4Z0VgugY3bzUVYpIpmSEYcMWRN9rBVm6d1p+g
         bqOqPfgEldGllyIwIbKyDsS7avc5+Uc7IUzBgAXkV5YV6Sw9pgGhBFEWa4Xy0uz19inY
         5hHnMoV5pWbW/hyqgmBcYGGWXHIkdURQVSaZwnW2uLoOkh9i7perP2+ZQBtBrWGOyjCE
         fRbUK6krkxb63eIdgJnuCzCphOxEqXJ+LWc0P8jz/+xdb+1si3oTmVgSg+y+TsOKx/yB
         Rs5Ix5phZTQuoVjosH78p1GHf+zuU0jivMri0rXCAX1FKgKjtT1vPO/mxuv8QDt9FIAV
         UG2w==
X-Gm-Message-State: AOJu0YxR6Q/LmgN3c6B20R5BwPMeS5eyrIPaw5mnZyr1H9kZyofUv27Y
	eL6uQpAH9gvmORvJVkLH74FYnFNpNIhYW4kNBcPiAA==
X-Google-Smtp-Source: AGHT+IEElVyq/Wfz+fZN9g5gHhgB0rYPl8JRXgccOm8OavEsvJYgG8EGZ+VI+3AA2iv3HFdt3nFxSDC3zZjP6Wt+9vg=
X-Received: by 2002:a05:6512:b14:b0:509:8e3d:7cb0 with SMTP id
 w20-20020a0565120b1400b005098e3d7cb0mr11292990lfu.41.1700028525615; Tue, 14
 Nov 2023 22:08:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115043511.2670477-1-treapking@chromium.org>
In-Reply-To: <20231115043511.2670477-1-treapking@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 15 Nov 2023 14:08:34 +0800
Message-ID: <CAGXv+5FnzLgnNfvK-KEd4OUysUXqCuCp7AJ3iuzEGn=fry0B1g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: mt8173: Add G2Touch touchscreen node
To: Pin-yen Lin <treapking@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 12:35=E2=80=AFPM Pin-yen Lin <treapking@chromium.or=
g> wrote:
>
> Lenovo Ideapad C330 Chromebook (MTK) uses G2Touch touchscreen as a
> second source component.
>
> Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

I assume this patch will get merged relatively soon. I can base my DT
probing work on top of it, instead of having roughly the same patch
in my series.

> ---
>
> Changes in v2:
> - Remove the label for the node
>
>  arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm=
64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> index bdcd35cecad9..8836ac3c4233 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> @@ -29,6 +29,14 @@ touchscreen3: touchscreen@20 {
>                 interrupt-parent =3D <&pio>;
>                 interrupts =3D <88 IRQ_TYPE_LEVEL_LOW>;
>         };
> +
> +       touchscreen@40 {
> +               compatible =3D "hid-over-i2c";
> +               reg =3D <0x40>;
> +               hid-descr-addr =3D <0x0001>;
> +               interrupt-parent =3D <&pio>;
> +               interrupts =3D <88 IRQ_TYPE_LEVEL_LOW>;

I assume Angelo might ask you to use interrupts-extended instead, but
I'd argue it's better to be consistent throughout the file.

> +       };
>  };
>
>  &i2c4 {
> --
> 2.43.0.rc0.421.g78406f8d94-goog
>

