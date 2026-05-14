Return-Path: <devicetree+bounces-297741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBoaFH8LBmqleQIAu9opvQ
	(envelope-from <devicetree+bounces-297741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:50:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE88E54588C
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F1993009898
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A069D388E6E;
	Thu, 14 May 2026 17:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8f6kfTI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B48233260D;
	Thu, 14 May 2026 17:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778781051; cv=none; b=pZAgwysqhEVVHiFAe6DIXIu9KhLfYyCsi5Lk7a74BCPRfD5ER4gY4K0irYyYh0bEBBb4bdrJ8QJhZ3BwiAJ5RxHxURe4YkxcEGeOUGixAfXP7xRFFGa6B5gcIkDViMHYz74pkL4zki5/tjkfPtwrVPNHdxoLthUChPxyiR3AWrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778781051; c=relaxed/simple;
	bh=vgBsgGXe+zv6+W6MvoN9aWXs4JINY+nECk3GKt5x/P8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bFJvKxEemxZaZxv72x2rZ/F39dElhZGCQWF0I0azF6KIVjZZdw3aUOpcms9slyFIM5Cg0GRsmhcXEMGxB3AHbP7nhHEl/j2YFzCa+wtJQN9d3xQXQjlHNKXAFdn52CRvLuLmWOZGX2UggBlBAJeyn0IdCqEPhlFmtcfsVqCgpN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8f6kfTI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C3DEC2BCB3;
	Thu, 14 May 2026 17:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778781051;
	bh=vgBsgGXe+zv6+W6MvoN9aWXs4JINY+nECk3GKt5x/P8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E8f6kfTItwwyHlhuFGNz3o8xDm0Saj3GLBDvYYT5rnyZASc77iQqDjaOIVdIW6ydP
	 RAI3iIMBI/NX+1nT5b8Mxp13VcDeV6UJsi4WBD4PfOCTQ1HDHdyZ0zDvX7CeIRPgc5
	 ajMm5+IS4ALHyel0HZgSNQ+25HwXMaXo1EsynL8aG5kOu7TghvnjlWkSoAlWqt0K0Y
	 uE4yBunz/rS9fby4aYr2KPgRPaMuuX7GvPRv5Kj2C+zAgrGWMshDTMMWKv/xjFkCEW
	 Vj4GddrkwgOe7bJh96tQvK4IQREQF9Yk5p8J9iaCQN4Xa3cI/xE1wNBUazl7MUpv7A
	 Il2wYDsXKK/Jg==
Date: Thu, 14 May 2026 18:50:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v2 11/12] soc: starfive: Add socinfo driver for JHB100 SoC
Message-ID: <20260514-filler-footgear-3ae65c9b8c92@spud>
References: <20260512083521.3448-1-changhuang.liang@starfivetech.com>
 <20260512083521.3448-12-changhuang.liang@starfivetech.com>
 <20260512-mushroom-helpless-0815d0885abb@spud>
 <ZQ4PR01MB120205CCC0A3229824701640F2062@ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn>
 <20260513-headstand-hertz-bf31fe6c1938@spud>
 <ZQ4PR01MB1202150D76C700778EB29978F2072@ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="58SM5AM6G6irs/hi"
Content-Disposition: inline
In-Reply-To: <ZQ4PR01MB1202150D76C700778EB29978F2072@ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn>
X-Rspamd-Queue-Id: DE88E54588C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297741-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,pengutronix.de,esmil.dk,outlook.com,gmail.com,alpha.franken.de,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--58SM5AM6G6irs/hi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 14, 2026 at 01:07:37AM +0000, Changhuang Liang wrote:
>=20
> This is at the same priority level as most drivers. If some drivers use
>  soc_device_match() and are registered earlier than this driver, issues
>  may arise. It might be possible to lower the level by using subsys_initc=
all.
>=20
> What do you think?

If this is the level it has to be to avoid probe issues, that;s okay.

--58SM5AM6G6irs/hi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagYLdAAKCRB4tDGHoIJi
0kJDAP9O0q8w4WvGaOhEQWn9xc/1yHmmppNMJ6J57RBwoR5TEQEAw3kmCD4WPpQ9
nJ4Q03CWPpKy44/6gTmDgMs1k8bWWAQ=
=O8cT
-----END PGP SIGNATURE-----

--58SM5AM6G6irs/hi--

