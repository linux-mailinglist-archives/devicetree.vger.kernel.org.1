Return-Path: <devicetree+bounces-42945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 260CE858D96
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 08:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75A69B215A9
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 07:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB89E1CAAC;
	Sat, 17 Feb 2024 07:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XElIW9Lk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE1A1C6A0
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 07:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708153327; cv=none; b=efbkL5Zyl0IiyUFlL+L/tCPLDbKkMm9zgvmmK0/grceiC6yL80wUdNcB7kCF9qs+Wzn9vDeaq7/rhZE95/Sjl/D0kk0DA5rM0pz2qSiYnpVG1VqK3GKB64VFbhKsLOLG3ae68JegcvWHaduRKr5H+wozX9kSweh9onX3y69TAXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708153327; c=relaxed/simple;
	bh=8NpmbJ+gfmJTEv37/idmLOJq2YThJe1CWEE0taqRs0E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B15qUFcOi9n19Ie5oV8hTQhUpvgu0z3KlWT4TyGXY4qHYAmOYriXAhNaq2PdfHBSF1aewLGip1W1pIRlTG2nxrqQ6lcRQro8aHeETd0XSyyO75s3nTnhZUt7MPFI8U5tPLb6mhRY+1fNb9zfaHypRWL9zAEGZdoz//FGuqe/IbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XElIW9Lk; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so345451266b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 23:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708153323; x=1708758123; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hs1VlpZsxeC5GOLK06WGcIjDrl11J8nbAUzkDUfDeRs=;
        b=XElIW9LkRKVbpYA2NGsfyLWSUsyvM6YwvEtJVWn4pXUiBGAbroyV7BtgGRgNoIW5Jg
         KVu+okL/AuvbPbkys0VdvUsQj5o7zyzyBvizjJCWn6kuWWAbWNjPS6hNOdhtjUB9Nx1t
         baNIY7jge0fQoeR/9qCVwIJIBkd8zilV+HOvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708153323; x=1708758123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hs1VlpZsxeC5GOLK06WGcIjDrl11J8nbAUzkDUfDeRs=;
        b=umqtFfd5lK/pVPIOojHuS8s+hnMMc2x3YRzaeAXGdp/pOSQou1E4w2hKekkIWa0yaR
         pIXZDDPqZ3t0p+ytNaDVuoR3VUmi5KwWYlLvzbudxqG1yaaavHVJ/enVauv25FrUnamX
         NWNUMqFHasEYCrG8WlhFSLv2q6MTzhNwIIyiVylncHfp3t9hp7h37jXeexvDEhVvnsXS
         xlLDs46fp9qf2QrRLShjNhzCtm97RwYSipxGf29ycPV76Wf2rk80GJynAYCXKzzgdwSk
         TxKLd5+Ee8ZQ0/VBHSk1Hot4hZUsBSz8LQYVkZX1oXC+OwowRzMTuHsQnTuhzkPmaoFx
         KSpA==
X-Forwarded-Encrypted: i=1; AJvYcCV2ehkZ8535Q6ES0iKdvMvt+9OUCuGQqHA20CGioy/8n4m4HwMRN9h6xPr2ifwk6xDwuBSdVeFmdE0dOa1YG6ldu9Ve8o9cbbhqaw==
X-Gm-Message-State: AOJu0YzxtcJ+XdDQ1cToC+Pmm/KDOlx6ZtQ6yckBPdSqR8Qwl54LjaGy
	yirPeR4hNbVWBVjksrsVEJRtBq+HpwVf92jw21JQO3HxFDl99flPO+pJvGACH/WPz2Z6QkzyGmI
	=
X-Google-Smtp-Source: AGHT+IHmqvb9Ct60VXDmHCN2UqOwUTbBBVtpx3Q4N5W0Nnizw0+O0PABMD8FfH7klm0BSVc8ZIWdMA==
X-Received: by 2002:a17:906:696:b0:a3e:b3b:128b with SMTP id u22-20020a170906069600b00a3e0b3b128bmr1025971ejb.50.1708153323128;
        Fri, 16 Feb 2024 23:02:03 -0800 (PST)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com. [209.85.218.43])
        by smtp.gmail.com with ESMTPSA id rg8-20020a1709076b8800b00a3e28471fa4sm232650ejc.59.2024.02.16.23.02.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 23:02:02 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a3122b70439so321788066b.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 23:02:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXekxb4heMJ+LmcC0I0B+soP7lnso/jlrktE6hh2bIPcxI8RyprW3xP+O+zVK9NPE+BR2urEyLXR1ussonl1aQt3tpskIuyqISKtg==
