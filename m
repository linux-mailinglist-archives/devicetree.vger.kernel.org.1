Return-Path: <devicetree+bounces-147294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7161A37E54
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A9BA7A15BD
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A67B1B4257;
	Mon, 17 Feb 2025 09:21:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01146224F0
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739784094; cv=none; b=KWbQj0LiH8aaaCD9E6V0lreInZtRQJ8NRYFzUFmLvXEzyJL9RvX5QLJRiqSWiXBiqDFlcE1KgYo62aG4DY3FNHt8L+ckhvpGK57yQmVfAhGOU0V6ivynm9rSKrUFbNoC4tZ2AaRJt8lfWcYvhTTJLYyOaZYXuIILRXxiXcVagh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739784094; c=relaxed/simple;
	bh=/fHyTKMsoevoSMKCVyG7YFlSq3TWqO0gq0A7jnn6kts=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Tm3evaLdNn9wSW5C7s0G4tqUIyaMSFuy7mCmhVpALcvj9FcWxVqOQRQYoUwz7omFQtan1gWMRgfzQD7PeGkzdgfTONs9SS+8BJIneci+me7lQ45yXVeXo85zcC6rO5gkk7BTDL06fR25pFR6cjLxVBIBu52jti4kHN8Kb1Fmu/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tjxJc-0000cm-6B; Mon, 17 Feb 2025 10:21:24 +0100
Message-ID: <0e233b5210e3245266fd1954e0fd198bc6864c24.camel@pengutronix.de>
Subject: Re: [PATCH 0/2] arm64: dts: imx8m: Add pinctrl config definitions
From: Lucas Stach <l.stach@pengutronix.de>
To: Maud Spierings | GOcontroll <maudspierings@gocontroll.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	 <linux-arm-kernel@lists.infradead.org>, "imx@lists.linux.dev"
	 <imx@lists.linux.dev>
Date: Mon, 17 Feb 2025 10:21:23 +0100
In-Reply-To: <PA4PR04MB76308879CAA0764BB293C4C3C5F92@PA4PR04MB7630.eurprd04.prod.outlook.com>
References: <20250214-pinctrl_defines-v1-0-fbc86a42ef3c@gocontroll.com>
	 <d0dd61ea558ef8b18978301ef710925b83ef4037.camel@pengutronix.de>
	 <PA4PR04MB76308879CAA0764BB293C4C3C5F92@PA4PR04MB7630.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Am Samstag, dem 15.02.2025 um 10:02 +0000 schrieb Maud Spierings |
GOcontroll:
> From:=C2=A0Lucas Stach <l.stach@pengutronix.de>
> Sent:=C2=A0Friday, February 14, 2025 5:28 PM
> =C2=A0
> > Hi Maud,
>=20
> > Am Freitag, dem 14.02.2025 um 16:57 +0100 schrieb Maud Spierings via B4
> > Relay:
> > > Up untill now the extra function mux (pull resistor, etc) has been
> > > defined as a raw hex value, this is difficult to interpret. Add
> > > definitions for these parts of the pinctrl registers to allow for mor=
e
> > > readable pinctrl definitions in devictree files.
>=20
> > I certainly prefer the short form with the hex value, I find that quite
> > a bit more readable than very verbose swathes of defines ORed together.
> > But each to their own.
>=20
> I personally prefer it, but it would be accepted if I write a dts using t=
his if it
> gets accepted? I am currently working on devicetrees for all of our devic=
es
> preferably they would use this.
>=20
I'm not the ultimate authority on this, as I'm not the official
maintainer of the i.MX DTs. That would be Shawn, so he has to agree to
this. However, my gut feeling is that it would be accepted if you as
the author of the board DT prefer this style.

Just don't go around and convert other board DTs maintained by other
people to the verbose define style.

Regards,
Lucas


