Return-Path: <devicetree+bounces-99309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2B39696D1
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDA481C238F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 08:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7453D205E07;
	Tue,  3 Sep 2024 08:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cnu6F244"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DF619C562
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 08:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725351501; cv=none; b=bsChkx4eFtHpSU5hNAEfX9aefkPMG3VtkN5WCZbwJVYdyKvUW9zenyoH/p6Ku07lFbiin7WgBUNCA0FnAd4nLHMEzR2AqGxZ2pariNuqmIUnT21jhWb7U9v0eGArdoVITFsfntVRHS3qI+JcRaSvnSBZhCZXZZRqvoG4rK2/PvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725351501; c=relaxed/simple;
	bh=0qhgQvbmbEChy9ODs3F6wH1NeF0LrzPomJ4kP8FDAJg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=awP+JPi0xi7SWjj2EdtI/p2DdSfqqUKQC49upQzDrM50PophXeOfbdvsKF5foiIw53VJf6KmACMk+OC8TrbdYxHofg1z0AR47gpCSTTHupkwaf2NxOiiuQw91OgN7KwOxhqmQH09X0FkFm500OWBTYp5uK18Rhr3k7t5jqLSDOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cnu6F244; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5bef295a429so5226410a12.2
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 01:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725351497; x=1725956297; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q1ZJTZfVileTv9+Q3ffTr4495TIhf0ruixvRagHNqUI=;
        b=cnu6F244UOcmWaBI+dyfgfVfagjbBOZyyfTjl0n7eN8tQ6sT6XgsQOfndK5x0VONvv
         pRyuVLsLzh6np8J32IOroQlhKt78pe0AL0gXKKBGjYYWJptnlOf5rUgTF14MRtDFk50m
         MamhEIigXMXPjibvXbMDJC6Jo76buvyw40QfH4tN/Vuwxs7BxdIeb7gkDcc86k0eTwIN
         L8lTT7Y/JaLrYWR4uGuesY6wCOJc0SZJ0P5+hTVfQVl+5g6epzR+KumZvf9sV6CLxV4x
         3YkSZXche0Ybs8QTMSsYO+Q/LXPPUQ8YI8mmiC5/sg4+WU7Kux9mQlt9hT582pvVgAFE
         ZGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725351497; x=1725956297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q1ZJTZfVileTv9+Q3ffTr4495TIhf0ruixvRagHNqUI=;
        b=irzD8BHYFlzA1PmeL0jSrEyWK1aKdUDCixzxFLbyHanaZcrKw5f1eSJ2RWms3H/k8q
         8YWF4YegkvxvZy4FMHL85JT4IktAC9TI5lzDrTzg9kTW8aZruUvOnI7+HjnC70NRgi7G
         2yei0muFSPmw78FEUBdrqkw+YyA2kb3wiVXSCeVj4PMy1wom5u5ag39HK7X3DK+BsTT1
         ELB1+75D7NSPsop38T/h7XOiKks7tewiIw9paGdB6uBKCdAnksQG2IV5yEgLdNOg7mz3
         qJxeYtcSYyRkkbbxonUhCtpHY08vbzweIYJjoHZjUiqhaeAYUqYPCMrpPJsfln86dPC2
         zGVg==
X-Forwarded-Encrypted: i=1; AJvYcCXVJFfbj7WsvdlVJ9GzMugmP0heoCHvi2A9K3CarwpeTcs+c4M1XaftWCp4YQEmjUekAnbWLSehDdxC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo6dpS1TcEjTxDZiOvq3fdsOIIp298aD2HupLNzASBFzS45eL8
	N/oPKY6dhO7DdYFoM+rx4yaFrnnFgtLqupp51AKw6rCTZnz55zuygw4sS3Knha7nAjFA0gApen+
	7IFq/kQpZ9Htj8q3nMMkZgqxg3Wk=
X-Google-Smtp-Source: AGHT+IExhj9TbMIPpSAOQYnqhVtfgFz6Kh0TSu3TC4/B/lDTork0FER+WAdlyBXzR46cNlF8Xc3va8CNxWlCHaeeyrE=
X-Received: by 2002:a05:6402:3589:b0:5a3:8c9:3c1d with SMTP id
 4fb4d7f45d1cf-5c25c3ad6c5mr5258725a12.14.1725351496227; Tue, 03 Sep 2024
 01:18:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240901122135.1389702-1-pbrobinson@gmail.com>
 <20240901122135.1389702-3-pbrobinson@gmail.com> <34afe6c1857190a23521815d85660f6125f0d302.camel@icenowy.me>
 <5bbdd041-02a3-41de-832b-7f68cadca073@arm.com>
In-Reply-To: <5bbdd041-02a3-41de-832b-7f68cadca073@arm.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 3 Sep 2024 09:18:04 +0100
Message-ID: <CALeDE9NzerV+Da=aRuFg7H6QM27LB5ojvSFfkCiCfwVJTixsag@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: a64: Add WiFi/BT on Pine64
To: Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Sept 2024 at 09:08, Andre Przywara <andre.przywara@arm.com> wrote=
:
>
> Hi,
>
> On 03/09/2024 06:50, Icenowy Zheng wrote:
> > =E5=9C=A8 2024-09-01=E6=98=9F=E6=9C=9F=E6=97=A5=E7=9A=84 13:21 +0100=EF=
=BC=8CPeter Robinson=E5=86=99=E9=81=93=EF=BC=9A
> >> Enable the rtl8723bs WiFi/BT modules on the Pine64.
> >
> > I think the maintainer previously prefer to enable these modules with
> > DT overlays.
>
> Yes, we cannot have this enabled unconditionally, especially since this
> is explicitly given as the reason for the first two patches.
> So either this would just stay on the list, for reference, (maybe marked
> as DON'T MERGE), or, better: we indeed rewrite this as an overlay.

Yes, that's why it was separate, I wasn't sure how to label it TBH.

> I will give the series a test once I am back with my beloved boards.

Thanks.

> Cheers,
> Andre
>
> >
> >>
> >> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> >> ---
> >>   .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17
> >> ++++++++++++++++-
> >>   1 file changed, 16 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> >> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> >> index f04f0f1badc4..1d514859e664 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> >> @@ -138,6 +138,14 @@ &mmc1 {
> >>          mmc-pwrseq =3D <&wifi_pwrseq>;
> >>          bus-width =3D <4>;
> >>          non-removable;
> >> +       status =3D "okay";
> >> +
> >> +       rtl8723bs: wifi@1 {
> >> +               reg =3D <1>;
> >> +               interrupt-parent =3D <&r_pio>;
> >> +               interrupts =3D <0 3 IRQ_TYPE_LEVEL_LOW>; /* PL3 */
> >> +               interrupt-names =3D "host-wake";
> >> +       };
> >>   };
> >>
> >>   &ohci0 {
> >> @@ -303,7 +311,14 @@ &uart1 {
> >>          pinctrl-names =3D "default";
> >>          pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
> >>          uart-has-rtscts;
> >> -       status =3D "disabled";
> >> +       status =3D "okay";
> >> +
> >> +       bluetooth {
> >> +               compatible =3D "realtek,rtl8723bs-bt";
> >> +               device-wake-gpios =3D <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /=
*
> >> PL6 */
> >> +               enable-gpios =3D <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4
> >> */
> >> +               host-wake-gpios =3D <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /*
> >> PL5 */
> >> +       };
> >>   };
> >>
> >>   /* On Pi-2 connector */
> >

