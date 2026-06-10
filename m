Return-Path: <devicetree+bounces-309958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KhxABFKUKWoKaAMAu9opvQ
	(envelope-from <devicetree+bounces-309958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:44:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA9F66B9CF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:44:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VEI0W6wN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309958-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309958-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B46A230506A1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12CB334C1D;
	Wed, 10 Jun 2026 16:33:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D72C332EAC;
	Wed, 10 Jun 2026 16:33:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109212; cv=none; b=Kqmqexi4mhF7E754gh5ixx/aK67TE58i3F6N1xTJ2OvjPhOcGj2OT2AUfP98ZXSdwFqWu9hZwKTiqj4UuOZ8UO7hBrExcls1xo4R9zMcJN0eYXzZrtWhd6ZawxazzAqk3l2+flPB0qet8alLX8xuquaUm/LZtPXsSn4nuVSsb68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109212; c=relaxed/simple;
	bh=qws8KeUV0f7eJ74CsFNYE5x8D+8Iurc9zlmEqbIBTIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b/2xlOWW08z1EShwqTj+jBpvfSFvGLbOocooeTMo9smCBOBx4dzk6oJhUQ5My96BDoaEBx3+skhsdpUuwtDgkaBmdWgCu0b/E9geFk9SFHTCexdpH1DNRrwByUkuD7BluSvnV0iXf/RNb6uP5OXOOwKWKkK8QuNggsCN2qz/cbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEI0W6wN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDFA61F00893;
	Wed, 10 Jun 2026 16:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109211;
	bh=qws8KeUV0f7eJ74CsFNYE5x8D+8Iurc9zlmEqbIBTIA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VEI0W6wN+zP2GlruuGOlP/StJUzT+xnRHu6ml3a5d6O5TILmGS05gnLL61kVXE/Eu
	 ANRUjZf/z1bCvX43kxc0eBDyJbe3tEGtXLFptSmMEc5AuctYKtf7Mlphqw+5NF5Grg
	 x9aFISqVu7FDmG0+BB2GWD2IM7rerZEhZdHzC3e3ObAAXYQHUL8t5adRTOiBcw0QTA
	 g4viCYJtdTyka6JtakdcyXXTpLxg27tVaPq1jHfNWesgKO+dI1wK//Spe8iJfQEfV7
	 mIcEsk1zdZX+ED+5BMldITShkyCFPkwN1EhHm/QeYzqlNMKusjJphc/djePvCR2ENr
	 aWieECpKi5aAw==
Date: Wed, 10 Jun 2026 17:33:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Daniele Briguglio <hello@superkali.me>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Youyeetoo YY3588
Message-ID: <20260610-synergy-stipend-f53ec049246b@spud>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
 <20260610-yy3588-board-v1-2-4bb7176b6826@superkali.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wnsuCdlmRqXDLuMf"
Content-Disposition: inline
In-Reply-To: <20260610-yy3588-board-v1-2-4bb7176b6826@superkali.me>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309958-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:hello@superkali.me,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,microchip.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CA9F66B9CF


--wnsuCdlmRqXDLuMf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--wnsuCdlmRqXDLuMf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaimR1QAKCRB4tDGHoIJi
0ofeAP99O0OxPFOWRn3QkTaBKHnpHFy/Nnpamnd3keTsXrrFngEAnmavcg8SYfTB
+pmd6v7amXOOjN2mSoi7mLd6wzjWzgc=
=pgbH
-----END PGP SIGNATURE-----

--wnsuCdlmRqXDLuMf--

