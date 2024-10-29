Return-Path: <devicetree+bounces-116898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDB79B44EB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 09:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FC971C20C14
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 08:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AEF6203700;
	Tue, 29 Oct 2024 08:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NBhAVRDB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF851DFE3C
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 08:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730192000; cv=none; b=Bn7Z4RijBneQQ1AsEF7K27T4j4IgLVzmf55lmyKv8vL4k9sqvmWdTsdgeVzWxjQESNcXecHDqUsITDrrnTZkSZIlOcnp06FlG4dMiUXbFbYFnTYhGKCey0ao7zGvQQeWk7K8Y4wGk/kK9D5qS5wt8/nDsKyr583LF/5Un9NROiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730192000; c=relaxed/simple;
	bh=xoS6Wdsxlxl89fuWL52mxZlC9ubS35kNL7hyj2Y9HZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ooC+sF/oLFotvE3MWhZySVitNTMgz7WcgF1+0Df53M6ZJ6lWgMDEldipjI7n47IQD93AmT3FMS8ICNvoxXL9jCOFQAZ/kPIavxDj3bY5YgGIl2342kY8SS+KmEg3OlSi0dzx9uwDnP7QEdV3ZWms8qnS8zaTXSJ7UBKnlfZUPKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NBhAVRDB; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-84fed1ff217so3040937241.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 01:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730191996; x=1730796796; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t6yWe4/NLA7+pMhnzpuf35J4OYCHyR3KA6ogeYDKvqs=;
        b=NBhAVRDBBwkqWEUOTzTKTwSiIhYFZL6zB3JtZN/l0mhdFne1M4xfitk4qdyQ3uKMLx
         hT4lgdWUh2J197i7ZKKQOH089XxZkAVgvKAICaLlVKn6RcjgmDsx5ign5FslL+ctDj1t
         oyzh8NprVa5xPWuo6Tf6lFKL1CJecpCtFeZ6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730191996; x=1730796796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t6yWe4/NLA7+pMhnzpuf35J4OYCHyR3KA6ogeYDKvqs=;
        b=iuweTwNU2H0fWGGllps3hJQB4n16xfWVkcCd22+yJeh9EDI+f7I7GxkFivB7HT50wS
         H83w/fq4KNV2aDs7ZmeQOGrAENIVKWRvy5hDkWULyIED/hQMJ1ExfvG/snlZivGELpc+
         qZrFvZIAQCb4zEeiOBpmYXcqPhP7OVaQzKW5+JR+9sgi7MWZdJgbT6knoSCoZ8/UAwe8
         8rtopnnYLE4j4i9NHjDW1KcCBPi9DU50B2L2H/3f6rIBPgdlR2YRjnYbbbkI7ClOoEcd
         +tCSKeF/LGPZs+tMEa60XGaoun+88Ev0KADzIWa1vRDwOuv+2BBifPVQ5JjIdojOR/nt
         UdGw==
X-Forwarded-Encrypted: i=1; AJvYcCWeR96ftD0ikAYPUE5rJAwoNn7k43tMZEA4pZdA0ihwed6ZbCuyUCi4O0qw+N27Z4E36fo6NvHuBbZl@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRV05NPFanueb5mxRhZdy1CYxR4czn5cN+EWvtROChzrk742H
	B3Q4VvS7OAsakAC1NYXwFD/eO+vznTb5UXXUc40O6rwgjZmWaCPXQkVuW4VBRrbWydNdCnS3wNE
	=
X-Google-Smtp-Source: AGHT+IHja2V+2bZrANoZpV5zkMBtB/mM2q2ZcdRJp+YZwd6D08P8Va+CAmt2GKuw6oTE7tdqoreYnQ==
X-Received: by 2002:a05:6102:3594:b0:4a4:7e84:d654 with SMTP id ada2fe7eead31-4a8f6904986mr496787137.14.1730191996619;
        Tue, 29 Oct 2024 01:53:16 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-85580b1835esm1132022241.30.2024.10.29.01.53.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 01:53:16 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-50fc0345155so2784184e0c.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 01:53:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUSEKt6r+bk58mH/rYIs06XCMPtXXS0m7Vs2QQvKR/ANoCW5POvozCISr+efhrpA2b9vrKbNWncJEor@vger.kernel.org
