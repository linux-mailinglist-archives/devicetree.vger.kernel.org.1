Return-Path: <devicetree+bounces-158399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB20A66479
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 02:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C4B43B8C61
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 01:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7382260C;
	Tue, 18 Mar 2025 01:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="BobPYzLS"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A568F58
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742259694; cv=none; b=H+3Y9+tO/du1sim+bzjIiPqUP/xCuIKtOmCPUK2vBUGNGdcsoNYnP3I/R0YoPXViFam6qX4lq1X0N+M8KIamtQ6iA5xw3/c74leK+oOyko0E9btR0rMMeTpSaQmikzwfS1Q50Tm/5ZpqQaPW6rhw7zKTvcM8hOlteljRpt2iNZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742259694; c=relaxed/simple;
	bh=1hZje+jxZfrx+KaPWN6vekAQrfxr7l4TiRtGTI/exVs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Li2FvXpdMiW2+ohX1N5CyW6bZ7ZhxcsD4Hdd7RctsCVOSuk3LnLEnHEQoZtJ68JbF7I8FH5fmcxdMr9q+koeNC1CfzsA0MAIZTOZFMVOCMd/Syumkq4RHmMuHi/sbKb1q3/PkRSIbngjk+EwEciZ60TcBtWSfnDGtXy2A1Z3yH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=BobPYzLS; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1742259690;
	bh=1hZje+jxZfrx+KaPWN6vekAQrfxr7l4TiRtGTI/exVs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=BobPYzLST/TRw9QRnyQAHrTxdAt47Ng486vGBIZtSI37jjtt+zjXQLIiiR9+qDbT3
	 yb7LyYLZleDJjQDM3AFHWiB8rfTLb7d2B+z+nLVm/VR133Y3f91V94PaT96ZAkMKLU
	 XOqsr+tdthkUxE7/VSHBnny0YvtgOxLc9Dh4XUMpJsJGFEsrnNwLN/6w0xnCx6XvOh
	 4WSEK1FolypjvygHRVX4z4dZQSxMxFu8mQRpXDIR8DighdyqwGjCZQyKos51Mijg7X
	 9/oE1ZfNwyK59MpEydPQJGfcT98SIaE2AH+A2JYp09Cf4qCsZt9DuFh4VhfMKCX3t9
	 LhwzvEwZl9exA==
Received: from [192.168.68.112] (unknown [180.150.112.225])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 1ABF177BB4;
	Tue, 18 Mar 2025 09:01:30 +0800 (AWST)
Message-ID: <5fd732f2cffefd65bfcba983ecf5e11fedb5bc2d.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 0/3] ARM: dts: aspeed: Add Balcones system
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Eddie James <eajames@linux.ibm.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-aspeed@lists.ozlabs.org, conor+dt@kernel.org
Date: Tue, 18 Mar 2025 11:31:29 +1030
In-Reply-To: <CAL_Jsq+QF6m1YD_MKi0mxJWtn0n+f+iL2x-jYv3NWytv0X4Jjg@mail.gmail.com>
References: <20250220205948.1777200-1-eajames@linux.ibm.com>
	 <174015998324.3469672.1009055817022487781.robh@kernel.org>
	 <52f6f6fc93144b6bd93870e9ef054da19d809b05.camel@codeconstruct.com.au>
	 <0801c8fc-97c8-4331-b31a-b60a90d683e5@linux.ibm.com>
	 <CAL_Jsq+QF6m1YD_MKi0mxJWtn0n+f+iL2x-jYv3NWytv0X4Jjg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-02-28 at 11:23 -0600, Rob Herring wrote:
> On Fri, Feb 28, 2025 at 10:46=E2=80=AFAM Eddie James <eajames@linux.ibm.c=
om>
> wrote:
> >=20
> >=20
> > On 2/24/25 22:34, Andrew Jeffery wrote:
> > > On Fri, 2025-02-21 at 12:11 -0600, Rob Herring (Arm) wrote:
> > > > On Thu, 20 Feb 2025 14:59:45 -0600, Eddie James wrote:
> > > > > The Balcones system is similar to Bonnell but with a POWER11
> > > > > processor.
> > > > >=20
> > > > > Changes since v1:
> > > > > =C2=A0 - Add all the ucd9000 driver supported compatible strings
> > > > > =C2=A0 - Fix node ordering in Balcones device tree
> > > > > =C2=A0 - Improve commit message to explain addition of ibm-
> > > > > power11-dual.dtsi
> > > > >=20
> > > > > Eddie James (3):
> > > > > =C2=A0=C2=A0 dt-bindings: arm: aspeed: add IBM Balcones board
> > > > > =C2=A0=C2=A0 dt-bindings: hwmon: ucd90320: Add additional compati=
ble
> > > > > strings
> > > > > =C2=A0=C2=A0 ARM: dts: aspeed: Add Balcones system
> > > > >=20
> > > > > =C2=A0 .../bindings/arm/aspeed/aspeed.yaml=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > > > =C2=A0 .../bindings/hwmon/pmbus/ti,ucd90320.yaml=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 6 +
> > > > > =C2=A0 arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > > > =C2=A0 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts=C2=A0=C2=A0=C2=
=A0 | 594
> > > > > +++++++++++++
> > > > > =C2=A0 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779
> > > > > ++++++++++++++++++
> > > > > =C2=A0 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +-----=
-
> > > > > ----------
> > > > > =C2=A0 6 files changed, 1383 insertions(+), 767 deletions(-)
> > > > > =C2=A0 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm=
-
> > > > > balcones.dts
> > > > > =C2=A0 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-
> > > > > dual.dtsi
> > > > >=20
> > > > > --
> > > > > 2.43.5
> > > > >=20
> > > > >=20
> > > > >=20
> > > >=20
> > > > My bot found new DTB warnings on the .dts files added or
> > > > changed in this
> > > > series.
> > > >=20
> > > ...
> > >=20
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb:
> > > > gpio@1e780000: 'usb-power-hog' does not match any of the
> > > > regexes: 'pinctrl-[0-9]+'
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from schema $id:
> > > > http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
> > > Ah, can you address this one?
> > >=20
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb:
> > > > /ahb/apb/bus@1e78a000/i2c@400/pwm@53: failed to match any
> > > > schema with compatible: ['maxim,max31785a']
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb:
> > > > pressure-sensor@76: '#io-channel-cells' does not match any of
> > > > the regexes: 'pinctrl-[0-9]+'
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from schema $id:
> > > > http://devicetree.org/schemas/trivial-devices.yaml#
> > > And these also?
> > >=20
> > > The rest looked like the usual noise.
> >=20
> >=20
> > Well, all of these errors are also present in Blueridge. I would
> > need to
> > write a new binding for dps310, move max31785 to yaml format, and
> > I'm
> > not sure how to fix the gpio hog one. I don't see that error when I
> > run
> > CHECK_DTBS myself... any suggestions?
>=20
> I think the hog one got fixed recently. The tests run on top of
> whatever b4 picks for the base or linux-next if it can't figure out
> the base. So that might be the difference.

Eddie: Yeah, disregard the hog one. An alternative to
writing/converting the bindings is dropping the relevant nodes for now,
and adding them back once the bindings have been dealt with. Up to you.

Andrew

