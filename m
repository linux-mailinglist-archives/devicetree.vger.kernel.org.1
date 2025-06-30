Return-Path: <devicetree+bounces-190906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C52AED2E5
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 05:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D37097A83FC
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 03:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE82154BF5;
	Mon, 30 Jun 2025 03:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K+9/Xx58"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF0029CE6
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 03:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751253914; cv=none; b=QCTcVVh2lIyUaDJRnwHJoTJ8QplERa7smE+Cu6U4vap4HQaj+GSsa1Ed33+1jnwIJdnA8Tzl+XDoS7nAzLuY0suoVZbr1XElXwVhBk8xK/fxd4Jb+rfkHtQoEQExRztZnAGMQLCTRHEaNMNIfVbF+5f47SqaHxgQeK+UJR/cdUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751253914; c=relaxed/simple;
	bh=HqxsES9BjFxb1DzfPVlIXMOHtqBQW4SMuesB6hb3kh8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ql79OEMn43A07ATnfUk7OFrRdlu82HrUqbgpxiwsq1iWxbYmCbSqA6p6R+XLUmLkvJr352XJw5XDj/BnHRJxRmahFwJtcnzKOfNv1HxldOq9gI9wRL4XAxKC7qaCWpB7Gtt5vvJbkLM8/z3NzASgoAxsJ28ZeONRTT4MDmkCVBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=K+9/Xx58; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-553cf020383so4411026e87.2
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 20:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751253911; x=1751858711; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Arx/vh/1p7726lfU61ekP8LCF9/XaIuNl/Y+OL2yoTY=;
        b=K+9/Xx58RnS3aCXRivTcl5I3kJhfRFnXSKxxHVOJELVz7f52aTb7YrSzHkg33zujZL
         EPp3dZjxhMBOB+52IItIf4KAhCJVw008U8Ld/G0hhUT/Pk3juNHcPJz+irtHId3Q8HLW
         j5BJfrHPIMlc7eIs+3KkSOabnnr350F2tLzc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751253911; x=1751858711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Arx/vh/1p7726lfU61ekP8LCF9/XaIuNl/Y+OL2yoTY=;
        b=u6xf58PfPeayLMj9bz+5NhkKuIrg30+duVHS4cmIxaIFkvnX7WXsKAljCootlHLjOg
         2BBBwc7e8UilaiZPXoX0ndr+lrPS1Bnis0KREYVueMlqTV5vLZNKBfExJhZ6XJM7khFt
         a5njcobx2NdtHOxCp6BoOVL/PTkgBBMjqbvkiqRapm+cb7g9o3op8v1/Fly7lNWpfXPK
         1+b2hZtRqNf5iWDpge6T3VX6X/Rd5XjLRzR38z2av4m1L02TPlStJfVQ+QZGee8bshVE
         rCkCI8iD1uOflRvCkHRpheRMiOf5k3i9P407rBbWVPEa6+LpXMYQrNs315sX6Ywtw6xy
         WFVA==
X-Forwarded-Encrypted: i=1; AJvYcCVj8MrGuls0dVD44rSB9Nnv+bVpA4G8TkIrmOgRWVRDFGj1mZqAOnF2wVig+chWB4Au6OG86KbOR+UN@vger.kernel.org
X-Gm-Message-State: AOJu0YzlDzGHZ2lmpOXSeKq06ZGFUV5bNcXuW0Uh5u1mEz87NrCjwrxe
	YzsJt/7yHVnfCprgUPrLEyw5sbXAkXthaA7uPDYjRXa9NPUT+XKMo6h5kALiBzY6k1Dz0uK1Sjd
	FAc+swjMamqtAlrpPgdKMhwhUN15FDKeaYmHToEGA
X-Gm-Gg: ASbGncvOLyzl40HAiZg568VnT0d3nTwEB1vCzXVYXdWny8U/r/E0uNGBTjKp4i9YpJ8
	2pjwW1vRtlwVz4ozo/woNYfREAt3X8jkVVps/bvHAjP/uKALYG8Tqj+xbHxRM2hxcfLp0t0d7fh
	HfTU7gxKKcV/Sn5bIp6iY1x4rjAcJ/ZmnXub/BYYfIdcY0wn/mnr293jFOCZzD3NlbmX3458no4
	8pynEU=
