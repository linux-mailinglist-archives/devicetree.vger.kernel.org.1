Return-Path: <devicetree+bounces-229331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E63BF6034
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3C8F83534D4
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C04430595A;
	Tue, 21 Oct 2025 11:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TwMyeaVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay138-hz1.antispameurope.com (mx-relay138-hz1.antispameurope.com [94.100.132.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C652FB99D
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 11:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.197
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761045966; cv=pass; b=LiR62bfGhmM5TvQ2jmWAI9Kldv8PRpemPQyP14MDzPrcTmAWPWwA3U1BaSz39Sh8xREqEozwxOgl4g1QSKnpIlysFQo02ZUEnoslb1RbHhiSuM5PZdNI06ShikfuyrDuH2vOXHV25GsOe1i4zAzqQd/by0YN4bWRp89DKpfHSjE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761045966; c=relaxed/simple;
	bh=n4mhlRhzzFm3V7tkh8PEoEN4chx5mQY5EISlduNBssk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C94ziRP/FiHzO3WXmIFLCTXnrIQHPBmBV9X3HSJMQCRM4lRRJXTosePveQ/VBtMee5587PDevcN/stL419BHihm1pTqdMJpCZtCoYStXsRQZ9I7ndMPUjeDgSGaaYkwtB2kOrnmRZEnmPtm0F8M3gjDpSfNanFqprCTa1j2lxyI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TwMyeaVa; arc=pass smtp.client-ip=94.100.132.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate138-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qPRSdSQE0bLnU693LJLxkchAwzL3R1o8wQQaHCAimXE=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761045903;
 b=U0A4rPBUBpS+c7EtqRzoOMURUCEtD9XyJv9Qg4DUdVwzErEfhOazu1pFvHVqQcV9uRFLLma/
 f/QIYeJbttuP17Vepswpi4b1ZMT1kGOq8XONKyL8nr0vmjtLdYifqhnePmWg87BvaEv0qBNHnCq
 7ScN6S/83y/CMgeu6Vz8JGEgCtnoNDIZ5xz2nvrlHD+wo6olxTpyoM4mQKPCUYEDJUWqvq1OvkW
 ln+gSldF7nohCoGznD8nJewMwav4i/Vp71wsB1pzTBn6rtIu0cDkMVBbHQQnA/IXIOKc4sA58iD
 zZyazNC69C6Prnum4NL21viAz5jZ1y9JkIhJ8f/kkIUCg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761045903;
 b=CsBbZta9WYtG5WAYNo63EIJ9IzMute5ukhQj19kMebdRwWLZqw6BiBPqaDTHzfpOEaK+2xLE
 SteqQkCQhvzfYWr3NvfP7RUeevFKjg2iv81l5BOawKStSTQ/dzpwqO6rCoNgxun8KXD2Q+W9T/z
 YDufQtgvV+igzfIxjQtrPObLAshfTSFkLh0TtqY0eyvV0C0k7bbaTrBJKxCGol2XrnCgq5z4vkb
 gZNue3D1655WSnsQECjyMwD7dVH/SmnzDymSJAvTJSg5JJf+vMM07BeREALfABSFRoMjNKgv5c7
 ZweZl1LgwBUShBIGyTaWBGS10LiM1aW1YPAofYFJDHtNw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay138-hz1.antispameurope.com;
 Tue, 21 Oct 2025 13:25:02 +0200
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 56DCEA404BD;
	Tue, 21 Oct 2025 13:24:53 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Gregor Herburger <gregor.herburger@tq-group.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject:
 Re: [PATCH v2 2/2] arm64: dts: ls1028a: Add mbls1028a and mbls1028a-ind
 devicetrees
Date: Tue, 21 Oct 2025 13:24:52 +0200
Message-ID: <13873811.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <14f52170-cc5b-4808-8fc1-28685ba349dd@lunn.ch>
References:
 <20251020133536.303471-1-alexander.stein@ew.tq-group.com>
 <20251020133536.303471-2-alexander.stein@ew.tq-group.com>
 <14f52170-cc5b-4808-8fc1-28685ba349dd@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay138-hz1.antispameurope.com with 4crVMB1Y5zz1NGLl
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:0a6c4bbb931b6e0c1b6e99bc4c54eeb4
X-cloud-security:scantime:2.297
DKIM-Signature: a=rsa-sha256;
 bh=qPRSdSQE0bLnU693LJLxkchAwzL3R1o8wQQaHCAimXE=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761045902; v=1;
 b=TwMyeaVak74FhRE92SNY3BsCnE/bv1ZHanGoxfPE+My34VH66Q2J++GOs8ZzpI3IMMZlozOK
 /JZrM3u9Hx0zbMMxQUYm23DEOwcORdeHZl371uif2NDcVQnEsV2N7X1YZMcZkHpOOyQPB1LBxM3
 Lcx/dQU6HgVVz38aymk1ylpkrJEDIhSCIycDDbOKDeM5ViCRDkJY72IacaNobJhoFpdn6UD9/pM
 vn/AUBs2tlwW+XcccazSo/h/D3/f788SnIbDUUnbOlQLSwLkgu7QA44U6uc4WzNUyE2+Gsy2hQf
 G1/ClZztQvwPy9JbuOYs6cmdF0oC/LhF7QUNzHnpD3Vvg==

Hi Andrew,

Am Montag, 20. Oktober 2025, 20:34:16 CEST schrieb Andrew Lunn:
> > +&enetc_mdio_pf3 {
> > +	mdio0_rgmii_phy00: ethernet-phy@0 {
> > +		compatible =3D "ethernet-phy-ieee802.3-c22";
> > +		reg =3D <0x00>;
> > +		reset-gpios =3D <&gpio_exp_1v8 1 GPIO_ACTIVE_LOW>;
> > +		reset-assert-us =3D <1>;
> > +		reset-deassert-us =3D <200>;
> > +		interrupt-parent =3D <&gpio_exp_1v8>;
> > +		interrupts =3D <0 IRQ_TYPE_EDGE_FALLING>;
>=20
> PHY interrupts are generally level not edge. So this is probably
> wrong.

Thanks for the pointer.

> > +		ti,rx-internal-delay =3D <DP83867_RGMIIDCTL_2_50_NS>;
> > +		ti,tx-internal-delay =3D <DP83867_RGMIIDCTL_2_00_NS>;
> > +		ti,led-function =3D <0x05b0>;
> > +		ti,led-ctrl =3D <0x1001>;
>=20
> I really would prefer /sys/class/leds was used. In fact, these are not
> documented, and don't even seem to be implemented in mainline. So you
> need to drop them.

Ah, sorry, this slipped in from downstream kernel. Will be removed.

Thanks and best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



