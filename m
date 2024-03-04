Return-Path: <devicetree+bounces-48042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 739D386FD8C
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:28:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 293AA1F2390C
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1BB11DA5E;
	Mon,  4 Mar 2024 09:24:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBE820300
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709544293; cv=none; b=NGKddBDsvv+0E6LquJshO+2hwzA34xG7YxvIcM6VURiFXYfYTiaak2XcWPzEDfgmF2/Xe9rGIM4FCPEAaixY0U/20oM1nm9LVqDRWz9iOKweBsz67NOFYE/4GjOZthq7VS+swPEqddBPeKHFUcP/LFx/5iu1cSni89YbM4EqOe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709544293; c=relaxed/simple;
	bh=SlUvnwWvhcnqDnG6qUVn7hpNMJQ43uRnZ+d6mifGX9E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u9hKfoKZS2dW9KhXdBCt/ezEAR4pLeNEInzRTgrkWlXLGPAiFpnG3atfEXgOXGyFn8Ixk6eo2bBWhSMk80EXfGF6LcM4fBNFJ/dZFZXMEwtrv2rjW2wYUZ7qt3UHSua6pHFhezgBSpm5ch/9NdfG6Dc0nidKVbusqTx/nwa1HJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rh4Yt-0007X4-Rj; Mon, 04 Mar 2024 10:24:43 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 10:24:43 +0100
Message-ID: <3246455.0WQXIW03uk@diego>
In-Reply-To: <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
References:
 <20240304084612.711678-2-ukleinek@debian.org> <3082796.ktpJ11cQ8Q@diego>
 <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Uwe,

Am Montag, 4. M=E4rz 2024, 10:15:57 CET schrieb Uwe Kleine-K=F6nig:
> On 04.03.24 10:07, Heiko St=FCbner wrote:
> > Am Montag, 4. M=E4rz 2024, 09:46:11 CET schrieb Uwe Kleine-K=F6nig:
> >> While it requires to have the right phy driver loaded (i.e. motorcomm)
> >> to make the phy asserting the right delays, this is generally the
> >> preferred way to define the MAC <-> PHY connection.
> >>
> >> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>
> >> ---
> >> Hello,
> >>
> >> Andrew already pointed out when I posted the patch introducing the gma=
c0 node
> >> that rgmii-id would be the preferred way to setup things. Back then th=
is didn't
> >> happen because this change broke reception of network packets. However=
 this
> >> only happend because I didn't have the right phy driver loaded.
> >=20
> > trying to understand how the (not) loaded module fits into this :-)
> > The mdio-bus is supposed to probe the phy and load the appropriate modu=
le.
> >=20
> >  From your description it sounds like the correct phy module needs to be
> > actually loaded? Or was that meant to be a "requires to have the right =
phy
> > driver compiled" instead?
>=20
> The latter. i.e. with MOTORCOMM_PHY=3Dn it's broken, but works fine with=
=20
> MOTORCOMM_PHY=3Dy or =3Dm.

ah great, then it's really fine. If it's ok with you I'll change the "loade=
d"
to "available" then (for compiled in or as module)


Heiko



