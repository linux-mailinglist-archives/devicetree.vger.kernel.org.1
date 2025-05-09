Return-Path: <devicetree+bounces-175776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41001AB1C34
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 20:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9457B504C57
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 18:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80D8F23D2B3;
	Fri,  9 May 2025 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="DUbREEMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C870723BF9B
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 18:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746814953; cv=none; b=rtCETKzNaxeKVVl5XVwixNguivGTywkN6i8Ds/mKJosaQS7la2Yff0d2cErGLZ+7eYxvEGuK3lVjIRv5jO78XlaoB34fdjU2H9oI13L5Bg1xA9g6yOWhmMJfrsCBMyhHUKdR258V3rkvVvRxXvxRmGg1FId+IeCGbmmiAdrhngs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746814953; c=relaxed/simple;
	bh=o0HnRWUOJEFTR1JyaXMLNHbxjezz3ONJkGCb3fLH4P8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LprRCT/IOxI+ZHmLhfvT/6l4FWsdxv9CZIxVXbcgobBMjknNG31kR4P9L/yD0TezIS/Bcbc8quXGwipzK5psOfZoyvFmt3sw2VALFN0AzzfXro5hXcrDq71LHwm1oQrXpP0vhE3y6QUUcjZeRxVH9NrgwGKw3dfZNIZ/BAzYQQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=DUbREEMa; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-708b9b5299eso21899327b3.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 11:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1746814950; x=1747419750; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FVdGvQl7I4jzamIx+mGrMWIjkTZGB9PGkkLFZVwWjA4=;
        b=DUbREEMa3wfHXDpC7zNCTqZx36YMwTKUzPkrH8D+zsq3kt6DHv8Zr0lSrU48pUBmfF
         xGghqSITeAzkPrr8x88+wHwHzKMwGE/zKdI/prG4SpYUQu1H65d7aNhLqpPuA5u6sysG
         xWH22xWYS8JFUo5txc8sgUgwAzn+QThv1Er5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746814950; x=1747419750;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FVdGvQl7I4jzamIx+mGrMWIjkTZGB9PGkkLFZVwWjA4=;
        b=j2r+I1MCb2O/iK3Wbbpvy986385m0DDngkjT/VL8bQp7N53QMxMgztFzuHqZMdvj0z
         MrLZLfnmR9IRWfSw89ipxd7xTxQkMxjsmRzvdlTFBPAitFQjsZUyUB0rus1BJlHMU/Hg
         PXw9gShZdi+qthkSDVzItnvovmVVGlHvEKJpyuFn0u8eanxxlr/S+G4e+2xxDkNXgz8e
         xyfjU06E0pCuEo5S8sZ8aktgXiQP8OebQ/Q2hOOJHLQUf2e8gxrerR/+VZTsUF/nLW4M
         BGmCgeJgaXtozIbai2TgZuLOIAcNPPXgiQsof643DvOPpqfLIk9RcDQDGBnstt8oboKj
         hPvg==
X-Forwarded-Encrypted: i=1; AJvYcCWzVqjg4MuJr5tgzqJ+K9a74hT5XNLt/zdqW8JIFXp9PKMyDJtEjudG4LX7KBw3VdV/5mH84YQrlGim@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe2WwYIGMhozQlfX7a5gJ93ZXBEQDNzsly2UeapKNpkHl7zGVH
	Cx71uG0w0lFkyuv+Xw3jJAjO7kKWlHAHn8/V/04OrfGbtURoyzaMRPYTQZofI/xOKuZ6IQCeblE
	ermPdA2TmH5vpCHZV8sW3zsIHyMd0qWcEYWcybg==
X-Gm-Gg: ASbGnctsU4NUsqS26/Qu5O0PrWGUysKeGg8tkxIQpsWleS5zn8je7YixT4UvHBoE958
	M06mUcmQYL/j2k4Kog2GDHb8VOj61RZq61o4vHgDyLNItcLhvn1YCbekx3uAVzZZ1+vrr2ZMaR6
	gngKJ2EV3wm8Dp3Ngzys2p3j/Cw3iT
X-Google-Smtp-Source: AGHT+IFhuGu6cPIv6shqVcKb5yMcaEsKd2xMo/nKwn74VQkFfSO8SSLUGFFj0iY8SWc7yPYKJguYvy3CEdCdcbkRiBw=
X-Received: by 2002:a05:690c:7007:b0:708:ab81:ec26 with SMTP id
 00721157ae682-70a3fb75af8mr60732477b3.33.1746814949659; Fri, 09 May 2025
 11:22:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
 <20250424062154.2999219-17-dario.binacchi@amarulasolutions.com> <20250509162546.GA3704130-robh@kernel.org>
In-Reply-To: <20250509162546.GA3704130-robh@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Fri, 9 May 2025 20:22:18 +0200
X-Gm-Features: AX0GCFudXK-0LsSuEXf0ommGdIrbGEzxESxhBMaUX-8mIu528WIhNrRmopexvqM
Message-ID: <CABGWkvq4a73hvCWG-P_+arc3R-pnr5NVfcGPDTGEoW1doPt2qg@mail.gmail.com>
Subject: Re: [PATCH v12 16/19] dt-bindings: clock: imx8m-clock: add PLLs
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>, 
	Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	linux-amarula@amarulasolutions.com, Abel Vesa <abelvesa@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 9, 2025 at 6:25=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Apr 24, 2025 at 08:21:46AM +0200, Dario Binacchi wrote:
