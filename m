Return-Path: <devicetree+bounces-313837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XRrhHhdbNWqCtwYAu9opvQ
	(envelope-from <devicetree+bounces-313837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:07:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D42376A697A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:07:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YnF+vQSl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313837-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313837-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9EB830C34AA
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422A333B6D3;
	Fri, 19 Jun 2026 15:00:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F1A18A6CF;
	Fri, 19 Jun 2026 15:00:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781881242; cv=none; b=KpU5vgCZLHurA73uWBeR7eyZzQOdDGk/mtelamfZxmjnzEsGY6DUA+l23UFKWSaQp8tRFERQPXraszJ4TXo+uAJksmSwiu4w+gxv2EklFV4QCGbyVOngII+dz3S4i9GNBq+P/ffAqAxhYYDxRAWyTKKqAky9TvMshDRSMkcVpj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781881242; c=relaxed/simple;
	bh=dLseSs2Wm9SPVKWJJ3iGGuTBRDibOYCNjz4WJ+yAxjk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uV34iKD5Bq1K8VWy8N0UdeFoBgwdfioKAWFKzEyI81IAtLjuKnS9JDGBFKePO4BnlwMjRzOsIkHqc5pYCzKXTvQNTCqfCPnUjdEm/bi1BekfI42pdRqlSvIKgtnMZt+p8DKhPmLXAdq3yX3YknKBF8bv0cfkW9fyzDj3Od6JwGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnF+vQSl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81B5A1F000E9;
	Fri, 19 Jun 2026 15:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781881241;
	bh=dLseSs2Wm9SPVKWJJ3iGGuTBRDibOYCNjz4WJ+yAxjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YnF+vQSl8PpRFYny8vN1Sk/FNkz2tx1qvgKApCej7HKSecwB05eI7ScM+iZzPaX7x
	 oy5Bt8XyqRjmS134KhORjcg31hJZCRs9lqtc/S7zZznO7m5GPVlqp/r8laVSoGfli+
	 G5ELsUWdk0dLL7mFOvRHapMZ6W4WXC0GVF+G50kjNmpM6dmu8f5bsbdZxXLQOV97r2
	 B3WJFT3/I6ZnN9/rB/vlfS2F/WpeV0AIDf8RZPZ8H3iqcmXe59tRcn6fPLGB9T8i4Z
	 grW3LsLwrX8NEK3wSDMhuAg6rPaDSbLTgK2LZm9+zQc9oqIQMTNODwcJs6XemmuXXx
	 LLXhADs44gQ2Q==
Date: Fri, 19 Jun 2026 16:00:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] spi: dt-bindings: snps,dw-apb-ssi: Add
 starfive,jhb100-spi
Message-ID: <20260619-monkhood-imbecile-7e56b57158a6@spud>
References: <20260619143443.22267-1-changhuang.liang@starfivetech.com>
 <20260619143443.22267-2-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ng5/tWqnwV/9AP26"
Content-Disposition: inline
In-Reply-To: <20260619143443.22267-2-changhuang.liang@starfivetech.com>
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
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-313837-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:changhuang.liang@starfivetech.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:broonie@kernel.org,m:linux-spi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D42376A697A


--ng5/tWqnwV/9AP26
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--ng5/tWqnwV/9AP26
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajVZlQAKCRB4tDGHoIJi
0uscAPsHhWou5nHvVuNchzj8wGZLoj6oDK5OnUyFTYCM1qvReAEAvIjgVwaqSCOi
CX2nNeYwL9+VpsNjreBAJIbt8U9WogM=
=4OYZ
-----END PGP SIGNATURE-----

--ng5/tWqnwV/9AP26--

