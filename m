Return-Path: <devicetree+bounces-310538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xfe+HYHyKmp5zwMAu9opvQ
	(envelope-from <devicetree+bounces-310538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:38:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFA76740D8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:38:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aQG9tRUl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310538-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310538-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3B1935302E5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F2B1397342;
	Thu, 11 Jun 2026 17:22:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19E440B6DB;
	Thu, 11 Jun 2026 17:22:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781198546; cv=none; b=DU31QJKXOhLdwsEHlfz0jeth2IERfWpDyDdz5lLNA7O9rbI8tCxrOU3JlcMXjx4j66M8KzGme1Q1CHYBUT5babdXn4zvHsFpFaAVfhAiB71GeOeMXl+hycylsOjx9MSimQbzjdBYT3nb5Ed4Nuf/GtZEFa9Jw83GJqDBsjqQ7Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781198546; c=relaxed/simple;
	bh=KdWDhxFqpyK1ExaLMvzw0M+RE0xOM5zE+5Ap11B9AYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Te6d730HnfxVl4SWWZZvKbeUBAmPCv9o/fR12vHeJEJTjC0vragYVLg46uAsBcc28n0iy8uKR7okQsCrwNSg45b2h+PyNuwoAuchNodEQu/kdMf5LBO/C0dFJtkaYdcThpVtSuV9ixSG4wjNp2eB/3SpmONSBifmmKbFU3cfJhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQG9tRUl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E9351F00893;
	Thu, 11 Jun 2026 17:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781198542;
	bh=KdWDhxFqpyK1ExaLMvzw0M+RE0xOM5zE+5Ap11B9AYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aQG9tRUlJP0O+Sd1fT0nlt7WRopgp33SXyAE4qF3jz3ZTjUjfZeejs/nBQM5g+QR0
	 LXG0TitQNUIZXakKtCp2BTi08j8WexRYvM6omta+DVAk4WLkYU5imHgkuhhVmCDnzg
	 LC4QWKB7GWXxfwhmCwf+MsQ/0i5KVsERKciUTHj0EY2BHCHoH711MMcpfWzegs1cPX
	 N0JjRTnmhZtcKJyPdtQmUklA1b6aq/oXr5mhWaNcLVXXBgkc9wJGjykRw9Qh/EbwhB
	 Xwyy2ziCIUeQDWT+pSLwW3ssf9lKptBLCi7mXkENNk8VP5HAa9MWWInsVYg+RG3z8t
	 s/j0OBmMxXnRg==
Date: Thu, 11 Jun 2026 18:22:17 +0100
From: Conor Dooley <conor@kernel.org>
To: rva333@protonmail.com
Cc: Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Srinivas Kandagatla <srini@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 1/4] dt-bindings: mfd: mediatek: mt6397: add mt6323 PMIC
 EFUSE
Message-ID: <20260611-density-hamper-2b89bac89312@spud>
References: <20260611-mt6323-nvmem-v1-0-b5e1b9ce51f2@protonmail.com>
 <20260611-mt6323-nvmem-v1-1-b5e1b9ce51f2@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8jlD8HCh7FfdJwQ5"
Content-Disposition: inline
In-Reply-To: <20260611-mt6323-nvmem-v1-1-b5e1b9ce51f2@protonmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:sen.chu@mediatek.com,m:sean.wang@mediatek.com,m:macpaul.lin@mediatek.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:srini@kernel.org,m:andy@kernel.org,m:jic23@kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[protonmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310538-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,spud:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCFA76740D8


--8jlD8HCh7FfdJwQ5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--8jlD8HCh7FfdJwQ5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCairuyAAKCRB4tDGHoIJi
0mk7AP9Mb5T4kei+ZQb9DUhcF53VPvmUwgHWElm07FdeB+BdKQD/Q2pgevrbI0it
++Mc/nhVwa+UmM4gJxL5PlSgYKXFDQs=
=bEoR
-----END PGP SIGNATURE-----

--8jlD8HCh7FfdJwQ5--

