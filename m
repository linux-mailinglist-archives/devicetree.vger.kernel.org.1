Return-Path: <devicetree+bounces-235461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01370C39039
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 04:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7265E4E33DE
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 03:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7BE17C21E;
	Thu,  6 Nov 2025 03:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="wPnqBhyF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59340245021
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 03:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762400329; cv=none; b=RGKCe5kR5iSgS3A03FjUQJJb90hVdLGhGQw9mvr+Y2kIrpAz0UQrrkfeL2oG3WOQah3RB41dglFm+jLqP3RlR8qffnwUD4Vr9A4iEX5sWlrmKp4MwFIVwa1XFBXZplK+/7fMJLRVAg3Zkekt93RC1+Z+3Dkdg/jI8DC7KIorQ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762400329; c=relaxed/simple;
	bh=ccxpK3our1EmSemG3M6i4h1Ciaa+Vag1LKG/w1ViDt8=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=Zj0ZZmgNlRKF8bsrDxs40Ax2O+y+xZ248/4rBxQ7IPnSQntlUElO/QHh4+Xuhe0Ig/h9XbF1mhh6KmD+Ukyn1sUeP0cVi3iFKQoH9CltNEdCl0WxwhO4NEc5eW/t8tW03IY1IiZo5AU9saag9Is9UBTSAEMETn57EEPHjBZKdXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=wPnqBhyF; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id EBF4440ED4;
	Thu,  6 Nov 2025 04:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762400324; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rYLYDV2EpKDr3LPjQ+nBYpmoYk8ZppTQCJwoUsSRKPI=;
	b=wPnqBhyFEmnjkHCeJ/OzW7PXLkXWiQv8qZoydtzs2mBpwgSdjZAkHEoImBaTpaJV11KENR
	gK5Pcj+Mmz97DokJ8jnpHzf535i2Lw+E5gUsI29+nl6F9W7vcC+N9q9zNwOnTVZc8JZkUb
	WrphpkHgV7Q+uGe6YmMYjDD6jpRcjgDnCcjZNRV99q9e/V390ooL3uUx/ZrQV7WvhO0F5I
	9DUpuMEHtVviPaQVqn5JNkBk8a05oMdFeQZ3ML1MkqBt9Y9aCVpEQqkUsGHMGWzGxZu56V
	8bjGZbMLbx/KaOaxAqscufPMQD02yEmf5/1VayNxF5TYni6B/hH947mQbhK54A==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <65F6DECE54D6A0E2+06d33e7a-1054-44b3-919e-181e30cdb932@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com> <65F6DECE54D6A0E2+06d33e7a-1054-44b3-919e-181e30cdb932@radxa.com>
Date: Thu, 06 Nov 2025 04:38:42 +0100
Cc: "Jimmy Hon" <honyuenkwun@gmail.com>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <1c84d2f5-811b-4f0f-46b9-3c0e7828d0db@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Thursday, November 06, 2025 04:17 CET, FUKAUMI Naoki <naoki@radxa.co=
m> wrote:
> On 11/6/25 08:38, FUKAUMI Naoki wrote:
> > On 11/6/25 03:27, Jimmy Hon wrote:
> >> On Tue, Nov 4, 2025 at 11:14=E2=80=AFPM FUKAUMI Naoki <naoki@radxa=
.com> wrote:
> >>>
> >>> The Radxa CM5 IO Board is an application board for the Radxa CM5.
> >>>
> >>> Specification:
> >>
> >>> - 1x microSD card slot
> >>
> >> [ snip ]
> >>
> >>> +
> >>> +&sdmmc {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bus-width =3D <4>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cap-mmc-highspeed;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cap-sd-highspeed;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cd-gpios =3D <&gpio0 RK=5FP=
A4 GPIO=5FACTIVE=5FLOW>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 disable-wp;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 no-sdio;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-names =3D "default"=
;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-0 =3D <&sdmmc=5Fbus=
4 &sdmmc=5Fclk &sdmmc=5Fcmd>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sd-uhs-sdr104;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vmmc-supply =3D <&vcc=5F3v3=
=5Fs3>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vqmmc-supply =3D <&vccio=5F=
sd=5Fs0>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 status =3D "okay";
> >>> +};
> >>
> >> When used as a TF slot, shouldn't there be a "no-mmc" also?
> >=20
> > We have "eMMC to uSD."
> >  =C2=A0https://radxa.com/products/accessories/emmc-to-usd
> >=20
> > [=C2=A0 202.176757] mmc=5Fhost mmc1: Bus speed (slot 0) =3D 4950000=
0Hz (slot req=20
> > 52000000Hz, actual 49500000HZ div =3D 0)
> > [=C2=A0 202.178477] mmc1: new high speed MMC card at address 0001
> > [=C2=A0 202.179534] mmcblk1: mmc1:0001 SLD64G 57.6 GiB
> > [=C2=A0 202.207336] mmcblk1boot0: mmc1:0001 SLD64G 4.00 MiB
> > [=C2=A0 202.210374] mmcblk1boot1: mmc1:0001 SLD64G 4.00 MiB
> > [=C2=A0 202.212967] mmcblk1rpmb: mmc1:0001 SLD64G 4.00 MiB, chardev=
 (511:1)
> >=20
> > (I'm not sure why it says "Not work with the SD slot on the board."=
 I=20
> > will check.)
>=20
> There is no hardware limitation. "eMMC to uSD" should work with micro=
SD=20
> card slot on the board.
>=20
> That notice means "dts need to be changed".

True, it can work when the microSD slot is put into the hybrid
MMC/microSD mode, which I described in my previous response, but
that's pretty much a hardware hack similar to accessing JTAG
through the microSD slot on Rockchip boards, or to reconfiguring
the USB 3.0 port to work as a native SATA port on the Pine64
Quartz64 SBC.


