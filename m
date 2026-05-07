Return-Path: <devicetree+bounces-294164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNx5FprH/Gk8TgAAu9opvQ
	(envelope-from <devicetree+bounces-294164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 19:10:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE56B4ECB41
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 19:10:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C415C30204C2
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 17:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6226644E025;
	Thu,  7 May 2026 17:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cyo4OR5A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8B444DB61;
	Thu,  7 May 2026 17:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778173806; cv=none; b=V8oBsbLRPDyQCRB+eceImrSixlAkqvJpaAakanNHYahoMeas0cLSQw/ibDVNOuQPa3FBMxt9626ELPA+47RnanKqBZwwIlwkcnRO9pSUfXyEMMyH2JCR2R7AzS27F2jVTWonbUwZtMsJm9AJ7Cc2KCxHqPpnZhSA8iLjMBUyKXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778173806; c=relaxed/simple;
	bh=+fDDC2gOM2vT37zdm0PRjn+cEpox1iVc6cmHoJwRQCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PIEBClI0P3z/7UPjTD3AGypr8e0fToduSCMz2RdxkbEo4uGiYtD2pryrWMIP4zkHtcbcOYASDDxTLR6Nx4vtwygptuK0cP9Ke87rEVbvW0ZUW/Zceu9YCEftAkSW6pQyYnWiBFl1FT2ioFqCInhgiSiyHuErN31D9hdZ4XetNTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cyo4OR5A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DC4AC2BCB2;
	Thu,  7 May 2026 17:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778173805;
	bh=+fDDC2gOM2vT37zdm0PRjn+cEpox1iVc6cmHoJwRQCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cyo4OR5A5MyZj9MMxk86nEfGhWcKSueVZGP4x/CxhWKnTTa0/BdwWzRwssDNCFNiN
	 dkqnUmE1y21qSe7oEyAvyiLZAkYaIB8nUjjj4WlVN3hrklJ//F+lbyfuARrt2aAZvJ
	 DSQVHPr0Zl9j+pJ4JP85SOzegE5/xILzm3eYhXN2IIuysrmvEsWyv4UsTEZMbPqXE/
	 OHaLDuR+SWpCiQrNnXwLdLei3AO+HTAMThdUVXxKrLqVNiqgF0kqlirTOHME3VW4Am
	 VQ8vJF9al4xc7yYlbjsXsVerkYAROCg67yV6Ta3o9Rlhq9icBmKV6Jigj/2umsbh1r
	 9Zr850FHZesBQ==
Date: Thu, 7 May 2026 18:09:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Drew Fustini <dfustini@oss.tenstorrent.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	Rob Herring <robh@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
	Anup Patel <anup@brainfault.org>,
	Hal Feng <hal.feng@starfivetech.com>,
	Guodong Xu <guodong@riscstar.com>, Yixun Lan <dlan@kernel.org>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>, E Shattow <e@freeshell.de>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Junhui Liu <junhui.liu@pigmoral.tech>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Michal Simek <michal.simek@amd.com>, Paul Walmsley <pjw@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Thomas Gleixner <tglx@kernel.org>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 4/4] riscv: dts: starfive: jhb100: Add JHB100 base DT
Message-ID: <20260507-marina-cost-dc8e597ccf26@spud>
References: <20260506085937.754808-1-changhuang.liang@starfivetech.com>
 <20260506085937.754808-5-changhuang.liang@starfivetech.com>
 <20260506-proud-dubbed-9ab8011df899@spud>
 <NT0PR01MB1216090A629C0095441617F6F23C2@NT0PR01MB1216.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XQEiPSEut9rI/7HI"
Content-Disposition: inline
In-Reply-To: <NT0PR01MB1216090A629C0095441617F6F23C2@NT0PR01MB1216.CHNPR01.prod.partner.outlook.cn>
X-Rspamd-Queue-Id: EE56B4ECB41
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
	TAGGED_FROM(0.00)[bounces-294164-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
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


--XQEiPSEut9rI/7HI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 07, 2026 at 09:05:44AM +0000, Changhuang Liang wrote:
> > On Wed, May 06, 2026 at 01:59:37AM -0700, Changhuang Liang wrote:
> >=20
> > > +	clk_uart: clock-25000000 {
> > > +		compatible =3D "fixed-clock"; /* Initial clock handler for UART */
> >=20
> > What does this comment mean?
>=20
> Here it's just a temporary clock; it will be replaced by the clock driver=
 later.


In that case, it is highly unlikely that I merge this without the clock
driver.

--XQEiPSEut9rI/7HI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafzHZgAKCRB4tDGHoIJi
0hgHAQD28JsxpyMgMAdl7P10S7blw9HcLMODqNpWq66EFUqvagEAx2wXe7SCziUl
s/0N0aDh4GCXtJ64mod/tE/f18OrOQg=
=sk7Z
-----END PGP SIGNATURE-----

--XQEiPSEut9rI/7HI--

