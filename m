Return-Path: <devicetree+bounces-285388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBswOYsp1Wli1wcAu9opvQ
	(envelope-from <devicetree+bounces-285388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:58:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBBF3B1681
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5E3283032CC0
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 15:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015B93CB2D0;
	Tue,  7 Apr 2026 15:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV8qL3aj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258F03CAE80;
	Tue,  7 Apr 2026 15:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775577376; cv=none; b=ixVO9D7vWldKR+du+fBS5TiEe3A9S6lljh+XgTr5nu/T+9HCQiAG35xl4h34sFwcnro1V4cZ53Z+jjmNflOs+ifenC1dyGsfIo2GwJ4KCjst0IZkloQY3qUTYDw0Qkb/CuInlbhjo3sXUtxjwsl/UA169M4ZxoYEBvuOs0GmvHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775577376; c=relaxed/simple;
	bh=kKVaSD68I82lrf7EdLaozoBbTRiXgOxzcIxlQDL2K7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzqyfTDOTVeA3mcdWlG+rgLIAeuwVU0X4Oea2jJ8yWavj4d8Oo8oEKPMrr6Nbj1Q5sr1QVSanJLEy4QgLDdir8W9O5aYFYiiboAZT3ZCKy4upmx86ThADXQiMEMxQh9z/qS8PZp/Vs8U8CrdOXY9n0ilmLJBEZKAaKgXvsthAR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV8qL3aj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CA43C116C6;
	Tue,  7 Apr 2026 15:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775577374;
	bh=kKVaSD68I82lrf7EdLaozoBbTRiXgOxzcIxlQDL2K7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pV8qL3ajZHsm2r5R4szem/dgFPmkoe7AJ3g1+duiZ+fe+ptJLVtyz43rhDX9KVXZz
	 fuHpW+vqsY7s3VfsONbRWyM+J7qxnZbNE4yi7jj+T0Hkgz5e1bbSth3lmlWnym0Ljx
	 S6bNdwgi2g+SvowNsf47knFhymCeff9k/PGP6q3T87SPmeiDCqobz/GB/yRFBM8g2K
	 cfdVQ6WMTEBalAe1K33Lkc3T6+Lwo9/lfet05DADZm1lPy9htz6Q/y9HBwmfVXjhH7
	 b/FqNA65lrFaM0bnwvz7WWs45qLfeT5UhTsI6LIejlyi1u2xwJ2jgtHTsIoVGL+TQL
	 PCfcqF7cY6naQ==
Date: Tue, 7 Apr 2026 16:56:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>, Yixun Lan <dlan@kernel.org>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Drew Fustini <dfustini@oss.tenstorrent.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Guodong Xu <guodong@riscstar.com>,
	Michal Simek <michal.simek@amd.com>,
	Junhui Liu <junhui.liu@pigmoral.tech>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	E Shattow <e@freeshell.de>, Icenowy Zheng <uwu@icenowy.me>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Michael Zhu <michael.zhu@starfivetech.com>
Subject: Re: [PATCH v1 3/5] dt-bindings: interrupt-controller: Add StarFive
 JHB100 plic
Message-ID: <20260407-profanity-immovable-8831ce85c92c@spud>
References: <20260402084019.440708-1-changhuang.liang@starfivetech.com>
 <20260402084019.440708-4-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="217orH3naVFNgJh5"
Content-Disposition: inline
In-Reply-To: <20260402084019.440708-4-changhuang.liang@starfivetech.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285388-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8BBBF3B1681
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--217orH3naVFNgJh5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--217orH3naVFNgJh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCadUpFwAKCRB4tDGHoIJi
0nbNAP4kJZeFXD2T2VobaPVjr05AVbsKND5OjDdmel49DW/IegD/akLREK7WuFJj
/VLoORSCc2fpVmR7BTd0U5IA6gXhhgg=
=h6oR
-----END PGP SIGNATURE-----

--217orH3naVFNgJh5--

