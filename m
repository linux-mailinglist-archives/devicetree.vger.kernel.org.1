Return-Path: <devicetree+bounces-252604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A511D014F9
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A77D30339AC
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AE033CE9D;
	Thu,  8 Jan 2026 06:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lpOHVh90"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C2433B6F7
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767855335; cv=none; b=llzkmgXkW5GuCbkMvyRSa8QPlACOHatIvRMpB7nx9tTQs2StUuafbejS0m3Dz3YKJQxlul5xWO0D9dVaIfuGRytTMMr8FqLJTFRciaeja36ZLYDnIgYiUqB39JnG+yv2s7V+upBr5NtEbUZfaYT0Qw55o8Dd8lRMivBZvE5clwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767855335; c=relaxed/simple;
	bh=x0oYpxGS7yS/ub4qA7RGQKP/jwnFykZn2neoyiEzTXg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NE+jsdmp/upBcaoaXWOFTgXRWNLH9fCjD00AAbQGolH/LEC0KsIb2E8cqLsW3WgzbZ5KNV0xeAkBLf4dGWGSAD/hHQOaBVw/ffI3VK3DhEMh6NQwxJoLpfN7yaIawxdQVKA629JR/EJOuQItEAsJosMq+61I5KPREx+4Cm4LWq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lpOHVh90; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-65089cebdb4so2834762a12.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855331; x=1768460131; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z95RpMEmgNwl7YB+bCq/7uMHk15Sjdmwjz/1QwjCtwY=;
        b=lpOHVh90+FWC3EHPigX+7FYcGHZ0V2pYULEVhTNNXUxU+bHcNjUcXC9Kh8QEgsGj+5
         1wcXbHydCzbC9ASlIROHjY2lF1Q3oGAOkGqqXC8HgONvXhkBSrDrkedmK/XwgmIh8DLn
         vGjfkzBzqpP1Vclvhoo/Y7nL6IvLF33Rh6Rgu7kBxrawr5hJH2jwZxsbi/FAO2TKKC8V
         iMDoRtvhdjPi+SHi9kzEis51Cymp79/kbCn80TMM27NjPaH7xCuHFVapXhkCTZIJwynv
         4qa1fquY/MaGWNEUT22LsbC9mk81urY849C/TU9e410+ao07TGeXJnxIXsbhFaBYYCH8
         2ibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855331; x=1768460131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z95RpMEmgNwl7YB+bCq/7uMHk15Sjdmwjz/1QwjCtwY=;
        b=CU87huSCptnPCv3LgiDslNpV7n/ofUMSfstL8OWxVNtI1CJ4lN0B9Fe8gVHNm6SHLz
         hr/i2DiHhE9m1A8bL9fj2M6PCgzEVevp/x8A1hpd7aGXO0NwAWOyd7cAVJaDUV2s21CZ
         JacgsamRcIECgKTBlq03qvsq+rU5ILLok9DEifbwewKm+7/dFdiOLIY9EsNY8DlmG+u4
         1mQ/FIlQIG3MaTyzqIyr8SHCxjhoTTGWmjgsCOWYPoRuAZj3mWWSHNmJ+Nc5iBAwsMAG
         tbqKdpMGT0ShXBDkoz+F7sCiXEiEPFrjFMsHlzCNC4JsO6rwgRzYpcxzPMDp1XB7KDHe
         jNZA==
X-Forwarded-Encrypted: i=1; AJvYcCWvoANcwlZjKzynfnZ1+x8ITxssVfyQeHotlcW/oNUX7NNBGKEHlRvbXH1oB763FokiCZlBdWG54gwD@vger.kernel.org
X-Gm-Message-State: AOJu0YyK8du0R0gY68lNrULZsr2x4z/oauxlmqvDCqaoxD3XCpI7lDn/
	nVA+CWGUFkqCHn3RuPXZOF3WqOhq5JCFKLh1oU0k9ocAoYR9fjN42/EB4wdAvFRxAdL84bpkLJ4
	Afu263urwHGFVDDu6P5vKvPbVO8RXh0Y=
