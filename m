Return-Path: <devicetree+bounces-276671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJZWCzpOuWnj/wEAu9opvQ
	(envelope-from <devicetree+bounces-276671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:51:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CA17C2AA211
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B263C302B4C3
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16813C6A26;
	Tue, 17 Mar 2026 12:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i65qh+m+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EB93C5DBF;
	Tue, 17 Mar 2026 12:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773751856; cv=none; b=U0bhcS0wXm+nmmqRpTlz6l1/l1OAmuey28Qn9GCA7uR7jyt96WgirFAZQzwYM/99o6c84ESbB2tcCBfYifDg4Uhpq1PahlHRVP3fbkcZnJrBjmElTHCKmI+X0LsYeYj/pGQkvH5PMWTUsC6LNLxtaQd0h0/dJ/yvdAiI6VJi6eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773751856; c=relaxed/simple;
	bh=Vtt/U7sSfzeS/r32wUfiJFnwToAP8w1/XgLk+CXBqeA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sSJiW3VNnhTJ4pvlWc8eAaC1kps9gmfpB8gS8Dd7ZJaumg2dQoBFcVXcgyrkFPHkmxp6VYwUb8t3ZljpsNlWMhAISGSomcDAOmCgHwACEhqAtNym8Md+YbHU6VgoZGkmkwl7KGUk1RGXvYRpcT4N1t/FwYnzI1UQfg0XzscJYgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i65qh+m+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83AF8C4CEF7;
	Tue, 17 Mar 2026 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773751855;
	bh=Vtt/U7sSfzeS/r32wUfiJFnwToAP8w1/XgLk+CXBqeA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i65qh+m+DgtsIm7IJNzh7BXh6vipXU1S1ACGgpCRFiTvb2eMxcbSzBazIIa4X4Tuh
	 t/gWVx1l4gyVJwJJlW9Q6jFuqG3rVZTahiTQ5Mwz+ckv9PWlo+/qP3v9Vs8TNrCARz
	 6DSbUdXf+tABYMskrXVOSVWXJTtpAjaSMQJpHGCz9LFOGst45goCEsHcw9f/qPvaYj
	 sVVcoBVtoHWgAHHkDkHALxcjTgVxdivYUwdvB9s5NqdHJaYOyvwtrqlWYzFYZcOydd
	 X6jB1fYzoXcsAhEq9//8PBR6bmBflVb+OMgJEBvf1RRi70SDLUIZc3PCdI1PJUk70L
	 hwxTJMO5tbLoA==
Date: Tue, 17 Mar 2026 12:50:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Yu-Chun Lin <eleanor.lin@realtek.com>
Cc: linusw@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, afaerber@suse.com,
	bartosz.golaszewski@oss.qualcomm.com, james.tai@realtek.com,
	cy.huang@realtek.com, stanley_chang@realtek.com,
	tychang@realtek.com, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org
Subject: Re: [PATCH v4 2/8] dt-bindings: pincfg-node: Add
 input-threshold-voltage-microvolt property
Message-ID: <20260317-greedily-cubicle-ad9918435683@spud>
References: <20260317115411.2154365-1-eleanor.lin@realtek.com>
 <20260317115411.2154365-3-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W+/i1VKYMMVnYoRr"
Content-Disposition: inline
In-Reply-To: <20260317115411.2154365-3-eleanor.lin@realtek.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276671-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA17C2AA211
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--W+/i1VKYMMVnYoRr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--W+/i1VKYMMVnYoRr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCablOKgAKCRB4tDGHoIJi
0qpLAQCCK51rdo+7R6324+RMHQPBgCTJ0dTEMw0rCBcMPEQ8TAD/VJFAQG4K6FDo
+czkMtYwJOqpdSLLYewNU/p/0a/yhQ4=
=gbGl
-----END PGP SIGNATURE-----

--W+/i1VKYMMVnYoRr--

