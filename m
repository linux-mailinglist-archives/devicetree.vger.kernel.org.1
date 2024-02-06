Return-Path: <devicetree+bounces-38863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C92884AB59
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 02:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF8051F252F9
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 01:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AE4ED9;
	Tue,  6 Feb 2024 01:03:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9281367
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 01:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707181416; cv=none; b=GLeABhszBuM0T5X8dMM5wq0oLmOGa6Ypg784tZWVD5LwKmP/jmaRadKLlLtGrQfYS1sGQfkNKyiH2xl32JQvitc6/dET+sbMiKvAtYvGWi0cEAXXso/uECA0T8SZ7qaO+LAx2EZtuNj7HORSfA6fIpFxFHEax5xQzrXaqLrOUlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707181416; c=relaxed/simple;
	bh=m+hqrbnjYzjb3f/TfrLbr6WE8hRengMuZ2HnAv9/dgw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nwu68TJ8ut+rHOIuH/TyRNjdKkNVg5feHTo96jmFJtJ/EPx1aIZFINst0s5EnZ1lfztehz7WZGiYxWyxKqvKoHbZ/Xx1EBvTx8Ra2MS96V2xGRt5AU4CPkLiXU27t6r1rfBUrxX7jcT+GiYwICJguyRSO+8ZSfVzdLKvjx47ZYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6e0518c83c6so609829b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 17:03:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707181413; x=1707786213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eejqj0cnRGuq/NpBYeNhmqSIOanT/DXHEIV03E8ZoX0=;
        b=MArd/gHCU0puDJjvshiZpl2z4DnA2aKEevbFhbI5TnlkmSgqFfd+aqwltRrurKUPIf
         Cw6swjmrVDuTyDvoNdZvZf/M1yWZ0O9ywHd7z6lnz8CmqWvHDtRGOW/FiNJE1jJeL5Ce
         v/O8cs41juesBnynwDj7EX7NAS4FzdODFAQ1YGSdEe7roADbfLAqXDTdXOxum9bwgPlk
         MBJUKzy/enpoh8rppPGTzA0JUmLGbcQCfe2/6sy3ablI/Jp7atjPWofW4Ahf7hKg3MbY
         R7M4x7J5ltks5P5ul9xSM9/zE1TtFaEux7SaJ5EtjpAk28gqlpcum+gvaNWgdWcZrMo2
         rBvA==
X-Gm-Message-State: AOJu0Yy2mrxgBGO4/3/0SqzFj8yTPV7PevOSVXpzEARyQW5slntRpi8q
	G/x6SBjCRalzDrhORjRfwCYl8K0MFWYntCBu21nxWUAraxfCfUcEpyooAlvYrdRb0A==
X-Google-Smtp-Source: AGHT+IE3g7zCtDMEK2Ve/RTDY9kZQR3CNdJ/Q9R1UIO5E/VzXpt5tm3cPaZ5C87eE6Jj78t7iBwXHg==
X-Received: by 2002:a05:6a00:4589:b0:6e0:2827:2a27 with SMTP id it9-20020a056a00458900b006e028272a27mr1189819pfb.11.1707181412922;
        Mon, 05 Feb 2024 17:03:32 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUn4fiTYFZL7y8qxMGsxTwL5w7udzvkvB1pEFaDJrvWAzebBzDVWBNqiqTvC4Q868At7vBzT7bsp9icDyQsstDobk/yxcgGRIt/Lw==
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com. [209.85.215.177])
        by smtp.gmail.com with ESMTPSA id b17-20020aa78ed1000000b006e042b50c39sm522273pfr.144.2024.02.05.17.03.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 17:03:32 -0800 (PST)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-5cdbc4334edso4032341a12.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 17:03:32 -0800 (PST)
X-Received: by 2002:a05:6a21:a593:b0:19e:32fa:b178 with SMTP id
 gd19-20020a056a21a59300b0019e32fab178mr179606pzc.31.1707181412200; Mon, 05
 Feb 2024 17:03:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204093255.148972-1-andre.przywara@arm.com>
 <20240204093255.148972-3-andre.przywara@arm.com> <8371906.NyiUUSuA9g@jernej-laptop>
In-Reply-To: <8371906.NyiUUSuA9g@jernej-laptop>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 6 Feb 2024 09:03:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v66=s-k5xNtL9N_Tyzzk92u_32Hk_+V+rFVYne3=fnMjdA@mail.gmail.com>
Message-ID: <CAGb2v66=s-k5xNtL9N_Tyzzk92u_32Hk_+V+rFVYne3=fnMjdA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andre Przywara <andre.przywara@arm.com>, linux-sunxi@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Nick Alilovic <nickalilovic@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 2:26=E2=80=AFAM Jernej =C5=A0krabec <jernej.skrabec@=
gmail.com> wrote:
>
> Dne nedelja, 04. februar 2024 ob 10:32:55 CET je Andre Przywara napisal(a=
):
> > In contrast to other devices using Allwinner SoCs, the Transpeed 8K618-=
T
> > TV box uses a mainline supported WiFi chip: it's a Broadcom 4335
> > compatible, packaged by a company called Murata.
> > It works nicely with the Linux driver, when providing the respective
> > firmware files.
> >
> > Add the required DT nodes to let the kernel find the SDIO device.
>
> Can you reword message in a way to omit Linux?

Probably reword it to say "add nodes so that custom MAC addresses can be
associated with it"?

> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-=
t.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> > index 8ea1fd41aeba..7ec4098e707b 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> > @@ -16,6 +16,7 @@ / {
> >
> >       aliases {
> >               serial0 =3D &uart0;
> > +             ethernet1 =3D &sdio_wifi;
> >       };
> >
> >       chosen {
> > @@ -39,6 +40,15 @@ reg_vcc3v3: vcc3v3 {
> >               regulator-max-microvolt =3D <3300000>;
> >               regulator-always-on;
> >       };
> > +
> > +     wifi_pwrseq: wifi_pwrseq {
> > +             compatible =3D "mmc-pwrseq-simple";
> > +             clocks =3D <&rtc CLK_OSC32K_FANOUT>;
> > +             clock-names =3D "ext_clock";
> > +             pinctrl-0 =3D <&x32clk_fanout_pin>;
> > +             pinctrl-names =3D "default";
> > +             reset-gpios =3D <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
> > +     };
> >  };
> >
> >  &ehci0 {
> > @@ -60,6 +70,19 @@ &mmc0 {
> >       status =3D "okay";
> >  };
> >
> > +&mmc1 {
> > +     vmmc-supply =3D <&reg_dldo1>;
> > +     vqmmc-supply =3D <&reg_aldo1>;
> > +     mmc-pwrseq =3D <&wifi_pwrseq>;
> > +     bus-width =3D <4>;
> > +     non-removable;
> > +     status =3D "okay";
> > +
> > +     sdio_wifi: wifi@1 {
> > +             reg =3D <1>;
> > +     };
>
> I don't think this node and alias are useful in any way. SDIO scan will f=
ind
> device regardless and potential mac property set up by bootloader will be
> ignored anyway.

If a node with the matching function number is found, the MMC core will
associate the node with the SDIO function device before calling the probe
function. It has worked correctly for quite some time.

If the driver isn't taking the MAC address given in the DT, then that's
a driver issue.

ChenYu

> Best regards,
> Jernej
>
> > +};
> > +
> >  &mmc2 {
> >       vmmc-supply =3D <&reg_dldo1>;
> >       vqmmc-supply =3D <&reg_aldo1>;
> >
>
>
>
>

