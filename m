Return-Path: <devicetree+bounces-299564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RwNTERFCC2qsFAUAu9opvQ
	(envelope-from <devicetree+bounces-299564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:45:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D92571227
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B2023016793
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAE8A48C8B2;
	Mon, 18 May 2026 16:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnb+B7S2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A782048C8A8;
	Mon, 18 May 2026 16:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779122681; cv=none; b=MTjnIzm/nEoel/qMieirpHzhT24JWWGctNpqgzfAWK+tFUOU/Anm9Z88wQaW0tqghHLKmHZ9SRRoVNv4u3R+fDn/3JUgeaD1E7ilIqZIDi70YCm8WZfpuEOUL4KPTq3LFwG+r5fl8QamgkLT4dst+RLxNNudvIc3A3AOrKwOTZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779122681; c=relaxed/simple;
	bh=m3Ikqs/u6iw16HVdcS6tQdZmxm4Gckpgsu2UZkrryLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GRm88FaxnmG2cOdNbcqU/nlPaVfFQDSW/7hyz4MIhxjECnn4kiSw/RoqQhf9tPRLblcbp/Bl5CYlWoBpU4nz/9vgt8vS8P3Opxx7JsHrYQuT0VvkbZHqzejgQtel7ZWCXzq3WjdZRMN/9ZVvvF5G9yfbFjS4XbTNFGxjrTgcK1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnb+B7S2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89CAFC2BCC9;
	Mon, 18 May 2026 16:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779122681;
	bh=m3Ikqs/u6iw16HVdcS6tQdZmxm4Gckpgsu2UZkrryLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hnb+B7S2mrRrVnxTpFwavDZYcQo+ZA1OPZyLlO4Bpa6hFh5jghWsMhgRFUVVlkW7g
	 A2EsU9A42Y8hoddNVbUjyRrHB/Ed6rNmkKQNeto7AnMHZmOoaAF05mFTpmKjVsKjgb
	 bgpzq/j6tRXVlvMgda1RQ0iMOkE6+OYGsWObpIaymsWH472UwYWRcL3fHX09jW0EKu
	 cFBwPVDK5C7dAj3Yaw+pZWVPjySDN/ip+NSCn3rErFrKFBK1pcn7I8rt/KfbWB8z7G
	 TItf52cNhgK3oaF5pg2e4iQlRseETGquwS3/Epnvg9ralWg8TNKA3jxkjy/1glyuKu
	 CFI//kXd9M+0g==
Date: Mon, 18 May 2026 17:44:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
	domenico.acri@engicam.com, francesco.utel@engicam.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Parant <c.parant@phytec.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 01/15] dt-bindings: arm: stm32: support Engicam
 MicroGEA-STM32MP257-RMM board
Message-ID: <20260518-cranial-egotism-425cda572694@spud>
References: <20260518143150.3138712-1-dario.binacchi@amarulasolutions.com>
 <20260518143150.3138712-2-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k8rYH4PA6MYcOw7H"
Content-Disposition: inline
In-Reply-To: <20260518143150.3138712-2-dario.binacchi@amarulasolutions.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299564-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,amarulasolutions.com,engicam.com,foss.st.com,phytec.fr,kernel.org,siliconsignals.io,gmail.com,lists.infradead.org,st-md-mailman.stormreply.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E9D92571227
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--k8rYH4PA6MYcOw7H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--k8rYH4PA6MYcOw7H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagtB9AAKCRB4tDGHoIJi
0i/4AP94lXNNmFYS6tVgFN3LRcZ5Ins4gmmknN0ofz1VRWQEgwEA5D9fYg7lqDmX
1W6kIm5teSCnFwGj0zzwdjMgivR6eQw=
=t30R
-----END PGP SIGNATURE-----

--k8rYH4PA6MYcOw7H--

