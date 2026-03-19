Return-Path: <devicetree+bounces-277730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHiODrneu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:32:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E972CA535
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83BD2321D3A3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365923CE498;
	Thu, 19 Mar 2026 11:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="kxGhfK6N"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D493C945C;
	Thu, 19 Mar 2026 11:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919524; cv=none; b=faccmRKlxhwOV4UPKYFwYDInmyHw7RJ7nmpSGvctgwyIyyeys2EREAGJ8wqFPDAprvFvVCKnu+vr9ZH61TY/SpjDGPsK8YSqtGY73GKZTLnqry82bnwQQl0teVzv96kZQEF8O3D8fkBTVp2ODeYcxHm5d7c0ZWLcMyrenVvmOxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919524; c=relaxed/simple;
	bh=lERe9hyh2VwBwnC0cv2YVCQqVRdJSlb26qUXaTDhAUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LJMZ2BkeHDLK9w9MfzVk7pxuctS7ehEqVLCHIgPjaqXmUZfRom3CxJLH7TfaI0cJ0W5L1DJ0a5ojyMoSpfaQHb8RFzmds/KIyDAtOAHBCGMBRtaS/5UacHwuKcz+MYNXt7BNyZr22DE8KF8tz0FoYn+BxKc9h/sKb3VL4ZUlJLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=kxGhfK6N; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=N+ZmKAtL2vNDqMHgfKrSPjoKgWsbPLWNzvOE/c/drNc=; b=kxGhfK6Nk6P+Z9QrDivEQE5w/v
	LhHqdWrVYlsxQ7nbHpZCYc3WTKs+GBGGJIiPenyckKh4/AULwWTEEavfMsIOWWMjCMaAK61Hm+lY4
	cjfqfDbXd01+sD1hox8dzddgsGx2VGOFkj4Y8ItOllUKFdPJAwXBsPu+A3EwoDRr5fkV2K//DKvqp
	lCs+UW+/hVQjREPgZ1qw7gYEnNYWyM8z0kA4Dz9sdm0KEHdHNpcr7xRqv4oIARd7efjXkA2JpcJsK
	K1PdxYDYn2VuatF0lFZT5d9z+1GgEknZ175Rc7NuE+uGa9978f5S08FjFhswIoDCZpqmmBJM6+NwC
	8tPXQGiw==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w3BV2-000Jek-36;
	Thu, 19 Mar 2026 12:25:13 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w3BV2-000Kr0-0N;
	Thu, 19 Mar 2026 12:25:12 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Martin Schmiedel <Martin.Schmiedel@tq-group.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject:
 Re: [PATCH 2/3] arm64: dts: freescale: add initial device tree for
 TQMa93xx/MBa93xxLA-MINI
Date: Thu, 19 Mar 2026 12:25:11 +0100
Message-ID: <2259293.irdbgypaU6@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <d67fafc1-4261-4818-8b58-7f3a874613e4@lunn.ch>
References:
 <20260317111704.1075938-1-alexander.stein@ew.tq-group.com>
 <20260317111704.1075938-3-alexander.stein@ew.tq-group.com>
 <d67fafc1-4261-4818-8b58-7f3a874613e4@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Virus-Scanned: Clear (ClamAV 1.4.3/27945/Thu Mar 19 07:24:38 2026)
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277730-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,ew.tq-group.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 87E972CA535
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andrew,

Am Mittwoch, 18. M=E4rz 2026, 15:49:38 CET schrieb Andrew Lunn:
> On Tue, Mar 17, 2026 at 12:17:01PM +0100, Alexander Stein wrote:
> > +	mdio {
> > +		compatible =3D "snps,dwmac-mdio";
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		ethphy_eqos: ethernet-phy@0 {
> > +			compatible =3D "ethernet-phy-ieee802.3-c22";
> > +			reg =3D <0>;
> > +			pinctrl-names =3D "default";
> > +			pinctrl-0 =3D <&pinctrl_eqos_phy>;
> > +			interrupt-parent =3D <&gpio3>;
> > +			interrupts =3D <26 IRQ_TYPE_EDGE_FALLING>;
>=20
> Hi Alexander
>=20
> Haven't we been here before? EDGE interrupts are generally wrong for
> PHYs.

Whoops. Sorry, this slipped in from the downstream kernel. Will fix that.

> > +			reset-gpios =3D <&expander0 0 GPIO_ACTIVE_LOW>;
> > +			reset-assert-us =3D <500000>;
> > +			reset-deassert-us =3D <50000>;
> > +			enet-phy-lane-no-swap;
> > +			ti,rx-internal-delay =3D <DP83867_RGMIIDCTL_2_25_NS>;
> > +			ti,tx-internal-delay =3D <DP83867_RGMIIDCTL_2_25_NS>;
> > +			ti,fifo-depth =3D <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
> > +			ti,dp83867-rxctrl-strap-quirk;
> > +			ti,clk-output-sel =3D <DP83867_CLK_O_SEL_OFF>;
> > +		};
> > +	};
> > +};
> > +
> > +&fec {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_fec>;
> > +	phy-mode =3D "rgmii-id";
> > +	phy-handle =3D <&ethphy_fec>;
> > +	fsl,magic-packet;
>=20
> Has WoL been tested?

Yes, it works for both interfaces. &eqos doesn't need that property though.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



