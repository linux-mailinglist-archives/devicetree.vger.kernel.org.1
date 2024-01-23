Return-Path: <devicetree+bounces-34278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF3083946B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 17:13:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DF661C259F3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA326166E;
	Tue, 23 Jan 2024 16:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pschenker.ch header.i=@pschenker.ch header.b="n6HPYBOg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0e.mail.infomaniak.ch (smtp-bc0e.mail.infomaniak.ch [45.157.188.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939CA5F54F
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 16:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706026374; cv=none; b=Hb8in1LwytAglEILZHXCD46QH8Us3jpySdjGkLQLmVD/M33ciUgda4YAPTCXiJwf8Vq0895ltvP665Z2sBFNwo6PUvSG1+EhRXtSIMrewBHvUFuui19PMGf+GLOkSOcOupoUYDjNwFE7OU326TFAKOqStf9nTUlG+dpT0Gz8lsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706026374; c=relaxed/simple;
	bh=i1OzNCpI26Wg0eT7rbnbAnzeVkcf9qe2qCiLeIsXEWg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jmmKmLY/mwjLTFQwZQiA0l1/K5oZyK0ER6kG/68HaCSKZR5Ugzyr1KSqONKZI0AMPSUGpLjY0sQXeTlX1Ss2kJLiNgGS9fr2BPQGMF7qt7etE2hVTQ82LBOMM0vpVd4z1436ycR0+vYNChtVWGrZ+plC5RiNFSDAJM5cJcMHhyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pschenker.ch; spf=pass smtp.mailfrom=pschenker.ch; dkim=pass (1024-bit key) header.d=pschenker.ch header.i=@pschenker.ch header.b=n6HPYBOg; arc=none smtp.client-ip=45.157.188.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pschenker.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pschenker.ch
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TKBvN48cyzMrCDr;
	Tue, 23 Jan 2024 17:12:48 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TKBvM3nVZzMpnPd;
	Tue, 23 Jan 2024 17:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
	s=20220412; t=1706026368;
	bh=i1OzNCpI26Wg0eT7rbnbAnzeVkcf9qe2qCiLeIsXEWg=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=n6HPYBOgx3QZrZaTJTN/XIEdKCiR8caM1kdebelBwztZLf7vueVmGN4+DP6klUj6W
	 XM1vBunZEOSJaEi53JZeepGMZS2pOTFxXht/8Zx/baprcxgAzaP1wXYs6lZtnIkmoh
	 fOcCvpns27o+GitARfZBbWw1xHY0jfSMijyeRm2I=
Message-ID: <3296d591ac66edb5f0c20ef31f9502d58d43fb4e.camel@pschenker.ch>
Subject: Re: [PATCH net-next v1 2/2] net: dsa: Add KSZ8567 switch support
From: Philippe Schenker <dev@pschenker.ch>
To: Arun.Ramadoss@microchip.com, netdev@vger.kernel.org
Cc: olteanv@gmail.com, andrew@lunn.ch, krzysztof.kozlowski+dt@linaro.org, 
 Woojung.Huh@microchip.com, davem@davemloft.net, marex@denx.de,
 pabeni@redhat.com,  conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,  UNGLinuxDriver@microchip.com,
 edumazet@google.com, kuba@kernel.org,  robh+dt@kernel.org,
 f.fainelli@gmail.com
Date: Tue, 23 Jan 2024 17:12:47 +0100
In-Reply-To: <605c219739760b1f4ef5fa47216fc3d5d8bc8c46.camel@microchip.com>
References: <20240123135014.614858-1-dev@pschenker.ch>
	 <20240123135014.614858-2-dev@pschenker.ch>
	 <605c219739760b1f4ef5fa47216fc3d5d8bc8c46.camel@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Infomaniak-Routing: alpha

Hi Arun and thanks for your message!

On Tue, 2024-01-23 at 15:58 +0000, Arun.Ramadoss@microchip.com wrote:
> Hi Philippe,
>=20
> On Tue, 2024-01-23 at 14:50 +0100, Philippe Schenker wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> >=20
> > From: Philippe Schenker <philippe.schenker@impulsing.ch>
> >=20
> > This commit introduces support for the KSZ8567, a robust 7-port
> > Ethernet switch. The KSZ8567 features two RGMII/MII/RMII
> > interfaces,
> > each capable of gigabit speeds, complemented by five 10/100 Mbps
> > MAC/PHYs.
> >=20
> > Signed-off-by: Philippe Schenker <philippe.schenker@impulsing.ch>
>=20
> KSZ8567 switch is similar to KSZ9897/KSZ9567 except that internal
> phys
> are without gigabit capability.
> So add KSZ8567 related updates adjacent to KSZ9567. So it will be
> grouped together and easier to update in case new features are added
> to
> this switch family.


I actually tried sorting it kind of alphanumerically but I can put it
next to KSZ9567, will do in a v2 but wait a bit more for some feedback
to arrive.

Philippe

>=20
>=20

