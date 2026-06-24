Return-Path: <devicetree+bounces-315320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TfsaKQwJPGruiwgAu9opvQ
	(envelope-from <devicetree+bounces-315320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:42:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 965386C00B5
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:42:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CIqIcAzg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315320-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315320-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF67B300B9D4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0246334C39;
	Wed, 24 Jun 2026 16:42:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8C9332634;
	Wed, 24 Jun 2026 16:42:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782319367; cv=none; b=cu18M0gYjpikQAQyTSh7xSM08+0G9saQjZTg36s5B0yQNfwsIX7DgQfj2+TbKIR4P3BcEVIR0J9CGvAPzRbjo1qgpOaRvRrHzpji/pLBKqa3gK1B58cjhjmxEnlF+scQE4MMWrfw9jf3Xw+gMSjDnMbaOVFlSvD9KbIH2K7nZaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782319367; c=relaxed/simple;
	bh=PscZaUfcZA0pNJ3C+ILA1g3BAlYfkAovBm2+jca3OyA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z9uWk7O8ibLrX43+XmqsUzc9JfbIKVhLCp83DUJflQHG0TCwa1VNMcdcaDkgLCioUmqCuGqKpvDKtaR3KbWCrkxnM538mBt2dU0kN63c0xC/0tWq+LT6TvR8eUNIKgiZJHnZjLsZ19seWPD22TfhME1Wri2gkGyodCgDgs+u5MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIqIcAzg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 545121F000E9;
	Wed, 24 Jun 2026 16:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782319366;
	bh=PscZaUfcZA0pNJ3C+ILA1g3BAlYfkAovBm2+jca3OyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CIqIcAzgkgOgTjtHQo/W6vlF05j/b6nbpe2dZnaul5Khi89kbllYWIKDNG2S/UxgZ
	 WKUkUiZsts0r7GlAkt1AAaj+s8LdKzIAh5h87PRG0d8ES4UUjzD+zipkDriMJeJ3yd
	 Gpj0/mpKv0E9/Pt/GfJTKEflvGS7QV8RueiFwWI4MiltJz0EoGCbPid+Ie7krAkYQ8
	 4c6dXlrqoJI9Va9vijsDTyLJkzWKKJAaZkWxAZvgg/twUhPqkuenyhZBV+bh8rUTe9
	 CMYwbnErSq7R87yGmkYWH8JaxfTHnfvPuP4vdFi3QkLgAAmuLXx+A/t9j5cFYjQNiU
	 axtRfeQIZofkA==
Date: Wed, 24 Jun 2026 17:42:43 +0100
From: Conor Dooley <conor@kernel.org>
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: dinguyen@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: altera: Add Agilex72 SoCFPGA
 compatible strings
Message-ID: <20260624-glider-payable-6148277b8365@spud>
References: <20260624055644.7508-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <20260624055644.7508-2-muhammad.nazim.amirul.nazle.asmade@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2z2FyFjfn9NdGdyt"
Content-Disposition: inline
In-Reply-To: <20260624055644.7508-2-muhammad.nazim.amirul.nazle.asmade@altera.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315320-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:dinguyen@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 965386C00B5


--2z2FyFjfn9NdGdyt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--2z2FyFjfn9NdGdyt
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajwJAwAKCRB4tDGHoIJi
0n/mAP4woezfqDOhOPTeHKxKiN4UDRQJySIxdKZwbSbcfe6AIQEA/mnPVXZOHF2I
NJetc4z78sNvGSrXFUwf4ohO4wmMjAs=
=HRU6
-----END PGP SIGNATURE-----

--2z2FyFjfn9NdGdyt--

