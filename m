Return-Path: <devicetree+bounces-39199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C9884BBBB
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5FD61C22470
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 17:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7B84C6B;
	Tue,  6 Feb 2024 17:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IMwU3Yl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4E5B67D
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 17:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707240007; cv=none; b=W1znf9UOAIu+fY6A8CJ+q+Sjcqqs/oXVtu+YACzzBRlBtbxwkEGrYAY85hWGbKBg/H+kjsEUHJALK+Q8UJHLuvZj66B90+WnAFCdaao446bkrGflS+wsOWAWCBIEJigeW72Ke1uPCCiJf4pvnccyVUJXtkfUqiyGf9BTsVsIuIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707240007; c=relaxed/simple;
	bh=7Uyi6yIcqYod+P2IwnXJG34WTDFw9Tx9oJBgJr18hjs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tC9A/9eJBIdoc/FDgbzi8qKeoARU1GnCiAcFhhJx83c5pbDbOT9yE4iSerno+TnznUjEh00XAckdZt7oXjCs5Y4L8QtCR5/m05GUnzJGI0DN6PUuTJSMunYLYguZ2J/WtkaBKhezT8GtmOcjE+thTlXIz9f30UKaByAIMGolCKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IMwU3Yl7; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40fb3b5893eso47706545e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 09:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707240004; x=1707844804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yO24H5owtgENtATBfciwVl5rPLofQnR2KLvl+C2r6QE=;
        b=IMwU3Yl7MTyTV4WrEvh8AgxX6WEifmW7f9bDhHmuLOzlIrzzJ0pWUlIPZ5NVzyYFzt
         15DdUtvUk81hkePA1Zfs9cQi6uByXi/P3yCdiY5F6o249LGNvOW2sQS0ZTJvY+tK5d3y
         ak0EaHSkl0wGw/CG4N6H2Jshuz+icrdGJM8yFNL6OMNDH/9jEbAYTj4XSkX7VKvGCH1w
         t6zdgpoynSiRCU0S3eOrVXdlF6SwJ4TMETwYMfYsfwD02mnVTOnwiCcyc7az5ZsDgJ3o
         hvCrM8dPIyHNzYzcce+9WzKRqcLvirfFMmzJ8zq2xclUcjCNDf3tbTNAQyAo6aDN2mgO
         2CYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707240004; x=1707844804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yO24H5owtgENtATBfciwVl5rPLofQnR2KLvl+C2r6QE=;
        b=qBqHGMy1HIECiwHO8DteiKCJG/XKQYjfds3/aGXaFXdkxIb0OzXBGqW+QIdl6QVW0Z
         +c2PQcMyXiV1iBtILqMYbpHnHBWUVJNOywN6JOZ5h9INt6N3tnXwkF9jGkOOFovz1n+H
         HrYl7TkKJfceDfyVK2f5PMkwPuqyYiKKsY2Tc0X72w6AKoKzdzrd5/6NrH537lPIJTJ+
         riopznvy40rk4adYVIWuUt/OqD9712Xgt58L0aobF4eTyIvzbhBYdFR3ycWR2Jm3VSBH
         LN9RpfsuYhn8tU6zqnR26ze/FJBm7CDZcTFMtatQXqcy0PgHc5hQTTRYj9ZA1djJDTVS
         ERCQ==
X-Gm-Message-State: AOJu0YyRLbvlTYbAzkvND0DO1WnawOUM/VXdArN6GiQbRrcJnZgyi/w9
	bG0NCMRDXmNS5p0k0Sa7cj7cbwBKbUDD9LJ2b05JATcALBb8bL8r
X-Google-Smtp-Source: AGHT+IHHmMUhSlVvsX0qqYDcPjOJhJxkHXsVNPCQ/GNEu7A+7qNZ7Hm4q8JJ/+wls+PtXWv82UyMQA==
X-Received: by 2002:a05:600c:5490:b0:40f:ba0b:16b3 with SMTP id iv16-20020a05600c549000b0040fba0b16b3mr2871453wmb.2.1707240004287;
        Tue, 06 Feb 2024 09:20:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUcaP06J19h0rK5CYaD7cMopWN7XslSGg6Kl5BkbdLdIMITucEL4xJJOj7hhoy4R7Tkxk9bCzuRO1BxAJ+xXFILyKj+w1yo4kFKPhMvo/+KjVBxqIA8wi/CiKEohgj+2HSbNLXlqufdFq4RpUK/OdylDJB/0gG+xThrV4V08e905AkMhFd71N3P8EVgPsIQrZWk7jhBJFmPHTsVcOHDRa2oUEjQL/sIiUK7OnPgm3oYdWcNvgkr995v8MDoJZgbZaqTjGM000g9Dm0hUR56wIRSnsC2Bh7qZHmyZ0m1KXmLkKFwxF+wEiJAMljsISev9d/i6gqTowenOZ3qGg4feVFxvusrHHB6OANk
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c470900b0040fe2d3aec4sm2569802wmo.19.2024.02.06.09.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 09:20:03 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: wens@csie.org
Cc: Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject:
 Re: [PATCH 2/2] arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
