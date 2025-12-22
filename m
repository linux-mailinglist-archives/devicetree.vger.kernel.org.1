Return-Path: <devicetree+bounces-248848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F267CD627F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECC3130124F0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6B472C235E;
	Mon, 22 Dec 2025 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mVRAx//h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ED52C0F6D
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410103; cv=none; b=Lu7x3BgEn1RBTzvIq0PI3zqmDSZ8iXVgCYYQ04mIoXlGPElwrPvyrfM8fcVTMkj9zu09D20gwrcfrf8s1bGDFyOehdWIeT6Mw9xauD3fRyw+TWKiEG+2iT3GIYZYu/6v0QoNQx5x9tWaetSHr6oD1m21lmBF13OOE1EDFh34faU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410103; c=relaxed/simple;
	bh=dk5aD3tdcsXBfXQU0MPK+lTdNXgbMO/WcnmeWhzm3BE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nur5ALZIY3DSKXoZrzIPsycOTR26hADAZ95BcsVBZiSWE52RHgGP4MnK7dRiibCQnfSm/gXV+h/lhiRRvHh5mZEJ+3iSB821ZxygZCL1tHTAwOSE6RiOBA3VKZtILBj2fCv39zY6XQm3TXkCn9mQH27/W71obRiy7klY13KyMF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mVRAx//h; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4ed66b5abf7so50041621cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766410101; x=1767014901; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDlebowKLSytReXRSPBwIovISOjJgg7iMWjU9xn2E0E=;
        b=mVRAx//hDxhTw9PHhKGroce/FvHJ3vLPuHOdZCNIDp0IW+TpOs4YVj0jwEogCzRmN8
         BzolSAIVj418Arvm45zvXQide9Ry/P5e5bsn484YTebHBej+TM4XOGjh7tDJLv+maZ+B
         eJhNWVUHwmxroXhs6Y/rQPQIl3exxe2j75V7amwCOpRD9Q4+3WvzkIZGTqaaEjE8V86p
         miNwD6s5i9JDmebke9qTRzW1wwHUjfLgx2S9/CTopILRY/jUKovfiPZTzq/Zrxooz5NL
         XNmeqOhmYS99f/I57P+rZAmbLGmY2MD4sxZL8pa7KVQE6L9sWK9JfFvs2646zif1n3LA
         FODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410101; x=1767014901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YDlebowKLSytReXRSPBwIovISOjJgg7iMWjU9xn2E0E=;
        b=p9PRxbJ1aDuk1q7NE0hYRVvlXri91ORfweOzR/dbtWGT3NYTHSMVs1mnDowjZ8YsuG
         2PfxNa5DP7E5A6cJS0/w16vw7u/kSdaHVlOEyw8xz7ozjSj0m885Q4sHBST50fX0sWuR
         CQpvxK2jFZfP4iYqOewf/Ld2g7MN6ZKx6Z82iBZSvYrk6lf1TtrpbpMMEiHBhWPoHjRu
         QZCpXu9tmR/vzhOVSG10GVKDQA8MeGcWuhaY519Vby/JRvQh5YcEtJfXn3fzW+ydsAkg
         KOL3SoH1IB3JwiNWdhaLwQIFex4zlbD0csv0197W1p/qsJu461CaejUwGctTT1715BNe
         KBqA==
X-Forwarded-Encrypted: i=1; AJvYcCVOCwHtPG8DNnCbvhnkuo7wkwmKY9AL7Vv4GUVxgT/6Sgpu1E/EIXW96uglnWD3ZV42kdVTutxsN+yr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Y2oPcHIkHmZJoKLoazHQrgUaMXbhixv4+w8kCBl3kZPCeFTN
	LnnT5vhi1t/aMxZc0NZXdXAq7imTPLE6Y0SF/wMRceLrWsyir7XPsi0IZwCe/WrUpg2rvDciFR+
	0a/7vbFkRfyMuyhtGX0cDOO5GruZgSG0=
X-Gm-Gg: AY/fxX6Gjp2G8pVp5vhyHuxsMTfjzP2+8mWEttCFdFGeBisThbYG62uBv726dAZNmSX
	e+SFEgO1kHnOBCZtvQjMzmo1987E41RCD9UqD/zeVxt8XdFfrAp4QccxDsfedQY7g5OG3/KULVD
	OQRtULeTknYQhDGg1MLaq1HdVuBroAKEJHDaV12uXaiNhonExlaJYU8G0FGnrFmtChHcHPr6Mnl
	UK8BCzcAqdJtzmUX3PNJKnHknzpljgRYcEt/up496DWsujDh36p9lek1Ccb+9LlN6KqkCwzhBOE
	jqDNpnMHIi9tZIJL1yWQhg+W
