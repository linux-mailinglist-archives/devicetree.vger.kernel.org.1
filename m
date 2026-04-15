Return-Path: <devicetree+bounces-287668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDIqDNus32lCXwAAu9opvQ
	(envelope-from <devicetree+bounces-287668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 17:20:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 891F2405D2F
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 17:20:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17D4A306900C
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 15:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9EFD314B8F;
	Wed, 15 Apr 2026 15:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxasmsFP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858EB1A6820;
	Wed, 15 Apr 2026 15:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776266179; cv=none; b=I2+zZXuJh02KxSIDcJCPLRS0ebm2IUvzZcx4cGGV6yVOneKRFR2NaivVtC00xQq4MJBKe1ubSykrlyLRIxPPuBOegZLck/VJxMeqhGFucZaQYtKODX4FxvWg75gTTPY1gU3Ed0xg2rReodOxiIfUVHmJnTrI86KmmgWf0OVlUGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776266179; c=relaxed/simple;
	bh=ms3qftcx9l8CcCu7n9bXhHjFHP3lu9ydftyONXWJth0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TVzbdQNR9dwGJAEUeElvBk0AqnwUUqL/ho5W0eNap9RKbMG+AyjhXf8m4S7WFAJJS3Ferwfq3HTwtYEWrZIbIIm5bC9F+SQ60pUOrwymr6DaoWpb4BtnLrMpr7qc5TjoYoJ03A1ETh66QSD+Bwf97E8UmgQD63mdfRdtgIMx1QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxasmsFP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78ABC19424;
	Wed, 15 Apr 2026 15:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776266179;
	bh=ms3qftcx9l8CcCu7n9bXhHjFHP3lu9ydftyONXWJth0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BxasmsFPvYIRmUnYJKcAbphex+Wq5Pjp52xM7nx1/wr37rxyxDr6pxdPjg3OiMYrL
	 0GF2RZDY1Ji7/wVnMccZXCIFYwRXt5iNiz+sEVa/2lEqeOhVGfjuooYwXpxNWzSmn1
	 PXyCT6nUNFAqZxd+j6voIb9pqaX+V8e1NG2H82EsQQAPCNgyjRy1Yhnx4BfkUKUlJi
	 3QSRKmvtxpQxwGle0iY7cvCGZAoL+vknOQ6lMbjJUB+4GCxrLlYESj21plkLMj1FJn
	 MaA+7rtESxCqHReFhUjrsfwSSdi3dWopxsBejjve1jZ32Qg3ma4Zkrq9bE1nUo11V3
	 r+tpxn8tkVrMA==
Date: Wed, 15 Apr 2026 16:16:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: jk@codeconstruct.com.au, andriy.shevchenko@linux.intel.com,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Rayn Chen <rayn_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Subject: Re: [PATCH v29 1/4] dt-bindings: i2c: Split AST2600 binding into a
 new YAML
Message-ID: <20260415-quartered-value-c97d22249d2e@spud>
References: <20260415-upstream_i2c-v29-0-317c1a905ae1@aspeedtech.com>
 <20260415-upstream_i2c-v29-1-317c1a905ae1@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T+1xF5cKS74kAZx6"
Content-Disposition: inline
In-Reply-To: <20260415-upstream_i2c-v29-1-317c1a905ae1@aspeedtech.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287668-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 891F2405D2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--T+1xF5cKS74kAZx6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2026 at 01:14:02PM +0800, Ryan Chen wrote:
> The AST2600 I2C controller introduces a completely new register layout
> with separate controller and target register blocks, unlike the mixed
> register layout used by AST2400/AST2500.
>=20
> Move AST2600 I2C binding from aspeed,i2c.yaml to a dedicated
> aspeed,ast2600-i2c.yaml schema.
>=20
> Besides the split, this also adjusts for AST2600-specific requirements.
> - require two reg regions (controller register block + buffer block)
> - use clock-frequency for bus speed description
> - interrupts are required on AST2600
> - use correct DTS coding style in example
>=20
> No compatible strings are changed.
>=20
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--T+1xF5cKS74kAZx6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCad+rvQAKCRB4tDGHoIJi
0i4+AP42ReMqv194rOhH36frqjgErlXbSrRKDSEC57660lJwPwEA6By5dTTLyEEk
89m6goS9CjKTurkjleB8q03uegrHXws=
=AghQ
-----END PGP SIGNATURE-----

--T+1xF5cKS74kAZx6--

