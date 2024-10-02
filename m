Return-Path: <devicetree+bounces-107137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F43898D030
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 535211C2101F
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 09:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6BB19AD5C;
	Wed,  2 Oct 2024 09:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nq1l0/82"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6EF19412F
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 09:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727861578; cv=none; b=D2ALkBggIkF3g8nloenVcoGO5mmL0QX0QvzZHR3CG4wahWmvsk6leF22+BwzscW7tEhpb4U71cwwumPxTsNiHVwo+KP/tSkIvLAx//rAQlDW/D/qOoe80jZiDRRRCUYvN4aC38PsRp6bvv7WeAqkIIE8BxIKkpUuEJpDTyvmrzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727861578; c=relaxed/simple;
	bh=dUc6s0wcfw/sc9b3vtl/vp6lDQ7c34DOnsZyewdt/V8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TAXtxUjjC0z+FH99S60ZPTdedAlUJwhL3NeM4kJt/N0iTrLxRf5IDq3Hc4lEMdBgeXY2B7lae9sDnDNRZCfWl9D8pY+Kmd+ZDXq9RcuQsQzTwoeDmwXxU+Rz3BLx8CTuV7XEw+Xar94rUNngbZheb3YkyXQGu1N6BmzZGO8Eino=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nq1l0/82; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3a0cb892c6aso296335ab.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 02:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727861576; x=1728466376; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reIIFD4dhOrzs8q6FtBVVX+tUcITJKz5kVNTiFQ34Mc=;
        b=nq1l0/82Fyt6Nfq3+75xPmui4bpwdaemcezs/qP5gPomG7TApcKqFKoWiRzZH+rVsF
         yVRUG0FQu/YP0pIpmzksYwh9ttipQ1k2SpuebYh82DtDQMKDKvS4541k80ZaUhqo66lS
         pYwh43yzsTUClm/63Zh/oL4yAyXwO6mn0/tL6bhG57vbkYlC/6qsOCXqVchyL7sT5cDB
         hx6oq0U+DdWbQ7Hc7V1VexbDpIPhC6k8Tivx50N55s1lHtZrl87fGkC5LMZllmPVCNd1
         27oJZSniJOjZlSLs/GmCcJrtOpzvy5wTrAifEUioX33xwKUhA4g9q8L5W2Vatuod8lEH
         tq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727861576; x=1728466376;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=reIIFD4dhOrzs8q6FtBVVX+tUcITJKz5kVNTiFQ34Mc=;
        b=f2Mvn+rZIdj3Ky204qp0K3Td7CdbNPpihX9hBJCnPdu4pqrEdw0nW7NW/GWAWcfhEk
         etsJYpEWZrSGjAyJvDhJai2sbSSa8XLw5WzIK5nrXqtfDXcdTvpLTS8+QJtd2IQZIP3A
         zvq+UmlyEtNIpUUYHd49JnUSi3Ec64g5qYJDE9x8x5gwmyuNAaIH5EbJXxPla0ecPYGH
         pe2yhv2YareUwOslgFELyiXyboMsBYiSy2nCYNyvH+VMr6NcMX6TAj4frBoZryLSAFro
         VLFeXBx/9BtrB49Y41biJP8Hq8/42MrLYAr1+ssjJSz2dtg5+ujTs54j0G6jCS97yOgl
         Xqqw==
X-Forwarded-Encrypted: i=1; AJvYcCVYBgieARMQTes88FNWzlb8N51mG133hta7phRjV/90Nmf9h05vTkIBtVsTrFruG/thhpPsTeSgxfPo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3yl2FVq7CF8Xl7I2/wGElVo890UkdJxFBFFSpasLQt9KoqyWn
	Heec84vEP+61xvPw6Rm3Y6xOEbBjFW2Vpt4z9cefByEtioYBnetV5LPsCoLX/fAxWhV1MdSY2F/
	AkPAaSvcR/5I8iX1HfqlUe3LJHmRJl9GyjfWn
X-Google-Smtp-Source: AGHT+IE3APdtH1jNA08H3S8Xg6GgEHqc53p2GGTlE9H+BquiDOFveHXhwDpKCXrQWQD9qZ+I5N3M9LKhEIefU/AF02g=
X-Received: by 2002:a05:6e02:1d99:b0:3a0:9cb6:cb with SMTP id
 e9e14a558f8ab-3a3674e5cefmr2500335ab.7.1727861575920; Wed, 02 Oct 2024
 02:32:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240927122940.4190949-1-jakiela@google.com> <20240927122940.4190949-2-jakiela@google.com>
 <2c5614f7-0ada-453a-bd81-2f0054a919a0@collabora.com> <CAODvyLQ0pUUvBtfk7Pj05vwTkjEnCkfBY4-EG0okQB972tLC-g@mail.gmail.com>
 <b7032557-0b7c-4329-9762-14bda341e79c@collabora.com>
