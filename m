Return-Path: <devicetree+bounces-116440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4726D9B2E94
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3DA0280EBC
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7431D63E4;
	Mon, 28 Oct 2024 11:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XEeMnEnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D886F1D416E
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730113870; cv=none; b=bQzfuM1X8SqtFJHvq1CRmVH5yKCqvig0fSwaobe9P30uz6EdMA0j2YeQRMaEQj45snl2ty2BE+J2f7A1gMCx/Hf7mBiDJn8XyD31zCgwMk349rTgpc85RAExYvyfwtcPPP45w1gTwJhWTXFgFlHHKlDL9hhjA7M/Iizm29/FEzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730113870; c=relaxed/simple;
	bh=ZgTV9zpZbKQQXLQ5wQfQWN0K4yKV8OzqkCwsGVG8/BA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CXTY8fwUC39u99kOtl2y9bo+0pbbOri6xDhLFctgC3xa6bONCA0FUTvNHFByEIZybLmdLRGqkb9/5kwPMa48RvC0kYspH+0REaXFF1c6gg5d+3ed8KBp+2K/4jTSA7PZM3FvCfBN3pYJ8kmXJxRveJFxvjHPN+z+ggKyrwKFWyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XEeMnEnu; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-4a4789662c1so1158405137.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730113866; x=1730718666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wVZy5IrMKfr30Sb+HXmGpWXo6EuG4COK1gDvgq9aZn8=;
        b=XEeMnEnulr64ndPI4xdutkSZubgv/iQvdX4a2+reazuy0m3jJmQkyunxWTt4ppMNPR
         MW07MXPm2OWprCcfEPEV2H+YNJTjBUUhyz/Rd6tZGiSjcWO2Tp8+6Ry3ojSJR0ZCzHCG
         F0+jo3MGW9X3vGKSw6VLLv7d09xP+XFEIHSxI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730113866; x=1730718666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wVZy5IrMKfr30Sb+HXmGpWXo6EuG4COK1gDvgq9aZn8=;
        b=Ij4YQEapI2WnTTqBRV8uE1zMD3FSIvfyauu+YlQ7SOqOQE64GADIUXP+KaBKHtgFi3
         uv+D2xiPR5RlhCFs+9/i9JOcivwQKML83mVTvNpGjXrQJOw4f+6SKHM0m//q//gz/OQL
         bu/RB5hRRS0xHMCQjsTk5AysyVJr9Jr6oItV5vTufsuwjvmoB3lS8kp9QdKOcyh5WN6H
         ITgJedkOlkDU5ojoKKPt/NVaQigfrJAWJO2q6EWAXZPHzU2DWXAAiCJXL51SwDUYQtj3
         5vNKgBUUuUoHp1nyu72u74e8OxyHI5ESCSvgmqHFnLsnAPIrJ9Ct/UlYPmwgeDihJvHk
         pEmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCmtgdoA5rMYhUWa/WflsNCa7VCDdE7C0Ez6gzrDf/wunEM2HScZN1WNSs+p1M4ZlT6y87JAC5QCS0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp704tsLZZcKlv8zMvZ/nydbUhZ9U+WT5cSgJlEsRLStkC3TuQ
	yr1TEWKs5b52Lxo3jrEgktbMiROsjGpvYgllI2+k8+rf23VTXKudgWyLYEDAGoU7bIn76Ny0Ykw
	=
X-Google-Smtp-Source: AGHT+IE5z/OivRmM2ONPbLMq6LimT32S0fmPPJyJg/wSMvmfC7jcEUH/zBRp2A1J2HS2v7uQapcoBw==
X-Received: by 2002:a05:6102:38cb:b0:4a4:7ddc:6972 with SMTP id ada2fe7eead31-4a8cfd6d225mr5703753137.26.1730113866213;
        Mon, 28 Oct 2024 04:11:06 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-85580a7bce8sm905016241.7.2024.10.28.04.11.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 04:11:04 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-50d525be53eso1072184e0c.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:11:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVyHexdQSTFZAJmp3PSkvsF/frAGo4a8xWUycx62IGK8HImgYUvcAWyuuWb/YagoLDzp1b2PYDzmaDw@vger.kernel.org
