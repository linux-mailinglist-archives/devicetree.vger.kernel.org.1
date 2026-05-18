Return-Path: <devicetree+bounces-299563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCpDL+hBC2p5FAUAu9opvQ
	(envelope-from <devicetree+bounces-299563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:44:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9325D5711C6
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:44:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 26E4330010DA
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E5E48BD5A;
	Mon, 18 May 2026 16:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y12bMgJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67CE481230;
	Mon, 18 May 2026 16:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779122657; cv=none; b=CLocxm2O9l/3kxfB1y74JxbITPZUihPqBtIawdoYCcjUDzB07TNM9C7akBTTHBQzBPiFwNj0Y53KBJTPhBPY/o08olmvNez8DMIQR3cK9uUz1W/Jh4Llo11MdUH1pdSJbeg6+5WivQ395n+DShRgAVqMjlPpRzlH1AGceVsM2oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779122657; c=relaxed/simple;
	bh=athY6V+ZJb/6Rqv375n3b6enOO/UaiPW+e5aLq34/yk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RBkP6nQxpInWDzIkNMj/VivQl9NiubumRvepePyt46XeqquDSTMcz6HOYQNDSxR8gdSrGwT+Vn7FHT3USZ9HyvoybIOS6V5h70LXdxxskr+lBJGyN99Ja5OHkmSq48Co+q3ds5L+2NAqBdjuOYbMYyNgS86GMfEtUipLo6sFrLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y12bMgJZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 041AEC2BCC6;
	Mon, 18 May 2026 16:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779122657;
	bh=athY6V+ZJb/6Rqv375n3b6enOO/UaiPW+e5aLq34/yk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y12bMgJZ4dqS2JON4td34dAuCUrQqgBrVog9wC7ZBC+kYdQ4ITvEzGkhVf2daOU1a
	 lNSRNknm5faRJxr1mMtrd6sUyM4PpuZWIgr36CGKlak9X7PZza58AZLuyhOpc3ZrD0
	 KmU6y5vfgceC9E6Gp62LdAXjJBrwnEIITi5c6LWIeKqdIWygqPUFt/Pg9xsjqoFSe1
	 kkcD7veioPIDyZP4irTqeQzdJjznpW3Hjki8sgGTjDk6qpD2wwjCyEX5kvERMYrjNz
	 YTRjLxQkbX/XC3sBXt+icI+ID1DKMd0ac2zSzR5DcUzmi8yGxs64T6N9AwkesaPXpl
	 OJpS+HgRcsiHw==
Date: Mon, 18 May 2026 17:44:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: sprd,sc2731: Include SC2730
 regulator bindings
Message-ID: <20260518-grading-activist-4b843b8bc487@spud>
References: <20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de>
 <20260518-sc2730-regulators-v2-2-9a5b3a7b1e49@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DGEVYOoJMmDh5oG/"
Content-Disposition: inline
In-Reply-To: <20260518-sc2730-regulators-v2-2-9a5b3a7b1e49@abscue.de>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299563-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Queue-Id: 9325D5711C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--DGEVYOoJMmDh5oG/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--DGEVYOoJMmDh5oG/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagtB3AAKCRB4tDGHoIJi
0kKCAP4kS4P1iSjZhWzF1CJrj50sH+HZJ4PoSsAg3U5NnVJ7EgEA6cchr3XMglr2
0GQm7djvobAkvNeWAoMWN6g8jZ08fAQ=
=RBSN
-----END PGP SIGNATURE-----

--DGEVYOoJMmDh5oG/--

