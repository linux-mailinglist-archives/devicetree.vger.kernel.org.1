Return-Path: <devicetree+bounces-19055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7060F7F9816
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 05:00:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2816F280E3F
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB23C46AB;
	Mon, 27 Nov 2023 04:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JuSrSvlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7AF7E8
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 20:00:22 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c5b7764016so41726691fa.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 20:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701057621; x=1701662421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hyXUgZR2V8CGJro2dBZPICRFG2CL4zf1FqusNumER4=;
        b=JuSrSvltC5UQ83aMrnUsOTRSllvtycVDuZMltBoSXu8wmKPRg8PMw/kX+28inwRHV/
         gw3WKQ2ea5igBBfTJsfqUVeN1MgUi2OKEoHxfdYXUqWQMN8A99e/xKiI6vezHJkCAYGE
         TWmwVMS6mzKlJjIiUiv8kFczv6CjN/qaHaJiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701057621; x=1701662421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2hyXUgZR2V8CGJro2dBZPICRFG2CL4zf1FqusNumER4=;
        b=on3MR6IrvEjUoWwHu6Oly3U7mfeNy6ugi1k04GoVjUvjon3xzpN1O1sOtwIZHdCRIm
         s+oCtL7MMbc2Nck6xdcY7TWzV5II73btztNv6bFcnkkDuoeCOGA2C/nmjCgizKteBgbj
         CMhxscLe6UXYnY2OwVDh7svFE0SYtWxArUv1IVoo+yc18x70PhXx4B1trdh6RqLtSnui
         AeBFivLINOC2DgLK7m8bTjBARdOdrq4T9B0qwZF6ljgXclXWcAztwaRiahPWXw3gZgpn
         HbJYuNfJWBufDFgHqUrmvqeq0FKa5q+abhjyzUDuxvOuiRHkbDFLN0+lxLzuqZwxx2BU
         LylQ==
X-Gm-Message-State: AOJu0YwQLeUh7Gxxnx20cIpR0CUJzMg1N5blaKPCY8qF5XG28anqGWJn
	5fqFGzE5MG7qU31KJKF9oHo5L98C+U2UIkpIt4YQVQ==
X-Google-Smtp-Source: AGHT+IGWNLzkTfKJ9/s46JZ8EFnCkfTriGkCE5/WH1eK+5G+zIursvHQuaGd5Lbk44N+a4VuvKKNSbjCULPbRF3Hxbg=
X-Received: by 2002:a19:ac48:0:b0:50a:6fc5:e95c with SMTP id
 r8-20020a19ac48000000b0050a6fc5e95cmr6666053lfc.60.1701057621033; Sun, 26 Nov
 2023 20:00:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012230237.2676469-1-wenst@chromium.org> <20231012230237.2676469-7-wenst@chromium.org>
 <60beb523-292b-4c77-9030-1bfdfd73c140@collabora.com>
In-Reply-To: <60beb523-292b-4c77-9030-1bfdfd73c140@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Nov 2023 12:00:10 +0800
Message-ID: <CAGXv+5GmjZbzLbxADoNXDiF8dTAwnxva29vuM0FG8vY-6wTJcQ@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 5:05=E2=80=AFPM Eugen Hristev
<eugen.hristev@collabora.com> wrote:
>
> On 10/13/23 02:02, Chen-Yu Tsai wrote:
> > Tentacruel and Tentacool are MT8186 based Chromebooks based on the
> > Krabby design.
> >
> > Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
> > convertible device with touchscreen and stylus.
> >
> > Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
> > device. It does not have a touchscreen or stylus.
> >
> > The two devices both have two variants. The difference is a second
> > source touchpad controller that shares the same address as the original=
,
> > but is incompatible.
> >
> > The extra SKU IDs for the Tentacruel devices map to different sensor
> > components attached to the Embedded Controller. These are not visible
> > to the main processor.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >   arch/arm64/boot/dts/mediatek/Makefile         |    4 +
> >   .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  130 ++
> >   .../mt8186-corsola-tentacool-sku327681.dts    |   49 +
> >   .../mt8186-corsola-tentacool-sku327683.dts    |   26 +
> >   .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
> >   .../mt8186-corsola-tentacruel-sku262148.dts   |   28 +
> >   .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1704 ++++++++++++++++=
+
> >   7 files changed, 1985 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby=
.dtsi
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ool-sku327681.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ool-sku327683.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ruel-sku262144.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ruel-sku262148.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> >

[...]

> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/ar=
m64/boot/dts/mediatek/mt8186-corsola.dtsi
> > new file mode 100644
> > index 000000000000..42ebab1bafeb
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > @@ -0,0 +1,1704 @@

[...]

>
> Hi Chen-Yu,
>
> These two aud_gpio_tdm empty entries cause this message to be printed:
>
> [   12.949519] mt8186_mt6366_rt1019_rt5682s sound: there is not valid
> maps for state aud_gpio_tdm_off
> [   12.959025] mt8186_mt6366_rt1019_rt5682s sound: there is not valid
> maps for state aud_gpio_tdm_on

I guess we need to teach the sound driver to ignore empty pinmux states?

ChenYu

