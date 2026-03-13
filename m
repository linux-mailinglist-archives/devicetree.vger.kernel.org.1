Return-Path: <devicetree+bounces-275266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDTcFkoWtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:51:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F158F2843CA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E08C530A88C1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566073976BE;
	Fri, 13 Mar 2026 13:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6qWOgh9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F6126ADC;
	Fri, 13 Mar 2026 13:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408821; cv=none; b=VakENpXirRp6VN3B751luZMWw9RoF8imKsDF1Ob/h069g/yg28AQSwvyNCjRQSzUbf6g+uvTVHqJaRDUtz6FbKJGZ9gOO3Ay23GHxvVIlU3vhcR0qwmYcckta7MJrc0XM6QVAByMXN8XE5xztJyGTxXvx3zREDTpN8KgQMhHg70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408821; c=relaxed/simple;
	bh=A4RpxcX3WjEjHzapscr3HQc84nfl5kULfQElR6N6qSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t/tEhgDLFFp+TNoRf4z/tW8xNeNgU8hXW5HRpnzTbeaZkH6a+c+br8s1OMeysjwqeNjH6K7aG9XtuDloOSdxfKb3scRoABRxXYsSug9ESDoNJBTOeZQ6GhOyihea0MoeNdMsfUuK6ZUKDMLKyRfuzbLbL62SeWjvnvNmC+CWWiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6qWOgh9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D577DC19421;
	Fri, 13 Mar 2026 13:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408820;
	bh=A4RpxcX3WjEjHzapscr3HQc84nfl5kULfQElR6N6qSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a6qWOgh9j310pE44QCjpSnxTX1n04LInJ3QuQq44BTaPe1dFogAEVtokP3gXt82Rl
	 WQ/3sTZR9+ef3a+GkiMuSF2N9dvu4cBYv20U+VZ2QvrSt2AEK4N3kKybB43k/EpRby
	 3KiWGmEUFNoTWcaF9vFc3u1ewZ7C0JWQqB442ueFeGb9U+NKC7rMrzg3EvxjxHoKS1
	 VB8JFZ9jAz6qutacNAasU74aCncGF3gsnZzyXjIgZnCUgwcVLHt7CMYoiJHzEZAkMm
	 39krSlMv9lqceBf/FECIkJwVAd5Hyu34adgIrstIoZh2NxW0lv0lWzWBkMYWqYxSrU
	 QK0gMmbRUb//w==
Date: Fri, 13 Mar 2026 13:33:36 +0000
From: Mark Brown <broonie@kernel.org>
To: Robby Cai <robby.cai@nxp.com>
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andreas@kemnade.info,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH v2 1/2] dt-bindings: regulator: fp9931: Make vin-supply
 property as required
Message-ID: <0b9d0512-1164-4178-9bd3-4a3a7505fe1a@sirena.org.uk>
References: <20260313133102.2749890-1-robby.cai@nxp.com>
 <20260313133102.2749890-2-robby.cai@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WG1leUb8F5VdvzYb"
Content-Disposition: inline
In-Reply-To: <20260313133102.2749890-2-robby.cai@nxp.com>
X-Cookie: Monitor not included.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275266-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,kemnade.info,vger.kernel.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: F158F2843CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--WG1leUb8F5VdvzYb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 13, 2026 at 09:31:01PM +0800, Robby Cai wrote:
> The FP9931 requires a vin power supply to operate, so mark vin-supply as
> a required property in the binding.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--WG1leUb8F5VdvzYb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm0Ei8ACgkQJNaLcl1U
h9DNIQf/RVRx5relIghFi3wRqJJmHkqa3F3PLandt94fqCO+aGDLC5xizV21qr34
uHpOCTCr1GUe6wlw3WWIm7NVsApfIvokYL4NohqzYe0XsFAxFuqKSnm62yz7JMRT
/+9mZXAvsH/tccPe9pHHGApAo9Voue+U3EHk9ly9ZnLF8M41zIRMBmF7njYLeqG7
hmenSgqsCnpZGLJuy7IM+MKeXS3w9PJFThzO2H1VZGoCM8DXkGlmDAs7U0yHT37C
8Kj7DJ+ZA3oYumFgcpPYDNJdqsSx8y8iWo0Cid0KGN7e6WaDV9KO3moQOY680iwS
apPAUQzxziNwHAOSLUmQA5YMUStIPA==
=SPvJ
-----END PGP SIGNATURE-----

--WG1leUb8F5VdvzYb--

