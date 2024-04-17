Return-Path: <devicetree+bounces-59966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F9B8A7CA4
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:02:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA6BE1C20D64
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 07:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7106A00C;
	Wed, 17 Apr 2024 07:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="IhnlJG9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9BA2AF0A
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 07:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713337337; cv=none; b=FGZtasb0LKlWD7VmPSEg6x4Tcrxylal/SC0xJXzMDWB0HBladfXdE01hkzbE7jOlovk2J7uvaYcusm8kVPDMlCi98KGqXyZlpfC7ZIHGQZmFWJzfEwXewlHu19rxg3jxQpL/Ixif5WxRaybD0GcOYsy0/oAb3yfKw7T078vYCjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713337337; c=relaxed/simple;
	bh=DD5qYQS2ORih2v1XSmvL62QDHWR3X2dkj7Wm7FOBTi0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RdY0M/T8Jg//QY/j9W0vPcG/e3YyS4kRSTka6YhQWNSjn9O4bzYxiUKRuByTY52xQn7zN5o99Ci3Wi7PjNgLIxOywbKhFtcWN1PhzmL/h86g3aPb2IG1CzaUyTrk4Hm2Ibva7TeQCi0dHOBlueU+Vr3ctaNoszn5eWDfFoAtv1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=IhnlJG9Q; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-127-66.adl-apt-pir-bras32.tpg.internode.on.net [14.2.127.66])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id AD9D62014E;
	Wed, 17 Apr 2024 15:02:03 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1713337326;
	bh=ZxepRbuU81znKKBJUp2an9YnHRJEcdcrvB5/JBfkBzc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=IhnlJG9QuuY++62V4r6ZIvAabso2ciO40kxF5/EipC4mSAph3Yo6yuvZNTSOH27Nu
	 80qpLqBSdJtHHvytffJeIZRufLdXguUy0PMwzM5fwBGRYyalXiOWuTPdPiqtJ2VpMh
	 9WjT0HZAyTSzDTbi6VfQdTaT/MryGKNeNBS+z/24icWi3TDbv2QcfOmcIO3B6StNe7
	 aT3msUfqQUfqL72SIV5XjwRlHbE1P3yXLex9EoSN7uZkk7/sgxADyulPs3r9CWDjCV
	 MdiXt57U6zhI/xbfDzT4NI384gsv6HCNzv4Is3o6sRTsUMLL+MhDtQJKkLQbp+IO8h
	 6GKSbvqUCgmrw==
Message-ID: <a935d2a6ec3b0ab847b662d05bcea8408077511d.camel@codeconstruct.com.au>
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: Update Odyssey SBEFIFO compatible
 strings
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, jk@ozlabs.org, 
	alistair@popple.id.au, lakshmiy@us.ibm.com
Date: Wed, 17 Apr 2024 16:32:01 +0930
In-Reply-To: <2ee4084d-1891-4ea4-ba3d-b99ee1d7b5fb@linux.ibm.com>
References: <20240412144358.204129-1-eajames@linux.ibm.com>
	 <20240412144358.204129-4-eajames@linux.ibm.com>
	 <5c6f58cc13492988d307504d55cc5d31a512ab8c.camel@codeconstruct.com.au>
	 <0363badd-f5b0-42bd-bdd5-de6e7b5ee8c6@linux.ibm.com>
	 <90ced7e271213da481f7c0ec883d0189671563e8.camel@codeconstruct.com.au>
	 <2ee4084d-1891-4ea4-ba3d-b99ee1d7b5fb@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-04-16 at 09:48 -0500, Eddie James wrote:
> On 4/15/24 19:06, Andrew Jeffery wrote:
> > On Mon, 2024-04-15 at 09:59 -0500, Eddie James wrote:
> > > On 4/14/24 19:54, Andrew Jeffery wrote:
> > > > On Fri, 2024-04-12 at 09:43 -0500, Eddie James wrote:
> > > > > Set the new compatible string for Odyssey SBEFIFOs so that they
> > > > > don't collect async FFDC.
> > > > >=20
> > > > > Signed-off-by: Eddie James <eajames@linux.ibm.com>
> > > > > ---
> > > > >    .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 64 +++++++++--=
--------
> > > > >    .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi | 64 +++++++++--=
--------
> > > > >    2 files changed, 64 insertions(+), 64 deletions(-)
> > > > >=20
> > > > > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts =
b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> > > > > index 214b2e6a4c6d..3a2bfdf035cb 100644
> > > > > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> > > > > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> > > > > @@ -2545,7 +2545,7 @@ scom500: scom@1000 {
> > > > >    						};
> > > > >   =20
> > > > >    						sbefifo500: sbefifo@2400 {
> > > > > -							compatible =3D "ibm,p9-sbefifo";
> > > > > +							compatible =3D "ibm,ody-sbefifo";
> > > > >    							reg =3D <0x2400 0x400>;
> > > > >    							#address-cells =3D <1>;
> > > > >    							#size-cells =3D <0>;
> > > > Bit of a drive-by comment as I'm not really holding any stakes here=
,
> > > > but did the hardware actually change?
> > >=20
> > > Yes, the hardware did change in the Odyssey version.
> > Should there not be a new platform DTS then? Seems a bit puzzling, but
> > again this is a bit of a drive-by comment.
>=20
>=20
> Ah, I should clarify. The SBE hardware was changed between P9/P10 and=20
> Odyssey versions. The Odyssey hasn't changed. The difference in the SBE=
=20
> wasn't apparent when we initially added support for Odyssey, so this is=
=20
> effectively a bug fix on the new hardware. There is no new platform.

That sounds like good info for the commit message. Do you mind updating
it?

Andrew

