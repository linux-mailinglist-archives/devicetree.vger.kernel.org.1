Return-Path: <devicetree+bounces-129116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D34989EAAD6
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D50E2838B8
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 08:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1472309AA;
	Tue, 10 Dec 2024 08:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gDK5NBvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D23230990
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 08:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733820023; cv=none; b=E+ZutH6CL0PUI3CQPpHUxNuErdtEsV4rel0h+vhn2QeybVSKZWz7fszw3U7T32V6HD3aUMOOy/uw/5BAAvGXW3LBR4HWjJREchvMJ8EOzYAjx8f8xvH9CAmJttOzlkMIQSRI6TPl0kvSQlHG7D+rSVjhgp1nABZ8u+9J9qODPSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733820023; c=relaxed/simple;
	bh=qCKDfV1D9yzn4CTwd+vsnF2MOOvE4HiqMr1gmvi18NY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q7oUKn565gRJmDbJ8dwFzaWxWQFSkh6Mg/MBSCJujbOFEEJe3R8Y/qAZik3s0aFQKXa5JbA5+HzyRRoCOGiNiI5RyOh1QxhCyxziIJqZ/wuTHUmIy6lb/531sMAsZA5uRXgfj1TuWOAT6ZqK/lrMErivBkBYqKPcikWz0sr0XbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gDK5NBvc; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-540201cfedbso1570068e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 00:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733820019; x=1734424819; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sOUvJSCroFD0KCytXgmkZjSfl4sfftW4avujGnTnXVw=;
        b=gDK5NBvcpB0ocsiSWJlOuT/QoEx0n8KTAAsUuZ27cuIuB0s2PeQ1m8X10bUwUm37RT
         sTyDDZBmRABL0RtyIg6N0XlSWplqxntfhRfXd7ZyneBNzFPX1JNrfyk5Rb8c8N2mWn00
         IKc1vTX84j3LeV26k/yz++ySWKEFlPqJMs4WE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733820019; x=1734424819;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sOUvJSCroFD0KCytXgmkZjSfl4sfftW4avujGnTnXVw=;
        b=l0yiCEyivFGWvEUnCqT+zyVUcGejUZ4yLRkTDkwq1GemfP0drtvPIGFU09/wqZcSVh
         lOLNch3mS3PnOiAEYyzMXYG1UOYywAP0EQEzo0Uf6jP9I6UyunpEALu5i/SMdpVrgCkI
         zu9nkpRHUlw11aSJRQTn7cw7xiW3mwt+4DXje/sGxosigoYlVgsZg6nDaCK+I49YDYTU
         chGyiSu5wxIrD55ImTjr2yw6Vsr9JCGpl2NyMek+Fda3PxPa+H/zsjnunvXT9nFUxoVQ
         D2tKbKL8HQ5qt13+PXjjv1XzldznXmC2iIKMkMr/sGtZZqoV3LeASuvhUkSwGdizlI3p
         07Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUb3zQRMY6CAyX6RNCGEt5AMeCxg8EkyCn38OzHV9z0UWGo15/6pTqyfwuOVJ/grNskZCdOxPBHyySP@vger.kernel.org
X-Gm-Message-State: AOJu0YzaASaeU3Q0FsPXiet1H3bOr34KB6YAtzh8tVAIwJuJMGmtN9uM
	wmIg4tterEZR5io5WTPEsnRaiX56IWfkiRhx4lHd1FuiKsLdYdLqjridMfwJAQNjtVrGdP/k1U7
	CTYbo54IrRb1uYP5UE8spCnGS9yBdWwWi9a5r
X-Gm-Gg: ASbGncuj7t1o5rvxo8E1FU3wpgoWwru2ezLBgyzRLPOuo/nDvYATkvCy7sV1TsBmfbg
	e4/qHP/yIx5Wid0PabUuecuo+3Tm5meSEfXOPyZXL50CAfiiE3zP1f98lBK/KoNQ=
X-Google-Smtp-Source: AGHT+IEcKKrV7NtntOv/HjB/G1zq4DlNB44Pf3+LGaARGt/ovezLGp7A3gf192BysZYg6DvlHdDVPiDTJwrr5ZbymyQ=
X-Received: by 2002:ac2:4f10:0:b0:53e:3a01:cf4f with SMTP id
 2adb3069b0e04-540240c0f8amr1339484e87.14.1733820019366; Tue, 10 Dec 2024
 00:40:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241030070224.1006331-1-wenst@chromium.org> <20241030070224.1006331-2-wenst@chromium.org>
 <CAGXv+5HVy41qee6kwVUeLV_DfA0=wk2X77kv81rBKAZDGE6mww@mail.gmail.com>
 <bbaa0c8f-9702-4252-a674-e46fb51f0a2a@collabora.com> <CAGXv+5GHP1M1rKwR8j+bN8GmpxWtpkfLTnvBdkg5wOvWanc-kw@mail.gmail.com>
 <35392d9d-56a3-4db8-b500-6272d0bd275c@collabora.com>