X-Received: by 2002:a17:906:c2d7:b0:a3c:9bc7:7a0e with SMTP id
 ch23-20020a170906c2d700b00a3c9bc77a0emr4749372ejb.9.1708153321660; Fri, 16
 Feb 2024 23:02:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240124-send-upstream-v3-1-5097c9862a73@chromium.org>
 <786c85c7-7b38-4a2a-85ec-282196de7b5e@collabora.com> <CAHc4DNKXOb54v7qJZJ2EsVP1KkMq7WnSJJLWhb2SzuhW_=qnxQ@mail.gmail.com>
In-Reply-To: <CAHc4DNKXOb54v7qJZJ2EsVP1KkMq7WnSJJLWhb2SzuhW_=qnxQ@mail.gmail.com>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Sat, 17 Feb 2024 15:01:25 +0800
X-Gmail-Original-Message-ID: <CAHc4DNKSj5MK5Pfi5DYm9hUqh=uxUs4S3uakqfht-3O18vgLTA@mail.gmail.com>
Message-ID: <CAHc4DNKSj5MK5Pfi5DYm9hUqh=uxUs4S3uakqfht-3O18vgLTA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: mt8195-cherry-tomato: change watchdog
 reset boot flow
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello AngeloGioacchino,

I noticed that this patch does not seem to have been landed yet.
Please let me know if there are any issues.

Thank you,
Hsin-Te


On Wed, Jan 24, 2024 at 5:04=E2=80=AFPM Hsin-Te Yuan <yuanhsinte@chromium.o=
rg> wrote:
>
> Hi AngeloGioacchino,
>
> This bug can be triggered by stopping watchdog daemon and running
> `sleep 60 > /dev/watchdog`.
>
> Regards,
> Hsin-Te
>
>
>
> On Wed, Jan 24, 2024 at 4:27=E2=80=AFPM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Il 24/01/24 08:51, Hsin-Te Yuan ha scritto:
> > > From: Hsin-Te Yuan <yuanhsinte@google.com>
> > >
> > > The external output reset signal was originally disabled and sent fro=
m
> > > firmware. However, an unfixed bug in the firmware on tomato prevents
> > > the signal from being sent, causing the device to fail to boot. To fi=
x
> > > this, enable external output reset signal to allow the device to rebo=
ot
> > > normally.
> > >
> > > Fixes: 5eb2e303ec6b ("arm64: dts: mediatek: Introduce MT8195 Cherry p=
latform's Tomato")
> > > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> >
> > Can't trigger the bug, but also this commit gives no side effects, so:
> >
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> >
> >
> > > ---
> > > Changes in v3:
> > > - Add Fixes tag
> > >
> > > Changes in v2:
> > > - Limit the effect only on tomato.
> > > ---
> > >   arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++
> > >   arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++
> > >   arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++
> > >   3 files changed, 12 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts=
 b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> > > index 2d5e8f371b6de..a82d716f10d44 100644
> > > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> > > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> > > @@ -23,3 +23,7 @@ &sound {
> > >   &ts_10 {
> > >       status =3D "okay";
> > >   };
> > > +
> > > +&watchdog {
> > > +     /delete-property/ mediatek,disable-extrst;
> > > +};
> > > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts=
 b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> > > index 2586c32ce6e6f..2fe20e0dad836 100644
> > > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> > > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> > > @@ -43,3 +43,7 @@ &sound {
> > >   &ts_10 {
> > >       status =3D "okay";
> > >   };
> > > +
> > > +&watchdog {
> > > +     /delete-property/ mediatek,disable-extrst;
> > > +};
> > > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts=
 b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> > > index f54f9477b99da..dd294ca98194c 100644
> > > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> > > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> > > @@ -44,3 +44,7 @@ &sound {
> > >   &ts_10 {
> > >       status =3D "okay";
> > >   };
> > > +
> > > +&watchdog {
> > > +     /delete-property/ mediatek,disable-extrst;
> > > +};
> > >
> > > ---
> > > base-commit: 64b50fcb03649ca7f0d762a50e7a3484cfc1d586
> > > change-id: 20230818-send-upstream-e91e615a893c
> > >
> > > Best regards,
> >

