Return-Path: <devicetree+bounces-11971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFC57D7464
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A49AB20F32
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8767031A71;
	Wed, 25 Oct 2023 19:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nsoZwlXx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C2C30FBF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:33:30 +0000 (UTC)
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 642B513A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:33:29 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6ce2add34c9so68282a34.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698262408; x=1698867208; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WMeG9MZNqxS33OpWNusWQZ07NUKZ/4HRV8It71VS7r0=;
        b=nsoZwlXx4Z+8a3tRJA34cK54S3BaRF4JVVRm7rgCmIELCSD/Q+vtze/iRbIu7bJ6qr
         cmATAzRWZPYPvA4z9pz5lHWh6N0/8kk1KOwBxQKnuGMplgBNrOh0HQQCfvXXydOCZILf
         8c+uZHhaSm17ISv6SAL2jwDaIIGadUq95uaac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698262408; x=1698867208;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WMeG9MZNqxS33OpWNusWQZ07NUKZ/4HRV8It71VS7r0=;
        b=u4n68EfK/adS8jCWeABt1VVqVAWpayG0UigHVw5sYzMXlh2TV/FQsncXt/5a07JAlb
         SiXVRkzSr7LA6c8coFoy2TPyy703Bn6sDwCPUyYvtu0ZugKGCwDrcPc0TtvB26YA+1ap
         MKvNgaEAH5tkxtAz4ybgxjcQJQBRCb74VmPX2llWpPWHYweiCIyIP8V3Dxomvk+qfV4g
         4f6TKi+8CvQg4Mtq1Unm9uclsDcwlqYz4kb0kmYTkxzUWpfLrm3a/u181dSfK4h4RupT
         DPE1HT+Lh3Adal1vZrhAlzxRRwficTE/Ew/A52gSdvOR35jbXCh/0TyztIUYfqAW/EPK
         xNNg==
X-Gm-Message-State: AOJu0YzdC1rpisasRqyevWJpV1Ci+foo5HsY1ZmUXkDOsAza/Sbj/HaM
	hsGaTJFWzEpr6JFdQDNHyV6VNRYvg2Mr+Pd18XxB+tnqtx2CZf8A3Ig=
X-Google-Smtp-Source: AGHT+IHiYSybIcqOiSHYlaPTfrpU/MNeQ/W6p+mNix58fbQG6nB2jXmpWTM6OIrTAkYTbY/RB4wv8ZzvD1YbuWiQtog=
X-Received: by 2002:a05:6830:314f:b0:6b9:b1b1:135 with SMTP id
 c15-20020a056830314f00b006b9b1b10135mr20680016ots.13.1698262408688; Wed, 25
 Oct 2023 12:33:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024000724.57714-1-hsinyi@chromium.org> <20231024000724.57714-4-hsinyi@chromium.org>
 <20231024-bobbed-although-06f341259ebb@spud> <CAJMQK-hvhjNGFUfgqb7pm=pAYjJ0wZAhkPGXxDCUJ5cnUDh2gw@mail.gmail.com>
 <20231025-charity-replica-9c9b03380d7f@spud>
In-Reply-To: <20231025-charity-replica-9c9b03380d7f@spud>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 25 Oct 2023 12:33:03 -0700
Message-ID: <CAJMQK-gkCK=AtSYa7vH5mfD01GedXqd2Hrt1aYPymzOiEr2LRQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
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

On Wed, Oct 25, 2023 at 7:49=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Oct 24, 2023 at 11:22:00AM -0700, Hsin-Yi Wang wrote:
> > On Tue, Oct 24, 2023 at 8:17=E2=80=AFAM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Mon, Oct 23, 2023 at 05:02:26PM -0700, Hsin-Yi Wang wrote:
> > > > Add makomo sku0 and sku1 which uses different audio codec.
> > > >
> > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/arm/mediatek.yaml | 12 +++++++++=
+++
> > > >  1 file changed, 12 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/=
Documentation/devicetree/bindings/arm/mediatek.yaml
> > > > index fe8c488a3207..b131e0bdbf01 100644
> > > > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > > > @@ -250,6 +250,18 @@ properties:
> > > >                - google,kodama-sku32
> > > >            - const: google,kodama
> > > >            - const: mediatek,mt8183
> > > > +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen=
 MTK 2)
> > > > +        items:
> > > > +          - const: google,makomo-rev4-sku0
> > > > +          - const: google,makomo-rev5-sku0
> > >
> > > With these bindings, how does one describe a makomo-rev5-sku0?
> > > What you have here is only suitable for describing the makomo-rev4-sk=
u0.
> > >
> > makomo-rev5-sku0 and makomo-rev4-sku0 uses the same dts:
> >
> > compatible =3D "google,makomo-rev4-sku0", "google,makomo-rev5-sku0",
> >                       "google,makomo", "mediatek,mt8183";
> >
> > In this case, can bindings be listed like that?
>
> On a rev5-sku0, the first compatible should be the most specific one,
> which would mean:
>
> compatible =3D "google,makomo-rev5-sku0", "google,makomo", "mediatek,mt81=
83";
>
> I said the same on other google laptop bindings before, but I'm not
> really happy with these compatible configurations, that seem conjured up
> to suit your firmware. It'd make far more sense to me to have a setup
> that permitted:
> compatible =3D "google,makomo-sku0-rev5", "google,makomo-sku0", "google,m=
akomo", "mediatek,mt8183";
> and
> compatible =3D "google,makomo-sku0-rev4", "google,makomo-sku0", "google,m=
akomo", "mediatek,mt8183";
>

The actual compatible is like:
google,makomo-rev4-sku1 google,makomo-sku1 google,makomo-rev4 google,makomo

So I think I can remove the rev here, and just let them match with
google,makomo-skuX, since rev4/rev5 share the same dts.

> Cheers,
> Conor.
>
> > > > +          - const: google,makomo
> > > > +          - const: mediatek,mt8183
> > > > +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen=
 MTK 2)
> > > > +        items:
> > > > +          - const: google,makomo-rev4-sku1
> > > > +          - const: google,makomo-rev5-sku1
> > > > +          - const: google,makomo
> > > > +          - const: mediatek,mt8183
> > > >        - description: Google Willow (Acer Chromebook 311 C722/C722T=
)
> > > >          items:
> > > >            - enum:
> > > > --
> > > > 2.42.0.758.gaed0368e0e-goog
> > > >

