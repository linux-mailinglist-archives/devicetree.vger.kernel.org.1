Return-Path: <devicetree+bounces-314509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MtSKMFFnOWo6rwcAu9opvQ
	(envelope-from <devicetree+bounces-314509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 18:48:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 426AD6B13F4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 18:48:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AVKaku24;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314509-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314509-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC0463035142
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 16:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D884B310779;
	Mon, 22 Jun 2026 16:45:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48AC175A74;
	Mon, 22 Jun 2026 16:45:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782146724; cv=none; b=hBcoLh3GXVQFaEHRnicl8wDlu0tkh5KknF5cGmR6zBDWw0gbSoEQop+G7f0zdQMDbIYyXPj7rD6ktipZkJMnQtFAYL7cUgav8TmqWqnVJEykTOlqBhXHBJoofoR65MnLpXA/4VMS7AukhZ+1LVq+v6hFJeUpBgdyMwoAkPsGo1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782146724; c=relaxed/simple;
	bh=Xqk2PHK3QCcWR0jjFn371IClVpNTBYwDv1jn3DNcUe4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RaQfLvxw5I3HheqYWe6FH0FPPM9Y/HhTac7kH+8kWoIAe7uL+lgIptN9Vr6QBKcZWPej2KA+P6YVZxvO4SnqxjeaTctbOpls9pNzlxbpCErGB055eft0dC+kgYqIHQ/spphNaN8OnyuAUJXA0Uy8xkY9aUBO3nCJZJQOwXqdEaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVKaku24; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F521F000E9;
	Mon, 22 Jun 2026 16:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782146723;
	bh=Xqk2PHK3QCcWR0jjFn371IClVpNTBYwDv1jn3DNcUe4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AVKaku24GCYD0nsAW1vZxZNtgMsHsrm+c73K7AuXemZwpiQO9iNpfup9UXM5t0jk0
	 /vlizguXb05465Sg1/NmG6OZ7v4yrp8T3es4NTdmMV50mTBnFGAR5tQ0/4q7fhlU3G
	 F9Uk2OJopCOIUSkIJRlAipr7r2+cSjm2Foohgj34szBtTGuAs1OOyiXb5f+qC6lKXC
	 iSOV4Ltl7h18n7JYVmpGqpyZxWE5NehTCqqKfsEyUnyZK6L+shScDUZvWdLdtjSZPb
	 WOkexDPObYafzBfZPrZUFjeB6Q9M/yQErD9lmgCpeU+Eew90c5YbkAiOr8SugerzmM
	 xMNJiaTdPV/Eg==
Date: Mon, 22 Jun 2026 17:45:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ronald Claveau <linux-kernel-dev@aliel.fr>,
	linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: thermal: amlogic: Correct 'reg' in the
 example
Message-ID: <20260622-lance-handset-56a9a04b21a2@spud>
References: <20260622100231.438435-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622100231.438435-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VxYsUdreCsY5xfN/"
Content-Disposition: inline
In-Reply-To: <20260622100231.438435-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:glaroque@baylibre.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel-dev@aliel.fr,m:linux-pm@vger.kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314509-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,spud:mid,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 426AD6B13F4


--VxYsUdreCsY5xfN/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>


--VxYsUdreCsY5xfN/
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajlmngAKCRB4tDGHoIJi
0nnnAQCxwPKlfC+6wk698cBtgGy7NFD5m7eCQqgTcIXn4ktJNwD/SkCKrgG+s3Z1
Hi/BvoQbiP07o27QsROG7/bcxrfXqAs=
=JdwR
-----END PGP SIGNATURE-----

--VxYsUdreCsY5xfN/--

