Return-Path: <devicetree+bounces-150675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FFCA4342E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 05:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F068016776C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 04:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A8D195FEC;
	Tue, 25 Feb 2025 04:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="HphCKdV8"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014A11519A6
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 04:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740458084; cv=none; b=bWCvYB03FvPqdaZK4b14nCJdH3oonbvVYK/FEanzjX9ZlsRPo+MVG8flPDjFUeVtr0AhM1pxXG8yApsxxxO2P51/tUsREMq0olO+nJ9TpGb1vvv0Vz3xgbWOXzWsY9u2ThJAy7fkCGtwpy8T/axi1kn8c+sCGLU2N4c9RGF/BDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740458084; c=relaxed/simple;
	bh=hA7l65NXvsJflq/93AYWgxASOiOOSnSvYF4RagQIqR0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FcrDCJCh2zwNI69AZpFb64HgZIQbl4qzNz0cvrW4k/wegzwaj82MIS11iam4Q4BXlTmKAptcFyv37hLPfYFWXEpiFsqzyiquSnEucvrd1xeWjY7rLu2xJftAhi9PRpLm9U+P++qrsZGYg9hR3BdfBUveCk2heCnUkRJJ7pgr7c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=HphCKdV8; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1740458079;
	bh=hA7l65NXvsJflq/93AYWgxASOiOOSnSvYF4RagQIqR0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=HphCKdV8WVe19zcmS4c1BmTEEehUUuZWBdq10ExtlLzTKVdA0lajrHqa5rOydTwVE
	 hIZ1/w5Lg+u2ijJ4XM7jMdfbqbCwxkCvmakmfBl7C5J4YYWrMiH/IZ5BRaDR/1PIVq
	 cD0nnVTfIWs2Xch8/3stbNPnC8u1Yd1daCy/nTvzHXgboj7Sp9zrg2wf2TIOROxkz/
	 p7tQeZsmxDv+/KxQojQMmaXo0zLGlI8lEE61DLKWlSLnVdoMehKy2OIbfElfvnMSmQ
	 XL86iKutpkFQD5Nosp0gmMbyQ2jBJKVFdfKjEGWlyF5uXIvkoF+vUtxRinWm1TLJe6
	 /dowIIidh8+TA==
Received: from [IPv6:2405:6e00:2421:8fa3:333c:2fc8:332d:ddb4] (unknown [120.20.122.15])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 95D9370B52;
	Tue, 25 Feb 2025 12:34:38 +0800 (AWST)
Message-ID: <52f6f6fc93144b6bd93870e9ef054da19d809b05.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 0/3] ARM: dts: aspeed: Add Balcones system
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 conor+dt@kernel.org
Date: Tue, 25 Feb 2025 15:04:37 +1030
In-Reply-To: <174015998324.3469672.1009055817022487781.robh@kernel.org>
References: <20250220205948.1777200-1-eajames@linux.ibm.com>
	 <174015998324.3469672.1009055817022487781.robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-02-21 at 12:11 -0600, Rob Herring (Arm) wrote:
>=20
> On Thu, 20 Feb 2025 14:59:45 -0600, Eddie James wrote:
> > The Balcones system is similar to Bonnell but with a POWER11 processor.
> >=20
> > Changes since v1:
> > =C2=A0- Add all the ucd9000 driver supported compatible strings
> > =C2=A0- Fix node ordering in Balcones device tree
> > =C2=A0- Improve commit message to explain addition of ibm-power11-dual.=
dtsi
> >=20
> > Eddie James (3):
> > =C2=A0 dt-bindings: arm: aspeed: add IBM Balcones board
> > =C2=A0 dt-bindings: hwmon: ucd90320: Add additional compatible strings
> > =C2=A0 ARM: dts: aspeed: Add Balcones system
> >=20
> > =C2=A0.../bindings/arm/aspeed/aspeed.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > =C2=A0.../bindings/hwmon/pmbus/ti,ucd90320.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0=C2=A0 6 +
> > =C2=A0arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > =C2=A0.../dts/aspeed/aspeed-bmc-ibm-balcones.dts=C2=A0=C2=A0=C2=A0 | 59=
4 +++++++++++++
> > =C2=A0.../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 +++++++++++++=
+++++
> > =C2=A0.../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +------------=
----
> > =C2=A06 files changed, 1383 insertions(+), 767 deletions(-)
> > =C2=A0create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcon=
es.dts
> > =C2=A0create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
> >=20
> > --
> > 2.43.5
> >=20
> >=20
> >=20
>=20
>=20
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>=20

...

> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: gpio@1e780000: 'usb=
-power-hog' does not match any of the regexes: 'pinctrl-[0-9]+'
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0from schema $id: http://d=
evicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#

Ah, can you address this one?

> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/bus@1e78a0=
00/i2c@400/pwm@53: failed to match any schema with compatible: ['maxim,max3=
1785a']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: pressure-sensor@76:=
 '#io-channel-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0from schema $id: http://d=
evicetree.org/schemas/trivial-devices.yaml#

And these also?

The rest looked like the usual noise.

Andrew

