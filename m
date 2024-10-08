Return-Path: <devicetree+bounces-108934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 178B4994538
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:19:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35CEEB2390E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A77518C93D;
	Tue,  8 Oct 2024 10:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KTKGWKIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8224716EB76
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728382773; cv=none; b=ZdPulfyepufzMipctml282w2yAGjb2ae3Cb4HuEAIIuSoDOcCh2369Er1jAZrNflSEnP6tg/25Wye6Jch955c2nlb1U3ONr0aPl4pwbC4W9aAFvmsWTbPI98qcwpiEBROHaLuWnuPs9YqZld29Llr+MTaO0hBdW6ai0nyXgAa9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728382773; c=relaxed/simple;
	bh=nAGZCflAMOzWY87QAmy+gjHCt6xgY2BaH9VKbulh8/o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n/q28QQftAxX7/FnnDFWDUpRHdbvNHQamhXHL0ion2zG/leYVaxcIGUkcHieBI7tNXKll8l3CFGwDJbZjRQ7Sc0V/WaRkwHbZdlf08KME5+ARNLAFYKVcPPLY/HlNsZIlQtu0uCI/rJ5kYNDxr1b9Zrvp8JQoupqnbKlggge4Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KTKGWKIt; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5398ec2f3c3so6820547e87.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 03:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728382770; x=1728987570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TKvX1hYx9ajM3nXc0rIUifJtaNFZ8Y/Ptkap6z3Rx6k=;
        b=KTKGWKIti/4EJUyRnU+nAFL2uVWTcbaFdRde4X1jXZ+smcSYY6CdCj19LUTml3S/UK
         J3O6cd0SJAhAVyj6rAmx+tTnZr5VHq4zMPbEqAcshBgKrtvJsfdixCsDUc53Mhiai0mS
         uT9+nxx0I/e5cV/lNRoHmr5deL639MA/OU5FI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728382770; x=1728987570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TKvX1hYx9ajM3nXc0rIUifJtaNFZ8Y/Ptkap6z3Rx6k=;
        b=T3EQiFZ63XAL/UObZcZiGvrjNqSGSFDY44K06KWZPuYHiiFOGfznqvOyBGjPJ9+Kiu
         BwUyZvM65V1poma3Z5bJDypbp9JzbxUG5V5GBg8/59V2hBvpXGpE3Fwox7aR+xbNfopQ
         y53v8tPTuGGneyACMy84So7XVVeeoPwHfYg5UcksgNRMbm8HvnH3/nxepnUmRCy1fYIb
         UqH0R/9Cb2koS+DUzh/zIezMTh/oRu0pzIYEZG0xF3AQylkppJUeyFlgKObe3zs99F42
         d3419DdsILAKw4PlS6n0CeaNDPzOhrEgvXqe449ZO+PTuFlUFmfi7Zfh2op9Ewb/Aum3
         tmcw==
X-Forwarded-Encrypted: i=1; AJvYcCUiJnlmGPS1Zv+4lNTNNk/ZvI+JLTmDF/PRjQC6zI5HhojSoVnHfAYDkL6DDwGjz1pANf3Z2S4SfKhe@vger.kernel.org
X-Gm-Message-State: AOJu0YwrgzRQi9Ua0fEsgxolIkv/tB8zNTQUiv7FGig1njBBSvGaN7rQ
	Ufu2WwwLYIC3r5IPoLUvRkkwVB7u3GZq0bTfX65EXqx/t4aTrO/PvfdTGDlVJrKjC3q5NYBXwBE
	n8cweOsTlogWyD8vn2reRKJhylS+kiNF6Dszg
X-Google-Smtp-Source: AGHT+IFJoapQyWXTBDWi7i6BA55pCB5dNb51Vflj21gDcWvKovhXowTlQiGaddCXCS59Hji0UirIv7xWQ1Sxn4CKUcU=
X-Received: by 2002:a05:6512:1193:b0:536:a68e:86f0 with SMTP id
 2adb3069b0e04-539ab88c48dmr7579835e87.27.1728382769452; Tue, 08 Oct 2024
 03:19:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008082051.4002438-1-wenst@chromium.org> <eab4ef1e-f63f-4561-b429-6dc3d7485871@collabora.com>
In-Reply-To: <eab4ef1e-f63f-4561-b429-6dc3d7485871@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 8 Oct 2024 18:19:18 +0800
Message-ID: <CAGXv+5Emb5b5m8i3MCJXS3fRND04B89v9s1x7JNk4aNj6U7yoA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8173-elm-hana: Add vdd-supply to
 second source trackpad
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 4:47=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 08/10/24 10:20, Chen-Yu Tsai ha scritto:
> > The Hana device has a second source option trackpad, but it is missing
> > its regulator supply. It only works because the regulator is marked as
> > always-on.
> >
> > Add the regulator supply, and the required post-power-on delay.
> >
> > Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana boa=
rd")
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 6 ++++++
> >   1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/a=
rm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> > index 8d1cbc92bce3..e03474702cad 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> > @@ -49,6 +49,12 @@ trackpad2: trackpad@2c {
> >               interrupts-extended =3D <&pio 117 IRQ_TYPE_LEVEL_LOW>;
> >               reg =3D <0x2c>;
> >               hid-descr-addr =3D <0x0020>;
> > +             /*
> > +              * The supply is always on. Adding the delay here
> > +              * needlessly delays the readiness of the trackpad.
>
> I'd say, let's be nice in this comment and let's explain the whole situat=
ion:
>
> The trackpad needs a post power on delay of 100ms but, at the time
> of writing, the power supply for it on this board is set as always-on,
> so we don't add that to avoid useless delays in the readiness of this dev=
ice.
>
>
> ...or....
>
> The trackpad needs a post power on delay of 100ms but the power supply fo=
r
> it on this board is always-on (and will always be), so we don't add delay=
s
> to avoid impacting on the time required for readiness of this device.
>
> > +              */
> > +             /* post-power-on-delay-ms =3D <100>; */
>
> Then you can remove this commented out property ;-)
>
> P.S.: Just to be clear, what I dislike is to see a property that is comme=
nted out.

Got it. Will rewrite. :D

ChenYu

