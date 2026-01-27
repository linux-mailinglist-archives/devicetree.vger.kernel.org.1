Return-Path: <devicetree+bounces-260107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /3jxB/4VeWmyvAEAu9opvQ
	(envelope-from <devicetree+bounces-260107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:46:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 865F49A193
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:46:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 76448300957E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA80A31D732;
	Tue, 27 Jan 2026 19:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5RBfkuM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882191D63F3;
	Tue, 27 Jan 2026 19:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769543160; cv=none; b=J+nJK3QKly/ztTjaqvOJNS+FUADrjqy7Yt9uSNlLR8aHRulFMtAMxJOW5F1nXikH+WBAO0h5rVAC+xQEkkfqjIWCbIRqVhwb1xUeY5nlAzeI6l64NOSj9WpB6Vtj9H4hxqYsZyNLpdV18uHY7vtnFxqLYubyItBA5CMtgyiQciY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769543160; c=relaxed/simple;
	bh=lHoysDJO/Q3uRw+fwi7ZVNS0ieIlPNrDLpvxJCj1KQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VsuSBdOz0krui5gvOGW6fdNnChQatEvMZWOrCco6VH3ndrGEE+a1HZvlQ+yms1J9gzd2m9OGmmhJxjw/b4zVvBRCKRaeIECH3JT8xwvnxohiNb+kPLg01zgzPvDFYlHhDKOkG3Nc33eAbx/qLhIcMsGg511wSCc5iisOsD8aKW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5RBfkuM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43F79C116C6;
	Tue, 27 Jan 2026 19:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769543160;
	bh=lHoysDJO/Q3uRw+fwi7ZVNS0ieIlPNrDLpvxJCj1KQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W5RBfkuMJHTiIPsN6sbKLeeLqHLVhWSSm0+zPIb8SUNPL2sfzVxJqDmcez9qhAlVC
	 bHoDP3mhiEpASMoXAGFgEXA25ycvwoEU01lOinZ6K9fCB2Kwd9tlwvpHjbSSrSc+RW
	 hjUU1h81GLTVCzN0NMT/l8v216nh1huTaU0VnW96Wqmfwj0OckB5ZSf6QC0Ff5ARrV
	 Qx+UUpc4wSGB+ivHrwVC5/dfdC3zUrQ5Q0SdpPYuo7UMySEmpxyBMhKxA6Y122YTD5
	 WmZcZRG538roCunHMqU81F9DuHmI1noqDNtps5Gjwzc4Elw39pA2ZnsQIsw4cn4B7X
	 OJqhhaUwudg9g==
Date: Tue, 27 Jan 2026 19:45:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: misc: Describe FPC202 LED features
Message-ID: <20260127-private-culprit-e37a540d3d11@spud>
References: <20260127-fpc202-leds-v1-0-ebd0cfb9f9a1@bootlin.com>
 <20260127-fpc202-leds-v1-1-ebd0cfb9f9a1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="P1ZZ/RaByxLzpIUx"
Content-Disposition: inline
In-Reply-To: <20260127-fpc202-leds-v1-1-ebd0cfb9f9a1@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260107-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 865F49A193
X-Rspamd-Action: no action


--P1ZZ/RaByxLzpIUx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--P1ZZ/RaByxLzpIUx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXkV8wAKCRB4tDGHoIJi
0jzUAQDQN4vRmxXaZCe91CjiZj2yp2h9cV+hLkT8b2eBtH2nvAEA3cri5zaRZxZx
V6CI24jfHdH7caqSnbnQa0O6Fvs+VwE=
=Jhs0
-----END PGP SIGNATURE-----

--P1ZZ/RaByxLzpIUx--

