Return-Path: <devicetree+bounces-259087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIMvL+Ktc2nOxwAAu9opvQ
	(envelope-from <devicetree+bounces-259087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:20:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA0C78F42
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C42CD30071C1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D502857FA;
	Fri, 23 Jan 2026 17:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkMJau/j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E14D248886;
	Fri, 23 Jan 2026 17:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769188831; cv=none; b=mAsN8hlBtHYgMeOrO59ZoQqrb+Qi0misHIXEF/V6BZQfbfjQYFk2tjI+hnohkKTzZ55ieU2RHJRDCKrzFER6vUO/Ic3xWsjkr02Qyi2aNQa0gitPIkKafs4fqzUyS9RvHLzKjbAacq1ck/DJOWkMbyPg9Cn3XAlPwdVZ2sGLxBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769188831; c=relaxed/simple;
	bh=ucLFcrHg2VtDfA7gyt+yfPOfQLavSoxnrJL2jlWcjj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oq85BQU+rd6ojZBlGiK6ZOTA1szYabIT1CccHcQ8PiJnnOBDCyFvmKXSPB9zSuhSTcKH78N7m7XihKXgvzN0Z09vjd11nrtlCIvku3mFPXcc1JDNZDrcBK2kbljqLrXshgEUzx3Kunmvd2xP8taxWSOsUJl9j0A6grP072cdA3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkMJau/j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75AA1C4CEF1;
	Fri, 23 Jan 2026 17:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769188831;
	bh=ucLFcrHg2VtDfA7gyt+yfPOfQLavSoxnrJL2jlWcjj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BkMJau/j0Xp8F7qdTGt/ZIW0lL6eAtkw9o4J35t/VwFPeQoJ21g4aLBC/e2JRuZK6
	 zceTB6hzHJIbKJ6pa4hYzazIE93hr8kf79W5OgiVnYlZXzKZV16u92wxjbLDtGG0kA
	 aqR3W5LXpdWp3cS3M7FO3TlqSAVLOrB/L+OFoYSOrnKkZPEu49pV+vP4Tob8U/sYi6
	 vK6NsLKwX07scPhJabbDQ3jiqM1owbb1KcdigHCWI4PLVFUaJNyxDEZ31toZ0JVdbl
	 zz2nwzhMwFQbs3a+Ikqo8X7iLnpdbcMi6S0qXOudHlwoVt8RGYfRJUUUya+thZ6TX3
	 UJHYbJSXD/mgw==
Date: Fri, 23 Jan 2026 17:20:27 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT schema
Message-ID: <20260123-childcare-blend-fcfb6b3401b8@spud>
References: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ToVnKYVJBFJTPar1"
Content-Disposition: inline
In-Reply-To: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259087-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 5DA0C78F42
X-Rspamd-Action: no action


--ToVnKYVJBFJTPar1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--ToVnKYVJBFJTPar1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXOt2wAKCRB4tDGHoIJi
0lmoAQCV/5TP80PEHAyuW6ZjyGlEhjpEzFxVp1qB4p3hbyEciAD/Qf2qm2BGWAqu
Vp7IsasF+VuRT/6wrh1ve2YjAzmmwgo=
=ABy8
-----END PGP SIGNATURE-----

--ToVnKYVJBFJTPar1--