In-Reply-To: <b7032557-0b7c-4329-9762-14bda341e79c@collabora.com>
From: =?UTF-8?Q?Albert_Jakie=C5=82a?= <jakiela@google.com>
Date: Wed, 2 Oct 2024 11:32:44 +0200
Message-ID: <CAODvyLQ=DkN4F2wSiTA+2C9Mwy0eoOGn8_LNyHfC1E8THzG0rQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: mediate: Introduce MT8186
 Chinchou/Chinchou360 Chromebooks
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, wenst@chromium.org, rafal@milecki.pl, 
	hsinyi@chromium.org, nfraprado@collabora.com, sean.wang@mediatek.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Without `compatible` override:

```
chinchou360-rev1 ~ # dmesg | grep mt8186_mt6366
[    8.998560] mt8186_mt6366 sound: ASoC: Parent card not yet
available, widget card binding deferred
[    9.020741] mt8186_mt6366 sound: ASoC: Failed to add route
Speaker(*) -> Speakers
[    9.028523] mt8186_mt6366 sound: snd_soc_bind_card:
snd_soc_dapm_add_routes failed: -19
[    9.070269] mt8186_mt6366 sound: error -ENODEV: Cannot register card
```

With `compatible` override:
```
[    9.110380] mt8186_mt6366 sound: ASoC: Parent card not yet
available, widget card binding deferred
[    9.131681] mt8186_mt6366 sound: ASoC: driver name too long
'sof-mt8186_rt5650' -> 'sof-mt8186_rt56'
```




On Tue, Oct 1, 2024 at 1:36=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 01/10/24 13:13, Albert Jakie=C5=82a ha scritto:
> > Deleting `compatible` property will not allow the sound card to probe, =
so I
> > override it with proper compat.
> >
>
> The inherited `compatible =3D "mediatek,mt8186-mt6366-rt1019-rt5682s-soun=
d"` from
> mt8186-corsola.dtsi should allow that to probe correctly.
>
> Can you please share the log of the error(s) that you're seeing?
>
> Thanks,
> Angelo
>
> > On Mon, Sep 30, 2024 at 11:23=E2=80=AFAM AngeloGioacchino Del Regno <
> > angelogioacchino.delregno@collabora.com> wrote:
> >
> >> Il 27/09/24 14:29, Albert Jakie=C5=82a ha scritto:
> >>> The MT8186 Chinchou/Chinchou360, also known as the Asus Chromebook
> >>> CZ12/CZ11 Flip, is a clamshell or convertible device with touchscreen=
,
> >>> stylus and extra buttons.
> >>>
> >>
> >> You have a typo in your commit title `mediate` -> `mediatek`
> >>
> >>> Signed-off-by: Albert Jakie=C5=82a <jakiela@google.com>
> >>> ---
> >>> Changes in v2:
> >>> - PATCH 2/2: Remove sku2147483647, remove duplicate nodes, add model
> >>>        and remove uneccecery nodes from sound card.
> >>> - Link to v1:
> >> https://lore.kernel.org/all/20240925080353.2362879-2-jakiela@google.co=
m/
> >>>
> >>> ---
> >>>    arch/arm64/boot/dts/mediatek/Makefile         |   3 +
> >>>    .../mediatek/mt8186-corsola-chinchou-sku0.dts |  18 +
> >>>    .../mediatek/mt8186-corsola-chinchou-sku1.dts |  34 ++
> >>>    .../mt8186-corsola-chinchou-sku16.dts         |  28 ++
> >>>    .../dts/mediatek/mt8186-corsola-chinchou.dtsi | 432 ++++++++++++++=
++++
> >>>    5 files changed, 515 insertions(+)
> >>>    create mode 100644
> >> arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku0.dts
> >>>    create mode 100644
> >> arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku1.dts
> >>>    create mode 100644
> >> arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku16.dts
> >>>    create mode 100644
> >> arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi
> >>>
> >>
> >> ..snip..
> >>
> >>
> >>> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dts=
i
> >> b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi
> >>> new file mode 100644
> >>> index 000000000000..96cc3c267c20
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi
> >>> @@ -0,0 +1,432 @@
> >>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >>> +/*
> >>> + * Copyright 2023 Google LLC
> >>> + */
> >>> +
> >>> +/dts-v1/;
> >>> +#include "mt8186-corsola.dtsi"
> >>> +
> >>> +/ {
> >>
> >> ..snip..
> >>
> >>> +
> >>> +&sound {
> >>> +     status =3D "okay";
> >>> +
> >>> +     compatible =3D "mediatek,mt8186-mt6366-rt5650-sound";
> >>
> >> Why did you keep the compatible string override?
> >>
> >>> +     model =3D "mt8186_rt5650";
> >>> +
> >>
> >> Regards,
> >> Angelo
> >>
> >>
> >>
> >>
> >>
> >
>
>