X-Google-Smtp-Source: AGHT+IG9cnl6ModTYi6p2CiPzEyX+jlxQEfwAMhFMxkNl7fS/RoRC0YYR5H1zSIeP2ag3GvJxVUZnK/m4syzOJSkQKo=
X-Received: by 2002:a05:6512:3041:b0:553:addb:ef51 with SMTP id
 2adb3069b0e04-5550b886294mr3126600e87.18.1751253911120; Sun, 29 Jun 2025
 20:25:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624073548.29732-1-angelogioacchino.delregno@collabora.com>
 <20250624073548.29732-4-angelogioacchino.delregno@collabora.com> <20250627-neon-hidden-sheep-ed8dae@krzk-bin>
In-Reply-To: <20250627-neon-hidden-sheep-ed8dae@krzk-bin>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 30 Jun 2025 11:25:00 +0800
X-Gm-Features: Ac12FXzEzclUPx2ytH0n81YEF7rV0XFgxUmmA57Z4fo3T5oQBKH_wjXRPSro-S0
Message-ID: <CAGXv+5GLJ7cfAQW_kbTqqe_QO+RfU7KL57n77qenpDiRS5BybA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: regulator: Document MediaTek MT6363
 PMIC Regulators
To: Krzysztof Kozlowski <krzk@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 27, 2025 at 4:24=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Jun 24, 2025 at 09:35:45AM +0200, AngeloGioacchino Del Regno wrot=
e:
> > Add bindings for the regulators found in the MediaTek MT6363 PMIC,
> > usually found in board designs using the MT6991 Dimensity 9400 and
> > on MT8196 Kompanio SoC for Chromebooks, along with the MT6316 and
> > MT6373 PMICs.
> >
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@co=
llabora.com>
> > ---
> >  .../regulator/mediatek,mt6363-regulator.yaml  | 123 ++++++++++++++++++
> >  1 file changed, 123 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/regulator/mediate=
k,mt6363-regulator.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt636=
3-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6=
363-regulator.yaml
> > new file mode 100644
> > index 000000000000..f866c89c56f7
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6363-regul=
ator.yaml
> > @@ -0,0 +1,123 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/mediatek,mt6363-regulator=
.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek MT6363 PMIC Regulators
> > +
> > +maintainers:
> > +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.co=
m>
> > +
> > +description:
> > +  The MT6363 SPMI PMIC provides 10 BUCK and 26 LDO (Low Dropout) regul=
ators
> > +  and can optionally provide overcurrent warnings with one ocp interru=
pt
> > +  for each voltage regulator.
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt6363-regulator
> > +
> > +  interrupts:
> > +    description: Overcurrent warning interrupts
>
> Are you sure interrupts are physically not connected?

Side note:

I wonder if we really need to describe _all_ the interrupts here.

Looking at the PMIC as a whole, the interrupt tree is something like

SoC <- SPMI inband IRQ - PMIC top level IRQ block <- sub-function IRQ block=
s:

    - BUCK (buck regulator over current)
    - LDO (LDO regulator over current)
    - PSC (key press / system low voltage)
    - MISC (protected registers accessed / SPMI stuff)

And some other blocks that may apply to other MediaTek PMICs:

    - HK (some threshold triggered interrupt)
    - BM (battery management related)

The thing I'm trying to get to is that all these interrupt vectors are
internal to the whole PMIC. Do we really need to spell them out in the
device tree? The top level compatible should already imply how all the
internals are wired up.


ChenYu

> > +    minItems: 1
> > +    maxItems: 36
> > +
> > +  interrupt-names:
> > +    description:
> > +      Names for the overcurrent interrupts are the same as the name
> > +      of a regulator (hence the same as each regulator's node name).
> > +      For example, the interrupt name for regulator vs2 will be "vs2".
>
> You need to define the items or pattern if this is really flexible in
> the hardware (not drivers).
>
> Best regards,
> Krzysztof
>
>

