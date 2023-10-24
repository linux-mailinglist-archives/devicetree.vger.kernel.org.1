Return-Path: <devicetree+bounces-11399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B13967D5A58
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2D201C2086A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C2939920;
	Tue, 24 Oct 2023 18:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XIIJEYa0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF394134B2
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:22:27 +0000 (UTC)
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A53C4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 11:22:26 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6ce353df504so3221853a34.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 11:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698171746; x=1698776546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d5Je0y3MKSY9EnJ0vnn4Sf8bQ8bTdsG8Jn34SwdnM5U=;
        b=XIIJEYa0tXG6hRoaQe9MU0/PfbTJwW++f1jWwLwKM6QqGSu0h6czoVg3Wq/QFHvrSm
         6Y16y8vzmGPGnmKbvwL4Mskyd8LSPV7UuYk5eIFWMgROC09W1sRtAKIaln7w3+6Oz0xa
         Wnmi18eHYp6cvyCM+s/tANPcVzD5k6K0h9K9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698171746; x=1698776546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d5Je0y3MKSY9EnJ0vnn4Sf8bQ8bTdsG8Jn34SwdnM5U=;
        b=fkQKWquw/h4K9SNAvvyJdv9B4xTjOJX0VPybnNJ05YEBohE+v6EdAyptUueb2PyKQk
         mKDDarKce1Nnj4maqhHFJGpZ2M8ag+u+V2SgAFnRx/TPGa2AjUBHrEGZA7AzVU7YZ+RX
         DQfdQp+sz/8udIDzjNIjCQEHqSX5Dgi9cod7l+Dr+k4MR0ms0MalEMby8OfM+BtBDFr6
         gwVPsNPTJpS5YDft51Js84DjV8y8doDlFdrGTS7mxH0tookPqG3uOinufERtVt5+5dXR
         SEeOS81FhMzJ/Bu3pYtEr3Xsjq3KvoBoP1KMquH9gBVNDOK3z7GzFo2YxzlmiTVCG/3V
         lzOQ==
X-Gm-Message-State: AOJu0Yx4Etc4Dnr61KYZMyA5B02RDJigYpJlNqPTZRFKB3+uQ8J49wKs
	I21j8N35LcHB8tky+vEpLf1g+awZLsqZE/as1FC1dC7xxhTtG1aL
X-Google-Smtp-Source: AGHT+IELaHYYxIByrxXgKujkDSN0ViXa19s603EMKyAcH2uHi+NrtNxd6KmykPPX38FeGkI5PStPU/mX/HVy7qowNd0=
X-Received: by 2002:a05:6830:442a:b0:6c6:4473:6f05 with SMTP id
 q42-20020a056830442a00b006c644736f05mr13078761otv.9.1698171745825; Tue, 24
 Oct 2023 11:22:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024000724.57714-1-hsinyi@chromium.org> <20231024000724.57714-4-hsinyi@chromium.org>
 <20231024-bobbed-although-06f341259ebb@spud>
In-Reply-To: <20231024-bobbed-although-06f341259ebb@spud>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 24 Oct 2023 11:22:00 -0700
Message-ID: <CAJMQK-hvhjNGFUfgqb7pm=pAYjJ0wZAhkPGXxDCUJ5cnUDh2gw@mail.gmail.com>
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

On Tue, Oct 24, 2023 at 8:17=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Oct 23, 2023 at 05:02:26PM -0700, Hsin-Yi Wang wrote:
> > Add makomo sku0 and sku1 which uses different audio codec.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/arm/mediatek.yaml | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docu=
mentation/devicetree/bindings/arm/mediatek.yaml
> > index fe8c488a3207..b131e0bdbf01 100644
> > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > @@ -250,6 +250,18 @@ properties:
> >                - google,kodama-sku32
> >            - const: google,kodama
> >            - const: mediatek,mt8183
> > +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK=
 2)
> > +        items:
> > +          - const: google,makomo-rev4-sku0
> > +          - const: google,makomo-rev5-sku0
>
> With these bindings, how does one describe a makomo-rev5-sku0?
> What you have here is only suitable for describing the makomo-rev4-sku0.
>
makomo-rev5-sku0 and makomo-rev4-sku0 uses the same dts:

compatible =3D "google,makomo-rev4-sku0", "google,makomo-rev5-sku0",
                      "google,makomo", "mediatek,mt8183";

In this case, can bindings be listed like that?




> Cheers,
> Conor.
>
> > +          - const: google,makomo
> > +          - const: mediatek,mt8183
> > +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK=
 2)
> > +        items:
> > +          - const: google,makomo-rev4-sku1
> > +          - const: google,makomo-rev5-sku1
> > +          - const: google,makomo
> > +          - const: mediatek,mt8183
> >        - description: Google Willow (Acer Chromebook 311 C722/C722T)
> >          items:
> >            - enum:
> > --
> > 2.42.0.758.gaed0368e0e-goog
> >