In-Reply-To: <35392d9d-56a3-4db8-b500-6272d0bd275c@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 10 Dec 2024 16:40:08 +0800
Message-ID: <CAGXv+5H_=He4+vBcaoVbtO05c6hPWV46OTRfR+S8XVuvk_EaYg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop
 pp3300_panel voltage settings
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2024 at 4:27=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 04/11/24 14:47, Chen-Yu Tsai ha scritto:
> > On Mon, Nov 4, 2024 at 9:19=E2=80=AFPM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Il 04/11/24 14:00, Chen-Yu Tsai ha scritto:
> >>> On Wed, Oct 30, 2024 at 3:02=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.=
org> wrote:
> >>>>
> >>>> The pp3300_panel fixed regulator is just a load switch. It does not =
have
> >>>> any regulating capabilities. Thus having voltage constraints on it i=
s
> >>>> wrong.
> >>>>
> >>>> Remove the voltage constraints.
> >>>>
> >>>> Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu boa=
rd")
> >>>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> >>>
> >>> I see that the other three patches were merged and included in the pu=
ll
> >>> request, but not this one. Were there any concerns?
> >>>
> >>
> >> Sorry I forgot to actually provide an explanation for that - yes, I do=
 have some
> >> comment about this one.
> >>
> >> Despite this being a load switch, it's still switching power from regu=
lator A to
> >> target device X, so this is technically still providing 3.3V to device=
 X.
> >>
> >> Think about how a "regular" full-fledged regulator works: you can (som=
etimes) set
> >> a voltage, and then you can ENABLE the VOUT for said regulator (/rail)=
: this kind
> >> of "load switch" does exactly the same as the ENABLE switch for a full=
-fledged
> >> regulator.
> >
> > But it does not provide regulation. One cannot "set" the voltage on a l=
oad
> > switch; one can only set it on its upstream supply, if that supply prov=
ides
> > regulation.
> >
> > IIRC Mark said some years ago that if a regulator doesn't regulate the
> > voltage, then the voltage constraints should not be given. The constrai=
nts
> > are then derived from its upstream supply.
> >
> > That's the guideline I've followed for all the regulator related change=
s
> > I've done over the years. Does that work for you?
> >
>
> Ok, let's go with that then.
>
> There's only one problem - patches 2 to 4 don't apply for whatever reason=
, is there
> any dependency?

I believe they were already applied in the previous cycle? At least
they were dropped from my branch automatically after a recent rebase.

ChenYu

> Cheers,
> Angelo
>
> >> So, this is switching on and off a power rail that is derived from a s=
ource rail,
> >> practically creating... well, a "new" rail, with...
> >>
> >>    VIN=3Dsomewhere-3.3v,
> >>    VOUT=3Dsomewhere-still-3.3v
> >>
> >> Any objections/doubts/etc? :-)
> >
> > I agree with most of it, except the part that I laid out above about th=
e
> > load switch not providing regulation.
> >
> >> P.S.: I'm writing fast, sorry if anything appears unclear, feel free t=
o shoot more
> >>         questions in case :-)
> >
> > No, it's pretty clear, and I believe one of the common interpretations
> > I see. Thank you for the quick response.
> >
> >
> > Thanks
> > ChenYu
> >
> >> Cheers,
> >> Angelo
> >>
> >>>
> >>> ChenYu
> >>>
> >>>> ---
> >>>>    arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
> >>>>    1 file changed, 2 deletions(-)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi =
b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> >>>> index 783c333107bc..7bbafe926558 100644
> >>>> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> >>>> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> >>>> @@ -35,8 +35,6 @@ pp1800_mipibrdg: pp1800-mipibrdg {
> >>>>           pp3300_panel: pp3300-panel {
> >>>>                   compatible =3D "regulator-fixed";
> >>>>                   regulator-name =3D "pp3300_panel";
> >>>> -               regulator-min-microvolt =3D <3300000>;
> >>>> -               regulator-max-microvolt =3D <3300000>;
> >>>>                   pinctrl-names =3D "default";
> >>>>                   pinctrl-0 =3D <&pp3300_panel_pins>;
> >>>>
> >>>> --
> >>>> 2.47.0.163.g1226f6d8fa-goog
> >>>>
> >>
>
>

