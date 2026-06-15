Return-Path: <devicetree+bounces-312072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z7XNG+snMGqoPAUAu9opvQ
	(envelope-from <devicetree+bounces-312072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:27:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 050986885B2
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:27:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JKKy2DpW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312072-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312072-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2FB0A307F917
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91CEF409E1B;
	Mon, 15 Jun 2026 16:24:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FE340B366;
	Mon, 15 Jun 2026 16:24:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781540650; cv=none; b=MFXfzq2Ok252br/M8nOw3EKuM0BnQ1/JWQYrTfCW4NamdYNGSeuKXRLabDxVCxVgapnBvXfbEyeiSUpSyjceG2Zaikrsd4j2ERrLjNJ1VMQFNgyxJ7sH34EQsRq4aqoPU9r013nSkXPPpe6zGdfAJpoGYlLrA4STr6z/jG0jwT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781540650; c=relaxed/simple;
	bh=QqSUCvXakGCXOHzTYq9e16MZRtA/TXmvVJTgGSt5cvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BJo2XnqSfZUNPa/F1BqOMplZ+YNcHkzIdbmZy+dK+HodzyM7iPvZKN8qRieCsmwZlCE1wuhAihNyebAyaCdFI+ikfZbTX1B3xPZvcyQpQP6LTb9HWNjK4tejJUGbQXSP2IMehpVtPWTm6gow9SDu3nPQNX3a687GWQvIzZYblNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKKy2DpW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 986E81F000E9;
	Mon, 15 Jun 2026 16:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781540649;
	bh=QqSUCvXakGCXOHzTYq9e16MZRtA/TXmvVJTgGSt5cvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JKKy2DpWNmq720pF/PB5KSr+weE5MyTL87curqIHufOINihT+mpINezPy2VePi2Nv
	 QZYMeqSBzoeFN7ieGE5Z0X+orSJlTu7s0m0GTSeawK1YZe0zgPxUyfIMvz2xOBkwn3
	 KUnhG6E0+5NGz1Js5AQN2J8dAUY7QUifqD3esmpw9pLGgYg9ELEsO2mVlXMXcn3lNy
	 Md3O5ST78sg8KhQKcQAlc1+mHKGx4hn2wzJLdYvDEt0vXLgE8lYl29XSTw3RJW/QAX
	 uEFIn5jTEb7GgtJ0MSDuFX93G//QYlSa3BvuMvOwIKpKESOzhiM0moTdgi5kPIZLVd
	 UFAicr9H0DRdA==
Date: Mon, 15 Jun 2026 17:24:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 09/10] dt-bindings: input: microchip,cap11xx: Add
 CAP1114 support
Message-ID: <20260615-favorable-pagan-0e6f9f0657d8@spud>
References: <20260615142103.352163-1-jerrysteve1101@gmail.com>
 <20260615142103.352163-10-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bxybJmG6AY0PhMvB"
Content-Disposition: inline
In-Reply-To: <20260615142103.352163-10-jerrysteve1101@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312072-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,spud:mid,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 050986885B2


--bxybJmG6AY0PhMvB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--bxybJmG6AY0PhMvB
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajAnJQAKCRB4tDGHoIJi
0jY+AQCIVdu0SbgMnpaCBXGRzcYb8fKEa2tMg3zucXoWALMqoQEAkcT10et4BzU5
R/S63Z6vpcV1Q0z6/sJlgwcIxZCKjAw=
=JUsK
-----END PGP SIGNATURE-----

--bxybJmG6AY0PhMvB--

