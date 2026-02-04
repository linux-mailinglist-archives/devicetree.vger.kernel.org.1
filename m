Return-Path: <devicetree+bounces-262759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKStNCuHg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC5FEB365
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8F02307BB66
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B43D38E5FC;
	Wed,  4 Feb 2026 17:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzWXersr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791334A76D;
	Wed,  4 Feb 2026 17:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227204; cv=none; b=Io9ZcfjVJyFyZvm4sVu+NTX7UdL1LpN9jRZSaBLngqIaVtLzpnMjoPXPwdBY9LymwXuhCgnWgVMG2mZflNkPOoDTxE43ZkbpGa1ITU0FpNxIGPZnWWvyDGblNKrg7tEwW3T9GHPHX9MYDUkUGFFeCwHYOO5eGAsq9WZUhfUBUG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227204; c=relaxed/simple;
	bh=pn/M0MfcHQvMkT7h1BWDNF7KZy03z6oNN6WU6NquQZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nW2lcKaM/+7bVBJnW6aMSkyKQETA4Ecfd9texipcgzDsV+RKKVJ+U37pqRh7wixvGmjVxegTX189WgHaY8zfTEXCM92DMlCgoTzpZxYQscwPRKxvu/BB3wY+kqVs8dYJhxRsOt4Tf4oBGwlHh3jrLx3WMC0NxxNAoLSOfy4jz9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzWXersr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06D21C4CEF7;
	Wed,  4 Feb 2026 17:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227204;
	bh=pn/M0MfcHQvMkT7h1BWDNF7KZy03z6oNN6WU6NquQZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CzWXersrCUIkXq3naw8jZT/Cypzo3Zltf0z7i4OBkEVtPmHTTiuxdjjdBTT7xC5nE
	 uD8094XuKecR1080V6LgbDe9FxPaY68FXNrex7SAC9pcCTOhpDsWUfQEN8t0bZ8MSp
	 nsCqfWlOmWVZXyH7LKmV5qeiOk2M3C2MtLtUDlA9rnF83IAp/se7aFCPFYTrvxKYFp
	 KBQ33aArBvr8P0dtxlLiO91st+IzwZdqksOA1QoAramO3NnQ9X/O1HJR7Jzdhfm5gP
	 wh+qsxluTQ6OhhefBaSEbQ83bnLXp6+wLwqRWTpMAfRKbDGwfHD1hUYo4OpVHhNaZ+
	 91o8L1SgnBt+g==
Date: Wed, 4 Feb 2026 17:46:37 +0000
From: Conor Dooley <conor@kernel.org>
To: Yangyu Chen <cyy@cyyself.name>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	Anup Patel <anup.patel@oss.qualcomm.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Mason Huo <mason.huo@starfivetech.com>,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Marc Zyngier <maz@kernel.org>,
	Sia Jee Heng <jeeheng.sia@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org,
	Jia Wang <wangjia@ultrarisc.com>
Subject: Re: [PATCH v3 1/2] irqchip/sifive-plic: Fix wrong nr_irqs handling
Message-ID: <20260204-implosion-defuse-f0bb02febc77@spud>
References: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
 <tencent_3927462924B7319F8F4F90447BDC110FB705@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ikgF83E3PUlqo6C9"
Content-Disposition: inline
In-Reply-To: <tencent_3927462924B7319F8F4F90447BDC110FB705@qq.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262759-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2EC5FEB365
X-Rspamd-Action: no action


--ikgF83E3PUlqo6C9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 04, 2026 at 01:21:16AM +0800, Yangyu Chen wrote:
> Since the first irq source is 1 instead of 0, when the number of
> irqs is multiple of 32, the last irq group will be ignored during
> allocation, saving, and restoring. This lead to memory corruption
> when accessing enable_save beyond allocated memory after commit
> 14ff9e54dd14 ("irqchip/sifive-plic: Cache the interrupt enable state")
> which will access enable_save for all sources during plic_probe.
> Thus, we should allocate irq_groups based on (nr_irqs + 1) instead of
> nr_irqs to avoid this issue. This commit also fixes related loops
> to have all consumer of nr_irqs consistent.
>=20
> This is an long standing bug since Linux v5.6 but since the last irq
> source is rarely used, it may not be triggered in practice until commit

FWIW, on mpfs the 186th and last source is used by the hardware but it's
used by the platform's m-mode firmware not linux.

--ikgF83E3PUlqo6C9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOF/QAKCRB4tDGHoIJi
0pDSAP9PQB0BBn/A9qA110dayuxYw75k+Pg14c9AiodVFvguygEAt8CiSIAXGohM
dnWhhn5mtxb1+19D/TmCaMQSQirtIwU=
=QgAh
-----END PGP SIGNATURE-----

--ikgF83E3PUlqo6C9--

