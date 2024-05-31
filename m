Return-Path: <devicetree+bounces-71088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3808D5B6D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 09:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F33B1C20EA7
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 07:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40E3481204;
	Fri, 31 May 2024 07:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="agBtS9VZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA802B9AB
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 07:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717140561; cv=none; b=p1a+8eyBMbnY93R+mgvf5GQY5VUmXvfGA63JbEH7jP7GHSytF0n2r2m8RfpLBdQi0pi57/prmBLWhWmPgVcu4gfvsXdC+gPyHN/5LgSm5XeTgzbZa1XwZt5Dse4jM2p9EZY9K9dSiehJuwpgAhwqdSaBDurKjQ9HT0TJYTf//SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717140561; c=relaxed/simple;
	bh=RKPl0Z5QXSn3cjvj+NKgRkVBwe1KyjTiEqUJC6ruUJE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AiZ+LF3h/ft+wMEhAD6gDxmG8pj39iVRcsz9foUJxs1yewIVWvH7Bb+AmvKPkrB3+RGGMR0HyjcQiQ7dWjh1gpQnSLrs9DFuvfZrQWnqX1olcaIH7EJj4ojxVeoIfNngHV2DAAmx7AUGQV1RjYj4zzofcPMaEEWoI8IVEQW9q8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=agBtS9VZ; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52aea6067c8so2027160e87.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 00:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717140558; x=1717745358; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7AuBpLgSZMEBo2XzwoYxF5FL6n7LRJe6EeX7UzHv+C4=;
        b=agBtS9VZLgrA7VA4No4n9TtppxVwTx4f+uXqo9aLKRs+atugY5CnqA6R3JYwbE7S5f
         jjbxAy8VGAeqg+BgF0o/UV9Nr9iETmOmQWDEHd7giQ3HIqkGmaOHyTGUtsaNRza3aBzW
         aR3OhC5feADxFLy0b0vQ6NFHKHxVm2mV8c0qE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717140558; x=1717745358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7AuBpLgSZMEBo2XzwoYxF5FL6n7LRJe6EeX7UzHv+C4=;
        b=Q+tU3Lj5XRQ5ne4i6Knv9hHFA5NwZGYnlhjMJDXHJp9O8LkdTFdk+H0bpvQB8NjdnS
         +uVjHX1vsvYrad9oOsgbCKlRsJELlc0zQ58GsGrbBDUMRSZstfEyxmvdl6pKi0rTPXij
         MtAWod/nQooK0pBUMFA6F7r0ajWFEarwnXeJBXLUfFbyl62wVFCtkjnwskYQT5G7vZjX
         hQXZcOoL2wZsU1Q9zhhvCTWor5Dfo4C/hN6ksmhWK048WQcm8iHEDVUFiydVHl7eqTh3
         mJSg8N4Vj2/tDZfcRrXEx9iY2Sjv8p+rwCktiRsalfypntnWGHmNtHkGq277k64T4ech
         mpbg==
X-Forwarded-Encrypted: i=1; AJvYcCWAb1hPQ1HXhymPIBAeu6Y8b6hAl0F8mfwamqT0CLCi9Ic8c4OJyycr+De52gjwvF9SPyTrqbA/GusbFEMmzxT/UaNQHhySwGM6pg==
X-Gm-Message-State: AOJu0YyPTp62zFjjQN482vO+MV6K1Nu/OFnTkJzmdDgTfG4JjPI/2un5
	MMGKOqFnY/092oehKvf9bhLVhMYWGedP0AKoH8AalfH/LEIXoRr8vU36ZrwrRB4Dh22c+gAg3UR
	FtL7LbxV9D5Oj5OUrmyXOdjOV94vO2YJePi9O
X-Google-Smtp-Source: AGHT+IHG9cIqzvXzXFVSJ3u+mefhmJEYsDfRGLlyDYP+0F7chk9Cih1xUPNaF4GQKusTGlZd76NQwOCqr1Bnfxqn4zw=
X-Received: by 2002:a05:6512:2029:b0:52b:8455:a9df with SMTP id
 2adb3069b0e04-52b896b8210mr483694e87.34.1717140557358; Fri, 31 May 2024
 00:29:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530083513.4135052-1-wenst@chromium.org> <20240530083513.4135052-2-wenst@chromium.org>
 <20240530-revisit-profanity-889f1bcae21a@spud>
In-Reply-To: <20240530-revisit-profanity-889f1bcae21a@spud>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 31 May 2024 15:29:06 +0800
Message-ID: <CAGXv+5F=AEE7t=YQ0hNGtV9rbVBm75D=ftJdZKwD_JmUW9gQWQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: clock: mediatek: Add mt8173 mfgtop
To: Conor Dooley <conor@kernel.org>
Cc: Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2024 at 11:43=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Thu, May 30, 2024 at 04:35:00PM +0800, Chen-Yu Tsai wrote:
> > The MFG (GPU) block on the MT8173 has a small glue layer, named MFG_TOP
> > in the datasheet, that contains clock gates, some power sequence signal
> > delays, and other unknown registers that get toggled when the GPU is
> > powered on.
> >
> > The clock gates are exposed as clocks provided by a clock controller,
> > while the power sequencing bits are exposed as one singular power domai=
n.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  .../clock/mediatek,mt8173-mfgtop.yaml         | 71 +++++++++++++++++++
> >  include/dt-bindings/clock/mt8173-clk.h        |  7 ++
> >  2 files changed, 78 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt=
8173-mfgtop.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt8173-mf=
gtop.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt8173-mfgtop.=
yaml
> > new file mode 100644
> > index 000000000000..03c3c1f8cf75
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt8173-mfgtop.ya=
ml
> > @@ -0,0 +1,71 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +
> > +$id: http://devicetree.org/schemas/clock/mediatek,mt8173-mfgtop.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek MT8173 MFG TOP controller
> > +
> > +maintainers:
> > +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.co=
m>
> > +
> > +description:
> > +  The MFG TOP glue layer controls various signals going to the MFG (GP=
U)
> > +  block on the MT8173.
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt8173-mfgtop
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 4
>
> minItems is not needed when minItems =3D=3D maxItems.

Ack.

> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    items:
> > +      - const: sys
> > +      - const: mem
> > +      - const: core
> > +      - const: clk26m
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  '#power-domain-cells':
> > +    const: 0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +  - '#clock-cells'
> > +  - '#power-domain-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +        #include <dt-bindings/clock/mt8173-clk.h>
> > +        #include <dt-bindings/power/mt8173-power.h>
> > +
> > +        mfgtop: clock-controller@13fff000 {
>
> The label here is used, so drop it.

Assume you mean _not_ used. Dropping. :D

> Otherwise,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks!