X-Google-Smtp-Source: AGHT+IHAC1B0IqYscWngHVEOOgH6nPUg7BF7svekT7WeCJSzKv/KaP+4UG0eF0tY45F5jYxheY2blzrxV+thgMpT02A=
X-Received: by 2002:a05:622a:411b:b0:4f0:31bd:2aaa with SMTP id
 d75a77b69052e-4f4aac5db91mr179071981cf.4.1766410100766; Mon, 22 Dec 2025
 05:28:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
 <CABjd4Ywc-L0jvXwk253MDZwgN3srY6WQ5EhoKZ6wb+Hae376_A@mail.gmail.com> <119070978.nniJfEyVGO@phil>
In-Reply-To: <119070978.nniJfEyVGO@phil>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 22 Dec 2025 17:28:07 +0400
X-Gm-Features: AQt7F2ofyZnqEtwWu-6gIroppVlUF0KWZIJCYmIw9FL9qTliLfl7M3hB0GDErVw
Message-ID: <CABjd4YyCgVBFP4GG5FK5xO3SY=at5fpYicTO+ghaSCJaP_+XJQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Mon, Dec 22, 2025 at 4:41=E2=80=AFPM Heiko Stuebner <heiko@sntech.de> wr=
ote:
>
> Hi Alexey,
>
> Am Donnerstag, 18. Dezember 2025, 15:05:39 Mitteleurop=C3=A4ische Normalz=
eit schrieb Alexey Charkov:
> > Hi Heiko,
> >
> > On Mon, Dec 1, 2025 at 3:35=E2=80=AFPM Alexey Charkov <alchark@gmail.co=
m> wrote:
> > >
> > > The NanoPi M5 board supports pluggable UFS modules using the UFSHC
> > > inside its Rockchip RK3576 SoC.
> > >
> > > Enable the respective devicetree node and add its supply regulators.
> > >
> > > Link: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_24=
11_SCH.pdf
> > > Signed-off-by: Alexey Charkov <alchark@gmail.com>
> > > ---
> > > Changes in v2:
> > > - Describe UFS supply regulators
> > > - Add link to schematic
> > > - Link to v1: https://lore.kernel.org/r/20251127-nanopi-m5-ufs-v1-1-0=
d28d157712c@gmail.com
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 27 +++++++++++++=
++++++++++
> > >  1 file changed, 27 insertions(+)
> >
> > Would you mind pulling this one, or do you have any reservations?
> > There hasn't been any discussion, but it looks like a pretty simple
> > change, runtime tested and schema-tested.
>
> Your patch fell directly into the dead-zone between -rc7 and -rc1 ;-)

Understood :)

> > +     vcc1v2_ufs_vccq: regulator-vcc1v2-ufs-vccq {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-min-microvolt =3D <1200000>;
> > +             regulator-max-microvolt =3D <1200000>;
> > +             regulator-name =3D "vcc1v2_ufs_vccq";
> > +             vin-supply =3D <&vcc5v0_sys_s5>;
> > +             en-supply =3D <&vcc_3v3_s3>;
> > +     };
> > +
> > +     vcc1v8_ufs_vccq2: regulator-vcc1v8-ufs-vccq2 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             regulator-name =3D "vcc1v8_ufs_vccq2";
> > +             vin-supply =3D <&vcc_1v8_s3>;
> > +             en-supply =3D <&vdda_1v2_s0>;
> > +     };
>
>
> But where does the "en-supply" come from? For the life of me, I can't fin=
d
> any reference to it in either the bindings in the kernel, nor the dt-sche=
ma.
>
> Can you please point me to the part of the documentation where that is
> described?

The bindings [1] describe supplies by a wildcard pattern '.*-supply$',
and the device in question is a DC-DC regulator (see page 17 of the
schematic [2]), which produces the 1.2V power for the chip, its VIN
pin directly wired to VCC5V0_SYS_S5 and its EN pin directly wired to
VCC_3V3_S3, both of which need to be active for the 1.2V feed to
appear - thus both are 'supplies' of sorts. VCCQ2 is similar, but
implemented using a simple gate circuit. This is done to ensure
correct power sequencing, from what I understood.

I've just checked the fixed regulator driver though, and it only
handles 'vin-supply', not any other '.*-supply$' - thus, technically,
it doesn't currently implement the full schema :) Not sure if there is
another existing facility to model multi-parent regulators that I
missed, or if it's a good idea to extend the fixed.c driver to handle
an arbitrary number of supplies?

Any guidance would be appreciated.

Thanks a lot,
Alexey

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/regulator/regulator.yaml#L246-L248
[2] https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_SCH.p=
df

