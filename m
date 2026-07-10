Return-Path: <devicetree+bounces-324559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TdxVMFAhUWrg/gIAu9opvQ
	(envelope-from <devicetree+bounces-324559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:44:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEEE73CAAD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:44:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Raqyok6t;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324559-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324559-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 04A2B30788FE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E612243B486;
	Fri, 10 Jul 2026 16:41:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC75E43B3F5;
	Fri, 10 Jul 2026 16:41:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701670; cv=none; b=fQWOJEn2SD6Mi/GGnIKwrAUivJyZomCqqLFNCgFq514Q74jn/FkTsdDen1fCXBCUT+0n1Z0TJ51LKSuzw7tRwAO3ajFVqTSA/zLsDAN9bNSQ8K/1lOBGVhzQntJq8VbP76jlr+sVNbeLVK2wDBhPQtmPbp3+zdXRh7HeofrND4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701670; c=relaxed/simple;
	bh=zpfe15YD5JBM8nm7Z4e88EWsxxEDDJVjveJb96Udl1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kU33XbAAZGXSZ08bwFDDvmuTgrn8LXPqDH/DYcDiaQqOfG5jtdDDIQGvmiKU8Xgvn8LcjcXBG6xwYhht3gYGnrB+j/j33RyweKgIdLRYBfgJyiT5n11MSe0wN7f4ylrVlggPfqbAtMe1aiqmD508tHuRATteISqXtBZJMK5VC4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Raqyok6t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFF821F000E9;
	Fri, 10 Jul 2026 16:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783701669;
	bh=zpfe15YD5JBM8nm7Z4e88EWsxxEDDJVjveJb96Udl1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Raqyok6tlRT/4cby1PEBf5/rh/wNKpXiLRaosxHRR9kljMWZEc2yixcn1gqzF1oaA
	 l4WseRf1xIjtP+UuoYnPi83bBYQRgZt1EZLDHwUpzax3Y38wsGRlgtmodzozSuRLCJ
	 1wfuX+Ux0APaXfkcgtIZG1s77GBY900+0KS6jMKyBV1LLSAVr6l6ohtZruTj00Cxc9
	 QvLpoqP9H/m4PNffM0dI5nX4JVqZNZS1QkwTETKXxyOJRU7tfV6d3exceFOAjzNeCb
	 YiEaAY9XqIpzeBEso0+t70VkuFUh9dPJikkb1dCRQcNw7jBf5c+W/gNqw7i3xWh1SS
	 2bRezy0GYFpPA==
Date: Fri, 10 Jul 2026 17:41:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Yeh <chenyou910331@gmail.com>
Cc: Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: soc: sophgo: add Milk-V Duo 256M
 board
Message-ID: <20260710-sarcasm-manmade-bdd889cefddf@spud>
References: <20260710075917.159969-1-chenyou910331@gmail.com>
 <20260710075917.159969-2-chenyou910331@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="S5DilZCTUEyk3TU+"
Content-Disposition: inline
In-Reply-To: <20260710075917.159969-2-chenyou910331@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chenyou910331@gmail.com,m:unicorn_wang@outlook.com,m:inochiama@gmail.com,m:inochiama@outlook.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:devicetree@vger.kernel.org,m:sophgo@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324559-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[outlook.com,gmail.com,kernel.org,dabbelt.com,eecs.berkeley.edu,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BEEE73CAAD

--S5DilZCTUEyk3TU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--S5DilZCTUEyk3TU+
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCalEgoAAKCRB4tDGHoIJi
0o40APsHyfBdrwi5DEqjFKf+ydGAfwMVF+1WyDtDvkRSSpFRhwEAzJoVLx0+/wGV
216f1ky/vnBNHJy/A2aBhugERQadDgM=
=hC18
-----END PGP SIGNATURE-----

--S5DilZCTUEyk3TU+--

