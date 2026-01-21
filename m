Return-Path: <devicetree+bounces-257735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFjqF4ppcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:52:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E84EE51BA1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6A1B6C5AEF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3AD3396F7;
	Wed, 21 Jan 2026 05:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="MopltGMF"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9E12139C9;
	Wed, 21 Jan 2026 05:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768974710; cv=pass; b=eTLSupq4IElltQMhkJ8hvPc7aWuAkbSDBEIeSxGZ65MjPzBcUm/GKVk6YhsZvHVVzbt1lBEDurWj+0DpiEM+9n3CBh99g9OLb5VcXF9MMCXWa/+ky5wRx+ubGszkIKVVOCNBd8m++/tmaU9A6oL+Pg4aQsZwCv3VaXjMEH3S5WA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768974710; c=relaxed/simple;
	bh=gcGd2WYhIJcWQiDD+CQQuZMU2SzVLB4NQMm2A+uZqCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HLH7FXDpFox/SgcKSCa8zIMr1PDNy+FL000QoGLFA7+t1sJX7xm0KOX8PqFzDnbSNi+lPuH9vM9p3QaboVbY1vnBuEUO7Zz8Dt51cxeKl7Oo7h+AgffHhGvSs5EMtRLnQfCf3IEO5SYcpYQwZ7v/dWa6QgEm95hRx0yVACIvWzM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=MopltGMF; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1768974680; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y2Qg56bDav42iDsHEi3mFLYNkHMuyAZ7Ztqy0A3VnX1viwnmCu7jSkRQBOVESdwERo+1KbTjvjWyREMvMpb+JhkVtzzj9Y0g2TDmBy6I0EpDdjuvZKKPkiN1kJRA1sTHHhnol8HlCWR6jn+JZkUJ/Tkccv2LVWep2xrSM+PlcAM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768974680; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=vg2r2aqj+bKEFxrX6PEqQmNUJg+R0LwggjFHbEypWzA=; 
	b=L4q5uRwn4bUm6+yLtwYsSBIby/Sc96xOChQTGt4lrW1HJHm/+XgUDQnd2adm6Gh5DM/ArMtHfrygJfi+nlt1OCwg0+/kS5BJW4wt5/nc7eJ/VvAeJMPEadQkVrjreCbfXZLRiz6uXBW9SB4P8MFUfsz4AmIDGxUNj3KVgnTzq/k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768974680;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=vg2r2aqj+bKEFxrX6PEqQmNUJg+R0LwggjFHbEypWzA=;
	b=MopltGMFgjIMaYYxz6MGuPbesycT6+DX8rehfOPo8GNz0XCF0Dok9uxtzpQul+7A
	8qe1Kr4fVhYpvG4rnQV3PN1Rdu3lZDEUg0r7oEJcMWVcHu2ChWpbA8aYgQ4JdlV7pfd
	niE0KXZ1iGDieIYKH3RbPXjqO/GFfkNHZcDFMYH0=
Received: by mx.zohomail.com with SMTPS id 1768974679161902.5765053447564;
	Tue, 20 Jan 2026 21:51:19 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 994E5186A24; Wed, 21 Jan 2026 06:51:14 +0100 (CET)
Date: Wed, 21 Jan 2026 06:51:14 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Alexey Charkov <alchark@gmail.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 board
Message-ID: <aXBlBHZIPQ6xhykE@venus>
References: <20260121031548.402-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2x6hmltxgc2qk4r"
Content-Disposition: inline
In-Reply-To: <20260121031548.402-1-kernel@airkyi.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/268.954.8
X-ZohoMailClient: External
X-Spamd-Result: default: False [-2.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-257735-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[lunn.ch,kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[collabora.com,none];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,rock-chips.com:email,collabora.com:dkim]
X-Rspamd-Queue-Id: E84EE51BA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--l2x6hmltxgc2qk4r
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 board
MIME-Version: 1.0

Hi,

On Wed, Jan 21, 2026 at 11:15:45AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>=20
> According to the description in the net documentation, PHY modes
> "rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock signal
> to be delayed on the PCB.
>=20
> The Rockchip platform has long used the above mentioned PHY modes and
> private delay prop to describe the internal IO delay settings of the
> chip, which is inconsistent with what is described in the documentation.
>=20
> Some background, for RK3576, you can assume that:
>=20
>         tx_delay_time(ns) =3D 0.0579 * delay_line_count + 0.105
>=20
> For example, tx_delay =3D <0x20> means:
>=20
>         time =3D 0.0579 * 0x20 + 0.105 ns =3D 1.9578 ns
>=20
> Recently, Andrew has often mentioned the problem of phy mode in board
> level configuration. So let's start with the RK3576 to modify this.
>=20
> Please test this series of patches, thanks.

The RTL8211F PHY driver does not use the "tx-internal-delay-ps"
property, which would require using phy_get_internal_delay(). Also
the hardware only seems to support enabling/disabling a fixed delay
of 2ns, so it cannot be implemented as far as I can tell. So unless
I missed something, this series makes no sense as-is.

My suggestion would be to add support for <rx/tx>-internal-delay-ps
to the Rockchip GMAC driver by introducing a new rk_gmac_ops
entry to translate the standard properties into register values:

int rk3576_delay_conversion(unsigned int delay_ps) {
    return (delay_ps*10 - 1050) / 579;
}

That allows using standard properties in DT instead of vendor
specific "rx_delay"/"tx_delay". This results in a much better board
description and shows how far boards derive from the the standard
2ns (which can use rgmii-id without any extra delay specification).

Greetings,

-- Sebastian

--l2x6hmltxgc2qk4r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlwaUsACgkQ2O7X88g7
+pr3VQ/+K7upRXGFJh74bDRpfZgOcOTYGsx3gh9TOqe+8BOCo9Les+bNrZr5hEuP
hKfPMARhUrIMnIcPW6LbLgGc1TMctwPbFGt7XoPll8e4CWNBM9oKf44mbIqh38rn
z8LeWa2NUDA/QUkjy6nvtJC41lZJhu4JfVFjU89xbu3jncJFUxNHIeNftZmeFkt4
L9gDdEfnaPcSRN5Lko9iVhZ0dIHpWnQa3EeAJLooPjoyRcmF5c4OLtQEo/bbGjOs
nTg86OLquQwOykB7salQyMc857St6eC/pRAFcRBz02AQ6KGEpYk6s38GadPHhd/x
eCQ0AvdBdvjyn+GZEUpkPefcZKrPqaniy4DywlsSkfUf0nONIXfx09FYoD0pP4TA
Q0R5c+s9s40WVzWahO+9bZBzsLbi5VcmsY3xbCWEW1aE2T/xnR594Nqh/R46oNlN
EjVuCJgnt/foPlJkQ6MGs52wW/FIZ7sl8VxTlUmWLpTmyDBcz7RU0SkMOBN3ZrBM
+MjCtCcfQ2GeJOc0IGagpeKy7FCBiTogPshTG5Zs+k4xHIHLhaNxGu5DiMOiRwRd
BBV1J+GH/b3FADkdxQadcBqegpBE04Si/ZTFCLQHbe0zfa3ggXvmMOhrXsyaaj5C
dR7EeRHh8lS3cBDzAWkfCBCPZWe/24aBHuqrPdbsEUSPT6OK//Y=
=f90W
-----END PGP SIGNATURE-----

--l2x6hmltxgc2qk4r--

