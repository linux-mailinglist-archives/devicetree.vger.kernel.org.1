Return-Path: <devicetree+bounces-222881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 821B9BAF03B
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 04:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 355FB3AF767
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 02:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B406275860;
	Wed,  1 Oct 2025 02:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="nLxkowWd"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802F619CC3E
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 02:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759286331; cv=none; b=T7/oe3pEl2YsPsvm6QE3i21qDmlOq9zybPSsd4ceI6Jx31H0oINli0zTdNyEdqlmGTREWv489gbFNy3Tdhd+ocEjUUvWxBZ+C+RTMYrBUbwvy/RP5RuEJ2wJV5Ds1Y0OcU0Z2/aA6ELos3Kpop0LaHtwtxHBULpLEPipoxeE/NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759286331; c=relaxed/simple;
	bh=pnkhbNUATmLf7zEMvJhbjyeHSx0MA+6CwNPiFFAIsfk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UstyTqwSWJqR8IffkISVlEK97q+JyFIbl4+K4K/w4mkuhxR+Bc59eXjUFhyuF9a0u0ESYDLsGbRU/g7X7+YiEs4WiqasSmahWbhUoD6kUoJO6eAqEQCnAVXSb2u7tbiOGjx4bJxj3DVaBguH0l0t4dHb8t8WG6NnYuPNpp1uRmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=nLxkowWd; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1759285772;
	bh=93pG2cTrl3v8hG0ltG0HHnvRP5q7qH37lHtkS5rvRE8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=nLxkowWdJ3hPG4s8670dXGq74doY3FrG6nywm9zsB5SL537KV4oTjgx7Il+mneowR
	 84HaBVdwy2RKUH5sa2xwgJL3/hU0dPyx5kniGv2QuYoieGBta23lwcURShSC3m02ab
	 PGIWccSBpT90REbcmY0BhxLKEz1eE+Mhj0kkvkbDCNsAE5TKCSvVctHL8OUKHH7LF+
	 JFxR6ynULedTnxWfIjdJCkV9fSAjqqdKG2y7yv7tRBkv0NvN2qxfH3KvcAeR3TBHit
	 E1DiQeYTd35M2AybyodQ8mNk3CMzlUUi9xjptL32HsqL26Ilt7Njz6ePKNsdaFtFqg
	 3JYpGDZahDWfg==
Received: from [IPv6:2405:6e00:243e:cd99:1d87:95e3:706d:5dc7] (unknown [120.20.48.42])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 8458464785;
	Wed,  1 Oct 2025 10:29:30 +0800 (AWST)
Message-ID: <7751dff931924c151f976feeafe4a888dc2095ad.camel@codeconstruct.com.au>
Subject: Re: [PATCH v7 6/7] ARM: dts: aspeed: Add Balcones system
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org
Date: Wed, 01 Oct 2025 11:59:30 +0930
In-Reply-To: <4632dab2-d6c7-4abf-8449-bd61d5ad94ad@linux.ibm.com>
References: <20250922175804.31679-1-eajames@linux.ibm.com>
	 <20250922175804.31679-7-eajames@linux.ibm.com>
	 <6d117ac3297628ee6e315894460d348647b68c7f.camel@codeconstruct.com.au>
	 <4632dab2-d6c7-4abf-8449-bd61d5ad94ad@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-09-29 at 09:52 -0500, Eddie James wrote:
>=20
> On 9/25/25 7:03 PM, Andrew Jeffery wrote:
> > On Mon, 2025-09-22 at 12:58 -0500, Eddie James wrote:
> > > The Balcones system is similar to Bonnell but with a POWER11 processo=
r.
> > > Like POWER10, the POWER11 is a dual-chip module, so a dual chip FSI
> > > tree is needed. Therefore, split up the quad chip FSI tree.
> > >=20
> > > Signed-off-by: Eddie James <eajames@linux.ibm.com>
> > > ---
> > > =C2=A0=C2=A0arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > =C2=A0=C2=A0.../dts/aspeed/aspeed-bmc-ibm-balcones.dts=C2=A0=C2=A0=C2=
=A0 | 609 ++++++++++++++
> > Looking at Balcones specifically, there's still an immediate concern:
> >=20
> > =C2=A0=C2=A0=C2=A0 /home/andrew/src/kernel.org/linux/origin/build.arm.a=
speed_g5/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: pressure-sen=
sor@76 (infineon,dps310): '#io-channel-cells' does not match any of the reg=
exes: '^pinctrl-[0-9]+$'
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from=
 schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>=20
>=20
> Hmm, patch 3 in the series fixes this.
>=20

Indeed.

>  Did you apply that one?=C2=A0
>=20

I hadn't, as I can only take patches 1-2 and 6-7 through the bmc tree.
3 and 4-5 should go through the iio and hwmon trees respectively.

Having tested after integrating the whole series I've applied 1-2 and
6-7 to aspeed/arm/dt.

Thanks,

Andrew