X-Received: by 2002:a05:6122:1d53:b0:50d:39aa:7881 with SMTP id
 71dfb90a1353d-510506f0f83mr526608e0c.0.1730191995625; Tue, 29 Oct 2024
 01:53:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025104548.1220076-1-fshao@chromium.org> <20241025104548.1220076-2-fshao@chromium.org>
 <5vmfh2nkxtpzt2vk4j6ghro7z5stoyvry3enzoqepg6hjxqrho@fofs5cwa2iqq>
 <CAC=S1njPjtvhsc+voNK447wbQmRiN0xVDi-jgOmba4NLRiNi0Q@mail.gmail.com>
 <20c793fb-cfdf-4c05-a421-3eb623ff6df0@collabora.com> <5b55f75f2fc8a783bf2fdaeac80fd5954e16a2c8.camel@mediatek.com>
In-Reply-To: <5b55f75f2fc8a783bf2fdaeac80fd5954e16a2c8.camel@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Tue, 29 Oct 2024 16:52:38 +0800
X-Gmail-Original-Message-ID: <CAC=S1nizJHcvxG2-HO7MhwWup-o6SO0XBp1_OBN35SCtUW73iA@mail.gmail.com>
Message-ID: <CAC=S1nizJHcvxG2-HO7MhwWup-o6SO0XBp1_OBN35SCtUW73iA@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: dt-bindings: mediatek,mt8188-mt6359: Add adsp
 and dai-link properties
