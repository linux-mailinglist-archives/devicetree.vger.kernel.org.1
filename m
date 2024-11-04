Return-Path: <devicetree+bounces-118737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 295259BB69E
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFD301F22048
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 13:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F101F94D;
	Mon,  4 Nov 2024 13:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cjO/glj3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4204412E4A
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 13:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730728065; cv=none; b=jCk0QG15NMvciI3yjO9rxsMTUCiJZLHMDaWbqvgjRhZEIfRMLLvoFzuFryTIQx65LLFe5jeb9ud8go7g3l3Fi5Tiwg592frL1Sobz6HIasU2DGcnr/os42PdaGYMamYxZb3K4N+jidDCfRGzIqDyi9w70TDrChyPxVgTBHhDhmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730728065; c=relaxed/simple;
	bh=d2Gs/FJxD1D/1W+hsOvxkmezFCiv8TLZLGxI4DNbMnE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PfPrUOVenZgLUAxrTkdMDYjkWFcHMnIGLwIaBrOaOLOl1U+LdM4EnQmYAPlSy7rqQcK7srrRjxvABqfFEGN3YAGwraKxEX0Zu12x20YI0RxXK8w9kQV7VeHJ9t6cSojDJhdO1DTKg/ALrXRE8lB0X4GATsro4UVZHp/mlXxwAn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cjO/glj3; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539ee1acb86so4173997e87.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 05:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730728061; x=1731332861; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LsymmwIGsuVs7v1n+LWpRRRaG0hjIy9yDhaEU8VEsww=;
        b=cjO/glj3+CQKyIhE3JTSgSjFpFJ4D51nAlx3aqY1AoX4OCSkNNyKR8WoQMRQbQZciD
         iA3MgOhG3ZWd0hL/xb0aKnpPDy8AMSvAbpLRxw8aNW35nfqD9q7mzv5jJaAluWvilEu/
         Mk++Paf84NMFwq52MDut49H5TaHh9wyhCSLTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730728061; x=1731332861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LsymmwIGsuVs7v1n+LWpRRRaG0hjIy9yDhaEU8VEsww=;
        b=CwmjEKjSOMayNkj9t3HsTVT/CR7GhilnqfDB1k95wl/hNrIJ84uxMOBrzugjCsG1xj
         3kKlh85g4Hxxivm7G4E+dA4lePfXusDah9XFvgv9qXyQWM/5rlQcBKB1KnI2YuyCj0tL
         yuAyTD7bXo30O061gPR1CksQ95mwW2AfvG67RELihJWYJbECMS5AErUc+WTkC8d09BSV
         Pqr+C6SjQlfuDLgJOJahAGhCG4R9CSjNVs2zhalf9SFKxxsmKxj6bALGrNeMni6uPjM7
         IKaPwS3nK5C96XkMaxLdnwjAAW3t4m0jLU4eZsk0cQUuaFl/2UWAZGNrQrdIbHmZmx7S
         dReA==
X-Forwarded-Encrypted: i=1; AJvYcCXS2bOy50NkNYcTJZzL8T0Wbh0xqgj+DIH7mFPREIOAtc3LoVlrsdWrJlJ0aubp8WwFtAnt0MmqcS3A@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3aFWgwJn/Pt9cjV2ovATIU7m+sedeUI5I54ziKI67/qrkpAHS
	YMzwQVKY1oZA51Cmkm1jwqVzqMV0wSBm6Omt7t0EQqeUR/EGZDWuzSZQmeq+aoMIrpJV9c6K1Z3
	A3l3BTdjhP5mOPx3xdFBklBNOwwfwIb29BXxW
X-Google-Smtp-Source: AGHT+IG6XUFtsKbcLLl53KOkLywI84S6ITEyyTl9D7WkFTQfnMFACCzmN85bTtyfiBZP6XY2rRglSKd6AWN+dPBO6zo=
X-Received: by 2002:a05:6512:230b:b0:539:9645:97ab with SMTP id
 2adb3069b0e04-53d65dfee01mr4788487e87.33.1730728061055; Mon, 04 Nov 2024
 05:47:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241030070224.1006331-1-wenst@chromium.org> <20241030070224.1006331-2-wenst@chromium.org>
 <CAGXv+5HVy41qee6kwVUeLV_DfA0=wk2X77kv81rBKAZDGE6mww@mail.gmail.com> <bbaa0c8f-9702-4252-a674-e46fb51f0a2a@collabora.com>
In-Reply-To: <bbaa0c8f-9702-4252-a674-e46fb51f0a2a@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 4 Nov 2024 21:47:30 +0800
Message-ID: <CAGXv+5GHP1M1rKwR8j+bN8GmpxWtpkfLTnvBdkg5wOvWanc-kw@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop
 pp3300_panel voltage settings
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2024 at 9:19=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 04/11/24 14:00, Chen-Yu Tsai ha scritto:
> > On Wed, Oct 30, 2024 at 3:02=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.or=
g> wrote:
> >>
> >> The pp3300_panel fixed regulator is just a load switch. It does not ha=
ve
> >> any regulating capabilities. Thus having voltage constraints on it is
> >> wrong.
> >>
> >> Remove the voltage constraints.
> >>
> >> Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board=
")
> >> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> >
> > I see that the other three patches were merged and included in the pull
> > request, but not this one. Were there any concerns?
> >
>
> Sorry I forgot to actually provide an explanation for that - yes, I do ha=
ve some
> comment about this one.
>
> Despite this being a load switch, it's still switching power from regulat=
or A to
> target device X, so this is technically still providing 3.3V to device X.
>
> Think about how a "regular" full-fledged regulator works: you can (someti=
mes) set
> a voltage, and then you can ENABLE the VOUT for said regulator (/rail): t=
his kind
> of "load switch" does exactly the same as the ENABLE switch for a full-fl=
edged
> regulator.

But it does not provide regulation. One cannot "set" the voltage on a load
switch; one can only set it on its upstream supply, if that supply provides
regulation.

IIRC Mark said some years ago that if a regulator doesn't regulate the
voltage, then the voltage constraints should not be given. The constraints
are then derived from its upstream supply.

That's the guideline I've followed for all the regulator related changes
I've done over the years. Does that work for you?

> So, this is switching on and off a power rail that is derived from a sour=
ce rail,
> practically creating... well, a "new" rail, with...
>
>   VIN=3Dsomewhere-3.3v,
>   VOUT=3Dsomewhere-still-3.3v
>
> Any objections/doubts/etc? :-)

I agree with most of it, except the part that I laid out above about the
load switch not providing regulation.

> P.S.: I'm writing fast, sorry if anything appears unclear, feel free to s=
hoot more
>        questions in case :-)

No, it's pretty clear, and I believe one of the common interpretations
I see. Thank you for the quick response.


Thanks
ChenYu

> Cheers,
> Angelo
>
> >
> > ChenYu
> >
> >> ---
> >>   arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
> >>   1 file changed, 2 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/=
arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> >> index 783c333107bc..7bbafe926558 100644
> >> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> >> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> >> @@ -35,8 +35,6 @@ pp1800_mipibrdg: pp1800-mipibrdg {
> >>          pp3300_panel: pp3300-panel {
> >>                  compatible =3D "regulator-fixed";
> >>                  regulator-name =3D "pp3300_panel";
> >> -               regulator-min-microvolt =3D <3300000>;
> >> -               regulator-max-microvolt =3D <3300000>;
> >>                  pinctrl-names =3D "default";
> >>                  pinctrl-0 =3D <&pp3300_panel_pins>;
> >>
> >> --
> >> 2.47.0.163.g1226f6d8fa-goog
> >>
>

