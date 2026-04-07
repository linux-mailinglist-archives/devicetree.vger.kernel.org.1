Return-Path: <devicetree+bounces-285419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKdPGzAy1Wly2QcAu9opvQ
	(envelope-from <devicetree+bounces-285419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:34:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DFB3B1E4F
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:34:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B628305B0B3
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 16:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55483B6364;
	Tue,  7 Apr 2026 16:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k431tsz3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9266633BBB1;
	Tue,  7 Apr 2026 16:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775579477; cv=none; b=aaqYCRxVFvYr6h0ApB3A4kkkRSFrWtEpnreqd4/4CyxG8UaBRzpcAbevcjmpIjYlIpL45qBhxBnX/EN1WKin2dmU4rs5hXWujMToIgjnz5PifoIh4CZdsCEYovAFpOeEjhp1jX1+yfqHwjRSG1jnNW9fhl0k2cbJ3fMrAb8qo0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775579477; c=relaxed/simple;
	bh=G2MiPboFG46RndYOGANWaYMGw9V2r1sIVseGNfWf7K0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L7oFtr+3Bj0q+pamwome26kZP55zn9Poto+JEmPAbfgO0xaDt9zUrdjXHB9Vjjllhc6CsSPxdcSYrLKbL26bG4WMz7OS/MNxO3N2iEdxc+nsnWB2dsUUzjjE9mqvzRbBpfz4tvsp87nahrkqOYGwkPAV8W+PRgJIpCRXw334prE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k431tsz3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC821C116C6;
	Tue,  7 Apr 2026 16:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775579477;
	bh=G2MiPboFG46RndYOGANWaYMGw9V2r1sIVseGNfWf7K0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k431tsz3kY0MZ2I8gQAXrhxLGDcuwVqRCjo69LTQxtbKr4sp0EBiD3lmKe2yAorif
	 1UvUSvba3pfX9xf4McPDbK5Bnr0QFL0r7EumXNWtERJPbhYcMldZ91McbkugyqCmII
	 RD9uyMzGQHvxSsYZWUWQCQBSNSZhCNdotG4+TAJ5J5Fp7P+jgX1iZRAflFdJ39Fe42
	 jiRNDIzFRIsY289+kvB4vOdirbJ5m/wmp0exOasV8y4QqBakrLvfcLB48SeZeAjTFp
	 ALDGAPQIyu2MF+/0Aupe60NeayHQcLrqZ034iljzVmcqNSPKCpFGRhG8nrlTgevz/8
	 xG7VnKsCqg4/g==
Date: Tue, 7 Apr 2026 17:31:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Guodong Xu <guodong@riscstar.com>, Guo Ren <guoren@kernel.org>,
	Xiaoguang Xing <xiaoguang.xing@sophgo.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 2/2] riscv: dts: sophgo: sg2042: use hex for CPU unit
 address
Message-ID: <20260407-shine-distrust-0546884c2535@spud>
References: <20260406232655.144043-1-inochiama@gmail.com>
 <20260406232655.144043-3-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kL4vNa0dNHftN6QI"
Content-Disposition: inline
In-Reply-To: <20260406232655.144043-3-inochiama@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-285419-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com,gmail.com,lanxincomputing.com,riscstar.com,sophgo.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: E4DFB3B1E4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--kL4vNa0dNHftN6QI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 07, 2026 at 07:26:55AM +0800, Inochi Amaoto wrote:
> Previous the CPU unit address cpu of sg2042 use decimal, it is
> not following the general convention for unit addresses of the
> OF. Convent the unit address to hex to resolve this problem.
>=20
> The introduces a small ABI break for the CPU id, but it should
> affect nothing since there is no direct full-path reference to
> these CPU nodes.

I don't think node names are abi anyway.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--kL4vNa0dNHftN6QI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCadUxTwAKCRB4tDGHoIJi
0mnXAP4p4InN8dLHh+QucYIvwi/E45p5xHJJmMUsXLdUAW647wD/Uclt3M0D4j9S
6kGsoO6Dy+s6jyv7qUmuspi85sTUPQk=
=hnz/
-----END PGP SIGNATURE-----

--kL4vNa0dNHftN6QI--

