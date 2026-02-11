Return-Path: <devicetree+bounces-264776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNZ0NyN/jGl9pwAAu9opvQ
	(envelope-from <devicetree+bounces-264776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:07:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E63124A54
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 715BF3015736
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C1B33A9E5;
	Wed, 11 Feb 2026 13:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Q7nUzKPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AC63161A3
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770815259; cv=pass; b=Q5VlXzcWiIqQivV3gXUg3ab5ZaKxp3MeR8zVaWVXdAEdoEe0kNVoKVuk0FbahjvDCMpl1AJTJRK+09loFQZXSn6WbLM2dg3DApci3GxWq7tNkyKlInw/Rbr4ffHdsWwmJ3ghLnmrPYXqmmWGZ9TIVFcAHY6Y3RhfRnlwDOCaNX8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770815259; c=relaxed/simple;
	bh=3u7qEwIxFefCD9RIT8ZzGZntXAn+E3x5kO1a/WDdBuk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l7tbuRLNBEv2VNIGHQXr9Ir47/RqmWGRg0ccNaxrCFkZLWbCYiNtAZN5j+kSYoXsXz9soCz/QYm3JrXDsN0JU9/EHnlP9EQzRBIGmBZKIux3D4Bw4PqttO8WCE+rkVo4UIH7qKGl1kjhBIf2S/s1AWeF3yBqHFENFUa0j6t7c1k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Q7nUzKPg; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=e3x2+YwwuhZsQSW5fmO01fXaVVeUQQTpRkaPQngxDXs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770815209;
 b=I4r4HEjJJphAJMGlzd/xzcOXZG6aww67NuVNj4KQmEcgJ8cgzQumdhqA810bVyFcrR2ZagwG
 aIW7amtB4ak1CcI38cx4vzOBlRVuzEVpz7tXgaS5Lz0e05PVEraXffaGw/ALUGlB6JYKcQe/I2w
 O3p4Ox+V4S6mlSCo0xp/iaYk4Iz+ppntx08YwL2nr80xO7bGJfsPTxh/Ozmk09TIGjhe9w66+iA
 XR+cjH3nPTuvJgDOWaLXdbZvhr8ZrLe13CqrpMJNWZEETmnmShRVnRVDg3/9BPFJolVKFZ4+RbL
 jgnm20wggxPLPCUOg/zJqOMbT8FfGC2Y2EuwaG+N3pWZw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770815209;
 b=LETbqe4eyMlLKHq/NRLvYZYvsUu0F91U90Ek5ez9f804+y+X81z1/fkWSkIlRlhYvPf57ue5
 8tF0NJk3kIK7aBOet+wEHRADA4g5suCct5X1uS+kZr6NeWeAbwAXT0OaEpEMsscuU6fS/+WFT1m
 MZ//WXXu/vll31uNxb6exXUrp8gv4exVyJCXPaMzEN9Fc/Sm8kSFTYxxCsJ2BDawXR9Vih4IJlX
 wl3vdTytcCCG+yTUNHaDiAr1GD5PY723mJXjL56uM/xWRZy6dn8aeGUckGTOP07WiTZIJ7Rb+wJ
 rFD6yqTprcvGKGrGka0C6t2YZY/0jsA5zHHuNl5zkW2Bw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Wed, 11 Feb 2026 14:06:49 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6C818CC0D37;
	Wed, 11 Feb 2026 14:06:42 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>,
 Roger Quadros <rogerq@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marex@denx.de>, Frank Li <Frank.Li@nxp.com>,
 devicetree@vger.kernel.org, imx@lists.linux.dev, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@ew.tq-group.com
Subject:
 Re: [PATCH v2 4/5] arm64: dts: freescale: add initial device tree for TQMa8x
Date: Wed, 11 Feb 2026 14:06:42 +0100
Message-ID: <3404121.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260211-futuristic-venomous-poodle-3b2708-mkl@pengutronix.de>
References:
 <20260211123436.1077513-1-alexander.stein@ew.tq-group.com>
 <20260211123436.1077513-5-alexander.stein@ew.tq-group.com>
 <20260211-futuristic-venomous-poodle-3b2708-mkl@pengutronix.de>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4f9zGW4Rtgz3ycCd
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:6e6ea929ed061832352f734018e4b891
X-cloud-security:scantime:1.997
DKIM-Signature: a=rsa-sha256;
 bh=e3x2+YwwuhZsQSW5fmO01fXaVVeUQQTpRkaPQngxDXs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770815208; v=1;
 b=Q7nUzKPgS9DenKApy1KP2HvQfJTpgSH33tR53ZcZqsKTz5s4/WfUZcZe0wuk3qH6i93OFfAG
 liNKrVLj4ATfpcCNlSHswrSLfsB6SeI+Ouv2yQl6YDcYafKVZ/swnmelGsD2jS7b+VHRyTVYA2Z
 WVja8U5oR/VtTKF3q+fax3SBMRYGjKRjHPhj9qCYi56w/hnah421sy2hgxPUUfdAW9p9xicf/+P
 OPSNkAfXyDzQmP/0IAcQm+JVNKz4Y51GZyV2UMnvAsq/4J00tGYPVHPi9wivPs0IPLirH60tZq8
 kcy63+ouXkicviBPMOalg3MPFcMX/R7mjgURGKMmajpnQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264776-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,baylibre.com,cadence.com,linuxfoundation.org,pengutronix.de,gmail.com,denx.de,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,ew.tq-group.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:url,bootlin.com:url,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 43E63124A54
X-Rspamd-Action: no action

Am Mittwoch, 11. Februar 2026, 13:43:17 CET schrieb Marc Kleine-Budde:
> On 11.02.2026 13:34:31, Alexander Stein wrote:
> > +&flexcan1 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_flexcan1>;
> > +	xceiver-supply =3D <&reg_mba8x_v3v3>;
>         ^^^^^^^^^^^^^^
> > +	status =3D "okay";
> > +};
> > +
> > +&flexcan2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_flexcan2>;
> > +	xceiver-supply =3D <&reg_mba8x_v3v3>;
>         ^^^^^^^^^^^^^^
> > +	status =3D "okay";
> > +};
>=20
> Can you use the PHY binding instead, see:
>=20
> | https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/fre=
escale/imx8mp-tx8p-ml81-moduline-display-106.dts#L180

Mh, this doesn't seem to be necessary at all. It's an allways-on fixed
regulator anyway. I guess this is carried over all the time to silence
a warning regarding dummy regulator.

Will drop in v3.

Thanks and best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