Date: Tue, 06 Feb 2024 18:20:02 +0100
Message-ID: <2717857.mvXUDI8C0e@jernej-laptop>
In-Reply-To:
 <CAGb2v66=s-k5xNtL9N_Tyzzk92u_32Hk_+V+rFVYne3=fnMjdA@mail.gmail.com>
References:
 <20240204093255.148972-1-andre.przywara@arm.com>
 <8371906.NyiUUSuA9g@jernej-laptop>
 <CAGb2v66=s-k5xNtL9N_Tyzzk92u_32Hk_+V+rFVYne3=fnMjdA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Dne torek, 06. februar 2024 ob 02:03:21 CET je Chen-Yu Tsai napisal(a):
> On Tue, Feb 6, 2024 at 2:26=E2=80=AFAM Jernej =C5=A0krabec <jernej.skrabe=
c@gmail.com> wrote:
> >
> > Dne nedelja, 04. februar 2024 ob 10:32:55 CET je Andre Przywara napisal=
(a):
> > > In contrast to other devices using Allwinner SoCs, the Transpeed 8K61=
8-T
> > > TV box uses a mainline supported WiFi chip: it's a Broadcom 4335
> > > compatible, packaged by a company called Murata.
> > > It works nicely with the Linux driver, when providing the respective
> > > firmware files.
> > >
> > > Add the required DT nodes to let the kernel find the SDIO device.
> >
> > Can you reword message in a way to omit Linux?
>=20
> Probably reword it to say "add nodes so that custom MAC addresses can be
> associated with it"?
>=20
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > >  .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++=
++
> > >  1 file changed, 23 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k61=
8-t.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> > > index 8ea1fd41aeba..7ec4098e707b 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> > > @@ -16,6 +16,7 @@ / {
> > >
> > >       aliases {
> > >               serial0 =3D &uart0;
> > > +             ethernet1 =3D &sdio_wifi;
> > >       };
> > >
> > >       chosen {
> > > @@ -39,6 +40,15 @@ reg_vcc3v3: vcc3v3 {
> > >               regulator-max-microvolt =3D <3300000>;
> > >               regulator-always-on;
> > >       };
> > > +
> > > +     wifi_pwrseq: wifi_pwrseq {
> > > +             compatible =3D "mmc-pwrseq-simple";
> > > +             clocks =3D <&rtc CLK_OSC32K_FANOUT>;
> > > +             clock-names =3D "ext_clock";
> > > +             pinctrl-0 =3D <&x32clk_fanout_pin>;
> > > +             pinctrl-names =3D "default";
> > > +             reset-gpios =3D <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
> > > +     };
> > >  };
> > >
> > >  &ehci0 {
> > > @@ -60,6 +70,19 @@ &mmc0 {
> > >       status =3D "okay";
> > >  };
> > >
> > > +&mmc1 {
> > > +     vmmc-supply =3D <&reg_dldo1>;
> > > +     vqmmc-supply =3D <&reg_aldo1>;
> > > +     mmc-pwrseq =3D <&wifi_pwrseq>;
> > > +     bus-width =3D <4>;
> > > +     non-removable;
> > > +     status =3D "okay";
> > > +
> > > +     sdio_wifi: wifi@1 {
> > > +             reg =3D <1>;
> > > +     };
> >
> > I don't think this node and alias are useful in any way. SDIO scan will=
 find
> > device regardless and potential mac property set up by bootloader will =
be
> > ignored anyway.
>=20
> If a node with the matching function number is found, the MMC core will
> associate the node with the SDIO function device before calling the probe
> function. It has worked correctly for quite some time.

Ah, I didn't know. Ok then, Andre, just update commit message and it's good
to go.

Best regards,
Jernej

>=20
> If the driver isn't taking the MAC address given in the DT, then that's
> a driver issue.
>=20
> ChenYu
>=20
> > Best regards,
> > Jernej
> >
> > > +};
> > > +
> > >  &mmc2 {
> > >       vmmc-supply =3D <&reg_dldo1>;
> > >       vqmmc-supply =3D <&reg_aldo1>;
> > >
> >
> >
> >
> >
>=20