X-Received: by 2002:a05:6122:3d01:b0:50d:99e4:dea6 with SMTP id
 71dfb90a1353d-51015055166mr3900796e0c.7.1730113863969; Mon, 28 Oct 2024
 04:11:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025104548.1220076-1-fshao@chromium.org> <20241025104548.1220076-2-fshao@chromium.org>
 <5vmfh2nkxtpzt2vk4j6ghro7z5stoyvry3enzoqepg6hjxqrho@fofs5cwa2iqq>
In-Reply-To: <5vmfh2nkxtpzt2vk4j6ghro7z5stoyvry3enzoqepg6hjxqrho@fofs5cwa2iqq>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 28 Oct 2024 19:10:27 +0800
X-Gmail-Original-Message-ID: <CAC=S1njPjtvhsc+voNK447wbQmRiN0xVDi-jgOmba4NLRiNi0Q@mail.gmail.com>
Message-ID: <CAC=S1njPjtvhsc+voNK447wbQmRiN0xVDi-jgOmba4NLRiNi0Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: dt-bindings: mediatek,mt8188-mt6359: Add adsp
 and dai-link properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Rob Herring <robh@kernel.org>, Trevor Wu <trevor.wu@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 4:54=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Oct 25, 2024 at 06:44:41PM +0800, Fei Shao wrote:
> > Add "mediatek,adsp" property for the ADSP handle if ADSP is enabled on
> > the platform.
>
> We see this from the diff.
>
> > Add "mediatek,dai-link" property for the required DAI links to configur=
e
> > sound card.
>
> We see this from the diff.
>
> >
> > Both properties are commonly used in the MediaTek sound card driver.
>
> If they are used, why suddenly they are needed? What changed?

Nothing has changed. These should have been added altogether when the
binding was first introduced. This patch is to fill the gaps and fix
dtbs_check warnings, like I mentioned in the cover letter.
I can add a line in the commit message saying it's to fix the warning
in addition to the cover letter, if that's preferred.

>
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >  .../bindings/sound/mediatek,mt8188-mt6359.yaml         | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt=
6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.=
yaml
> > index f94ad0715e32..701cedfa38d2 100644
> > --- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.ya=
ml
> > +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.ya=
ml
> > @@ -29,6 +29,16 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description: The phandle of MT8188 ASoC platform.
> >
> > +  mediatek,adsp:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: The phandle of MT8188 ADSP platform.
>
> And what is the difference between ASoC and ADSP platforms? What are
> they used for?

I'm not a MediaTek or audio folks, and I'm afraid that I'm not the
best person to explain the details accurately in front of experts on
the list... I know it's an audio DSP but that explains nothing.
MediaTek didn't provide a meaningful explanation in the tree or
commits, and I want to avoid adding additional but likely misleading
descriptions from someone who doesn't have enough knowledge,
potentially causing even more confusing situations in the future.
Plus, the same changes were accepted as-is in the past, so I assumed
they might be self-explanatory to people who are familiar with the
matter.

>
> > +
> > +  mediatek,dai-link:
> > +    $ref: /schemas/types.yaml#/definitions/string-array
> > +    description:
> > +      A list of the desired dai-links in the sound card. Each entry is=
 a
> > +      name defined in the machine driver.
>
> The list is provided below. I don't understand why do you need it. Your
> msg is pretty useless - you describe what you do, instead of why.

I think this is used to explicitly list the intermediate but hidden
DAIs, but again, there's not much info about them unless MediaTek can
explain more details and why they need a vendor property for this.

Regards,
Fei

>
> Best regards,
> Krzysztof
>

