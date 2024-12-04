Return-Path: <devicetree+bounces-126771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDA39E317C
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 03:39:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 954ADB2485A
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 02:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7223142052;
	Wed,  4 Dec 2024 02:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IoInubMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A987E4A1A
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733279935; cv=none; b=UdUfC416FLgtnSfqaNQ5AcTO5TN11Wgh5PqsXpBLoAa5MP8N23LLDx220aEoHI9/w6qFGca25TeJ8BZ47GRomC5klPNHHFE4iVagfKR0bisfCqbtmWqYja9GNreZTva9VTZ05hjkc2t73DkUuPQJYx71EuGZPkcWgR/zd9XuGls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733279935; c=relaxed/simple;
	bh=T1FMb456onK7tNgpsqAO0c9tdE6wfx49yPNJIRqPNhY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wt7SR69jwDwVKd5bnqDlkBZZ32j32ePOynHshObBzZkcIAdg8GZtAB/f3bLmtGyHN3Dw21YQTans1e2ZIrHYByY45HX/uuAj+cEsB0pxcb0AaEMVm6AL97brCNXHSQICFYxJL06pg3bUyhFHhBCesW2NBpEPasivQVZ5rjLmHy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IoInubMZ; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53df63230d0so7606344e87.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 18:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733279932; x=1733884732; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78THJIZs/MA15yj+ru7yg//2Ko53Pnaq+srDYQqZaEg=;
        b=IoInubMZRzJ4VZK1pCoDN+j2mfSBGtZEfukOLoNItH0AjuPEyhJ7VTtkvbNdSawHQ3
         EX69p049GMzbaW5QYZu64xR3tmgi3RNbuMMhxTiIN2mPorGePtBjHWU3jsUWmKTL5G0U
         oiy7kaaUJNoNzy7XoXONGcW+66w6STO9uMUXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733279932; x=1733884732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78THJIZs/MA15yj+ru7yg//2Ko53Pnaq+srDYQqZaEg=;
        b=fwj1KP874mDlh3pEIEVB2Ikl5qh39AU9Al+RhZ0i9WlIOEjK/0d/dDYQ7NtAZMNC1D
         ySgVe2lXD2X5OFcMZ/P0Or1n+xob5VBvNRrUMXArCRa95Hg9nF4Eipm5Y187ekikIFpH
         qZj00B45I2ZHuRUPa6NOtRL2YgyQIOFaOF8UpcaqTLfA2n/sA3EWAhdaUVNEhHhzKZpx
         qdK+dokIOIe4OhGPCKM47QefbpdUfP2aNYEFw8UQfDB5sBaM/jhIffWW7V5saYGvUIWF
         6Aq27QVidCY07GN9g+LvZf4C/d/zEPo+Yh/Yl39XWSv70NnLWu7lxFFWGjt4duhGxBrP
         j/Lw==
X-Forwarded-Encrypted: i=1; AJvYcCXiGUS7D0UB23u/WSE8e2nK53eW8hQ2Iotid/ZbdJCCoeW2FTGD3uq25gM/9sVwxa0hg7R4kIvDN04e@vger.kernel.org
X-Gm-Message-State: AOJu0YzzWnVfLCzKvL2Kdo8LRDPR0Jo7UIM0r/y5tTe8CFlhJ2hON6Hh
	7wTybC+rK8V9MUARDu/FjwFZXCMk73kizXSVJytblmcZwI6v6HUX2MxZWId7YfZPRvX5kwYZ31H
	hpbrGlHy1iFFas2qIarSNEmA/s3xB846JGGxh
X-Gm-Gg: ASbGncuxGoCxxU7oGa/Y6R30Gl5UMJbnX09TeuusbmMC6Lv7UUq6hn9+v0BKQB41i41
	ejYmiq9Xp36lfET7Hdm2bzcXf5zQcLupIfjv67YORDQEaBoLaXLYNe1PvJYc=
X-Google-Smtp-Source: AGHT+IHuw72icjrfxzdu36itc3o804934USQfay4OuNOvOLlQt8ZUuZrboi9UituymewJ75cgmh/8dMhPio3+m/+Hac=
X-Received: by 2002:a05:6512:b19:b0:53d:eec6:4622 with SMTP id
 2adb3069b0e04-53e12a3523fmr2296114e87.48.1733279931341; Tue, 03 Dec 2024
 18:38:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202045757.39244-1-wenst@chromium.org> <20241203172026.GA1988559-robh@kernel.org>
In-Reply-To: <20241203172026.GA1988559-robh@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 4 Dec 2024 10:38:40 +0800
Message-ID: <CAGXv+5GPacXtcrxJVHUGuRWOSY+k5tn4kvwgu_nkjdQ6=srayQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: soc: fsl: cpm_qe: Limit matching to nodes
 with "fsl,qe"
To: Rob Herring <robh@kernel.org>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Frank Li <Frank.Li@nxp.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 4, 2024 at 1:20=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 02, 2024 at 12:57:55PM +0800, Chen-Yu Tsai wrote:
> > Otherwise the binding matches against random nodes with "simple-bus"
> > giving out all kinds of invalid warnings:
> >
> >     $ make CHECK_DTBS=3Dy mediatek/mt8188-evb.dtb
> >       SYNC    include/config/auto.conf.cmd
> >       UPD     include/config/kernel.release
> >       SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >       DTC [C] arch/arm64/boot/dts/mediatek/mt8188-evb.dtb
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: compatible:0: 'fs=
l,qe' was expected
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: compatible: ['sim=
ple-bus'] is too short
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-control=
ler@c000000:compatible:0: 'fsl,qe-ic' was expected
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-control=
ler@c000000:reg: [[0, 201326592, 0, 262144], [0, 201588736, 0, 2097152]] is=
 too long
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-control=
ler@c000000:#interrupt-cells:0:0: 1 was expected
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: interrupt-control=
ler@c000000: '#redistributor-regions', 'ppi-partitions' do not match any of=
 the regexes: 'pinctrl-[0-9]+'
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: 'reg' is a requir=
ed property
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >     arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: soc: 'bus-frequency' i=
s a required property
> >           from schema $id: http://devicetree.org/schemas/soc/fsl/cpm_qe=
/fsl,qe.yaml#
> >
> > Fixes: ecbfc6ff94a2 ("dt-bindings: soc: fsl: cpm_qe: convert to yaml fo=
rmat")
> > Cc: Frank Li <Frank.Li@nxp.com>
> > Cc: <stable@vger.kernel.org> # v6.11+
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  .../devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml        | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.ya=
ml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml
> > index 89cdf5e1d0a8..9e07a2c4d05b 100644
> > --- a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml
> > +++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe.yaml
> > @@ -21,6 +21,14 @@ description: |
> >    The description below applies to the qe of MPC8360 and
> >    more nodes and properties would be extended in the future.
> >
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: fsl,qe
> > +  required:
> > +    - compatible
>
> Update your dtschema. The select is no longer necessary. dtbs_check will
> also run 5x faster.

That did the trick. Thanks Rob!

And sorry for the noise.


ChenYu

