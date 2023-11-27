Return-Path: <devicetree+bounces-19034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7081F7F9776
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A07311C20753
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5659A111A;
	Mon, 27 Nov 2023 02:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lvOihoDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF19111
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 18:23:15 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507e85ebf50so5045856e87.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 18:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701051793; x=1701656593; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NSfUfP4XMvfz52jafZIehWTyVLB2dDTGY7kE9uvmNFU=;
        b=lvOihoDW4lY6vqpx6yHq3pQ5KwszwjW1Kovs6sOmLW/hfz/EkDT/O/75b4KzpdGNLr
         arST+53WS51vCjpSOwnInF9G5EOg6WkXLSYFlqY4twlMkp4br+9lGGn/r03op2qzurGr
         +g5IyrARJfSOCQJLyL7PYtKSx0KhEX0xYg6PI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701051793; x=1701656593;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NSfUfP4XMvfz52jafZIehWTyVLB2dDTGY7kE9uvmNFU=;
        b=iMul7rvpM2SgATj+B6r8ANnR10LJe4Eh+k8/U31sZ3VmmhxVS4iGi7PFIDjwiaQa+B
         k/1T23/fLp21DICloJxxIbKSAWe56goL7ebTysmYHmg900TYt4YyXpv2N6x2puqWeDf/
         lWne4t1vc98pJB7Ve9TR0Mq7qdESREf4y3tn/RBdX0PyiTnp4xAQKAMSNI6ZOc97n+Tq
         irUJBkOlgDQoXcbfbUWQWHtbYx8bS0JN/1lFcpBpQT/0ZLyY/fFf6F/4jxTOYnlVgsbN
         dXkuPsl2NBMOv4Q61VrzhKBiua7cijj+Ns0Mm4KAk330Qmvs0sEQsFUdRjFKPecOAixz
         zX+Q==
X-Gm-Message-State: AOJu0YxX2mS+0pH2hezqEp6C+bqZsainfpytrfOZaKH21bbIiEXFHw/o
	CYRXTz4FhlH3Ld9by1YGduuVE94O4kx/HWbtpXlL2g==
X-Google-Smtp-Source: AGHT+IHBN8N/+MmMOgool09rAcTcq2woF4lPrPkErpOndnaGQ8U2/8WOta2kePf5kfxSK+34TvzCKH3CIswlBBRauYc=
X-Received: by 2002:a05:6512:3b87:b0:508:264e:2ded with SMTP id
 g7-20020a0565123b8700b00508264e2dedmr8780303lfv.38.1701051793170; Sun, 26 Nov
 2023 18:23:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012230237.2676469-1-wenst@chromium.org> <20231012230237.2676469-3-wenst@chromium.org>
 <20231124-old-each-230d55963934@spud>
In-Reply-To: <20231124-old-each-230d55963934@spud>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Nov 2023 10:23:02 +0800
Message-ID: <CAGXv+5HQkTUVXVDsHjy-T+iDU3Lr-K1sPeMA5EnzvHJxg8fkYg@mail.gmail.com>
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

On Fri, Nov 24, 2023 at 10:09=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
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
> >
> > The extra SKU IDs for the Tentacruel devices map to different sensor
> > components attached to the Embedded Controller. These are not visible
> > to the main processor.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>
> I had a chat with Doug at Plumbers about the limitations of your
> firmware. As a result, I am fine with acking this if you switch the
> order of the sku compatibles to be in descending order.

Thank you for taking the effort to understand our weird firmware
implementation. And a thank you to Doug for discussing this. I'll
send out the next version shortly.

> The firmware can handle that, right?

Yes. The firmware basically takes a list of machine compatibles, and
runs them against all the DTs it has with of_machine_is_compatible().

Thanks
ChenYu

>
> Cheers,
> Conor.
>
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

