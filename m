Return-Path: <devicetree+bounces-8763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5197C9F55
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FC6E1C20510
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 06:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C75125B3;
	Mon, 16 Oct 2023 06:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lQhIb/Ev"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB3D8460
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:15:38 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40AA695
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:15:36 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5079eed8bfbso2863881e87.1
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697436934; x=1698041734; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qg819PeaIaXIquSaDniEPuZ9yLpqV66mI/xzM9l2AAw=;
        b=lQhIb/EvXsZTKtG7rGioMPsSDnInZB5Y/76Mk1HOTVNWa9TQXmb+yfNr7hFDvKftH/
         2HHO2AZNDBzrufGX9GF5WzP25Was/aq193cIc6Nsgq3fO85dwF774eKVvbNsX4488GlA
         jMdaPtSmUJCpJYCs6CGrtIancye3tbRXCcifA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697436934; x=1698041734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qg819PeaIaXIquSaDniEPuZ9yLpqV66mI/xzM9l2AAw=;
        b=eu7XyyKzO+hjnLjbpAjC9N+hcZrTZxBIYMnI6hsAaTVtu2Ub3CD9uR240bViADzNhD
         qFxfU62Nyb1wnFx4JmfSyfkv1k+2QRY2MiiB8vqdzMZmbFr6MaVkyEUzRaRz+be7jOTE
         VG6egzrxElf3WNfFpzg2ZoErLY5GWOVw/WKKKD9a1jLHKJEFu4FepJRb5w6B8c96VwVk
         iW9Lnr0rZFse1BjhdB2xZUVP24+6Ws2C7dPVtxyfNKa11oMKyiJ2zQaNAdaYEwQthWt4
         jsGdTiPhRoIVthl/zfwzBn0ck0hM/GT/yOW3Vb+HCEln34xO8KFeuU0RtnqffAC/6fPk
         zxRw==
X-Gm-Message-State: AOJu0YxSUtgI7HffsfVk//Q2UzedG5CTIAa7xdnDP5whd3+wHePV1N/k
	lfLaFiGm7Bt8z17nSgH6gWFmwDLd/6SsVioNMYhqpg==
X-Google-Smtp-Source: AGHT+IHFJQLwa1QowtCkE7wJpqnOvB1ap/SQuAj0GtJU7L2ROkhL11U6w6x/le7hptA3fdVbUJyPewrXhBpLR7HkWuA=
X-Received: by 2002:ac2:482c:0:b0:507:9a66:3577 with SMTP id
 12-20020ac2482c000000b005079a663577mr6552198lft.5.1697436934207; Sun, 15 Oct
 2023 23:15:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012230237.2676469-1-wenst@chromium.org> <20231012230237.2676469-3-wenst@chromium.org>
 <20231013-washer-mortally-b27c196ac50f@spud> <CAGXv+5GF7HfQSOg9c=G+c4DPUW24Ax7LX4raTynDbE3xc8iCdg@mail.gmail.com>
 <20231013-panic-vaseline-350c10e7d585@spud> <CAGXv+5EmLDWi3Lnca1vPft=9z9Cp2L2ee08in_b_21hipf9ieQ@mail.gmail.com>
 <20231014-proud-levers-eb03f30a0a9a@spud>
In-Reply-To: <20231014-proud-levers-eb03f30a0a9a@spud>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Sun, 15 Oct 2023 23:15:22 -0700
Message-ID: <CAGXv+5F-x9m2WYZm-YLaxqio=VnfKkL26gLFbayJctBEJrSM6A@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: arm: mediatek: Add MT8186 Tentacruel /
 Tentacool Chromebooks
To: Conor Dooley <conor@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Oct 14, 2023 at 6:40=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Oct 13, 2023 at 11:19:16AM -0700, Chen-Yu Tsai wrote:
> > On Fri, Oct 13, 2023 at 10:55=E2=80=AFAM Conor Dooley <conor@kernel.org=
> wrote:
> > >
> > > On Fri, Oct 13, 2023 at 10:29:25AM -0700, Chen-Yu Tsai wrote:
> > > > On Fri, Oct 13, 2023 at 8:11=E2=80=AFAM Conor Dooley <conor@kernel.=
org> wrote:
> > > > >
> > > > > On Fri, Oct 13, 2023 at 07:02:28AM +0800, Chen-Yu Tsai wrote:
> > > > > > Add entries for MT8186 based Tentacruel / Tentacool Chromebooks=
. The two
> > > > > > are based on the same board design: the former is a convertible=
 device
