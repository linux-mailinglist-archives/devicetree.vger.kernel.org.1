Return-Path: <devicetree+bounces-53182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6269688B330
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 22:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 934F61C32894
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 21:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02736F517;
	Mon, 25 Mar 2024 21:53:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E236FE11
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 21:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711403591; cv=none; b=snAazFYpyQZrvu9AnnC3fdMUy2S7tZUJnj+150Wy6erAktrXK5AztPQwYNY1/ZzQmnjkU26td5N28JUbJ7r15FEvwDKb7cZlE78xuNVSXxnVqXMvrXAsopiDraz2XMqsrWE8RduiYwqSw6V+zBKN+Cd1iw/dtmkduBFzsIgKyNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711403591; c=relaxed/simple;
	bh=tsLrYTiowfyn60jULAu7pCAGPr9bVoOouKUILMASPG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XJ4aEA27Iwnb9P7qm9dkgnl0BMpZYpU52gCbbl1ZAz8+5+m2BV7m17Atf5SYkdGKqY43xOIZSNtLlOYhiEjTKEctK5IEmBxbsvXUj70lHJqSIE65kcF5Bb8O/X7FxAxkDzK1//uTJeDWEHNUDsEtkDV6k0WJuvWlCtCkesvxqo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rosFb-0003lL-IN; Mon, 25 Mar 2024 22:53:03 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Date: Mon, 25 Mar 2024 22:53:02 +0100
Message-ID: <2854897.88bMQJbFj6@diego>
In-Reply-To: <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
References:
 <20240325175133.19393-1-macroalpha82@gmail.com>
 <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 25. M=E4rz 2024, 18:57:06 CET schrieb Dragan Simic:
> Hello Chris,
>=20
> On 2024-03-25 18:51, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > Users have requested fixes for Powkiddy devices to help with some
> > intermittent WiFi issues by adding additional properties to the
> > SDMMC2 node. They have also requested that the model name be
> > represented consistently with both the manufacturer name and model
> > name. Lastly, there exists a second configuration of the RGB30 with
> > a slightly different regulator layout we need to describe.
> >=20
> > I have added the new/additional property of "chasis-type" as well.
>=20
> Shouldn't this series be labeled as v2?

I think this is for Powkiddy handhelds, the other series was
for Anberic ones.

Somehow they design and build seemingly dozens of somewhat
similar handhelds around the rk3566 ;-)


> By the way, regarding renaming the mmcX aliases, maybe that would
> actually be doable, but only if you have full control over software
> that runs on these devices.
>=20
> > Chris Morgan (4):
> >   dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
> >   arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
> >   arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
> >   arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
> >=20
> >  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
> >  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
> >  .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
> >  .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
> >  4 files changed, 42 insertions(+), 2 deletions(-)
>=20





