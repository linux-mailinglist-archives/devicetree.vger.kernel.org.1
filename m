Return-Path: <devicetree+bounces-8565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D467C8C52
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53BA91C20FED
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A64B224CC;
	Fri, 13 Oct 2023 17:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KUYr+01P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074E821362
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 17:29:40 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 145A3B7
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:29:39 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so2978336e87.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697218177; x=1697822977; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FOIrFGsafUUFipy0EmdcVavE31dFTWyMITdmJ3ogb1U=;
        b=KUYr+01PAdUXVPAvopM7cqn9QoBRxPMonUPkJV4xTtEknyJhOiZG9Ki9kia05EM3su
         s9AnFRgpko5bB3qeZ6cqVMl1TqI0m6kxF1talr/M1vdlIPcvZf4HihRBqU56limndRB4
         bHBIe93M4uaLGKw4DhE9qBmmFrFAVf4UodoZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697218177; x=1697822977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FOIrFGsafUUFipy0EmdcVavE31dFTWyMITdmJ3ogb1U=;
        b=DB3PxAjlq8dOEfL6A4Wligg8OFl9BqEIAI8BVYOGkcLeLNFOKMcDF5JQfS8h28I15g
         zXChexR0yyPTb10SPa5ufjeiQSWrNtrDsAVj+0haLXLfXW8d1dHT4rh3wM4Mzgw24ZeE
         45TWaOxebrEnuJZ9TlXMsj8XKGkG71/C4eZ7AwSDgQQG2nypLG5RB0zAdv1VMotDYVL2
         YfnxLOSVEOgl2LcO4B0rppC3+0H9uolbtzvbQrPO20HIaeNtGazAA3Czb4Fgo3YJOsv6
         Banox8dQlAGO/4mDRfoRxJ5Ps8xu6rJbAptlIPBTR2XkvR8J/l3+l2M0Ae7fvEDHyH1R
         ldgg==
X-Gm-Message-State: AOJu0YzoY5YayRzMok3+KYPqWIh/oPUGn20Y09mdPrM61chE+QnfVvgv
	aEzzmvYadvcJG+kjebVqV3yfPurI1D6sJk4JVfsndg==
X-Google-Smtp-Source: AGHT+IHlXOJUPgc4YdKF/GwqBVPUCLNSqtKKe94qTc6GOyoD0rJldQQHCAq2U9X6KxHG9reLUEBxj80c3R0OY+ZYNl8=
X-Received: by 2002:a05:6512:230e:b0:507:95ea:1e72 with SMTP id
 o14-20020a056512230e00b0050795ea1e72mr4194306lfu.22.1697218176696; Fri, 13
 Oct 2023 10:29:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012230237.2676469-1-wenst@chromium.org> <20231012230237.2676469-3-wenst@chromium.org>
 <20231013-washer-mortally-b27c196ac50f@spud>
In-Reply-To: <20231013-washer-mortally-b27c196ac50f@spud>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 13 Oct 2023 10:29:25 -0700
Message-ID: <CAGXv+5GF7HfQSOg9c=G+c4DPUW24Ax7LX4raTynDbE3xc8iCdg@mail.gmail.com>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 13, 2023 at 8:11=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Oct 13, 2023 at 07:02:28AM +0800, Chen-Yu Tsai wrote:
> > Add entries for MT8186 based Tentacruel / Tentacool Chromebooks. The tw=
o
> > are based on the same board design: the former is a convertible device
> > with a touchscreen, stylus, and some extra buttons; the latter is a
> > clamshell device and lacks these additional features.
> >
> > The two devices both have two variants. The difference is a second
> > source touchpad controller that shares the same address as the original=
,
> > but is incompatible.
>
> > The extra SKU IDs for the Tentacruel devices map to different sensor
> > components attached to the Embedded Controller. These are not visible
> > to the main processor.
>
> Wha? Given your ordering, is a "google,tentacruel-sku262144" a super-set
> of "google,tentacruel-sku262145"? If not, this compatible ordering
> doesn't make sense. I can't tell from your description, and the
> absence of a
> items:
>           - const: google,tentacruel-sku262145
>           - const: google,tentacruel-sku262146
>           - const: google,tentacruel-sku262147
>           - const: google,tentacruel
>           - const: mediatek,mt8186
> suggests that there is no google,tentacruel-sku262145
> device?

AFAIK all four SKUs exist. And as far as the main processor is concerned,
they look completely identical, so they should share the same device tree.
As mentioned in the commit message, the differences are only visible to
the embedded controller, which fuses the sensor inputs.

Writing it this way avoids having four identical device tree files.

We also do this for many other device families, though those cover
different revisions, such as:

      - description: Google Hana (Lenovo Chromebook N23 Yoga, C330, 300e,..=
.)
        items:
          - const: google,hana-rev6
          - const: google,hana-rev5
          - const: google,hana-rev4
          - const: google,hana-rev3
          - const: google,hana
          - const: mediatek,mt8173


ChenYu

> Cheers,
> Conor.
>
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  .../devicetree/bindings/arm/mediatek.yaml     | 26 +++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docu=
mentation/devicetree/bindings/arm/mediatek.yaml
> > index 60337b439744..aa7e6734b336 100644
> > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > @@ -206,6 +206,32 @@ properties:
> >            - enum:
> >                - mediatek,mt8183-pumpkin
> >            - const: mediatek,mt8183
> > +      - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM14=
02F)
> > +        items:
> > +          - const: google,tentacruel-sku262144
> > +          - const: google,tentacruel-sku262145
> > +          - const: google,tentacruel-sku262146
> > +          - const: google,tentacruel-sku262147
> > +          - const: google,tentacruel
> > +          - const: mediatek,mt8186
> > +      - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM14=
02F)
> > +        items:
> > +          - const: google,tentacruel-sku262148
> > +          - const: google,tentacruel-sku262149
> > +          - const: google,tentacruel-sku262150
> > +          - const: google,tentacruel-sku262151
> > +          - const: google,tentacruel
> > +          - const: mediatek,mt8186
> > +      - description: Google Tentacool (ASUS Chromebook CM14 CM1402C)
> > +        items:
> > +          - const: google,tentacruel-sku327681
> > +          - const: google,tentacruel
> > +          - const: mediatek,mt8186
> > +      - description: Google Tentacool (ASUS Chromebook CM14 CM1402C)
> > +        items:
> > +          - const: google,tentacruel-sku327683
> > +          - const: google,tentacruel
> > +          - const: mediatek,mt8186
> >        - items:
> >            - enum:
> >                - mediatek,mt8186-evb
> > --
> > 2.42.0.655.g421f12c284-goog
> >