> > Though adding the PLLs to clocks and clock-names properties will break
> > the ABI, it is required to accurately describe the hardware. Indeed,
> > the Clock Control Module (CCM) receives clocks from the PLLs and
> > oscillators and generates clocks for on-chip peripherals.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> > ---
> >
> > (no changes since v11)
> >
> > Changes in v11:
> > - Fix conflict while rebasing on master
> >
> > Changes in v7:
> > - Add 'Reviewed-by' tag of Krzysztof Kozlowski
> >
> > Changes in v6:
> > - New
> >
> >  .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
> >  1 file changed, 21 insertions(+), 6 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b=
/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
> > index 4fec55832702..e83f08abd44c 100644
> > --- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
> > +++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
> > @@ -29,12 +29,12 @@ properties:
> >      maxItems: 2
> >
> >    clocks:
> > -    minItems: 6
> > -    maxItems: 7
> > +    minItems: 7
>
> Increasing the minimum entries looks like an ABI break to me. The .dts
> files not being in linux-next confirms that (from 0 warnings in
> mainline):
>
> arch/arm64/boot/dts/freescale:859:50
>     122  clock-controller@30380000 (fsl,imx8mm-ccm): clock-names: ['osc_3=
2k', 'osc_24m', 'clk_ext1', 'clk_ext2', 'clk_ext3', 'clk_ext4'] is too shor=
t
>     120  clock-controller@30380000 (fsl,imx8mp-ccm): clock-names: ['osc_3=
2k', 'osc_24m', 'clk_ext1', 'clk_ext2', 'clk_ext3', 'clk_ext4'] is too shor=
t
>      61  clock-controller@30360000 (fsl,imx8mm-anatop): 'clocks' is a req=
uired property
>      61  clock-controller@30360000 (fsl,imx8mm-anatop): 'clock-names' is =
a required property
>      60  clock-controller@30360000 (fsl,imx8mp-anatop): 'clocks' is a req=
uired property
>      60  clock-controller@30360000 (fsl,imx8mp-anatop): 'clock-names' is =
a required property
>      36  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[35], [36],=
 [37], [38], [39], [40]] is too short
>      36  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[24], [25],=
 [26], [27], [28], [29]] is too short
>      32  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[34], [35],=
 [36], [37], [38], [39]] is too short
>      28  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[22], [23],=
 [24], [25], [26], [27]] is too short
>      26  clock-controller@30380000 (fsl,imx8mn-ccm): clock-names: ['osc_3=
2k', 'osc_24m', 'clk_ext1', 'clk_ext2', 'clk_ext3', 'clk_ext4'] is too shor=
t
>      17  clock-controller@30360000 (fsl,imx8mq-anatop): 'clocks' is a req=
uired property
>      17  clock-controller@30360000 (fsl,imx8mq-anatop): 'clock-names' is =
a required property
>      14  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[44], [45],=
 [46], [47], [48], [49]] is too short
>      14  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[23], [24],=
 [25], [26], [27], [28]] is too short
>      13  clock-controller@30360000 (fsl,imx8mn-anatop): 'clocks' is a req=
uired property
>      13  clock-controller@30360000 (fsl,imx8mn-anatop): 'clock-names' is =
a required property
>      12  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[26], [27],=
 [28], [29], [30], [31]] is too short
>      10  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[38], [39],=
 [40], [41], [42], [43]] is too short
>       8  clock-controller@30380000 (fsl,imx8mn-ccm): clocks: [[22], [23],=
 [24], [25], [26], [27]] is too short
>       8  clock-controller@30380000 (fsl,imx8mn-ccm): clocks: [[20], [21],=
 [22], [23], [24], [25]] is too short
>       8  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[34], [35],=
 [36], [37], [38], [39]] is too short
>       8  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[28], [29],=
 [30], [31], [32], [33]] is too short
>       8  bcrmf@1 (brcm,bcm4329-fmac): $nodename:0: 'bcrmf@1' does not mat=
ch '^wifi(@.*)?$'
>       6  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[41], [42],=
 [43], [44], [45], [46]] is too short
>       6  clock-controller@30380000 (fsl,imx8mn-ccm): clocks: [[24], [25],=
 [26], [27], [28], [29]] is too short
>       4  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[43], [44],=
 [45], [46], [47], [48]] is too short
>       4  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[40], [41],=
 [42], [43], [44], [45]] is too short
>       4  clock-controller@30380000 (fsl,imx8mp-ccm): clocks: [[36], [37],=
 [38], [39], [40], [41]] is too short
>       4  clock-controller@30380000 (fsl,imx8mm-ccm): clocks: [[35], [36],=
 [37], [38], [39], [40]] is too short
>
> Please fix the binding or drop what's been applied so far.

Abel and Shawn are already aware of the issue:

https://lore.kernel.org/all/CABGWkvqfyH=3Ddcuw6EDZaFVVebj8SZhJF0P944+mmzL5Y=
K3-Pug@mail.gmail.com/

Thanks and regards,
Dario

>
> Rob
>


--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