> > > > > > with a touchscreen, stylus, and some extra buttons; the latter =
is a
> > > > > > clamshell device and lacks these additional features.
> > > > > >
> > > > > > The two devices both have two variants. The difference is a sec=
ond
> > > > > > source touchpad controller that shares the same address as the =
original,
> > > > > > but is incompatible.
> > > > >
> > > > > > The extra SKU IDs for the Tentacruel devices map to different s=
ensor
> > > > > > components attached to the Embedded Controller. These are not v=
isible
> > > > > > to the main processor.
> > > > >
> > > > > Wha? Given your ordering, is a "google,tentacruel-sku262144" a su=
per-set
> > > > > of "google,tentacruel-sku262145"? If not, this compatible orderin=
g
> > > > > doesn't make sense. I can't tell from your description, and the
> > > > > absence of a
> > > > > items:
> > > > >           - const: google,tentacruel-sku262145
> > > > >           - const: google,tentacruel-sku262146
> > > > >           - const: google,tentacruel-sku262147
> > > > >           - const: google,tentacruel
> > > > >           - const: mediatek,mt8186
> > > > > suggests that there is no google,tentacruel-sku262145
> > > > > device?
> > > >
> > > > AFAIK all four SKUs exist. And as far as the main processor is conc=
erned,
> > > > they look completely identical, so they should share the same devic=
e tree.
> > > > As mentioned in the commit message, the differences are only visibl=
e to
> > > > the embedded controller, which fuses the sensor inputs.
> > >
> > > Then it makes very little sense to write a binding like this.
> > > If this was just for the 252144 SKU, this would be fine.
> > > For the other SKUs, there is no way to uniquely identify them, as
> > > all four of google,tentacruel-sku262144, google,tentacruel-sku262145,
> > > google,tentacruel-sku262146 and google,tentacruel-sku262147 must be
> > > present.
> > > Given that, why even bother including the SKUs in the first place,
> > > since no information can be derived from them that cannot be derived
> > > from google,tentacruel?
> > > There's something that I am clearly missing here...
> >
> > There are incompatible variants of google,tentacruel. This is why this
> > patch has four google,tentacruel based entries. Of them, two are Tentac=
ool,
> > which are clamshell laptops, and two of them are Tentacruel, which are
> > convertibles.
> >
> > Within each group there are two variants: the second variant swaps out
> > the I2C touchpad controller. These two controllers use the same I2C
> > address but use different compatible strings, so it's not possible to
> > have them coexist within the same device tree file like we do for many
> > other second source components.
> >
> > So the relationship looks like the following:
> >
> > google,tentacruel --- Tentacruel --- google,tentacruel-sku26214[4567]
> >                    |              |
> >                    |              -- google,tentacruel-sku2621{48,49,50=
,51}
> >                    |
> >                    -- Tentacool ---- google,tentacruel-sku327681
> >                                  |
> >                                  --- google,tentacruel-sku327683
> >
> > Also, the devices themselves only know their own SKU ID. The firmware
> > will generate a list of compatible strings like:
> >
> >   google,tentacruel-rev4-sku262144
> >   google,tentacruel-rev4
> >   google,tentacruel-sku262144
> >   google,tentacruel
> >
> > and try to find a match in the kernel FIT image. The method we currentl=
y
> > use is to include all the applicable board compatible strings.
>
> Then it seems like what you need is something like
> oneOf:
>   - items:
>       - const: google,tentacruel-sku262144
>       - const: google,tentacruel
>       - const: mediatek,mt8186
>   - items:
>       - enum:
>           - google,tentacruel-sku262145
>           - google,tentacruel-sku262146
>           - google,tentacruel-sku262147
>       - const: google,tentacruel-sku262144
>       - const: google,tentacruel
>       - const: mediatek,mt8186
>
> What you have at the moment just seems like a hack because you want to
> stuff all of these compatible strings into a single dts.

It is. And it works OK downstream. The reason we want to stuff them in
one dts is because the firmware will not generate the fallback to
sku262144 as the scheme above suggests.

Having three or four identical device trees just with different board
compatible string sequences to me seems a bit redundant, and it does
end up bloating our FIT image a bit, which impacts boot time.


Regards
ChenYu

