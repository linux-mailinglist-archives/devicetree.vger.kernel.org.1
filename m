Return-Path: <devicetree+bounces-140747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B133A1B3E9
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D78AC16965D
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EABE1CEEAA;
	Fri, 24 Jan 2025 10:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AJi1RdET"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6166023B0;
	Fri, 24 Jan 2025 10:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737715825; cv=none; b=MFHEBaFhuIuznK2Vj+8lWq9r31Xr6lsUyyGGfSJ+r2CkYv+fl0QerLHI/3twPnhDgGvk9RjwdQMsI8H7YKzZEoc/qcRJsPEMQkUljzG46uscIR1Rxbgbz0oa5vSamxBtzch4a3mAl1vxKEXZ9RLSoZEeFE/eadsHY6bd9pVlWdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737715825; c=relaxed/simple;
	bh=fC8ojJw5iEcVAQVzUR0NhyFRUV/eovnO2xCfuULRoiI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FyxeTBItH1crtxySug1/S5b/6aWA94ltGE4jK9jxBom6+ttwZ+XpCsZryJJ3bPnQY9K4hLckxdXOsTBNxb3Zt9xxAxGFyMxpiGbRoH1xtffjf/ZDZStE+gTtqRlOoQaOfN4pxL8GvT2axuV4Y2I2tapjo91YlxnsTk+qlnmR56E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AJi1RdET; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MiQnZe19xTeyKMg3y9MMnUOo5lM09IYL0AIRWqs9OIk=; b=AJi1RdETunGs5e0jtvXn2U4atc
	O2LlgL02wNcRfOfLDdR3mKwrVZndvKCaM8onyz+s0T15eNbkAilgH1dOZkwR+OnEDvwc42W7L6REp
	2oeiHmS24BWpjPvRtzCCIFhQ1gBDipj79MG2i8RsdN97xopFsr44IGDVh0fHTOK+Gvgjm/aKJaw6S
	z4hyeCQeNks7NfZpAY3Xt70ZdVcG07uIRG4/TwT6GpXl8NY9pgoVPFx8IxcFEun9ED5ySO716sK/h
	wIzBiw3jUSM7oLEnKqviIOHX7x4SlrBpEszgoAkFDNJfjoguBzwzX5XQkuiM9lYtBPU+NSgIt/3Bk
	HYfeBsFA==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tbHGP-00076S-KW; Fri, 24 Jan 2025 11:50:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>
Cc: Quentin Schulz <quentin.schulz@cherry.de>,
 Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jagan Teki <jagan@edgeble.ai>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT tester
 adapter for RK3588 Jaguar + add overlay tests
Date: Fri, 24 Jan 2025 11:50:12 +0100
Message-ID: <4860198.rnE6jSC6OK@diego>
In-Reply-To: <Z5NpjAUFK_cMIWLj@ryzen>
References:
 <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <3324197.aV6nBDHxoP@diego> <Z5NpjAUFK_cMIWLj@ryzen>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Freitag, 24. Januar 2025, 11:21:00 CET schrieb Niklas Cassel:
> On Thu, Jan 23, 2025 at 03:13:01PM +0100, Heiko St=FCbner wrote:
> > Am Mittwoch, 22. Januar 2025, 17:12:26 CET schrieb Niklas Cassel:
> > > On Wed, Jan 22, 2025 at 04:38:16PM +0100, Quentin Schulz wrote:
> > > > So essentially, if SPL_ATF_NO_PLATFORM_PARAM is selected (the defau=
lt for
> > > > RK356x, RK3588, forced on on RK3308, enabled for the majority of RK=
3399
> > > > boards, enabled for all RK3328 boards) the DT won't be passed to TF=
=2DA so no
> > > > issue in terms of size on that side.
> > > > If it is not selected, for TF-A < 2.4 (released 20201117, 4 years a=
go), a
> > > > DTB bigger than 64KiB will crash TF-A.
> > > > If it is not selected, for TF-A >=3D 2.4, a DTB bigger than 128KiB =
will result
> > > > in TF-A not being able to read the DTB (for Rockchip, that means no=
t being
> > > > able to derive the UART settings (controller and baudrate) to use, =
and will
> > > > use the compile-time default instead).
> > >=20
> > > Not everyone is using binary blobs from Rockchip.
> > > On my rock5b (rk3588), I'm building the bootloader using buildroot,
> > > which is using upstream TrustedFirmware-A (v2.12).
> > >=20
> > >=20
> > > > In short, I don't know where to go with that additional piece of
> > > > information, but this is a bit bigger than simply moving things aro=
und and
> > > > adding compile-time tests for overlay application.
> > >=20
> > > This is significant information indeed.
> >=20
> > I guess the question is, can this hurt existing devices?
> >=20
> > As Quentin mentioned, this only affects DTs that get handed over from
> > U-Boot to TF-A (and maybe OP-TEE).
> >=20
> > So the whole range of things loading their DT from extlinux.conf or
> > whatever are not really affected.
> >=20
> >=20
> > DTs U-Boot can hand over are 2 types,
> > (1) built from within u-boot and
> > (2) stored somewhere centrally (SPI flash).
> >=20
> >=20
> > Case (1) is again not affected, as U-Boot (and other bootloaders) may
> > very well sync the DTS files, but generally not the build-system, so if
> > U-Boot (or any other bootloader) creates DTBs with symbols is completely
> > their own choice.
> >=20
> >=20
> > And for case (2) I see the manufacturer being responsible. Having the DT
> > in central storage makes it somewhat part of a "bios"-level in the hira=
rchy
> > and the general guarantee is that new software _will work_ with older D=
Ts,
> > but the other way around is more a nice to have (old SW with new DTB).
> >=20
> > So if some manufacturer has a centrally located DTB this does not matter
> > until they upgrade, and when that happens I do expect testing to happen
> > at the manufacturers side, before rolling out a "bios update"
>=20
> Personally, I'm all for letting the kernel build the DTBs with symbols.
>=20
> (I have a patch that I keep rebasing on my tree only for that purpose.
> Sure, I could modify my build scripts to build the DTB separately,
> but with this patch, I do not need to do anything since the kernel
> builds the DTBs already.)
>=20
> Other platforms, e.g. TI already build many boards with symbols:
> https://github.com/torvalds/linux/blob/v6.13/arch/arm64/boot/dts/ti/Makef=
ile#L242-L261
>=20
>=20
> You seems to have been against enabling symbols before:
> https://lore.kernel.org/linux-rockchip/171941553475.921128.94674655392992=
33735.b4-ty@sntech.de/
> https://lore.kernel.org/linux-rockchip/1952472.6tgchFWduM@diego/
>=20
> But if you have changed you mind, and you are no longer concerned about
> doing so, then in my own self-interest I'm all for it :)

I'm all for keeping compatibility as good as possible and that issue came
on the table way too often already ;-) . In the past it was essentially easy
to go with "just don't enable symbols" and not go down the nitty-gritty
detail route - because that whole mesh of different firmware combinations
gives me a headache ;-) [0]

So finally going through those possible affected variants gave me those
thoughts of "is there even an actual problem with existing boards?".
Especially wrt forward<->backwards compatibility.

Outcome is, I'm definitly not sure about myself, but also could not come
up with an actual scenario. But that compile-time testing of applying
DTBOs is way too great to pass up on :-)


Heiko


[0] If just some vendor would directly work on upstream TF-A from the
beginning, instead of hacking up some half-decade old ATF  ... ;-)



