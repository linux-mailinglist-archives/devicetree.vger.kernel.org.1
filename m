Return-Path: <devicetree+bounces-316131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5OP9E4adPmp8JAkAu9opvQ
	(envelope-from <devicetree+bounces-316131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:40:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B39476CE95D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:40:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JHfyli1n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316131-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316131-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECC68305F5B3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 15:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4009F3CB8F1;
	Fri, 26 Jun 2026 15:34:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0DB3B71CC;
	Fri, 26 Jun 2026 15:34:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782488088; cv=none; b=DVK9XPI2pWFvORHRe1O6A3UG6ozhahcYS+Q/1VzKAJjq0jjpdxvU2nulw+sGOSjKg5og+71d3rTGJWwKym57bzRxaQlqE4FQt6NHUAReTp8E5i7mGeVAjoV9c8JGDnzNheuP5N//P3vHqK9gJph4Bf8bphnjCqRrLG7FhtpAWs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782488088; c=relaxed/simple;
	bh=4raHx6k80d9t62uDEOhrRCyJH4QyHo1rHRJ5kcCorvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V5eGTTB1pMlKAoPAMwv4xCFd9WI/mvUhFRGqer8/kvlC5cDW8+Gqm1ll4JY9e3YVysCL8RVDvNuitCDQqgIzGQVIc+cBK8iMVGMrEvkzWwXKW4xrcDoAI3NVqOjG8o7u3ak7UKGhI3LWX6h+bNknD0wtw9DMgDf8Hka+AdK0das=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHfyli1n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8E71F000E9;
	Fri, 26 Jun 2026 15:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782488086;
	bh=4raHx6k80d9t62uDEOhrRCyJH4QyHo1rHRJ5kcCorvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JHfyli1nhTiFFZFS3IiUukQdztwkbdyp+HJkPf5kYWilHCjz0X/6UY0aeY7rbblUn
	 F9hNj4grEhqZ/vndrjbKIju0wMUsb4ZIwFj7mpdmAjwEAB0ZlA1fxvqSQ9y+3UcPL9
	 plAQg2c5a36xB7My3M1AKEdILFpB1i3JskJxXve6k2uExcbmll3viwJ29W1w1uZvsz
	 qJWOPyF4DDhyFzKhQU9ZB0LOArv69AOkoGKkhX57EOsgLoEfGeJ+VpEwj5suy7CFkq
	 +KdPKvhbjia/fCRcdV7tl+KnYQNzUjMk61pTcrLPy8OaCFLTGwON0P6IVMJdeLNfeS
	 Ruz4r6p3pQG5g==
Date: Fri, 26 Jun 2026 16:34:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Matt Coster <matt.coster@imgtec.com>
Cc: imagination@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Alessio Belle <alessio.belle@imgtec.com>,
	Luigi Santivetti <luigi.santivetti@imgtec.com>,
	Frank Binns <frank.binns@imgtec.com>,
	Brajesh Gupta <brajesh.gupta@imgtec.com>,
	Alexandru Dadu <alexandru.dadu@imgtec.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: gpu: img,powervr-*: Add maintainer
 entries
Message-ID: <20260626-reprimand-skinny-89ccde1df769@spud>
References: <20260626-maintainer-updates-v2-0-e1b3f246c44c@imgtec.com>
 <20260626-maintainer-updates-v2-3-e1b3f246c44c@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kKRn2xEvYAQ2l8+M"
Content-Disposition: inline
In-Reply-To: <20260626-maintainer-updates-v2-3-e1b3f246c44c@imgtec.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-316131-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:matt.coster@imgtec.com,m:imagination@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:alessio.belle@imgtec.com,m:luigi.santivetti@imgtec.com,m:frank.binns@imgtec.com,m:brajesh.gupta@imgtec.com,m:alexandru.dadu@imgtec.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B39476CE95D


--kKRn2xEvYAQ2l8+M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=02

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--kKRn2xEvYAQ2l8+M
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj6cEgAKCRB4tDGHoIJi
0sOEAQCbVD9tmnP5JwHMkNN7V4GKLSyTJ34yY0KjkCoyG6oW9gD9GFvmn+/jYnUx
2s3jq/2yWmaoNEJJ3CjzliJu89pp/AY=
=VR4C
-----END PGP SIGNATURE-----

--kKRn2xEvYAQ2l8+M--

