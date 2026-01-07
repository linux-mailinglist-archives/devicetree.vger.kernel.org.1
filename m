Return-Path: <devicetree+bounces-252410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8615FCFECB3
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 822C3318486C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 15:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA387359711;
	Wed,  7 Jan 2026 14:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Lom2AXd9"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAC035970E;
	Wed,  7 Jan 2026 14:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767797721; cv=none; b=stMs74e9Dpolh/7cmnyAqtY0ZZFqGLf1plrXH5hZDNaQS/UgKqbMRzoT3lKBF6RU28odJyCaub/RFACpzzR3ld8VYjaRXvNjbHYWceiwfX3G+5oBz/TAFp0Z/ekyVpV8XUE20HvuggxSfDFLNjlFK1JwZzpy88XkIVSVtZuaiWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767797721; c=relaxed/simple;
	bh=CQ2R9hx4iRtCSEQFYUBJblRA8XsIgkKG1Q94np/DI1A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XWWUcdkYoaXqasiAsiiMKoazVD2+3ltaSozFXklp5HcVQRCBY+vdoYK+yhRqWgsvs83feiexM+mmCUERA+qtb3baJd6HE0/U+A05b5Hxq5stzP6IMCkZDoFfIhIrENhmE3M+nytX2zfXbcgaDdkZ0j1L59zcNGgZvWJ6xYZY+tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Lom2AXd9; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=hcBGP+YEL31N0blv4+v2NuEIpQB28RQ0vx0uWq2aRTo=; b=Lom2AXd9dsigseGn1s7xGCiVIv
	/EKODcuzWY/SjvFU0VEexo4xSmkY3YpL0HexQ+CmXrKIj2FBvXUERsSewPX8Dkc9eOfezvxMjo4eP
	E0iaq9ntdXmolmGytsP1JO0eUXm+c1N3m+ukKzzpN2HkDMZn3+85miVMd1YWGx0qeD53/SF1TiRwd
	UE+PXSFjn03XEOJV46iM7T7gXDmzTpyYs+vCtw6/6RI0Tt7Ld8fse94tNPlCrEU5UpYIhPS+8j5XZ
	yg7EyF15l1tC9Ys9ftCUaWnWCeWqt1tb8J6QPaS4YRhFr/nAD8WouPjrqTFxLr1Pa/caNp6mD7hFT
	zWRAP3zQ==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdUvw-001OJ9-Fm; Wed, 07 Jan 2026 15:54:49 +0100
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
Date: Wed, 07 Jan 2026 15:54:47 +0100
Message-ID: <1956308.1xdlsreqCQ@diego>
In-Reply-To: <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
References:
 <20260107070322.323-1-kernel@airkyi.com>
 <881548f1-7dd9-40bb-9267-e5a03fb97820@rock-chips.com>
 <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Mittwoch, 7. Januar 2026, 11:04:42 Mitteleurop=C3=A4ische Normalzeit sch=
rieb Chaoyi Chen:
> On 1/7/2026 5:57 PM, Chaoyi Chen wrote:
> > On 1/7/2026 4:21 PM, Heiko St=C3=BCbner wrote:
> >> Am Mittwoch, 7. Januar 2026, 08:56:04 Mitteleurop=C3=A4ische Normalzei=
t schrieb Alexey Charkov:
> >>> On Wed, Jan 7, 2026 at 11:04=E2=80=AFAM Chaoyi Chen <kernel@airkyi.co=
m> wrote:

[...]

> >>>> +       vcc3v3_hubreset: vcc3v3-hubreset {
> >>>> +               compatible =3D "regulator-fixed";
> >>>> +               regulator-name =3D "vcc3v3_hubreset";
> >>>> +               regulator-boot-on;
> >>>> +               regulator-always-on;
> >>>
> >>> If this regulator supplies a soldered-on discrete hub and is required
> >>> to power it up, won't it be better to describe the hub in the device
> >>> tree (see binding at [1]), make the regulator its supply, and perhaps
> >>> drop the "regulator-boot-on/regulator-always-on" annotation here,
> >>> letting the regulator core deal with its enabling instead?
> >>>
> >>> [1] https://github.com/torvalds/linux/blob/master/Documentation/devic=
etree/bindings/usb/usb-device.yaml
> >>
> >> Yep, it would be nicer to it this way.
> >> A live example can be found in the Rock 5 ITX [2]
> >>
> >> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/tree/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts#n1266
> >=20
> > Thank you for the great example. BTW the hub used here is CH344. It
> > looks like we need to add a new binding :)
> >
>=20
> Typo... It is WCH CH334.

I don't think you need a new compatible at all :-)=20

When you look at the usb-device.yaml linked above you'll the compatible
already defined as a pattern:

  compatible:
    contains:
      pattern: "^usb[0-9a-f]{1,4},[0-9a-f]{1,4}$"
    description: Device nodes or combined nodes.
      "usbVID,PID", where VID is the vendor id and PID the product id.
      The textual representation of VID and PID shall be in lower case
      hexadecimal with leading zeroes suppressed. The other compatible
      strings from the above standard binding could also be used,
      but a device adhering to this binding may leave out all except
      for "usbVID,PID".

Which will match everything VID + PID combination, so you just need
to use the VID+PID from your hub.


Heiko



