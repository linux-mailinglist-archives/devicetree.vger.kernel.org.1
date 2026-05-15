Return-Path: <devicetree+bounces-298483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CBVDvVeB2pa0QIAu9opvQ
	(envelope-from <devicetree+bounces-298483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:59:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB8555C19
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:59:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13E6F30CBAB8
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 17:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E684CA27C;
	Fri, 15 May 2026 17:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLcoQXa7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F457380FDD;
	Fri, 15 May 2026 17:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864805; cv=none; b=C/LZJC5QENmn58nlHNx2w+DN4m5iZUbtE7cw6oPVQm5Q2ixMF+9prf2VldAZZegRI/zhMIH7fDw8619UGjWHPQMPp0yVwKdB9WaVBN/Xmn9XIhwF+dRPEm8lbBXSIdKs7vQX+TK13RfQVVVElRSC7JoDClisne22rYllNJYQqFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864805; c=relaxed/simple;
	bh=zWQRUJIKT1aqb07o+/hFUP5/KdANfhYWpKOZj1o+kdQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K6gAf65KkNOSZP/tMXhK7f+kmva5yAHo35RXia/nkrEgUeO4acNkkhSYWwZAfytkCHeP+nooR6Y7Qh2tHcgnUtbg2MOxBlZN+GhPDjHbRPDfCfr6OtDMCMOrOun75OkFQWkJoOUdk+DBSVbeOg5nTaxpEATrb1h7wNPsd9nqBuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLcoQXa7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5D82C2BCB0;
	Fri, 15 May 2026 17:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778864805;
	bh=zWQRUJIKT1aqb07o+/hFUP5/KdANfhYWpKOZj1o+kdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DLcoQXa7UjTxlCKYyflekX2QmxiH2GncNr7gtg4i3zgPzOaWwlOIg1Bz1lwb5pFeO
	 o7H8XUtl+vC8+65PmYMoBiJgeBUEPlYvWp5aq+6HHuLZbPCE6MJIo1ulfFBsigSFQ7
	 xdZ7WsAv2/WZMRQ7QBXPDUvgeDcz3jskKTPvV4U6ktopODnkj6fjEfeK7V2mrOVyiH
	 mrSiz16borQn6HA16zQV9XZf2ne0M3k/YxDe8vHu2mX4muxwk77E8Mq2YdTxi+Xrhf
	 DzdrWiYyXJjcaA7fVdiz+CYpHIvHDH1X2/NE/hRhT/qjag8ocL8WUxB1TtU9sHdpA0
	 /0YGnXZ3Z3fxA==
Date: Fri, 15 May 2026 18:06:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Judith Mendez <jm@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Andrew Davis <afd@ti.com>,
	Bryan Brattlof <bb@ti.com>, Jason Kridner <jkridner@gmail.com>,
	Robert Nelson <robertcnelson@gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: ti: Add am62l3-beaglebadge
Message-ID: <20260515-sullen-sleeve-bc9ddd269c57@spud>
References: <20260515153541.294698-1-jm@ti.com>
 <20260515153541.294698-2-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rRpJUo2i1i6la6sp"
Content-Disposition: inline
In-Reply-To: <20260515153541.294698-2-jm@ti.com>
X-Rspamd-Queue-Id: ADAB8555C19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298483-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,kernel.org,lists.infradead.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--rRpJUo2i1i6la6sp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--rRpJUo2i1i6la6sp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagdSoAAKCRB4tDGHoIJi
0nGrAQCAO3Ahol1n4Drt92tLo3bQvP7AxyobptY2zybG2HijFQEA5HBW4d2rAW/d
8Svm3p4NOpn+a/IbymID83PeVxrwCwU=
=VuMw
-----END PGP SIGNATURE-----

--rRpJUo2i1i6la6sp--

