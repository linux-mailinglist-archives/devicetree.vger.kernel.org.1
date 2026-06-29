Return-Path: <devicetree+bounces-317158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g2UVHvuRQmq09wkAu9opvQ
	(envelope-from <devicetree+bounces-317158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:40:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0E16DCD1C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:40:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F142UrWf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317158-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317158-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFFAA30480A5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FFE73E5A19;
	Mon, 29 Jun 2026 15:35:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2A237C0E5;
	Mon, 29 Jun 2026 15:35:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782747345; cv=none; b=la8rx67ABqQm0qP+7u2Y4nHi1T/PSuLyurF2EHgRMOImxsW7Zee56XWZ0yJLC2IL2vly9cNeQexwnJA8LY1jbRB8iF4mbO0kqFK8RBeRMfrgSKO/7hZe6bHIHjM9o/wDKf/uf+7+bkoaOjYlt1pJraWk4zJsJiS74bhGNJS4IVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782747345; c=relaxed/simple;
	bh=t9chGVaa1WtKYlqTPv6UXZYIQhSIncoAkH7DNac3fBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BLs01BIE3NQhtoL3aLUMQ9gVlPqm6/L32ErLJw2BSyoAZeQtIX2M7+rzCTkafMI6N3w/F7hSQzpY+LCKhdoOv1A5jfhSB1LwxHVAoI0sD43gcT5zabzwtLJLhu1JNkwsW35GkzqyhIsw5iOH/fBKlIM4UtSIiy205nSCxct9TCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F142UrWf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42BF31F000E9;
	Mon, 29 Jun 2026 15:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782747344;
	bh=t9chGVaa1WtKYlqTPv6UXZYIQhSIncoAkH7DNac3fBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F142UrWfol30Ah/1POus3FkRUx3FNpXX+q94mW9rJQgQWtLzfyYCUtguv7YIPwmYh
	 BhWJMcTnuqaIMi8j/eIa3jkiAVJ014iB0SpUvNNtGAUcTlyOYSkoxrM7kjbU+f0hUr
	 WFSGpZBTHTXHbLd8CxX1qyUYpJQidXs+ENJgfOgzkoNitP9Zepgoar14Him8KaVp9b
	 WKp1MPGLNP6ASLnr/2qSW0r5ILMSF2k0EDgvT2hcXRyL3E5TNZ4DPPJoGSz1IpJ7IU
	 Z6kU/mvCrSxB3CfQKXK64sG0KjuzUaPgwNKQcSuScz7RLsPY1/jhdZXgnKy2JpLznD
	 S/sQ4ZPiWaT0w==
Date: Mon, 29 Jun 2026 16:35:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Wadim Mueller <wafgo01@gmail.com>
Cc: wbg@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, o.rempel@pengutronix.de,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v6 1/3] dt-bindings: counter: add gpio-counter binding
Message-ID: <20260629-trekker-estranged-754e9bfada16@spud>
References: <20260628210241.119825-1-wafgo01@gmail.com>
 <20260628210241.119825-2-wafgo01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZOxRcXird+mP+OQW"
Content-Disposition: inline
In-Reply-To: <20260628210241.119825-2-wafgo01@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:wafgo01@gmail.com,m:wbg@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:o.rempel@pengutronix.de,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kernel@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317158-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA0E16DCD1C

--ZOxRcXird+mP+OQW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--ZOxRcXird+mP+OQW
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKQzAAKCRB4tDGHoIJi
0lQ0APsFvTDXWyHXHur0YzSMYJ4DaT12G8z+VRf+i8PGbKLBVwD/SH2IIbG9F5Ex
/Z9+tUVfeeUfLPKcYRvHkgXmvZtm9Qo=
=owo8
-----END PGP SIGNATURE-----

--ZOxRcXird+mP+OQW--

