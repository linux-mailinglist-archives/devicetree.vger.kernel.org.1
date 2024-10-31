Return-Path: <devicetree+bounces-117763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A91CF9B7A52
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 13:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C5442821B2
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 12:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 726D619B3DD;
	Thu, 31 Oct 2024 12:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="jnZ/A9Td"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED5319ABBD
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 12:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730376876; cv=none; b=aT0P9CPGpwK7swwnCH4jrRxk/g389vt0brhr/JsS8jVl94TgAD17stud3H4Nz8jFlvtDP5ZKSJzZPQAFnt9zLASpc9O9bjKYIKjSk4lCl3y+ap9BAnJ9fNQLlA47EcIMm2jM1ejPh0GU61TwaJ2cB1gUoWavHTo08AiYzOkSV4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730376876; c=relaxed/simple;
	bh=qzZLBzu6tyfJlmH/zutIjp+TUUKE+0aO3mck+5Q39Ic=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kvlcKiHaDoqnwc6WMKamIQk5DGXwHIhpiS8rVGZWHLVPNu5rUz4NQiQBY5QPDhcsyeokX4QPOGhJXggRfXwXac5huNlOf7pGCMnvyp29TkKIcHsmIaGW5zt7mIs1ZpHrDIg3RRejb3/f3kZNB6ITYFVY6F59Fsln7z6p5BCqkdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=jnZ/A9Td; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qzZLBzu6tyfJlmH/zutIjp+TUUKE+0aO3mck+5Q39Ic=; b=jnZ/A9Tdxg+LSPl6JXB0MKE9EN
	91IhwKQhLDAqQYI88kWTkDG8z6BC6soHAzAe9mHmYCwMCAGVPPLqWvZeUcqgqpLiKYsTYgXoYNNGd
	eozkSzarXVON5jo9els8bLbJ9uxhWQ2arjUbwvwVHA62IG+qxMMJocE9w3WYVbB7AM+H9L96Pv7OY
	mz4LJ3dXfL5mi4u9/hr63fV68ni6favMc+1aKIb9URuKpzaW0Fjo38w2W1GqKepF5IsSmwuT90swu
	/w2dqJ40e6FUDUrVwGg/00vE3FlO7mDZnIpLn54glKjtbiOu7P20dg2zy7JEgaDapz6rNKTQ5+ZdD
	b7AdOQIw==;
Received: from i5e861914.versanet.de ([94.134.25.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t6U4E-0008JK-VR; Thu, 31 Oct 2024 13:14:23 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
Date: Thu, 31 Oct 2024 13:14:22 +0100
Message-ID: <5831051.DvuYhMxLoT@diego>
In-Reply-To:
 <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
References:
 <20241030192236.839105-1-macroalpha82@gmail.com>
 <20241030192236.839105-4-macroalpha82@gmail.com>
 <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Am Donnerstag, 31. Oktober 2024, 01:49:07 CET schrieb Jimmy Hon:
> On Wed, Oct 30, 2024 at 2:25=E2=80=AFPM Chris Morgan <macroalpha82@gmail.=
com> wrote:
> >
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Enable the HDMI0 port for the Indiedroid Nova. The schematics available
> > show the hdmim0_rx_hpdin is connected, so this pinctrl is enabled in
> > contrast with the other rk3588 boards.
>=20
> Which pin in the schematic [1] (page 24) does it refer to? It's not
> obvious how to match it up.
> The schematic looks the same as the Rock 5B schematic [2] (page 31)
> and the Rock 5B dts uses the default pinctrl [3]
>=20
> Note: The vendor kernel DTS doesn't modify the pinctrl either. [4]
>=20
> If you try using the default pinctrl (not overriding), does HDMI not work?

I stumbled over the same issue recently for our Theobroma boards too.

=46rom the Indiedroid schematics, you can see that the hdmim0_rx_hpdin
pin is gpio4_b6, which in their board is connected to the hdmi0_tx_on_h
functionality, which controls the output functionality between hdmi2.0-tmds
and hdmi2.1-frl modes.

The hdmi-driver currently only does hdmi2.0 but normally, on most boards
I've seen so far, this pin has a default pull to set hdmi2.0 anyway, so oth=
er
boards don't need that.

So for one, please check if the nova can run without it, but if a pin
setting is needed, please define a new per-board one, labeling it correctly
for this hdmi0_tx_on_h functionality and do not re-use the hdmi-rx
pin-setting.


Heiko




