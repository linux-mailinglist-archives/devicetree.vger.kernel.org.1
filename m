Return-Path: <devicetree+bounces-134814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B49019FEBDC
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 01:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78976161B19
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 00:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494EF2913;
	Tue, 31 Dec 2024 00:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="FnfkFP4C"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA0E291E
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 00:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735604838; cv=none; b=rD1nr3iq8Dv6qMkc62cfbYPe9IL96Cr0ZXRWed6cW3S2H0bARDYcXtqLTakZYjEURSqk3L5xI1JvaGjhg5hphUMHnr4mWynnMK3ncPYSLR5a8jqrGrcnvt6G+FrU8M1ATRQ7W3xTNCZCz8LRYXt7N1Q1W91PJn6bQ94GyDh0jEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735604838; c=relaxed/simple;
	bh=hCvq1kNrVDju8/XrCOpZTaYGfbY4GOa1TNzJHu7jRV8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sEbGide2UAhWKvjFSzgNTMH4oGwbpWCGKz55NjnZecPvhopRO/Ap2wKAxe6paQqDYHwzxiU/d1XukfUxNqUR+Om22Eb4Y+VOe1QUNnvEAJMnl5SqYXYx3TrD3aMGuD8UboOHcVMQIN2QqTejFAxDQ7McbjcPHVAprc0nDv5p5s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=FnfkFP4C; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ro/DoIxPTQaYjz+4yPa+Cz8iLKFVM57HWDgrlLw5WE0=; b=FnfkFP4CRjvtQmqmAc40YkcvxP
	J8TmBraLy4RSaMLdgd9Ymgkc2MRaxCzf8WVnEle64Hw92iP/focrKILAqTl4U/HiVLlZCRn06Ov48
	zY1s7UUz/64bEYGbsBuVx3e5aREOZmiVmoEPhuvS8U1c5/YqO2g64YP4Y188oiaq6G4OLwliW6UKS
	AZNO7PH7NnzHlMHTBoK7bjrB/ybL1iB4HaCTJyrjKBIBGpVgROb3+PD6/9p8jhk4S5dBSvBuv5Pf8
	8suOo/QjBw8LEDNr93phakpOWEECZYzTbAb9ToaLY2xy3p/4+BAsuA1m5FavvoN2fLbVqW3iCjgLU
	f5SussYg==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tSQ6E-000300-DH; Tue, 31 Dec 2024 01:27:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH 1/7] arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
Date: Tue, 31 Dec 2024 01:27:05 +0100
Message-ID: <868000342.0ifERbkFSE@phil>
In-Reply-To:
 <CALWfF7Kg9HQoqyEYaj9FGPYu3+vAzZNLMVhSr_90SFDg5Syc9w@mail.gmail.com>
References:
 <20241229184256.1870-2-honyuenkwun@gmail.com>
 <20241229184256.1870-3-honyuenkwun@gmail.com>
 <CALWfF7Kg9HQoqyEYaj9FGPYu3+vAzZNLMVhSr_90SFDg5Syc9w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Jimmy,

Am Sonntag, 29. Dezember 2024, 20:20:59 CET schrieb Jimmy Hon:
> On Sun, Dec 29, 2024 at 12:44=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com=
> wrote:
> >
> > for Orange Pi 5 Plus/Max/Ultra and AI Max
> > ---
> >  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 833 ++----------------
> >  ...gepi-5-plus.dts =3D> rk3588-orangepi-5.dtsi} | 195 +---
> >  2 files changed, 77 insertions(+), 951 deletions(-)
> >  copy arch/arm64/boot/dts/rockchip/{rk3588-orangepi-5-plus.dts =3D> rk3=
588-orangepi-5.dtsi} (80%)
>=20
> Heiko,
>=20
> Should I go ahead and make a v5 including the following in my baseline
> before the refactor?
> - GPU power doman dependency [1]
> - USB 3.0 on 5 Plus [2]
> Do those series look like they'll go in as is?

If you want to do a v5, you _could_ include te USB thing, because that
is DTS only, so on my turf ;-) .

You could also drop the RFC + UNTESTED parts for now and resubmit them
later.

=46or the GPU power domain I cannot say when this will go in, so better
not depend on it. Especially as we don't know when people will return
from xmas/new-year vacations.

So ideally for the power-domain thing, create a follow-up patch.

Heiko



