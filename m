Return-Path: <devicetree+bounces-110997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 464D699C7E1
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F11A32843D6
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E871B19CC04;
	Mon, 14 Oct 2024 10:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="NOX01ux8"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5A51A01C5
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728903586; cv=none; b=FZT0FSs5xD3EyRpTWzyGpXAUHtsYQgoAeaWJaaRvvDr+xSPP3N95IUwKxfNLbbhx0k6k4P6LgGeGq/ht1Yn52lJl4TYV+OLDM8s4ooQqR0KDR7y5Mpy714X8xY0aA2LrFwH8CowOvJRtDpu+bOzH89ntt6U0S3yC/BazAhepnWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728903586; c=relaxed/simple;
	bh=y7V5PrbwcxqcgUDKICoeZslvAT+oMFZOXcNgQb1JwWs=;
	h=From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=quEE1FuFUqbiQX7fmgGXgpHZSVUdsFK1qwu9jroTlcAODMBMsxBVVi6793onr/S+zDvQXB6oOWZKXhzyyeFEbO9pnSAGv7WH5ZoPmWt0bhuyKtWahuz+NSHxV4uuWMRd23/ddX/3xHJVCdGYB23a35dm4TJcKsKEXHf0rwQhhIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=NOX01ux8; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728903550; x=1729508350;
	i=markus.stockhausen@gmx.de;
	bh=YMi+6Axt8mLkeVTcAJhvXJwXBIxpKmdk21sXg3KSSEs=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=NOX01ux8k57is5bb8hVbvgkyxr3eTigPOh+PjHl4sbO+PyskxvZ4lYgDZZGpwgaE
	 HYGj4+ydjs3gRVi0tdbKZ8ENV6PwrJlpBnQGCOn3BWkim803VWDFAEUtphKuG9Gch
	 x6Odliu8oypIhjj/T0VTJj90nzmMJ6q4EW9ssnh/Yi+qgsnXvVIoTQpH3Rb4rNBQr
	 bHWPsuDrXdFIqAAsk1YcJ8tknZoBBnIBkcpLdMI8C6030uNra0hDUMcHwy//mFIGn
	 olZ+sPbcn2SHhk1dAfdryiasBVxKtDFEQ0Jm/pj9MR/QsoJVnfdHBGrqQuFwxVSIB
	 rxp4F9/ZFOAhe+IQ1Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.17]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1McpNo-1tZun60NLG-00dehN; Mon, 14
 Oct 2024 12:59:10 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>,
	<kishon@kernel.org>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>,
	<chris.packham@alliedtelesis.co.nz>
