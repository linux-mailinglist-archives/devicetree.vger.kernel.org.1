Return-Path: <devicetree+bounces-151080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B5FA4459C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 545C5169D6C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7501A18C00B;
	Tue, 25 Feb 2025 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BnD6YPQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED1B18C903
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740500008; cv=none; b=Mdip7kwACa9s/lzdQWIL6CDCbRWjhDgd3h8yhybHl1iI+K1hXYdZNJl5L6vCr/OQuikSs6DQtjoTEJY/+klpaIu8E3/03sIGzQBfYqoPhxNUEkmzGrW64qN3KTk9Usv2jTLAvDL/oNQpVXjJ5IAiIS2fZzWvHjibT3McT+bv8cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740500008; c=relaxed/simple;
	bh=l1x9b2hctR2WDpkifu0IEUFYsP/9MX9JX8s1GvEUSYY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QCWugj/1f+C3ag8zQLuWq0smlvJ8Eau6wDgh564FgeBHeFt23BG6C5rw62jlh0iRW5SJYyA2tkk7SjhRqMjUDnExq8L/tWfCllUaOOVBaTaoJl+eXRb1IChb7VAva515euSOomRufG4iIr5DLJRvLVOR8V5Oot38xeDHnPQlRhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BnD6YPQP; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5dee1626093so12241849a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740500005; x=1741104805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+eEISZt3JOScjhtFEQZpKgi6d+Uc1Zsb3iM25CqS+g=;
        b=BnD6YPQPTs7tHHkPDZUwKNMn8cACA+S3cmmZlUgvGtQ6mpxhRyCnmWFKpo1A5guph2
         /BPv/t5A4/E0f15E10xrQggp1ryhESj+ljeWRaATT5KUXXJXq9AP59oIx2ESYjqvdNna
         UU4SEDMpFsHKpxMyqpgnt8FHnn2p5nypIjkvMgHwW/bfivGzKvYJgTsG33iQJGBqVm3p
         fXhbwk4pAuSSp0oICxRwf/k53W8VRand06NMQHm689up6gQNLSc7WddBCz+0tCq01TsG
         zSHm99W5YwHnVVNIu+hygNI5Sn1EW5fhHxKY5x62jaDnyNLUamkkZPDJlrfK6cdD2eur
         2lVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740500005; x=1741104805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+eEISZt3JOScjhtFEQZpKgi6d+Uc1Zsb3iM25CqS+g=;
        b=dAOuyny5Zfo3uQx3Ss+S/MMsJeFher+eaqzCsV8jVvHJb+7DGts65CC6yPS9gReYDq
         m6fx/t70Zjgh6fbGx0kAvef9GA2lbTBWT5kvCVQZh7T1D7k20piTPbg91ASO+7XQjZhT
         JyLkVKABFeLihTZIeSXGEfegG3frRiB9Ui1UN5VJ/JKV8yiM+osSNqzon6J2TNX6t1Wv
         NfN0Am4Z7ZJOh8Gs7HUkv0wqFCxN8fx9484YEWAnUxOWFOdHfaG7FQlz3yedBBThMHwI
         b8rIZJX1Bg2ivEF5CoM4n4B7GQOqIAr7Y46zAYFpPMRtg6m5l7M1h4r9iYlm1qxtrm4Y
         MTpw==
X-Forwarded-Encrypted: i=1; AJvYcCVS2MJniUoO+ehYMcIfEXbE6QfzhsEYQlHzgs8W+xDowH2y4nVKcMHARrRDNy7yZlpN5xYCWL8wxduk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4qGT9WEhEQGjuLPnSAJ8nrSg7SfTkBRGUuzvTSB7QcQluEgsK
	6YiSHSQtIpQoDCRuygolLKAg7LDb2WbR9xUX8bBuxFqDZ+EcOu2y
X-Gm-Gg: ASbGncs5qIJgcVAQJiFets9OA0rPHuFmrU+eCrYFMAhux098NM+x2UgEG/CjjSP9PG5
	pppc46QILh21y0Fnv2+fABYIc2OGzkmiZON1ahqWzMc0InlvAoC58ohOSBiH/mpWG+3C9uX8RRB
	87oEhiY2HSTPauZIXtgfedoX4TEXDoBrZhi3RHDvE7HXcUfIWtC0/1LI/Awgcywpgosf6dwt3He
	V3ibkijtCIbzv/v3Euu9e67OJ//7qwXJC83+Y+cgUnHL8sXGgiTmXqWXLO1i8EgYp/LWhKQP2uP
	q29sMlUZTuTAnbu7ntbBBtWovWymr3+4dsmbN5P8YM7Oq7LHN7/1MM5ooxjpdhr+MAR6lgTklFt
	2Mg==
X-Google-Smtp-Source: AGHT+IFIILcYvOtLM6P/RoqbO55kp3W0YqwRvqh8xqIktLfjpEV6p6teoo2txU+Fn1NEQa0aCpxTag==
X-Received: by 2002:a05:6402:358f:b0:5de:5cb3:e82a with SMTP id 4fb4d7f45d1cf-5e0a1116e25mr23929151a12.0.1740500004235;
        Tue, 25 Feb 2025 08:13:24 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e460ff8602sm1390888a12.64.2025.02.25.08.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 08:13:23 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
 devicetree@vger.kernel.org, samuel@sholland.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject:
 Re: [PATCH 1/4] arm64: dts: allwinner: h700: Add MMC2 for Anbernic RG35XX
