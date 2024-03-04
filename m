Return-Path: <devicetree+bounces-48142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9F887059A
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD3F8B2680E
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 15:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232B44CB4E;
	Mon,  4 Mar 2024 15:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="r/U9ZzjP"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925EE46B9A
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709566345; cv=none; b=HTVi5T4x5HIDUu/KdbxT6XRj3joepkP4215/pbJS0LpNAI6NEP3NHElRIL9i8HElScc6ZyfXxeBMdDUvXgbBEDtUJRwRoe3OGQ455Cp8XqnsXWlw1g9BHVtEEeNZ7hMIeuldLENCasA8paqGupDBvOo8d+t6UGyrfQj2tN5+sOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709566345; c=relaxed/simple;
	bh=mqhRv8gKiq2HtS9aU8kqWOp7aTHQPAx3HKPUoy15+Vk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=s6u8X/Y/GTzIzuHCBoMPgAOhYVzzCy/7c9N90+B+02xy8nnAGaiivuK8qSDLbZe46EyNX6A2BPRvEqVBnZSXoIlvFlCWhNQTXcE/1eQ/2tdLmg94F4MnF6a71ggNZtzIXrTNmVsgeU8Il7v9ZiBdquii5uekbSAUXdVDkKt2Fos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=r/U9ZzjP; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709566339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Wqu+8C8GMaK6bDCk9aGSUCngS8D7qmdXKRr3pJsbYzU=;
	b=r/U9ZzjPn0fMfmjS4kL0Kyo2EiyxBYMaJYIBtTKsAgufoOtx87HjO3ukmaFmd/1svqwPNg
	DHV7v9SA3kFBaZgGQ92pNw7TW1/KePnB0TpVoAhZrtv3M20YrA6JNf+1u+bnl1tTkzX+2+
	SBPsQFkEPk1Wf97Gp39a2Y8sPLGgsHk/LX77JY9BsYY0+gFTM4ktGhT46NO2u2wxvLFc+/
	/NPOJQcC7Sjp6qpl9sSG33KXKYBWFT9Ne+/O5iOsEbAUhtSY9uD2isFgSIj1ql2RYSPIKQ
	g19mpdc6Xt1GNK73R1fLWIkP9I0soTu2aUjnfU0D7bUr/0UKJJjQYO0Ja9tFow==
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org
Cc: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>,
 Jonas Karlman <jonas@kwiboo.se>
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 16:32:03 +0100
Message-ID: <27139798.WhXITi6ROJ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
References:
 <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
 <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1786480.ieIM7KbnEy";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart1786480.ieIM7KbnEy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org
Date: Mon, 04 Mar 2024 16:32:03 +0100
Message-ID: <27139798.WhXITi6ROJ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
MIME-Version: 1.0

On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > Andrew already pointed out when I posted the patch introducing the gmac0
> > > node that rgmii-id would be the preferred way to setup things. Back
> > > then this didn't happen because this change broke reception of network
> > > packets. However this only happend because I didn't have the right phy
> > > driver loaded.
> > 
> > It could be that the PHY is strapped to not use its internal RX delay.
> > And the PHY has some weird default TX delay, so having the driver
> > put some sensible values in is probably better.
> 
> It could also be the bootloader putting odd values into the PHY.
> 
> Anyway, it will work better with the correct PHY, and enable WoL
> support.

Not sure if this is the right place or way, but here we go...

A few days ago on #debian-kernel@OFTC:
[28.02 16:35] <ukleinek> u-boot should be out of the game
[28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and B 
(rk3566) I had massive packet loss and tracked it down to a change in u-boot
[28.02 16:37] <ukleinek> diederik: sounds like the Linux network driver on 
that machine could do something better
[28.02 16:38] <diederik> yeah, probably

I reported this about a month ago to Jonas Karlman as I bisected the problem 
to a change in u-boot:

> diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> Author: Jonas Karlman <jonas@kwiboo.se>
> Date:   Sun Oct 1 19:17:21 2023 +0000
> 
>     configs: rockchip: Enable ethernet driver on RK356x boards
>     
>     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards that
>     have an enabled gmac node.

I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";` and 
set `tx_delay` and `rx_delay` to some (other) values.
Without knowing nor understanding the details, this seem very much related?

Cheers,
  Diederik
--nextPart1786480.ieIM7KbnEy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeXpcwAKCRDXblvOeH7b
bmv2AQDC3ezAjgZekid7Sv/zN01j4p8v1AJm/VfZ1LXruWO2gAEAs/SOIp7zLJDJ
RkD5rS7mQOiPttiummSZXlApHwUcnAc=
=obWu
-----END PGP SIGNATURE-----

--nextPart1786480.ieIM7KbnEy--




