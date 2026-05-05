Return-Path: <devicetree+bounces-293217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFyACG8e+mkJJgMAu9opvQ
	(envelope-from <devicetree+bounces-293217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:44:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 910EE4D18FA
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:44:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0410D30A3854
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 16:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E464921B8;
	Tue,  5 May 2026 16:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSIaigtI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB784921AE;
	Tue,  5 May 2026 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777999295; cv=none; b=OCJzh9I5FuQ+wSO8SZh9jd0QROrU7glkHc6vdKzcWUhVcXP5VObG/oMa16LwBB87atIUbO5Rbj6oBpvcD3n1L+df2Fh2K+wkUZo1ZPXVcjW0XW43oy2fdJui1S6j3gZY2++D8fw5Tf92q0pGphs1HbYYj/kRzz0X7jKkPdDP+tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777999295; c=relaxed/simple;
	bh=XQus+btv25ras34bobUCWOVBVzfiLA69SAYN+cm89K8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V82vjSkYyaJ1eiQbzehHrIwpZlAFDpEMC4yFDMZbFMdqyiL8eyRtiJX3+UAzXp3ERkUvPyL/0iYEiF4L+0Rdr5ETsg/8fYrr74mjxom2gsenMiIz2rysEIZjRTwh5UDCDhJtmd4/5uvg4K7ta/zd3QzdZxx7MwZ7J8Bi/bIVplA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSIaigtI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62D3CC2BCF4;
	Tue,  5 May 2026 16:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777999294;
	bh=XQus+btv25ras34bobUCWOVBVzfiLA69SAYN+cm89K8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QSIaigtIAGZF9G9yk+DR8fsY+Iz9+EhhoNqTZB4I6P/pdgL9i7X7N8/f7pme1RNhI
	 rr22AmlX2mxaiaWWwSbpxkusE2Zd+xWBbd2zqhpkxq0ySVniiKc13ivjc6J2fODm9u
	 XkNbcTCM1WZV/mCDbHIRXM3aScWZAA5Rx+Y+hsf4A2/sf470xdwPMxZX5KzZg4UKrp
	 EJ34fC+zeY2+7El0XJ4VGg5D1ZFSIsZmpFsZFmBpJaoiSSxNRxCS97BwcXd5th7qoG
	 ogyjpMxlYeNE/H6EdMfE49C8fegNCrCCaY0sEYOKW54W5PooO4JdGE2xNGqiQc2SKK
	 6Xd2yNndYisxw==
Date: Tue, 5 May 2026 17:41:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen Baijie
 Technology Co., Ltd.
Message-ID: <20260505-crucial-deepen-996f7a025510@spud>
References: <20260503191842.2736130-1-alexander.sverdlin@gmail.com>
 <20260503191842.2736130-2-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xpCcXftr8fukYDDS"
Content-Disposition: inline
In-Reply-To: <20260503191842.2736130-2-alexander.sverdlin@gmail.com>
X-Rspamd-Queue-Id: 910EE4D18FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293217-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,gmail.com,sholland.org,arm.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]


--xpCcXftr8fukYDDS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 03, 2026 at 09:18:36PM +0200, Alexander Sverdlin wrote:
> Shenzhen Baijie Technology Co., Ltd. focuses on R&D and production of
> embedded products as well as customization of embedded solutions.
>=20
> Link: https://szbaijie.com/
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--xpCcXftr8fukYDDS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafodugAKCRB4tDGHoIJi
0mK6AP46w4swwHaimdw+OKGuIcNCEYAhY/30IYVA9SUgHzExsQD/X57jj1pNcUYy
NM+us9A2zs7E7q5J4N/HoVQxBq1TjQY=
=vGw/
-----END PGP SIGNATURE-----

--xpCcXftr8fukYDDS--