References: <20241012134834.1306992-1-markus.stockhausen@gmx.de> <20241012134834.1306992-2-markus.stockhausen@gmx.de> <sck3hvr6vtdsnseyzdoxdwasd47c7m5yzavpyodc7rj3cwbu26@kqxistduok3u>
In-Reply-To: <sck3hvr6vtdsnseyzdoxdwasd47c7m5yzavpyodc7rj3cwbu26@kqxistduok3u>
Subject: AW: [PATCH v3 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Mon, 14 Oct 2024 12:59:08 +0200
Message-ID: <004801db1e28$190402e0$4b0c08a0$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGUIE64laADOC8jQrMhrI2aPHA/IQKmkMn+AoGANOqy6s53kA==
Content-Language: de
X-Provags-ID: V03:K1:BS7AX4SX8TNP0MqhW3mfmvRHz27HaY4qlvhUm1e6dCAeeDxMJNr
 9KVx2QpwncMakieiLWoq4QlrlEFa3TZpRnf1Dy8S9npW+6RuqPkSyb6pEOFu1fqpEcFHzpR
 xz8hMxJQiXsyroblEtxZrV1QJSVF+hcA+TIBDfgDjwjlMSH/agh323atzmEwNpwr+GubLdh
 yFazYO5VrWEPIVA3Blr1w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Zww2Vi3AzCU=;rwKX1tdvQupRuYK2YGmc9cZ4qK0
 MiKOc3K8xRls0Nlu0C6nuiP3JKaQcgzIsuDjV/B/RfZ/Abuof9w4+yd3vnCNrhMVJ2e5r0pde
 Lc5WWqQ+ufaBLBSnDVhMzYrtewkGYTQ64jN/uX+5t8yKTqrVC9N0faKPzseQ0qEkV7PRQb/WD
 gG6Uvd6FvfEtxN+v/s0n2dseP9W1Bhii5l+x6Elc5ggFHXwsVw/jzzZEKltCHOB3O3v1cGJIE
 m+2qkFYQEiI4PUhkdfu25OHI4v98sEwGJdqeSpIeSrbNF6Cp1f/2RsPjeLc+MHxBteKzCaVlZ
 bMn5Z9pjMnCqUIuEh1adq8zWv4n1Ka7cgKW8EXX4sxG2lktD/wXI4Ese1vyAoUC6kEjuwPBtf
 T0OiqDsGYffdGKFp8+iLrQcfuIwoVAvdw0OZXKY+K21/4bwsF5wQ56V8OvLuw9+u0fxhYv7RZ
 0BdJ2gzdWT4G8wkrHMfe9u0l4yDLbdhFXP6YFQmQGiaPnxIGkCyCkVHqPgwezuRJFB2S2VpAK
 ViqyL4HQyjHGRH9ySQl2mfNlDvsPjTYf4qHa/3cUVb26WOZmba84g5GDQpDMyFpsHUxMuxynf
 QTKLRr5R68dUKhZxull1zjeXXY/vT8fwHaUk1fq4sbQthHjp3x5AICUUNkplw2zUZp8U4+iDt
 UQdfzIzH3Ny9RzdNDf96/vcEhxJ3Zp/d2qtSa1swvVP0aoxUDPl+qkknfxwN2VD+aq0HO8HRx
 Bc4Ae0mfYmVDzNeYtWic+B9JWJ2lNn4TdF/aIxpZGhT4MPMqLu9vYYeMLYdwGITZzi/ZzV/I0
 yR20cHoLYx1MXJKT2PGuRlww==

> -----Urspr=C3=BCngliche Nachricht-----
> Von: Krzysztof Kozlowski <krzk@kernel.org>=20
> Gesendet: Montag, 14. Oktober 2024 09:18
> An: Markus Stockhausen <markus.stockhausen@gmx.de>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org; =
krzk+dt@kernel.org;
> conor+dt@kernel.org; linux-phy@lists.infradead.org; =
devicetree@vger.kernel.org;=20
> chris.packham@alliedtelesis.co.nz
> Betreff: Re: [PATCH v3 1/2] dt-bindings: phy: add =
realtek,rtl8380m-serdes
>
> On Sat, Oct 12, 2024 at 09:48:33AM -0400, Markus Stockhausen wrote:
> > Add bindings for the SerDes of the Realtek Otto platform. These are=20
> > MIPS based network Switch SoCs with up to 52 ports divided into four =

> > different model lines.
> > ...
> > +  reg:
> > +    items:
> > +      description:
> > +        The primary register memory location. On RTL83xx devices =
this is the
> > +        address to the I/O register range, on RTL93xx devices this =
is the
> > +        address of the MDIO style command/data registers.
>
> Not much improved, still missing constraints.
>
> I don't understand why you introduce changes like this.

Hm, two stupid changes in the last two versions. This was only to get =
some
more meaningfull description there. Not proud of it and somehow lost =
what=20
will be right. Looking at other places a simple=20

reg:
  maxItems: 1

should be sufficient. Ok with that?

> > +
> > +  "#phy-cells":
> > +    const: 4
> > +    description:
> > +      The first number defines the SerDes to use. The second number =
a linked
> > +      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII =
SerDes. The third
> > +      number is the first switch port this SerDes is working for, =
the fourth
> > +      number is the last switch port the SerDes is working for.
> > +
> > +  firmware-name:
> > +    maxItems: 1
> > +    description:
> > +      An alternative name of the SerDes firmware image file located =
in the
> > +      firmware search path. Set to "" to disable firmware loading.
>
> Missing property, not empty string, should rather indicate unneeded =
firmware.

Indeed more intuitive. Will drop the hardcoded firmware names in the =
driver
and only load if firmware-name is set.

> > +
> > +examples:
> > +  - |
> > +    serdes: phy@1b00e780 {
> > +      compatible =3D "realtek,rtl9302b-serdes";
> > +      reg =3D <0x1b0003b0 0x8>;
>
> This does notmatch unit address... and again: this was not an issue in =
previous version.=20
> Your new versions of patchset introduce errors and bugs. This is not =
how the process
> should look like. Review should improve the patch, not reduce its =
quality.

Agree will fix. This was wrongly mixed when I removed 3 of the
samples as requested by Rob and cleaned the rest afterwards to
have the firmware example.

Markus



