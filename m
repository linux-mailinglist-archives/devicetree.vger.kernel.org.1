Return-Path: <devicetree+bounces-259630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +I6bFPTGd2nckgEAu9opvQ
	(envelope-from <devicetree+bounces-259630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:56:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C07E08CD3A
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:56:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 737793011745
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB23828B7DB;
	Mon, 26 Jan 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmQzLCM7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9851927F010;
	Mon, 26 Jan 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769457393; cv=none; b=qZw0oa/jbQ2Q55RTkUd82+9gBOlGw5cGFNf1hBzHVuvr5EkQdAmkppGDb4mX8IYqhlL+J1i91sn0KPsLy9TuocPraHMnHCQadhgAzsXkQXJIi/MkXR8nWeoksBMCc4iOkCfmC1ECkAb7FeoOUez1d0jSKFTUMTzCzQ/DAkzu8JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769457393; c=relaxed/simple;
	bh=WZyGIoQxJpu17+midhrmWT8Ox1SIGpWuj6rnOaH1d/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H2IkslfYMNSwHNmCPws/mqt0H+1f5l69i8xlxHTa/24EZFSBk6IJhVrRTzXgTF58AMpWPPnaPE3YLi+Bls9AoC6VA9i1TBfiz7AEZLpq83p1r4+C4n1c8U5lVMU4psaA+vfqcH83HwZUiPDzk24/b+bDhZ4z3J6PQroX8u8ll38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmQzLCM7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE8A4C19422;
	Mon, 26 Jan 2026 19:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769457393;
	bh=WZyGIoQxJpu17+midhrmWT8Ox1SIGpWuj6rnOaH1d/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rmQzLCM7tQGEI2pGJXuzx7JsuidXkvzE7g7QCBXjT3Ck+QYInV+b++oHWwWgNuVwN
	 8OAJBda5lSTa2KLzIO7ta5T9CJQusnxIWfhE15/8J19ou6JUL25oLwr80FW9R8VN28
	 QYYH3UMUbMp+E8ILyQ7vrBudmLtk/BzPz1HO4Ku+dc9jwtQRrtO7xm2XbHJEc4Jd8Y
	 0S5/kVVDtgeRSX2XvTU2djkEsIE1n0IhfcfeVBY/gcnwNOCXVszvCqIVbWbdILIClf
	 NbgTqTSdlEWKEBKLxQrMcVm7tdGXzQQvvdS9Tid6hhX438yp3Sg/Cjav3jhgFKvvrE
	 Oxxt2zRZQ9dmQ==
Date: Mon, 26 Jan 2026 19:56:29 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT schema
Message-ID: <20260126-haziness-haven-7dc0246ec7be@spud>
References: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
 <20260123-childcare-blend-fcfb6b3401b8@spud>
 <4df95337-a86f-46ed-9e4c-2b3b8bcacd3d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wClIARQLUXZPG8OM"
Content-Disposition: inline
In-Reply-To: <4df95337-a86f-46ed-9e4c-2b3b8bcacd3d@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C07E08CD3A
X-Rspamd-Action: no action


--wClIARQLUXZPG8OM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 26, 2026 at 02:54:06PM +0530, Akhila YS wrote:
>=20
> On 23-01-2026 22:50, Conor Dooley wrote:
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > pw-bot: not-applicable
>=20
> This acked tag is not reflected in kernel lore , my patch description
> and signature are missing in your reply.

I have no idea what you are talking about, sorry. The ack can be seen on
lore here:
https://lore.kernel.org/all/20260123-childcare-blend-fcfb6b3401b8@spud/

--wClIARQLUXZPG8OM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXfG6QAKCRB4tDGHoIJi
0jWaAQCp8XpemVE2IGa9xunHHvU2BpxWdrxPnZOnSWcJc380KwEA/ZyHp8jZQq6Q
ZMcuizrLZGUd7IuFHHSgDbVEYorVmQs=
=v0QY
-----END PGP SIGNATURE-----

--wClIARQLUXZPG8OM--

