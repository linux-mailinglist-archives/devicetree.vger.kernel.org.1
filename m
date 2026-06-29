Return-Path: <devicetree+bounces-317134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O+xUOrGQQmpZ9wkAu9opvQ
	(envelope-from <devicetree+bounces-317134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:35:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE036DCBEF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:35:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PF4HhT5N;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317134-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317134-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 437F530578D1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0BF421EED;
	Mon, 29 Jun 2026 15:17:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6B535DA77;
	Mon, 29 Jun 2026 15:17:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746265; cv=none; b=K+3MXMB2quuLTVn0MPUWZyR7Z561xRliinMPA2QF2LCfLd8TQ1WuDhrs7sI9HZQn+9QmYsZCcAKjL/X6h2laQ91cmXVlVV9N50cadc4J/6ZjZ9hCpih3EG8RH6FAG+2p7UDsDLn2S25J5C/igXOPxR5RX73EASG0LeamHT1iXZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746265; c=relaxed/simple;
	bh=gIGHcKYzuDzER8PpAwFARWA0X4WwazmdTre8Vql/Zt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L6sFWDdanyR7iainGfeAmxlPPWp7mNG1BiaQehKoZ3bmtjzwDKJoxEkwee1Ow5WZAxYStFBSP6DIwFtWVwZUu8dJ5ZN916jx17la02cLsV3DBj1PqSGVS3EZ6s4awRR7A1oSu/OgVMZbXkNlCHHCW+laeRnS2ujJXRw6jhXtvgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF4HhT5N; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 532681F000E9;
	Mon, 29 Jun 2026 15:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746264;
	bh=gIGHcKYzuDzER8PpAwFARWA0X4WwazmdTre8Vql/Zt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PF4HhT5NwMk7LWmT1kry9CbZXtpF65Fa8jSdGK6IdxwZX7dhf7/AZiwePV7ksGQPU
	 TMa1NySiZo3pjBD2mDhvlxs2ujFYMsY+OA0yw2mZ9IN2Bqm87Lh7NUNDz6XZtRv8Pa
	 +hXAXNOEhNwJF7F8UNff3AtfrhtCtcjXRhR8x5rwZ6HxhEHKyJ2+CwdMyyoHrcPQLj
	 DcnsPg48DT/KD0dcyJhAsAhSaR8KjOeEAeHyhwIVHGDUJegBttMvim1AsdfjHge2Rx
	 jJTV582Ha+yyvxnfmBpKEC4q2+CGYrdLFrH9Nz0q18mSURAnP+OCAl5cIY2F9r/Cyt
	 MJTREeIIeqx4A==
Date: Mon, 29 Jun 2026 16:17:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Jiqi Li <lijq9@lenovo.com>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jonathanh@nvidia.com, thierry.reding@gmail.com,
	mpearson-lenovo@squebb.ca
Subject: Re: [PATCH 1/2] dt-bindings: arm: tegra: Add lenovo,thinkedge-se70
 compatible string
Message-ID: <20260629-pug-hypertext-cb5ab3279e95@spud>
References: <20260629111104.645771-1-lijq9@lenovo.com>
 <20260629111104.645771-2-lijq9@lenovo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kFWmdZcdnPgoHGuw"
Content-Disposition: inline
In-Reply-To: <20260629111104.645771-2-lijq9@lenovo.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317134-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lijq9@lenovo.com,m:linux-tegra@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh+dt@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:thierry.reding@gmail.com,m:mpearson-lenovo@squebb.ca,m:robh@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,nvidia.com,gmail.com,squebb.ca];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BE036DCBEF

--kFWmdZcdnPgoHGuw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--kFWmdZcdnPgoHGuw
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKMlAAKCRB4tDGHoIJi
0rX3AQDTd9JLkwCwf4y+iV0TGv3DVrHTkcZs9Todx+wFXNpDAAD+JnC/PImxSN10
hVHnIU9RxVjsdoUDmzyE6HcTWgLT7Qw=
=rdZf
-----END PGP SIGNATURE-----

--kFWmdZcdnPgoHGuw--

