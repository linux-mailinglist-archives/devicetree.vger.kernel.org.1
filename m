Return-Path: <devicetree+bounces-312616-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XHgEH5FtMWpUjAUAu9opvQ
	(envelope-from <devicetree+bounces-312616-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:36:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAC0691353
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:36:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ltwzz9ah;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312616-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312616-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E5C7308BF22
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:31:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893EF43E9C6;
	Tue, 16 Jun 2026 15:31:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0243CBE8B;
	Tue, 16 Jun 2026 15:31:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781623870; cv=none; b=a/J+E++mTUUrOtU0/hnkiyLoayoLpsPeZ3tRXzHFg8hGuwDDLOam4qwPZKj7Dr6xth6JG1OQvoeu7c2CGAyiJJ7TImQcjEEuDtDStFRNkVl56RfLsN6/wBC2QwhwtWHpWmg0Dxb8Kr5z8wNYL1AGGf1UhdcANRE/bzl5y8y/IyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781623870; c=relaxed/simple;
	bh=3nk1SqwTjFBC3ctGt1B9moE+DwlnAcJ+ZfvsMGUJmWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BtpzwkXKiro+8I021Kwj/bgND6qcLlYiAxSCSP86qnWxIv3SBYtSy6R0NLyYo3xwhfOWJ1+a8RYWQ/m5+8l7Rz5ef4s6SLKtirYQVGyrYiprOyifoV4FNzBsbNIFgGNVN42kYacKjjJgQIgoF83f/0+Kt04l6BU+KTtqZgLA5ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltwzz9ah; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D54E1F00A3A;
	Tue, 16 Jun 2026 15:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781623869;
	bh=H4q3EaMMaI2HFEM9XMWLyy+ranKnuc2iJ9R48LAi+Co=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ltwzz9ahZ1f/RKzdJ5velxbsLeSwb6LIbPVG92hCsCHIuJC6Q8lC3JuB0FS6DqCKY
	 lIv7hr7q5pHYYm9pv1a6AXauU9jtgXSQW87un/uK/QjazdZaZru0Cc/MXB1srkUI3D
	 9lIKkA5MDSeHWRr2150Gs5NYGUqgf4zKmbfCg1d8Ni2VbL44FPfzzacBV18zwmSv/5
	 w14pjfaMHy3aF6aeol1qiZPtQg5sjdPb48bccqOQCRz/bx8GJBaxbhPwSa36G/ygp4
	 0fPX9LLEDtorjqb/OtqsXOGHqYGBpbqNEi3N+p9a5M/2FoF8an/HWhabzRRzOS5K8X
	 EzhaiVrflUUeA==
Date: Tue, 16 Jun 2026 16:31:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	Min Lin <linmin@eswincomputing.com>,
	Yulin Lu <luyulin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: Re: [PATCH 6/7] riscv: dts: eswin: add I2C controller support
Message-ID: <20260616-greeter-securely-16e742490a4a@spud>
References: <20260615122016.1110206-1-pinkesh.vaghela@einfochips.com>
 <20260615122016.1110206-7-pinkesh.vaghela@einfochips.com>
 <20260615-lumpiness-profusely-155422288c31@spud>
 <SJ2PR04MB8896A5877CCFC177FA5D5A9583E52@SJ2PR04MB8896.namprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WNod8yUaohcmzurl"
Content-Disposition: inline
In-Reply-To: <SJ2PR04MB8896A5877CCFC177FA5D5A9583E52@SJ2PR04MB8896.namprd04.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312616-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:pinkesh.vaghela@einfochips.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:luyulin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAAC0691353


--WNod8yUaohcmzurl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2026 at 11:57:33AM +0000, Pinkesh Vaghela wrote:
> On Mon, Jun 15, 2026 at 10:05 PM +0530, Conor Dooley wrote:
> > On Mon, Jun 15, 2026 at 05:50:15PM +0530, Pinkesh Vaghela wrote:
> > > +		i2c0: i2c@50950000 {
> > > +			compatible =3D "snps,designware-i2c";
> >=20
> > Missing a soc-specific compatible here for all i2c controllers.
>=20
> We are using generic DesignWare I2C driver for all I2C controllers with
> no changes required in the driver. Do we still need to add soc-specific
> compatible for all i2c controllers?

Yes. Just use "snps,designware-i2c" as a fallback.

Thanks,
Conor.

--WNod8yUaohcmzurl
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajFsNwAKCRB4tDGHoIJi
0rUXAQCh5hx72iaCwvhODXXBrj/a0alO+abHFoxSfaBo+7vy2QD8DF0KE8HEDctE
m5ZQMaLYkLda7O1wmlcME+9t698Z6ws=
=E+bB
-----END PGP SIGNATURE-----

--WNod8yUaohcmzurl--

