Return-Path: <devicetree+bounces-19160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 039347F9E2A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B22F42813A8
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4975318C3B;
	Mon, 27 Nov 2023 11:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1869793
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:10:12 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7ZVC-0000tQ-Cc; Mon, 27 Nov 2023 12:10:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Tim Lunn <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 12:10:09 +0100
Message-ID: <5119280.687JKscXgg@diego>
In-Reply-To: <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
References:
 <20231122122232.952696-1-tim@feathertop.org> <4234862.3Lj2Plt8kZ@diego>
 <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 27. November 2023, 11:55:21 CET schrieb Dragan Simic:
> On 2023-11-27 11:50, Heiko St=FCbner wrote:
> > Am Montag, 27. November 2023, 11:43:05 CET schrieb Dragan Simic:
> >> On 2023-11-27 11:29, Heiko St=FCbner wrote:
> >> > Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
> >> >> On 11/27/23 20:45, Heiko St=FCbner wrote:
> >> >>> It's different for mmc, where this naming scheme isn't normally us=
ed,
> >> >>> so we (mostly?) migrated to them being in the board-specific alias
> >> >>> section.
> >> >>
> >> >> What about the ethernet alias, the MAC is part of the SoC, should t=
his
> >> >> stay as it is in patch 6 from this series, or move to board dtsi?
> >> >
> >> > I think judging from everything above (and the other modern boards
> >> > like all rk3588 ones) the ethernet0 alias should move to the board
> >> > dts(i).
> >> >
> >> > The gmac generally does not have this numbering scheme like i2c or
> >> > uarts.
> >>=20
> >> Please note there's already an Ethernet alias defined in rk3399.dtsi,
> >> even despite not all RK3399-based devices using the GMAC, for example
> >> the Pinebook Pro.  Perhaps that's something to be fixed as well.
> >=20
> > possibly :-)
> >=20
> > I guess for starters we shouldn't introduce new instances for it.
>=20
> Totally agreed.
>=20
> > All the newer SoCs already have their ethernet alias in the board dts
> > (rk356x, rk3568) which came after we also moved the mmc aliases.
>=20
> The base rk3399.dtsi file and the RK3399-based board/device dts(i) files=
=20
> are fine when it comes to the mmc aliases.  I can move forward and clean=
=20
> up the Ethernet alias as well, if you agree?

Yep, we moved mmc aliases a while ago.

So moving the ethernet sounds like the right way forward. So if you have
the time for it, then I'd be quite happy to take patches for that change.


Thanks
Heiko




