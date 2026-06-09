Return-Path: <devicetree+bounces-309230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lo3LIuZCKGr2BAMAu9opvQ
	(envelope-from <devicetree+bounces-309230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:44:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8CF6628A1
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:44:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="hZvJE5V/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309230-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309230-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8C9130F819E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929894BC026;
	Tue,  9 Jun 2026 16:32:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D81D4BC016
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:32:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022775; cv=none; b=ndCHk9rrpWJenLjwnfO6qm9B7xYcrGiMmWCtPTaXMGNkxdi1M/2nC6uBJE5VViSiW56HmKiRPFRGYVmT62ahKWFQ5tizJDZGuvTP79LHGYMN26Hmx7dVFtBIF9ZWqN9RvBee17sQkiX3njXPpO4iyFLNFzCTvQSxwTW8/l3CWGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022775; c=relaxed/simple;
	bh=ncLMA11F1fiWEvmsQUhSK6p9vIDQ6T4vA50ZOxw1HOA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hG221IRXusZnChX29qgTYsc6uHORQ2ADyPXJSj44r9OzMQU+d4r+RwMWngFRVeATZ+PEXtCTrzTQHrPi8flgvTBkZugJllKcwn0eFeOjJb6WzMQOmS9eeShtuphkcR1Tv1wSQbMPfrrnTEsiSyzh+REqKpdiT9XpDNQUME4im3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZvJE5V/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 313291F00893;
	Tue,  9 Jun 2026 16:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781022774;
	bh=ncLMA11F1fiWEvmsQUhSK6p9vIDQ6T4vA50ZOxw1HOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hZvJE5V/sTnBqsyLgN8b9FTCbuNYgkLU2cTIM2JDubJqAjNOy3WnPZS/3cC2LHEz2
	 ivRW314q68z6kST3qqjIVlBia3KlG8H5Y5hUScx+2SXXYophYoU8bsulk2iF1Z3kbt
	 dt3q6C4hYVqLfVdvJEv/fZitgl5mGtL2myY10jlIrGM7/lTHW//nxqoRHH8cPFBkoG
	 dlcqYWurOGt4YPxKxbbjn/q24P2RKh+eIGCb8sep9+Uu85xCrqP4i6hsYc9tKlWco0
	 phkuvrtkGCRKLELUURq8mYhkZwxNwEsEqzebvW9Y4v9ePCpSHQaEKUq5Wv30QSm6Pa
	 OPVz3F+4/6nLg==
Date: Tue, 9 Jun 2026 17:32:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch,
	airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Message-ID: <20260609-excusable-overall-197cc08d4e43@spud>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
 <20260608175521.67449-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e7Lp4ziyWaFrI1Cq"
Content-Disposition: inline
In-Reply-To: <20260608175521.67449-2-macroalpha82@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:xsf@rock-chips.com,m:sre@kernel.org,m:simona@ffwll.ch,m:airlied@gmail.com,m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:jesszhan0024@gmail.com,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309230-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,rock-chips.com,kernel.org,ffwll.ch,gmail.com,suse.de,linux.intel.com,linaro.org,sntech.de,hotmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A8CF6628A1


--e7Lp4ziyWaFrI1Cq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--e7Lp4ziyWaFrI1Cq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaihAMQAKCRB4tDGHoIJi
0hOeAP0TYJxzWFrb7x6TPmcnqH5OS7GiMz2Ri/7MR0sYrUyajQD/Ua/v57PBVG5t
bVA94ekDqwARoJxHC9wh7wlC2+DuCQ4=
=zwmu
-----END PGP SIGNATURE-----

--e7Lp4ziyWaFrI1Cq--

