Return-Path: <devicetree+bounces-235460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D6EC38FDF
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 04:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A53C83B7355
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 03:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB022E542A;
	Thu,  6 Nov 2025 03:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="soBrfV3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8372E2F1F
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 03:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762399903; cv=none; b=s/lZqoFr5UYdBQrObbkWxl3VgIdoL0MKjhYav3pzKgKiPiP51RWQPviuBhmdLB6VnzJj8eH2qxz0t5XPVqqbZ7W31FohIdeyHtBpwXA67zzGhEa9TlzJoE8hbdljfDm9+1TEDU0tKfeEYbVN4pGZGJEmI37SeYyeSclVcKgOBow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762399903; c=relaxed/simple;
	bh=lfISkGOSjMg9EtxSHmf7Mha6XHGhT03d9C/1GEEkoi0=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=Y2DUuEaLrYBZC4Q+ziOeDR9H5kR0Nq3Brhtky9OsSkpNnA7bUDvemQRz+0VB0K1TpBwYfNQ0Njbk+OCdH+k9AII1bca7edaTElcHvco/tn+z1ZqKa0fzw/LmPd9zUfZZNZcsEnD5xjcrSMiV2GwnbCuE96GMMPtPbR13bN8ivOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=soBrfV3v; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D6C9140F7A;
	Thu,  6 Nov 2025 04:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762399892; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=SWWzg5H94lHh9buLKIaiUJFjPPZVUI7WXndqnCOHcco=;
	b=soBrfV3vVnaf+j1XcTnKYf+7T5a0OYEQbPlCcMmjMR6QtOCWz32tmpmczFwH2S4PiLtea4
	+Smr+43ryd14Z3FjNzUsSE4lBJ0cKe6Yx8hb3Y8O54QfZrEFsJhaVLsX30+q1Wy8QbNjju
	YKvxQEQfeNn5KZqEZUIWU9FUc4i1ilQkjitdmtXd4DMc0cshYZ/9++wQ+FIv0wmQODv30R
	oojbNBIMV4KAC1CWZUWhfvwelTT4o6qCpfWZn4pFzMjos/JCxkbMvK27V/kA0djxRIXWnl
	xmYgm6J8qJttFLd/+tFnNDZGY+z72E6KYa9lF4j3PPm8F0dod+4DoFie4IfEuw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com> <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Date: Thu, 06 Nov 2025 04:31:27 +0100
Cc: "Jimmy Hon" <honyuenkwun@gmail.com>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Thursday, November 06, 2025 00:38 CET, FUKAUMI Naoki <naoki@radxa.co=
m> wrote:
> On 11/6/25 03:27, Jimmy Hon wrote:
> > On Tue, Nov 4, 2025 at 11:14=E2=80=AFPM FUKAUMI Naoki <naoki@radxa.=
com> wrote:
> >>
> >> The Radxa CM5 IO Board is an application board for the Radxa CM5.
> >>
> >> Specification:
> >=20
> >> - 1x microSD card slot
> >=20
> > [ snip ]
> >=20
> >> +
> >> +&sdmmc {
> >> +       bus-width =3D <4>;
> >> +       cap-mmc-highspeed;
> >> +       cap-sd-highspeed;
> >> +       cd-gpios =3D <&gpio0 RK=5FPA4 GPIO=5FACTIVE=5FLOW>;
> >> +       disable-wp;
> >> +       no-sdio;
> >> +       pinctrl-names =3D "default";
> >> +       pinctrl-0 =3D <&sdmmc=5Fbus4 &sdmmc=5Fclk &sdmmc=5Fcmd>;
> >> +       sd-uhs-sdr104;
> >> +       vmmc-supply =3D <&vcc=5F3v3=5Fs3>;
> >> +       vqmmc-supply =3D <&vccio=5Fsd=5Fs0>;
> >> +       status =3D "okay";
> >> +};
> >=20
> > When used as a TF slot, shouldn't there be a "no-mmc" also?
>=20
> We have "eMMC to uSD."
>   https://radxa.com/products/accessories/emmc-to-usd
>=20
> [  202.176757] mmc=5Fhost mmc1: Bus speed (slot 0) =3D 49500000Hz (sl=
ot req=20
> 52000000Hz, actual 49500000HZ div =3D 0)
> [  202.178477] mmc1: new high speed MMC card at address 0001
> [  202.179534] mmcblk1: mmc1:0001 SLD64G 57.6 GiB
> [  202.207336] mmcblk1boot0: mmc1:0001 SLD64G 4.00 MiB
> [  202.210374] mmcblk1boot1: mmc1:0001 SLD64G 4.00 MiB
> [  202.212967] mmcblk1rpmb: mmc1:0001 SLD64G 4.00 MiB, chardev (511:1=
)
>=20
> (I'm not sure why it says "Not work with the SD slot on the board." I=20
> will check.)

Thanks for bringing this up, I've always wondered how are such
simple eMMC-to-microSD adapters supposed to work, so this was
a good opportunity to research that a bit further.

In a few words, they're not supposed to work in true microSD card
slots, and they seem to rely on USB card readers that support
multiple card interface standards, but not more than a single card
at once, by wiring their single interface lines in parallel to the
different types of card slots that they provide.

To explain it a bit further, an eMMC chip supports different data
bus widths and a backward-compatible MMC card mode, but they have
very little knowledge about the SD specification, despite being
somewhat similar; the exception is the simplified eMMC boot mode.
This is explained further in the JEDEC JESD84-B51 standard, which
is available freely from the JEDEC website after registration.

This is also confirmed by the kernel messages quoted above, which
show that the eMMC chip is detected as an MMC card this way.

With all that in mind, we should specify "no-mmc" here, because
we're describing a microSD slot, instead of describing some hybrid
MMC/microSD slot.  That also explains why the adapter sold by Radxa
is described as not to be used with microSD card slots on SBCs.  I'd
also like to hear is this adapter/eMMC chip combo recognized by the
kernel when "no-mmc" is specified; it should fail.

Actually, not specifying "no-mmc" here may result in some unforeseen
issues with some (or perhaps many?) microSD cards, because the MMC
drivers will treat them as MMC-capable devices and try to initialize
them as such, which may cause all kinds of issues.  In fact, I'm not
really sure that the MMC drivers are actually implemented in a way
that avoids all possible issues with the storage controllers that
are capable of both SD and MMC modes when neither of "no-sd" and
"no-mmc" is specified in their DT nodes.

Furthermore, it seems that specifying "cap-mmc-highspeed" together
with "no-emmc" is actually redundant, which would make sense, but
further research of the MMC drivers is needed.  I've added that to
my ever-growing TODO list. :)

> > That's how the Rock 5A, 5B, and 5C were defined.
>=20
> I have submitted a patch without "no-mmc" before. I intend to send on=
e=20
> again when I have the chance.


