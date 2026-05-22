Return-Path: <devicetree+bounces-301963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGocKZSBEGoHYgYAu9opvQ
	(envelope-from <devicetree+bounces-301963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 18:17:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 661DE5B77A9
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 18:17:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B0F383024FA1
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 16:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B9447DFA7;
	Fri, 22 May 2026 16:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fA93VpCP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC8344E043;
	Fri, 22 May 2026 16:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779466325; cv=none; b=pSVRsh3RSvRhZQT5psg5YUehnjOID5xsXcdv6BjoD+SHeMp8h5sHGjDc7i/BLBSqSUSPnko9e5ncu89wGbhkY5gsnoMvx333e/DgffP0tfGx7CUKzPqVIsPyP86UMUBrWMw8I/ycsOGOGHF0kitGWgHgdgqwsfyhAl8398JadTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779466325; c=relaxed/simple;
	bh=2U5XU9h6HYcXCdG4wEmURLpHZMMYjCkqLOCkJD6b5Tk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u5hHZgSuE4EjkEVbgjn2ZuBrBKjN7tl9ayk9iu+eby/LwhwEIVBs0NTdSnHQsdQv+w3HC6QbMsCz+8kBI9+HAxVFl1FH6+3JpHTbGM1XovEP1dbs8WNjbt6m4kEXoIKTu/eQw54G0w2YFjE9AFFSAy0kK2l1ksHb6UeT76FpLNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fA93VpCP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 218241F00A3F;
	Fri, 22 May 2026 16:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779466319;
	bh=2U5XU9h6HYcXCdG4wEmURLpHZMMYjCkqLOCkJD6b5Tk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fA93VpCPmy+jWUvyevRGqWdtiIeTGi7HFk9lql29Ms9RUwm0t0Alp58nr/myQB+ZM
	 eOmaYytmMdpk+23mwYjnTEtVoH5K0ODmzWwNDdf8QtKUiAYR1kFKU2tLTyW82pFN7w
	 w9ciZb6K9wlrC+drD9a9umF1kuWbq4RCdhXYPM1FB9MinqnYvBUwD3gMwm14J1rZU+
	 P5qSxWJPTp+dzGXupvcioJxP/2FRBve10aSZdBMbEdNuoV1smd0rNEYtcZXVa2m1w3
	 9lLYadMeUtVuUfIZP009hb0Dbk8TH4STSRjX0PS+YdPYYKCZ3c12OAUVjILDhlKSJw
	 ndLx3E0oDaCTg==
Date: Fri, 22 May 2026 17:11:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>, Vivian Wang <wangruikang@iscas.ac.cn>,
	Paolo Abeni <pabeni@redhat.com>, Guodong Xu <guodong@riscstar.com>,
	Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: riscv: spacemit: Add Banana Pi BPI-CM6
 compatible
Message-ID: <20260522-endpoint-refueling-892a742e3251@spud>
References: <20260522-bpi-cm6-v1-0-707ef1917a30@pigmoral.tech>
 <20260522-bpi-cm6-v1-1-707ef1917a30@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GnUjvP1EuQAp69tA"
Content-Disposition: inline
In-Reply-To: <20260522-bpi-cm6-v1-1-707ef1917a30@pigmoral.tech>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301963-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 661DE5B77A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--GnUjvP1EuQAp69tA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--GnUjvP1EuQAp69tA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahCASQAKCRB4tDGHoIJi
0p+yAP0d8Sxf6GoYo9bB7UbBSI7sa9vU7FdmIgQHUBrpqHLJ4QEA+MIg1uouFWTU
Qi9GvV5bXvR2VMKO3dJbHBBql3EM+gk=
=aTs1
-----END PGP SIGNATURE-----

--GnUjvP1EuQAp69tA--