X-Gm-Gg: AY/fxX4iy6LrY4YPUSwVA1z8pwmU+AFWxfJC5tgbKzFDAbT3N25tIN2myPRfmGmO7M9
	J49OxNB9g63Jv9lnPsGRNqwpOYI3aUsPncx1ZpUn21SHA48tgX0vM+sfUIqPG4s3Ke7oVhxPaNx
	vl0Il3Z6pnfNi+g2ROQ/1JC+Phlk/FAZ8k2lnhR6oG3+e+Nc9AwdgkxTwln9R52SQFj7qQaamjb
	b40ztqo6NIilW/FaeqfYlgc79JF7hs0ZrSw6rwEZbwVIhpYUov16qN7/vTRKGD3oJNu0WS2hlje
	TQ==
X-Google-Smtp-Source: AGHT+IG4U6kWECKctcFw6T4T3/RU4yz9c56j1F9uY6dHVa5DSvL+D+02G9vCcItZfsXHq6Ag8SriCCmYiwhyppBRQFI=
X-Received: by 2002:a05:6402:358f:b0:649:2347:e15f with SMTP id
 4fb4d7f45d1cf-65097e6e3cemr4114953a12.31.1767855331317; Wed, 07 Jan 2026
 22:55:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-3-linux.amoon@gmail.com>
 <aVkfNBUDUumzV0-X@venus>
In-Reply-To: <aVkfNBUDUumzV0-X@venus>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:25:12 +0530
X-Gm-Features: AQt7F2qUzy3nVOhqisJzP2xjjJX_kUrGnrajstWtAcg0dioD3CSqLPjSWSgZj2Y
Message-ID: <CANAwSgTmAbswY6scsxj40B7Y6QbnkqWPuCqyevRjdtHNemq0aQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Yongbo Zhang <giraffesnn123@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Sebastian,

Thanks for your review comments.
On Sat, 3 Jan 2026 at 19:35, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Sat, Jan 03, 2026 at 02:01:18PM +0530, Anand Moon wrote:
> > The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
> > USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
> > regulator which ensures proper power sequencing and management for onboard
> > Double-USB-HOST.
> >
> > Update the u2phy2_host node to reference the correct phy-supply.
> >
> > Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
>
> u2phy2_host is connected to an onboard USB hub chip, which is
> powered by &vcc5v0_sys as the comment says.
>
> You can see this on page 9 of the v1.45 ROCK 5B schematics (page
> name USB2HUB). The usb hub chip uses VCC5V0_SYS + VCC_3V3_S0 and is
> connected to USB20_HOST0_DP, USB20_HOST0_DM. The related USB
> controller for that in the upstream DT is &usb_host0_ehci, which
> in turn is using &u2phy2_host. Thus at least for the ROCK 5B the
> existing DT is correct. Properly describing the downstream port
> VBUS regulator would require something like the following series:
>
> https://lore.kernel.org/all/20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de/
>
Actually, the Radxa Rock 5 B doesn't have an onboard USB hub chip.

The USB_HOST_PWREN_H GPIO pin acts as the enable signal for both
5V_USB1 and 5V_USB2 regulators.

Data signals from the USB 2.0 Host 1 interface (USB20_HOST1_DM/DP)
are routed through the CON20B chip to the Type-C controller's
TYPEC1_OTG_DM/DP pins.
Additionally, the schematic indicates that the Type-C controller's
power delivery is managed
by the USB2 host (5V_USB2) rail.

From the schematic, I could see that the Type-C controller is controlled
by USB1 host (5V_USB1) and USB2 host (5V_USB2) for power delivery.

[1]  https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1450_schematic.pdf
(page 27)

> Greetings,
>
> -- Sebastian
>
Thanks
-Anand

