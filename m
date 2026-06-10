Return-Path: <devicetree+bounces-309961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K/JJLW+UKWoZaAMAu9opvQ
	(envelope-from <devicetree+bounces-309961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:44:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 107F666B9E1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:44:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cm8OsZ47;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309961-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309961-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDC83317DA75
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE55B3403F3;
	Wed, 10 Jun 2026 16:34:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00C333D6CA;
	Wed, 10 Jun 2026 16:34:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109294; cv=none; b=XvDnsc094x8hnnWtDm5UeENc/ej3jIpOS/WAH8JYsmMIXSfmHXKQrt80r8StQk6P79JIbisV7LwgC1wMbinnN24kwXZLitKX/tzF23Br2sUgxWcTAFaIZq7Zc9QOW/O7FscVDiwlnxp+3jpWoFqeN+FwG6Tv73peO0YPhkndIWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109294; c=relaxed/simple;
	bh=Dz6bGaU4TEDuP6jhqyEdB9WJVR4UPC+1gECsBc02gec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K75eooN8e77K/fLQCC8Fnou200vxQ9ftqlZ+pKb9yLDIwbvTdeWigobwFiOZHyCbbdURFaW0TqGTBVIy3tnGXGtLRmUS/f0KXGafLVJC49lc1rEeT5Yw416GbNMzuU3MGnbM77MQ5K9q6/V4ryNKVN7wJr8Ha1ZAp+QtoPfc16c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm8OsZ47; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD5051F00893;
	Wed, 10 Jun 2026 16:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109293;
	bh=Dz6bGaU4TEDuP6jhqyEdB9WJVR4UPC+1gECsBc02gec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cm8OsZ47Lb+44Q9TUtiv8uVPHlwZNn6K6loHRzompo1TrtfZzbX5LZ8yQjW1DVUAF
	 K/lOT5sTCx9vUktC1Fs1qfgdoQgFKgMcGjlk+3dkP6XrAjIlqn8TRlSJeurYPf14n+
	 sttbi6reDnMd6WayJbHYp8gi5kWZpdBMs+1kJJRYKjy8jwaV7A9DvMvdYs/YYQE8pX
	 Q+scRHiJ3fCWJradqVKcKu6LFZ+DlTkfKxQqjdsQ6WAycF9bGJgi+bfCZWZYyzo5sa
	 UdQtzo/lNOu5635K7xO0TXKdZqcU2jIhUfBktscmj43isz2/ELo15HBPCOzvT8o8Qx
	 tWLW02P6TJgQA==
Date: Wed, 10 Jun 2026 17:34:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Yeh <chenyou910331@gmail.com>
Cc: unicorn_wang@outlook.com, inochiama@gmail.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Chao Wei <chao.wei@sophgo.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:SOPHGO DEVICETREES and DRIVERS" <sophgo@lists.linux.dev>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: sophgo: add Milk-V Duo 256M
 board
Message-ID: <20260610-swaddling-correct-00451e8a8717@spud>
References: <20260610121026.1517621-1-chenyou910331@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F2+KufmimPfDy2pj"
Content-Disposition: inline
In-Reply-To: <20260610121026.1517621-1-chenyou910331@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chenyou910331@gmail.com,m:unicorn_wang@outlook.com,m:inochiama@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:liujingqi@lanxincomputing.com,m:rabenda.cn@gmail.com,m:alexander.sverdlin@gmail.com,m:chao.wei@sophgo.com,m:devicetree@vger.kernel.org,m:sophgo@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:rabendacn@gmail.com,m:alexandersverdlin@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309961-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[outlook.com,gmail.com,kernel.org,lanxincomputing.com,sophgo.com,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 107F666B9E1


--F2+KufmimPfDy2pj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--F2+KufmimPfDy2pj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaimSKAAKCRB4tDGHoIJi
0peRAPoCfdWATa8xwu1tCbzjMJd+Hd1fRBSRaOFpV9ZkBv0m2wD/fxWasa8fGQNZ
hUBJomcr93d+JharX4vKTwzdGQw8Qgk=
=liZn
-----END PGP SIGNATURE-----

--F2+KufmimPfDy2pj--

