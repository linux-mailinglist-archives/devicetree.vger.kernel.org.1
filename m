Return-Path: <devicetree+bounces-211905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE1CB41447
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:19:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FE5E188B158
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 05:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00ED3223DFD;
	Wed,  3 Sep 2025 05:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="CW/QlFXs"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E37189BB6
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 05:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756876790; cv=none; b=sqhzN2cSiFWDhK8XWeHTMV+IY7TVfmgVYJg38v0RQ42ph5puM3m2guEBIKigo2YdQhlxkCqowKSusHkLAHUsvE7u9gH7OSR/NyU61izylcd3XmFM8rdnV3axDcfOKe3zLJHLaP0eD4oH5oCXmHOl94PESyPfp0imk3lc/ExhJf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756876790; c=relaxed/simple;
	bh=zPZlV7Py6/VRUORcSB1dWGAGhVzyzc70O8zyBF7V8tQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iVriM1JTqM67j4mupDvlLsvUa/9i1UvVN/g8NClsUWEyBRXUu8B1ZpfKP3sk9ObileD+xlyQK8lqpobXeBGmY2jCEoJO8Osz85MrSCD/v4Uo2maTxknlu18b2/AUPXfnjNUZQ8F+OZ00dsGtzHpYqhFJ72ZpWpHyJDJYpHvWOu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=CW/QlFXs; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1756876787;
	bh=zPZlV7Py6/VRUORcSB1dWGAGhVzyzc70O8zyBF7V8tQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=CW/QlFXsuzAcNLftV0U2xce2xp2B/g48O+/UrXEyV9J72oh287kr8qrneOSLQKqEw
	 lwgy8e+DpddxwKZSai4eCuJxgF8VhkcTc10s9du8G1nktTa6ZI6aTlPuNCX6psyUOF
	 i7od2YPjJ/7qF4be7lUpdWXc58VmCSRTRYD5h7IwcSpFYHUB+NyUy33x8nBL5Vcxa0
	 F8IX+413MPzXuz0uElHCvwT+N6lbu9UPzdrmkJm8C0rcyihCFIrgui0NQHGaNZUnsO
	 CL6+syxHAzBXWjU/r7hnLC5FdULCUXdZloKmzp4e9YSmB269Jsg+0TaQ3Z6xLRYQdl
	 BhtxXHaIiN22g==
Received: from [192.168.68.113] (unknown [180.150.112.213])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id BC0556ED31;
	Wed,  3 Sep 2025 13:19:46 +0800 (AWST)
Message-ID: <ae0a7a59eef7f2370174454a06f90ba61d4b49bc.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 0/4] ARM: dts: aspeed: Add Balcones system
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, "Rob Herring (Arm)"
 <robh@kernel.org>
Cc: linux-aspeed@lists.ozlabs.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, krzk+dt@kernel.org
Date: Wed, 03 Sep 2025 14:49:46 +0930
In-Reply-To: <f366aedf-0231-43f1-8416-994ca4b91342@linux.ibm.com>
References: <20250815194730.41695-1-eajames@linux.ibm.com>
	 <175530106096.3523003.10423924922951806073.robh@kernel.org>
	 <f366aedf-0231-43f1-8416-994ca4b91342@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Eddie,

On Wed, 2025-08-20 at 14:40 -0500, Eddie James wrote:
>=20
> On 8/15/25 6:38 PM, Rob Herring (Arm) wrote:
> > On Fri, 15 Aug 2025 14:47:26 -0500, Eddie James wrote:
> > > The Balcones system is similar to Bonnell but with a POWER11 processo=
r.
> > >=20
> > > Changes since v3:
> > > =C2=A0 - Add max31785 to the max31790 document instead of to trivial-=
devices
> > > =C2=A0 - Fix minor formatting in dps310 document
> > >=20
> > > Changes since v2:
> > > =C2=A0 - Fix a couple of incorrect i2c addresses
> > > =C2=A0 - Document dps310 and max31785 properly
> > > =C2=A0 - Drop the UCD binding documentation update, it's been fixed
> > >=20
> > > Changes since v1:
> > > =C2=A0 - Add all the ucd9000 driver supported compatible strings
> > > =C2=A0 - Fix node ordering in Balcones device tree
> > > =C2=A0 - Improve commit message to explain addition of ibm-power11-du=
al.dtsi
> > >=20
> > > Eddie James (4):
> > > =C2=A0=C2=A0 dt-bindings: arm: aspeed: add IBM Balcones board
> > > =C2=A0=C2=A0 dt-bindings: iio: Add Infineon DPS310 sensor documentati=
on
> > > =C2=A0=C2=A0 dt-bindings: hwmon: Move max31785 compatibles to max3179=
0 document
> > > =C2=A0=C2=A0 ARM: dts: aspeed: Add Balcones system
> > >=20
> > > =C2=A0 .../bindings/arm/aspeed/aspeed.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > =C2=A0 .../devicetree/bindings/hwmon/max31785.txt=C2=A0=C2=A0=C2=A0 |=
=C2=A0 22 -
> > > =C2=A0 .../bindings/hwmon/maxim,max31790.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 6 +-
> > > =C2=A0 .../iio/pressure/infineon,dps310.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 44 +
> > > =C2=A0 .../devicetree/bindings/trivial-devices.yaml=C2=A0 |=C2=A0=C2=
=A0 2 -
> > > =C2=A0 MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0 1 +
> > > =C2=A0 arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > =C2=A0 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts=C2=A0=C2=A0=C2=A0 |=
 609 ++++++++++++++
> > > =C2=A0 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++=
++++++++
> > > =C2=A0 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +---------=
-------
> > > =C2=A0 10 files changed, 1442 insertions(+), 792 deletions(-)
> > > =C2=A0 delete mode 100644 Documentation/devicetree/bindings/hwmon/max=
31785.txt
> > > =C2=A0 create mode 100644 Documentation/devicetree/bindings/iio/press=
ure/infineon,dps310.yaml
> > > =C2=A0 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bal=
cones.dts
> > > =C2=A0 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.d=
tsi
> > >=20
> > > --
> > > 2.50.1
> > >=20
> > >=20
> > >=20
>=20
> Andrew, are these warnings acceptable?
>=20

Please fix (at least) the maxim,max31785a-related warnings (rename
child nodes).

Andrew


