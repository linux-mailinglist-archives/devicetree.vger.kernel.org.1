Return-Path: <devicetree+bounces-152934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E87F2A4AA93
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 12:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABDA73B6A6A
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 11:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753301DD526;
	Sat,  1 Mar 2025 11:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="wq4SDf5N"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908B61A5B97
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 11:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740827449; cv=none; b=Ld4bZoEQu8AiZctjz7ZTZcu+ZQmZHr89VOoJEEX+HuNtv10QRrmv7N/GeY8MUz30KiYV98pweveW2jV/6NOvivjMWega4gHh8jfid7/IH6N9PYZujrCIdpGbzyZYSbaskZn0z8lSIf3Xu4WZgT0z1eqfRc8gfeOhH5sYz8zQSVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740827449; c=relaxed/simple;
	bh=lDRtomi0Pjad46sl334n1zpZ/BijxYnra4AxLHGcRVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aFlHfjWLctJUwu0/DtLlR4H3pseqp1NbZF9AV+5ylJaLpoN+w3dUFAmo2pXyq/EJEgBAkvTvebYH8gUjAfI4SHn+kkt0EGi1gcE2Y2nyduVNaG30TBmCviduXaSliwmMpva65vj6BewTvyHSNDqdLYLN54FGh/89GTrR+r+tHb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=wq4SDf5N; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fWrJQQO1z1ieS3LPSgSxBoRM/rUdNEDOVIFkMVgWCtA=; b=wq4SDf5NC6U4ynKABYC9ryyTbN
	xJ1TZTOPFknUkOJCCp+5enVb0+D31fKn5kOzz8/Elu6o9vDPbfvO3+3cLwwzk3jOQ7ZSx7YHWuly2
	iHiimmw+uBVLHBBrmHNDmbbuh78IVrJZqDdish4Uf0b4/Ri/vZcZc9AAWb2ceOKwK8jELhCUhFESp
	oNYA0HUWaTeIlt0PEycO/raBRgEapwLpXwHHRKDty8mIqqrvto1ts68XD/UGebFfYUXxS/Gv2sehx
	z5m0uCobN+pU4a49FUINcfy+8553v7aNAGEg/hB4TPu/6E7iRWPVpyexbd0WLt6Ho+wkwPY3/MXG1
	Xj4iojuA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1toKjy-0007sS-JM; Sat, 01 Mar 2025 12:10:42 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Patrick Wildt <patrick@blueri.se>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add MNT Reform 2
Date: Sat, 01 Mar 2025 12:10:41 +0100
Message-ID: <3309912.5fSG56mABF@diego>
In-Reply-To: <Z8LiJgNkurF3xt3k@windev.fritz.box>
References:
 <Z7OaTzIpeJ-IACrl@windev.fritz.box> <2700899.tdWV9SEqCh@phil>
 <Z8LiJgNkurF3xt3k@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Samstag, 1. M=C3=A4rz 2025, 11:32:06 MEZ schrieb Patrick Wildt:
> On Sun, Feb 23, 2025 at 12:38:40AM +0100, Heiko Stuebner wrote:
> > Hi Patrick,
> >=20
> > Am Montag, 17. Februar 2025, 21:22:28 MEZ schrieb Patrick Wildt:
> > > MNT Reform 2 is an open source laptop with replaceable CPU modules,
> > > including a version with the RK3588-based MNT RCORE[1], which is based
> > > on Firefly's iCore-3588Q SoM:
> > >=20
> > > - Rockchip RK3588
> > > - Quad A76 and Quad A55 CPU
> > > - 6 TOPS NPU
> > > - up to 32GB LPDDR4x RAM
> > > - SD Card slot
> > > - Gigabit ethernet port
> > > - HDMI port
> > > - 2x mPCIe ports for WiFi or NVMe
> > > - 3x USB 3.0 Type-A HOST port
> > >=20
> > > [1] https://shop.mntre.com/products/mnt-reform
> > >=20
> > > Signed-off-by: Lukas F. Hartmann <lukas@mntre.com>
> > > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> >=20
> > bureaucracy question, what is Lukas' relationship with the patch?
> > Two options:
> > (1) Lukas initially developed the patch, then the "From:" should be
> >     set accordingly
> > (2) Both of you developed it together, then we should have a
> >     Co-Developed-by: Lukas F. Hartmann <lukas@mntre.com>
> >     up there
> >=20
>=20
> Thanks, will send a v5 with Co-developed-by tag added! :)
>=20
> >=20
> > Some more style things below...
> >=20
>=20
> Are there further execptions to the alphabetical rule? For regulators
> I often see min before max, which I think makes sense to understand
> the range but isn't technically alphabetical. The same for pinctrl-0
> and pinctrl-names.

The "preferred" rules are in [0], and in recent times I've come to
appreciate not needing to explain exceptions ;-) .

But I do see them as guidelines, especially in a leaf-dt (for a device)
concessions are possible.

So yes, I can definitly see min before max as beneficial and if you want
to sort that way, that is fine by me


Heiko

[0] https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/Documentation/devicetree/bindings/dts-coding-style.rst#n112



