Return-Path: <devicetree+bounces-237231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF66DC4E973
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F7B4189FBB7
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951062DE707;
	Tue, 11 Nov 2025 14:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="G3d0+EMG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880E41F874C
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762872374; cv=none; b=ERu0LpNv8VzWikcpAKrc0lUaO2ruXzntFXh5HzAAFH8nXD2m2XlB8rGekmIurYfABgc+qPus3SlASdvVVYHD38s5Lgko3rGsQl6KYLXSmU/gT6nAp8IB2ayr0gl3myY9PTqQ+nzqjZXknu3Xsd68P0PXUX0HCAl2bk6mREktcDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762872374; c=relaxed/simple;
	bh=Gg+KXoywckKnF5eYDudMEaq5Dvjmq+cwd1bLuQoVrD0=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=UdsCC4TGiYLV6I7JqqPLtE+fTCDQ9M+8ZIyG6x/2JIfAtoBIMfbuH+1HsOAzRU7nqfxp6NyMIGe9FejslJcm1dCmHg3b92XTnncGaduYojBr/lM0bD/9ROXmxfjy+dEwLUhT7uWzviLepvGV14cLJKPFhJHm5DTLJAPtQR0zeFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=G3d0+EMG; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 21E4840FD6;
	Tue, 11 Nov 2025 15:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762872368; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/cagrh29ibSMDnOPkSSUd4ZdK21ny+AueZuffN/Jim0=;
	b=G3d0+EMG73jPS0WH3iKtHHxP8zXOpKZrItjFxxZBUlONnVc00VCnmutHicq1znRNBrx0EG
	DdK10bxJVcl0kNL/WbXzB07oGNW7ks3GAlEYkd2atKAZ3jvhp8qzJdYe2ns2BqFhYapxJn
	pTEo9Hw2CCEtFl3LiUAUdfZmjgcmU1n3PeZYN4HnuFTTrLS62DQrJGxgDPnHw+CnXT6r4j
	yt8q1L0ISDdjKXUMYMyr+QFWhVuHyCtzvm3lz1/52bklS8DQXL7YsbvyDxdkvT6kQhO2rA
	h6uQ6wQCDv/N1LC+0tVg6ct+3HSD2CToSUThIrj8/6Qf5E13m02at8hPIS8UtQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111054112.55505-1-naoki@radxa.com> <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
Date: Tue, 11 Nov 2025 15:46:04 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Diederik de Haas" <diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn all LEDs on at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Diederik,

On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <diederik@c=
know-tech.com> wrote:
> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
> > Radxa's boards turn all LEDs on at boot(loader), but some boards do=
n't
> > have `default-state` property in Linux kernel tree but have it in
> > U-Boot tree instead[1].
> >
> > This patch adds `default-state =3D "on"` for (almost) all LEDs (wit=
h a
> > few exceptions which should be "off" such as RGB LEDs on E25 and LA=
N/
> > WAN LEDs on E20C/E52C).
>=20
> I'm missing the *why* these changes would be an improvement.
>=20
> Personally, for both 'heartbeat' and 'netdev' triggers, I want them t=
o
> be off by default and once it gets a 'heartbeat' or a 'netdev' trigge=
r,
> THEN I want the LED to be on/blinking.

That's a good question for Naoki.  My own preference would also
be to have the device's power LED turned on by U-Boot as quickly
as possible after supplying power to the board or turning it on
by pressing the power button.  I'm actually not a big fan of
having all the LEDs shining for a couple of seconds or so, which
may actually look like some error condition to me.

Having all that in mind, I may suggest that just the U-Boot's
behavior is changed to turn the power LEDs on only.


