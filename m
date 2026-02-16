Return-Path: <devicetree+bounces-265910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM3sGztYk2kd3wEAu9opvQ
	(envelope-from <devicetree+bounces-265910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:47:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2520146C61
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 09E0130089A9
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336F72C11FE;
	Mon, 16 Feb 2026 17:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK9LIA3n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BBC1F3BA4;
	Mon, 16 Feb 2026 17:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771264056; cv=none; b=e6nM/hfoOjK1QPTnlLrGr9FhsHVoG5U3qSTiBbD1xDvNbW6uRSE+QrTFt8r+Ll12vtAcqGpUmROSPCcVpsPXtaMWJ6KHz2N6qzw/SIoP3iuB1u5CoHWHyQM54hcrO3SeYtnkznpHO6g15VzgZNNt8PY8XDw3vmz9okCjtf5fQ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771264056; c=relaxed/simple;
	bh=j93na8FLOL3895jJG5DZA+RZcY/VeiFp2De8Ka15h70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gZcQxf/YmjBLwGpSTnosaYjVaEwqTy3IIRANBe2Cq+9S9VjitBisUC1I0QwrsZ7f9f57QWA51P6S9u/Y/RC38UYzKP04zrb2AFt0Ht1ZpWZPAtNj99BfTXRfFw5m4r5GR9N/3Y/eJI5SwRdfq5HYJQFPGTC6910TD8S5fEmsgjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK9LIA3n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963BFC116C6;
	Mon, 16 Feb 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771264055;
	bh=j93na8FLOL3895jJG5DZA+RZcY/VeiFp2De8Ka15h70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fK9LIA3nEpKdQPrQKF3x8MLHU96xt8iF5s6U859nXxsFS7Js+YlAEK10CocfsEWn2
	 YeIn5XIvOs3T9sWX9cltMA8CyzBuWHPDgET1jCfH1iW1lgtosBpn/VRZxGut7yoXcX
	 OZhjU0a4Wv8sWweJn6vmGKMZhRVFu0qV4W+U43+lGH+J/K3xdgFDa4W6TuCq6PQ+VZ
	 mTJMTN2BtETDxCCvdVdYfixrVF06EAeL7Xyd5JB/69GM40vFG70/z0prwWsjGyh0VY
	 TUOYCjyxF0BIZEcqcNYfwr4xIo8AkJA7PQ/nrOY+uVnbpMqcz2NSoA1PmGfhHKKfLK
	 bg0rjHNRiPN1A==
Date: Mon, 16 Feb 2026 17:47:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v5 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation
 board
Message-ID: <20260216-eraser-jackknife-7601a311ef95@spud>
References: <20260216010219.2131484-1-festevam@gmail.com>
 <20260216010219.2131484-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3I8sHYZ/0gQFmROk"
Content-Disposition: inline
In-Reply-To: <20260216010219.2131484-3-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265910-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F2520146C61
X-Rspamd-Action: no action


--3I8sHYZ/0gQFmROk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--3I8sHYZ/0gQFmROk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZNYMwAKCRB4tDGHoIJi
0t4rAP4guLBQgACJeZ1fnrpi3I7ZH+vDSfqfluLPl313Ouw/JgEAgp98VmsR+uO3
qCMO17BPQhs3JwzT7UltlfIISPg1OwY=
=qg3+
-----END PGP SIGNATURE-----

--3I8sHYZ/0gQFmROk--

