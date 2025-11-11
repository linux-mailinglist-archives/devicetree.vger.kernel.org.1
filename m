Return-Path: <devicetree+bounces-237270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 256FEC4EF5F
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:15:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DB4DF4E3F3D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85EF636C5A3;
	Tue, 11 Nov 2025 16:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ni8QxMAc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C20338902
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762877715; cv=none; b=naAdXwVxe1JQxFLhR/cCsY1Uql+eoymT2fuFGDujk7iCm2cQ3xlLG7KMcSc1A/7m2TMlgQdViJ5Pq2WsU53yghXvEGiXuoo9y8uBkLXC4YJZEWuETwix+8TS6c4UyLYyPuWPDWMJtYFVYnq5XMNQMiqE9/P39CeP/m7mAGXKO18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762877715; c=relaxed/simple;
	bh=1jRyfqKg5g18YWN2p5qm1XCfPwhvLS6zMuflGTP3C6o=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=cBStimqgd1r4HE7IkYavWf34VXUlqKtQtTpBjsojrZekk9shgILW0PtnLMDHAr9iSct/xYWDRAL03mDoWMAouhlPDL63N0Ov8b9ytcA+1KmSCdj2O9or+lc87iPTxc2yZd89c9ilgQkonDj6PvmkTdqbDHT983CE7UozMSjNUzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ni8QxMAc; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E73104103A;
	Tue, 11 Nov 2025 17:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762877709; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ypK6JFMXH7rdUq8xKNFAFRuU1aci1uCJMB8XA5wcY0c=;
	b=ni8QxMAcQLfsc4ybYFggj+QjnqvFDx+IyrNEnuiUgxSaku4Ib/W95NjOj4gBpeTsnxnttk
	E1dEyU1mUzGNXJIFUvixOrqFQ5r2iyPpWcSNbfsxxbUtaG5gv37Ew6O1rOy1tnN0pCyFiY
	iczdamJxxv16R3yvuUt6jJfUlW19Nw5UkacaGOjhTDXKRVKmu/kd/oUqebyjnWMDVc6tl5
	jjhmkqNn5RhCwKogAS0gUirM7KhMUlx1mrojLNXDiadgS5DDNsQ54S7Ehvdhi1tJ7dNZF6
	FvZ3E43RbB+4m05JiZ20rQsbd9U5+q/nFPUxod76t+LowU2DjN2qrt4yjZuSXQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org> <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
Date: Tue, 11 Nov 2025 17:14:59 +0100
Cc: "Diederik de Haas" <diederik@cknow-tech.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, "Quentin Schulz" <quentin.schulz@cherry.de>
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn all LEDs on at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 353964b4aa81b40cd03c1b2d1c0fcc256fc021e471e67a0e96575b249708300ad6c39d864be65764762b049554b2d83e735ffeeff8b5106fb54ec43fc733ba8b

Hello all,

(+ Quentin)

On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> On 11/11/25 23:46, Dragan Simic wrote:
> > On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <dieder=
ik@cknow-tech.com> wrote:
> >> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
> >>> Radxa's boards turn all LEDs on at boot(loader), but some boards =
don't
> >>> have `default-state` property in Linux kernel tree but have it in
> >>> U-Boot tree instead[1].
> >>>
> >>> This patch adds `default-state =3D "on"` for (almost) all LEDs (w=
ith a
> >>> few exceptions which should be "off" such as RGB LEDs on E25 and =
LAN/
> >>> WAN LEDs on E20C/E52C).
> >>
> >> I'm missing the *why* these changes would be an improvement.
> >>
> >> Personally, for both 'heartbeat' and 'netdev' triggers, I want the=
m to
> >> be off by default and once it gets a 'heartbeat' or a 'netdev' tri=
gger,
> >> THEN I want the LED to be on/blinking.
> >=20
> > That's a good question for Naoki.  My own preference would also
> > be to have the device's power LED turned on by U-Boot as quickly
> > as possible after supplying power to the board or turning it on
> > by pressing the power button.  I'm actually not a big fan of
> > having all the LEDs shining for a couple of seconds or so, which
> > may actually look like some error condition to me.
> >=20
> > Having all that in mind, I may suggest that just the U-Boot's
> > behavior is changed to turn the power LEDs on only.
>=20
> I can't quite explain it, but...
>=20
> - 1st (Power) LED
>=20
> The 1st (power) LED turns on automatically/immediately without softwa=
re=20
> intervention. (On some boards, this LED cannot be controlled by softw=
are=20
> at all.)
>=20
> In DTS, this should be described using `default-state =3D "on"`. The =
use=20
> of the Linux-specific property `linux,default-trigger =3D "default-on=
"` is=20
> unsuitable for non-Linux environments.
>=20
> - 2nd (Heartbeat) LED
>=20
> The 2nd (heartbeat) LED can be controlled by software. It should be l=
it=20
> up as quickly as possible to indicate that the very first software=20
> (e.g., the bootloader) is running.
>=20
> On Linux, usually this is used as `linux,default-trigger =3D "heartbe=
at"`.=20
> It indicates that kernel is running (regardless of the `default-state=
`=20
> setting), and its behavior can be modified in user space.

As discussed already in the #linux-rockchip IRC channel, [1] perhaps
the best option would be to have the power LEDs turned on as quickly
upon powering on the board as possible, and to have U-Boot pulsate
the heartbeat LEDs using the LED=5FBOOT feature.  In such a scenario,
no other LEDs would be turned on early, and the LED-related DT parts
specific to U-Boot would be migrated to the kernel DTs.

[1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;