Date: Tue, 25 Feb 2025 17:13:22 +0100
Message-ID: <6132364.lOV4Wx5bFT@jernej-laptop>
In-Reply-To:
 <DM6PR19MB3722684AEFDAC7C57927F58EA5C02@DM6PR19MB3722.namprd19.prod.outlook.com>
References:
 <20241018160617.157083-1-macroalpha82@gmail.com>
 <1884930.atdPhlSkOF@jernej-laptop>
 <DM6PR19MB3722684AEFDAC7C57927F58EA5C02@DM6PR19MB3722.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 24. februar 2025 ob 19:17:42 Srednjeevropski standardni =C4=
=8Das je Chris Morgan napisal(a):
> On Sat, Feb 22, 2025 at 11:44:39AM +0100, Jernej =C5=A0krabec wrote:
> > Hi Chris,
> >=20
> > sorry it took so long.
> >=20
> > Dne petek, 18. oktober 2024 ob 18:06:14 Srednjeevropski standardni =C4=
=8Das je Chris Morgan napisal(a):
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >=20
> > > Add support for the second MMC slot on the Anbernic RG35XX series.
> > > The second MMC card is connected to MMC2 (WiFi if present is MMC1).
> > > The MMC logic is powered by cldo3 via the power domain to which
> > > it is connected, and also has an external 3.3v GPIO controlled
> > > regulator required for functionality.
> > >=20
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  .../sun50i-h700-anbernic-rg35xx-2024.dts      | 27 +++++++++++++++++=
=2D-
> > >  1 file changed, 25 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35x=
x-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024=
=2Edts
> > > index 80ccab7b5ba7..e2039fd76b3d 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.=
dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.=
dts
> > > @@ -18,6 +18,9 @@ / {
> > >  	compatible =3D "anbernic,rg35xx-2024", "allwinner,sun50i-h700";
> > > =20
> > >  	aliases {
> > > +		mmc0 =3D &mmc0;
> > > +		mmc1 =3D &mmc2;
> > > +		mmc2 =3D &mmc1;
> >=20
> > Please drop those. As a rule, we don't have it in any DT, since there a=
re more
> > universal to identify root partition than a relying on device order.
>=20
> Would it be okay at least to keep the mmc2 alias mapped to physical
> device mmc1? Confusingly enough, this device is such that mmc0 is the
> first mmc card, mmc1 is the SDIO wifi card (not always present depending
> on device), and mmc2 is the second mmc card. That way the WiFi at least
> when present is always predictably at the mmc2 alias.

This is standard for all Allwinner SoCs:

mmc0 -> SD card
mmc1 -> SDIO, more or less only wifi modules
mmc2 -> eMMC or SD card

Such ordering is due to mmc controller capabilities. And no, no exceptions
for labels.

>=20
>=20
> >=20
> > >  		serial0 =3D &uart0;
> > >  	};
> > > =20
> > > @@ -175,6 +178,15 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power inpu=
t */
> > >  		regulator-min-microvolt =3D <5000000>;
> > >  		regulator-max-microvolt =3D <5000000>;
> > >  	};
> > > +
> > > +	reg_vcc3v3_mmc2: regulator-vcc3v3-mmc2 {
> > > +		compatible =3D "regulator-fixed";
> > > +		enable-active-high;
> > > +		gpio =3D <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
> > > +		regulator-min-microvolt =3D <3300000>;
> > > +		regulator-max-microvolt =3D <3300000>;
> > > +		regulator-name =3D "vcc3v3-mmc2";
> > > +	};
> > >  };
> > > =20
> > >  &cpu0 {
> > > @@ -186,10 +198,21 @@ &ehci0 {
> > >  };
> > > =20
> > >  &mmc0 {
> > > -	vmmc-supply =3D <&reg_cldo3>;
> > > -	disable-wp;
> > > +	bus-width =3D <4>;
> > >  	cd-gpios =3D <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
> > > +	disable-wp;
> > > +	no-1-8-v;
> >=20
> > Please leave properties in same order to minimize patch size. From
> > what I can see, only above property is added, which is not needed anywa=
y.
> >=20
>=20
> Acknowledged. I just figured I'd alphabetize them, but you're right
> it's a bit anal.
>=20
> > > +	vmmc-supply =3D <&reg_cldo3>;
> > > +	status =3D "okay";
> > > +};
> > > +
> > > +&mmc2 {
> > >  	bus-width =3D <4>;
> > > +	cd-gpios =3D <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
> > > +	disable-wp;
> > > +	no-1-8-v;
> > > +	vmmc-supply =3D <&reg_vcc3v3_mmc2>;
> > > +	vqmmc-supply =3D <&reg_cldo3>;
> >=20
> > Is this another SD card slot or eMMC? You configured it as it would be =
SD card,
> > but mmc2 slots are usually used for eMMC, which needs different configu=
ration.
> >=20
>=20
> Physical bus mmc0 is the TF1 slot, physical bus mmc2 is the TF2 slot,
> and physical bus mmc1 is the SDIO wifi card (which is present on most
> but not all devices in the 35xx series).

Interesting, 2 SD card slots and no eMMC. That's a first for me.

Best regards,
Jernej
=20
> > >  	status =3D "okay";
> > >  };
> > > =20
> > >=20
> >=20
> >=20
> >=20
> >=20
>=20
> Please let me know about setting alias mmc2, thank you.
> Chris
>=20





