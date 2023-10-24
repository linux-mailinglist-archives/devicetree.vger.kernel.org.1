Return-Path: <devicetree+bounces-11423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6940F7D5BC3
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AFD01C20A9A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3687F3AC2B;
	Tue, 24 Oct 2023 19:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ggSESHXo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D18266A9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:46:42 +0000 (UTC)
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19E0410D3
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:46:41 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-584042a01eeso2959358eaf.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698176800; x=1698781600; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ko81kVFawiPk62I2UsRSceb9b1VOPxmBQiQP7A61UvE=;
        b=ggSESHXogeyEi2KMclNLSh6AieR4p/uZ47mGljvRfiliGJKwa0ZrrX1gtPh2vUkH5S
         k3k4nARuZ7Sb8H3d1DxOUWKB60USYi0W+wjvtcMqsOtD0o+oKL66Poqjdx6/kc+y0Ess
         6AG4Qtpxi/Jp0wDWBzM3fg+M3kna8cZXw5Wuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698176800; x=1698781600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ko81kVFawiPk62I2UsRSceb9b1VOPxmBQiQP7A61UvE=;
        b=ZxoKt1S5mwD0zLM2JQIsVoJt5yieXoMghjkDDKa54v2njBJamF7OICIC28zY3JmelZ
         Vnp4VRkCu464ys4W0Zx9gv1VWgHiOclEZumG8xO+tzXl8P2GkvuAPwoFNd5g7/wrPOkD
         pHytwV2Uy2K1Uo2Ddn3Fq6dcqQIsw3Rpdxm0RgW/sUDMP0cW1/gKqyGQPbws7ADn7RLU
         Zp4kxCfO9bBaXoHualigOF3ZUi3ua0hcD4fqRFGbsDGQTaOleRYNd7cqIeSxNMhZsCC6
         hEWy9zGdWOqP2kyfL7azw5f9VjJmJYC0jJjnV6vcH6jnFuZnxtVJqxMPsmttU/AUzp0L
         LSBQ==
X-Gm-Message-State: AOJu0YyHC4JOfo5DvHRbOzq0HXw7zzOTV5xX5aPY7Ibvt65VrYVqm6yw
	NV5Um9K26cWhj6bEEUy/We9ihFPKnnMoBdn3zDKB7g==
X-Google-Smtp-Source: AGHT+IGZLu9siBSnt2MbWkvBMR/N7snwcPPmuPMWWr58Q8rokuqI3qNHuZ9YSR/3f+pgfmtMzYR7ZeBgSq+sGhGPjVQ=
X-Received: by 2002:a4a:bb0f:0:b0:571:1fad:ebe0 with SMTP id
 f15-20020a4abb0f000000b005711fadebe0mr13943983oop.3.1698176800424; Tue, 24
 Oct 2023 12:46:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024000724.57714-1-hsinyi@chromium.org> <20231024000724.57714-2-hsinyi@chromium.org>
 <20231024-reenact-wildfowl-de6575bbe6f6@spud>
In-Reply-To: <20231024-reenact-wildfowl-de6575bbe6f6@spud>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 24 Oct 2023 12:46:14 -0700
Message-ID: <CAJMQK-g2hWi1GO+9HxE=0AUDWMNF1YSQc9z8=imdF8FduOr+MA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
To: Conor Dooley <conor@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	=?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
	Frank Wunderlich <frank-w@public-files.de>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 8:15=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Oct 23, 2023 at 05:02:24PM -0700, Hsin-Yi Wang wrote:
> > Add katsu and katsu sku38 which uses different audio codec.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docu=
mentation/devicetree/bindings/arm/mediatek.yaml
> > index a5999b3afc35..fe8c488a3207 100644
> > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > @@ -235,6 +235,12 @@ properties:
> >          items:
> >            - const: google,kappa
> >            - const: mediatek,mt8183
> > +      - description: Google Katsu (ASUS Chromebook Detachable CZ1)
> > +        items:
> > +          - enum:
> > +              - google,katsu
> > +              - google,katsu-sku38
>
> This seems a little odd - does the non sku38 not have an sku of its own?
>

It's actually sku32. I'll update that in the next version. Thanks.

> > +          - const: mediatek,mt8183
> >        - description: Google Kodama (Lenovo 10e Chromebook Tablet)
> >          items:
> >            - enum:
> > --
> > 2.42.0.758.gaed0368e0e-goog
> >

