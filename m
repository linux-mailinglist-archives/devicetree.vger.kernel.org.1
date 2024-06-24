Return-Path: <devicetree+bounces-79170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D896D9143DF
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 09:45:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50D2BB211B5
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F893FB31;
	Mon, 24 Jun 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kAkHG4XV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07707383A2
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719215123; cv=none; b=A9DZANeFQ7F/zjozW8FvTdrawAgeNWkdCOTtrhB0YnleJzLPEt+4mhScoLq92i5mWB3ULFGCc7DjWo2DKvr6peDr54zjrjLC2sHAbuZqBSokAGY20h3OcMX2zSaXR76rLD1h6gnO/4xjzi5ic67I91p/x9v07n7lz4jVbeHvQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719215123; c=relaxed/simple;
	bh=Gq7KBAcvc43+ornlxZQpc8EIheV/ZpU72s8U0u7G3Io=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZDF1HH1j66UMgeoc1TiqeP/snrxHxXscDQCYg3sHEFXtnxQMfs3RAl/Y2ZtAIXBX4pCHy2JoT5zcbkKJOMIDeuEURgVYPfEGJ8iIQ40ih8wAk01ohFUKHWuMiJ/xg+BntunsNIduPDCp8i6DSNUn8jjl/PojTjyIEhmKMzBlGCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kAkHG4XV; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ebeefb9a6eso43308131fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 00:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1719215120; x=1719819920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fFj7WMECrZQvXPBur3IZuEGzsvTsWvv9LoTaf7/abfI=;
        b=kAkHG4XVuZtvQccOT/npIFoMVDzstl1jCvhq0tc1RkEAoYHSmkYUdynhQrSFNOCQuj
         cK05vFqHWTsXmJ9f59x0UJLyaLUWkY6I0gkMa2wr2XsT71B6GxiVp/afG83gOasJu31D
         7rdTORaKdvEs5G6/fBDeIAeU7TKHuqgdrS1+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719215120; x=1719819920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFj7WMECrZQvXPBur3IZuEGzsvTsWvv9LoTaf7/abfI=;
        b=dTlFMdYGkyYiiCgzr+o20zM13ZJSnA3svDwSEFI9ZCc8VQlt3VZH8A/hDpvqWv2dJm
         xebVtjF3kJgj2gncTlV+SRlQ4CqKkFpwu2kn9EGovf1UUksZjecfvZ1d/MEemvVxqTY1
         j09cim7eCRNf1vU69CwLV9VG8u1ZHDHrrddf5wojw5cugC55MLTRd60VZ25vdSphr6qj
         Z5HNom3WIqGioaT6Jpuzg2HUNZBeOKJ5kjrRUeYAZf2809QadKN4KBMWua50RQXkmMpP
         5U6WhU9JKWJdS5KA1ZHqrObiEyQ+3lEBzshTtnxBt+Vz1agLnsCSIpqiwrH3zb7yYpko
         6e7g==
X-Forwarded-Encrypted: i=1; AJvYcCU28HWDwKOm2oNcUawAcPaDdAj4BcCORdrvkTK5AwNoXGHOFqgoJ4aFDQBhsUxvV1SDaJ0ETKRNS1eolHioJSsraFb1MUQYbR1JuA==
X-Gm-Message-State: AOJu0YxkpIK+flOPSJP91V2Rm+puWXFyC3DMqNdNCCgdIloPE4gCYL84
	wEZFKofQS4nSoZy9cdoLIJdUjah1/72Aw1gMqky4CKgvoF1ucerg3pu1QH45vKJvh/foNZUqo3H
	F06RJEUzZGkZYX7SKYaSS9gQ4lQ/i7+5PsYc+
X-Google-Smtp-Source: AGHT+IEbhqe0mQnb2PixzzonBLpTKQYKoC3EopeCBCB9riM06jvOadKH8w8jJMjv/sLheepUTJFeBYE8ulRIzGzE7xw=
X-Received: by 2002:a2e:7812:0:b0:2ec:4d8d:375f with SMTP id
 38308e7fff4ca-2ec593d8c1cmr28622491fa.16.1719215120082; Mon, 24 Jun 2024
 00:45:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620094746.2404753-1-wenst@chromium.org> <20240620094746.2404753-3-wenst@chromium.org>
 <20240620-outcome-circulate-40a2971f53b9@spud>
In-Reply-To: <20240620-outcome-circulate-40a2971f53b9@spud>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 24 Jun 2024 15:45:08 +0800
Message-ID: <CAGXv+5E1g3tba1iXtrXrdGwUCiUY39q5pvugsfnXXSDFLMGEZA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: mediatek: Add MT8186 Voltorb Chromebooks
To: Conor Dooley <conor@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 12:13=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Thu, Jun 20, 2024 at 05:47:37PM +0800, Chen-Yu Tsai wrote:
> > Add an entry for the MT8186 based Voltorb Chromebooks, also known as th=
e
> > Acer Chromebook 311 (C723/C723T). The device is a clamshell style lapto=
p
> > with an optional touchscreen.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docu=
mentation/devicetree/bindings/arm/mediatek.yaml
> > index b1b09db0bd65..e7746afeb0b3 100644
> > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > @@ -301,6 +301,13 @@ properties:
> >            - const: google,tentacruel-sku327683
> >            - const: google,tentacruel
> >            - const: mediatek,mt8186
> > +      - description: Google Voltorb (Acer Chromebook 311 C723/C732T)
> > +        items:
> > +          - enum:
> > +              - google,voltorb-sku589824
> > +              - google,voltorb-sku589825
>
> This looks rather sane for a chromebook!

It really depends on the OEM/ODM for how many combinations they end up
producing...

> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks!

> > +          - const: google,voltorb
> > +          - const: mediatek,mt8186
> >        - items:
> >            - enum:
> >                - mediatek,mt8186-evb
> > --
> > 2.45.2.741.gdbec12cfda-goog
> >