To: =?UTF-8?B?VHJldm9yIFd1ICjlkLPmlofoia8p?= <Trevor.Wu@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: "krzk@kernel.org" <krzk@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>, "broonie@kernel.org" <broonie@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"lgirdwood@gmail.com" <lgirdwood@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2024 at 11:05=E2=80=AFAM Trevor Wu (=E5=90=B3=E6=96=87=E8=
=89=AF) <Trevor.Wu@mediatek.com> wrote:
>
> On Mon, 2024-10-28 at 15:25 +0100, AngeloGioacchino Del Regno wrote:
> > External email : Please do not click links or open attachments until
> > you have verified the sender or the content.
> >
> >
> > Il 28/10/24 12:10, Fei Shao ha scritto:
> > > On Mon, Oct 28, 2024 at 4:54=E2=80=AFAM Krzysztof Kozlowski <
> > > krzk@kernel.org> wrote:
> > > >
> > > > On Fri, Oct 25, 2024 at 06:44:41PM +0800, Fei Shao wrote:
> > > > > Add "mediatek,adsp" property for the ADSP handle if ADSP is
> > > > > enabled on
> > > > > the platform.
> > > >
> > > > We see this from the diff.
> > > >
> > > > > Add "mediatek,dai-link" property for the required DAI links to
> > > > > configure
> > > > > sound card.
> > > >
> > > > We see this from the diff.
> > > >
> > > > >
> > > > > Both properties are commonly used in the MediaTek sound card
> > > > > driver.
> > > >
> > > > If they are used, why suddenly they are needed? What changed?
> > >
> > > Nothing has changed. These should have been added altogether when
> > > the
> > > binding was first introduced. This patch is to fill the gaps and
> > > fix
> > > dtbs_check warnings, like I mentioned in the cover letter.
> > > I can add a line in the commit message saying it's to fix the
> > > warning
> > > in addition to the cover letter, if that's preferred.
> > >
> > > >
> > > > >
> > > > > Signed-off-by: Fei Shao <fshao@chromium.org>
> > > > > ---
> > > > >
> > > > >   .../bindings/sound/mediatek,mt8188-mt6359.yaml         | 10
> > > > > ++++++++++
> > > > >   1 file changed, 10 insertions(+)
> > > > >
> > > > > diff --git
> > > > > a/Documentation/devicetree/bindings/sound/mediatek,mt8188-
> > > > > mt6359.yaml
> > > > > b/Documentation/devicetree/bindings/sound/mediatek,mt8188-
> > > > > mt6359.yaml
> > > > > index f94ad0715e32..701cedfa38d2 100644
> > > > > --- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-
> > > > > mt6359.yaml
> > > > > +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-
> > > > > mt6359.yaml
> > > > > @@ -29,6 +29,16 @@ properties:
> > > > >       $ref: /schemas/types.yaml#/definitions/phandle
> > > > >       description: The phandle of MT8188 ASoC platform.
> > > > >
> > > > > +  mediatek,adsp:
> > > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > > +    description: The phandle of MT8188 ADSP platform.
> > > >
> > > > And what is the difference between ASoC and ADSP platforms? What
> > > > are
> > > > they used for?
> > >
> > > I'm not a MediaTek or audio folks, and I'm afraid that I'm not the
> > > best person to explain the details accurately in front of experts
> > > on
> > > the list... I know it's an audio DSP but that explains nothing.
> > > MediaTek didn't provide a meaningful explanation in the tree or
> > > commits, and I want to avoid adding additional but likely
> > > misleading
> > > descriptions from someone who doesn't have enough knowledge,
> > > potentially causing even more confusing situations in the future.
> > > Plus, the same changes were accepted as-is in the past, so I
> > > assumed
> > > they might be self-explanatory to people who are familiar with the
> > > matter.
> > >
> >
> > The Audio DSP is a Tensilica HiFi-5 DSP, and it's a block that is -
> > hardware
> > speaking - separated from the rest of the Audio interfaces of the
> > SoC.
> >
> > The whole sound subsystem can work either with or without the DSP, in
> > the sense
> > that the DSP itself can remain unpowered and completely unconfigured
> > if its
> > functionality is not desired - hence, this is a board specific
> > configuration:
> > if the board wants to use the DSP, we use the DSP - otherwise, we
> > just don't.
> >
> > Regarding the two "platforms", in short:
> > "mediatek,platform" -> Audio Front End (AFE)
> > "mediatek,adsp" -> Audio DSP
> >
> > Now, you can either link the AFE DAIs to the I2S
> >
> > As for "mediatek,platform" - that's used to link the Analog Front End
> > (AFE) as
> > the DAI Link platform (so the path is direct to/from DL/UL DAIs to
> > AFE) or the
> > ADSP one as the DAI Link platform (so that the path is to/from DL/UL
> > DAIs to
> > DSP to AFE), but that - of course - still requires an AFE, otherwise
> > you cannot
> > get the audio out of the speakers or in from the mic anyway.
> >
> > > >
> > > > > +
> > > > > +  mediatek,dai-link:
> > > > > +    $ref: /schemas/types.yaml#/definitions/string-array
> > > > > +    description:
> > > > > +      A list of the desired dai-links in the sound card. Each
> > > > > entry is a
> > > > > +      name defined in the machine driver.
> > > >
> > > > The list is provided below. I don't understand why do you need
> > > > it. Your
> > > > msg is pretty useless - you describe what you do, instead of why.
> > >
> > > I think this is used to explicitly list the intermediate but hidden
> > > DAIs, but again, there's not much info about them unless MediaTek
> > > can
> > > explain more details and why they need a vendor property for this.
> > >
> >
> > Yes, this is used for exactly that... but I believe that we can
> > deprecate this
> > now that we have support for the "standard" `audio-routing` property
> > and for the
> > DAI Link nodes (examples that you can find in current device trees
> > are mm-dai-link,
> > hs-playback-dai-link, or any other subnode of the sound card).
> >
> > Specifically, those subnodes *do* require a "link-name" property,
> > which *does*
> > effectively contain the same DAI Link names as the ones that are
> > inside of the
> > "mediatek,dai-link" property.
> >
> > On MT8195, you can find both the subnodes and the mediatek,dai-link -
> > yes - but
> > that was done to retain compatibility of the device tree with old
> > drivers (so,
> > an unusual case of new device tree on old kernel).
> >
> > Finally, I believe that we can avoid adding that "mediatek,dai-link"
> > property
> > to the MT8188 binding, and rely on:
> >   1. Whatever is provided in struct snd_soc_card for that device; and
> >   2. Whatever is provided in device trees as dai link subnodes, which
> > would
> >      restrict N.1 as that's anyway describing card prelinks.
> >
>
> The "mediatek,dai-link" property is utilized to hide the unused dai-
> links in the sound card. By hiding the unused FE links, it can save the
> necessary memory and prevent conflicts where both the DSP and AP
> control the same AFE Memifs.
>
> This concept was first implemented in mt8195 as Mark aimed to avoid the
> need for a separate driver for different system configurations.
> With the introduction of DSP (SOF), if certain AFE Memifs are already
> in use in the DSP route, they should be excluded from the PCM nodes
> created for the AFE platform.
>
> At that time, we did not have a better way to handle these scenarios,
> so we made use of a vendor-defined property.
>
> It has been a while since I last kept up with the updates in mt8188, so
> I'm uncertain if the current mechanism for sound card description is
> sufficient for handling such scenarios. If it is, I agree that we can
> deprecate such a vendor property from mt8188.
>
> Thanks,
> Trevor
>
>
> > Cheers,
> > Angelo

Many thanks Angelo and Trevor for the information.
The audio-routing property is in place, so I'll check if removing the
vendor property makes any impact, and refresh the series accordingly.

Thanks,
Fei



> >
> > > Regards,
> > > Fei
> > >
> > > >
> > > > Best regards,
> > > > Krzysztof
> > > >
> >
> >

