Return-Path: <devicetree+bounces-252411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D1CFF31E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:49:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8959231E1CF6
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 592BD35B133;
	Wed,  7 Jan 2026 14:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="yB/rgB+5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B46B35B122;
	Wed,  7 Jan 2026 14:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767797806; cv=none; b=e9CEz6RKGxc4roEt70SNTUoOCW5QaBCyU9cBRsEeF3nA0kbkMR1bBZzOzcFCPJw98JhdnjFNhiFBQFZmv0rlbtEKOOnrsMx1ZLs3mwQhxCqh+/oP/u5m0OR6ZUL8mhQQe7eJHXXK7Nz+th5C8+0nX44hdrVuLKAe6bag64BxbcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767797806; c=relaxed/simple;
	bh=gCR1M1CUsxKczR2te98grTH9sVPAbTI07uN62UtSZU8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eDOtInC4KSPVeohHbVejL0MBz2ARoemDC59DdRLgO7/TwsyFIjjOfIF8fuYQk/enDIYrGwv8VqAzpFSpWNIjLX4RtsT4ABol4TgT61nkx8KZu97nTipSMoZiEk26Lh3RplJbKhRqX1RSV8CrKN5SHp4uR6rKYPR3BiTAtcpAvFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=yB/rgB+5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=hOJKf63ci0E2lOe7oWIa3IAL+UO+d20xkV6A9YbWmpE=; b=yB/rgB+5GKbzLTz+D1ec0L1Hxx
	iIrnYXxjDvUdlw4FhLC7p9ZIXz/zlKvKciuBK/xtj/5zqYgOLmEHgwMC+i/CQ+ArmmmPcJIhBb1ZH
	GsD5zmsfjsY2aes5ZaiYwcO6pcerokwY9Epd4iKfPxeDVGbbJpDpb4gDFgdfyOJbjaUu2Bugk9Llb
	bxvCPmlfmhNowbFvHXOn1YuLRoWOr5zkLVZ2mCBevaZpzbseGJPpYQM1pVhnQwdIqrglUOAW4hPGd
	VonhyPv5MJVJ3eJe0c+3rYtI+HJGjOa7B375+xBu3qzSrg6Ae4f7zr0hhTOlqTGt5C7a8sHDvIb7g
	jIy1qgzw==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdUxb-001OK7-Jx; Wed, 07 Jan 2026 15:56:32 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 07 Jan 2026 15:56:31 +0100
Message-ID: <1907895.QZUTf85G27@diego>
In-Reply-To: <1956308.1xdlsreqCQ@diego>
References:
 <20260107070322.323-1-kernel@airkyi.com>
 <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
 <1956308.1xdlsreqCQ@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Mittwoch, 7. Januar 2026, 15:54:47 Mitteleurop=C3=A4ische Normalzeit sch=
rieb Heiko St=C3=BCbner:
> Am Mittwoch, 7. Januar 2026, 11:04:42 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Chaoyi Chen:
> > On 1/7/2026 5:57 PM, Chaoyi Chen wrote:
> > > On 1/7/2026 4:21 PM, Heiko St=C3=BCbner wrote:
> > >> Am Mittwoch, 7. Januar 2026, 08:56:04 Mitteleurop=C3=A4ische Normalz=
eit schrieb Alexey Charkov:
> > >>> On Wed, Jan 7, 2026 at 11:04=E2=80=AFAM Chaoyi Chen <kernel@airkyi.=
com> wrote:
>=20
> [...]
>=20
> > >>>> +       vcc3v3_hubreset: vcc3v3-hubreset {
> > >>>> +               compatible =3D "regulator-fixed";
> > >>>> +               regulator-name =3D "vcc3v3_hubreset";
> > >>>> +               regulator-boot-on;
> > >>>> +               regulator-always-on;
> > >>>
> > >>> If this regulator supplies a soldered-on discrete hub and is requir=
ed
> > >>> to power it up, won't it be better to describe the hub in the device
> > >>> tree (see binding at [1]), make the regulator its supply, and perha=
ps
> > >>> drop the "regulator-boot-on/regulator-always-on" annotation here,
> > >>> letting the regulator core deal with its enabling instead?
> > >>>
> > >>> [1] https://github.com/torvalds/linux/blob/master/Documentation/dev=
icetree/bindings/usb/usb-device.yaml
> > >>
> > >> Yep, it would be nicer to it this way.
> > >> A live example can be found in the Rock 5 ITX [2]
> > >>
> > >> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it/tree/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts#n1266
> > >=20
> > > Thank you for the great example. BTW the hub used here is CH344. It
> > > looks like we need to add a new binding :)
> > >
> >=20
> > Typo... It is WCH CH334.
>
> I don't think you need a new compatible at all :-)=20

Please ignore everything I wrote :-)

I just looked farther into the usb bindings.
So yes you'll probably need a binding for your hub.


Sorry about the noise
Heiko



> When you look at the usb-device.yaml linked above you'll the compatible
> already defined as a pattern:
>=20
>   compatible:
>     contains:
>       pattern: "^usb[0-9a-f]{1,4},[0-9a-f]{1,4}$"
>     description: Device nodes or combined nodes.
>       "usbVID,PID", where VID is the vendor id and PID the product id.
>       The textual representation of VID and PID shall be in lower case
>       hexadecimal with leading zeroes suppressed. The other compatible
>       strings from the above standard binding could also be used,
>       but a device adhering to this binding may leave out all except
>       for "usbVID,PID".
>=20
> Which will match everything VID + PID combination, so you just need
> to use the VID+PID from your hub.
>=20
>=20
> Heiko
>=20





