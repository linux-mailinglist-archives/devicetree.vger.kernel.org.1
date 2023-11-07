Return-Path: <devicetree+bounces-14276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 116CB7E3622
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB1F4B20B69
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 07:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91753CA6D;
	Tue,  7 Nov 2023 07:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zpexX1sQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20287C12D
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 07:59:32 +0000 (UTC)
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F9AFD
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 23:59:31 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-da077db5145so5242661276.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 23:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699343970; x=1699948770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jIPSowxS+reJzRoxTsLwnerZZES7Q1Va8iysVO72+iE=;
        b=zpexX1sQQNn7KsyNmengyWI/dpZc4WgLLc8ShrGlAsVFb/Ilo0GJD2X0zXvvgJtxGQ
         eWINdI2t0Nq5vpqsMmShnErBnr2tUfygFII/VY+yNztOoQYfMQZcguA0UODg8PNjnkuK
         trzOZympoKuKmbn1+QKwRR5bYm08zHvlKx0iOWMy7g2lMeNOqT7T7rTWL9u/s0O+Dqks
         6PI2njEk7iaUcqSfToD6koiKLU5ICm32eK0uk836Mb0CCLgXnlXuGykVAKGdqQRcS3Ux
         MVtz7Oj44vQPtsbgFI/SXS6g/9shCAw5+/O+rQxWRcuYT2PIXQnTzOmY53gewxPfcy3j
         pP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699343970; x=1699948770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIPSowxS+reJzRoxTsLwnerZZES7Q1Va8iysVO72+iE=;
        b=R30bQKQTm0mLOag6JsHqzEtbYZY/jrF+q3lArthPrYJxXHF2NUhc5dsyEDNqLdi7zg
         fUShYPaCIOmLKylMJkmuoaRY6p07HwEGFS2r4eMtN98UAjdd4rM8rfE61oU0eg1kCU+w
         yQwwBe9bSu/zmetC1XVlGVF5R6UTd8YzGGdLwa11wNhBqhRlKJE/C0O+apQT8Z3hVqoT
         SYfEkzlPp8GJxxlCvOCfkMZentBHu5kr5F71TYemBRO5560SG5N82CxQukNEXdgkU8rc
         9dS8rlKxwP8IqbJM4E1l+TozFiS5i0mhCZdtmqgrohecMJ8GzZkLiCoAgBs6mNyV2x6v
         c16Q==
X-Gm-Message-State: AOJu0Yy0CeUYQgLX3xZUQBbiym6UdX6ILELsZQvATym5S91re8D1QQlA
	GClPrM7GvIgGadNR6tw2x2Eyve4ASDf3Ik9/obwhmw==
X-Google-Smtp-Source: AGHT+IEvolbqmV38AXkJ7n/FhA/W/IaFIDg+Pp103Px7QjwcM7CIQWMmkvleXTos1KRDla6s/o6p0T9DybRO342zTVc=
X-Received: by 2002:a25:738d:0:b0:d9a:e947:447b with SMTP id
 o135-20020a25738d000000b00d9ae947447bmr29843950ybc.14.1699343970479; Mon, 06
 Nov 2023 23:59:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231107031442.2768765-1-zhourui@huaqin.corp-partner.google.com>
 <20231107031442.2768765-2-zhourui@huaqin.corp-partner.google.com> <8a1f5d6e-3753-4ff5-94a6-dee7925b902b@linaro.org>
In-Reply-To: <8a1f5d6e-3753-4ff5-94a6-dee7925b902b@linaro.org>
From: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Date: Tue, 7 Nov 2023 15:59:19 +0800
Message-ID: <CABRjgzstdYKDCBDiD=ciwmP2X3CJ4PnDN7dLFF-F4yOVR6ex-g@mail.gmail.com>
Subject: Re: [v1 1/3] ASoC: dt-bindings: mt8188-mt6359: add es8326 support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, perex@perex.cz, 
	allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for your reminder, I will pay attention next time.


On Tue, Nov 7, 2023 at 3:11=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 07/11/2023 04:14, Rui Zhou wrote:
> > Add compatible string "mediatek,mt8188-es8326" to support new board
> > with es8326 codec.
>
> Please use standard email subjects, so with the PATCH keyword in the
> title. `git format-patch` helps here to create proper versioned patches.
> Another useful tool is b4. Skipping the PATCH keyword makes filtering of
> emails more difficult thus making the review process less convenient.
>
> >
> > Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
> > ---
> >  .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt=
6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.=
yaml
> > index 4c8c95057ef7..9df5e44176d0 100644
> > --- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.ya=
ml
> > +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.ya=
ml
> > @@ -18,6 +18,7 @@ properties:
> >        - mediatek,mt8188-mt6359-evb
> >        - mediatek,mt8188-nau8825
> >        - mediatek,mt8188-rt5682s
> > +      - mediatek,mt8188-es8326
>
> Entries should be sorted alphabetically.
>
> Best regards,
> Krzysztof
>

