Return-Path: <devicetree+bounces-275696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEccOxpStWlGzQAAu9opvQ
	(envelope-from <devicetree+bounces-275696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:18:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7995528D16C
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FEC93027B4F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 12:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4396B241139;
	Sat, 14 Mar 2026 12:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzkVT062"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBCA32ED2E
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 12:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773490638; cv=none; b=qVYvh0DxbLeSuQArEXdsCDoQdwKhbOh6gsPgYKK7UGFNHTIWvnRYP9lu49bAlrTWTXZ1anjnc+h6Rwmnm5W8csSn9hA37TANiFzlI/RKEGnknpgHRe9dObrS/9gi/diSZF+6Hc8Q5ruiXz7aH8HN3ByUrZ4K7/ZoTZLAoW8ywiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773490638; c=relaxed/simple;
	bh=qJN0XXCAFaH6VkPmE666UHy9EHp3KHZV4dMoKW+Qfz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uFmdpypy6kmsOtc1eQFgBH+FV5t/iRreDYhXY+/A7YeJy+lL7tWWMPTCVblylxS75s/qWqIeBC3uR4QxlYphm3ob47nGS3oiEraMqsUtECZciCLuMC8Acp9zr/uqEDHCj44PVOLXOy84zQl8aC3rxz8w/9j/3bNqf0u8xbI0YZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzkVT062; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAAC3C116C6;
	Sat, 14 Mar 2026 12:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773490637;
	bh=qJN0XXCAFaH6VkPmE666UHy9EHp3KHZV4dMoKW+Qfz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DzkVT062gMhnk4qaERql+mwsd79l6a1zlNM7tZT9ZLpvvmwtM7l6GzAs0fG+KYDCf
	 GnxB9EVnaG5/XzTtge/XmWhi5g6v+WlCpbHgn9sKhRcdjiDe/NfjXPf1YMQFFw+wC1
	 2I6FJH/2LenPCD7kBnbGjFTeVMDBCfkttqWYn9SAqNDuCdJYWzfh+bmcykLAaI51uq
	 4yVSABdemLJetaVLt2j7SV/3esrCm7UDrzDvpb5bCV1wrtJAD1nCmfzHIlO/ivwFxp
	 d15R7U6kvNmEB+aRWtrr4KN1I4Sils/8oZdsmjbYBMKZLvrlRvv2HER5yCSoqg5SsL
	 wSvRq+XSGghyg==
Date: Sat, 14 Mar 2026 12:17:12 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of
 Svpbmt "XPbmtUC"
Message-ID: <20260314-subdued-morally-f20a84fd446c@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
 <20260313-visitor-majestic-1a6888dc57b2@spud>
 <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
 <20260313-spiny-duration-702fff6bca17@spud>
 <ba44e0ed-9a6f-4d4d-b3bc-a6e0bac19940@gmail.com>
 <20260314-errant-gnarly-dcca92457051@spud>
 <9592ecf2-8410-4df7-9b2c-17564426240d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iDS3O7h7qtVz8IgK"
Content-Disposition: inline
In-Reply-To: <9592ecf2-8410-4df7-9b2c-17564426240d@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275696-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7995528D16C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--iDS3O7h7qtVz8IgK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 10:06:42PM -0700, Bo Gan wrote:
> > To be honest, I'm not completely dead-set opposed to a property that has
> > the bit positioning, but any property being added for what is
> > effectively an erratum needs to pass a high bar when the info could be
> > gathered in another way. That the eic7700 one depends on firmware for
> > what the bit may be is points in your favour, since firmware variability
> > is part of what dt is there to do. The jh7110 is points against, since
> > it could be fished out of the errata handling code.
> >=20
> Even for JH7110, I don't think it can be handled through the errata. It
> describes the errata of the core (if I'm not mistaken), and there can be
> other SoCs using the same core with the same archid/impid, but maps the
> peripherals differently, and the UC bit position doesn't apply there. I
> think you are probably looking for "SoC level errata" handling. It's not
> there AFAIK. Hence I guess both SoC cases point in favor of the dt prop?

I dunno, nothing wrong with checking the devicetree during the errata
"probe" code. Checks are not limited to imp/arch ids, can do ecalls etc
etc in there too, so looking at the root compatible would be possible.

Either way, if people like what you've done here generally (because
coming up with our own use of PTE bits could be controversial), and a
custom property of some sort is to be used, you need to provide a good
justification of why it is needed in the commit messages because you're
setting a precedent of being the first "extension" conjured up to suit
linux that would need that kind of functionality.
Need to demonstrate that it describes an aspect of the hardware, and
isn't being conjured up to configure software to use one out of several
possible values, that it may even be able to determine heuristically
=66rom information already provided in the devicetree (like the root
compatible or a completely described memory node).

--iDS3O7h7qtVz8IgK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabVRxAAKCRB4tDGHoIJi
0sKCAQCFcLXaxPOsQWiEZYssCaXCDw8Ikdz/ax1iXfKfagutMgD/TE4w73XgMNvH
GeXGGZb5eOooB27gJKL5sMKOn2nx1A0=
=c0jS
-----END PGP SIGNATURE-----

--iDS3O7h7qtVz8IgK--

