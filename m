Return-Path: <devicetree+bounces-262779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHtbNniNg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:18:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4399CEB8B6
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:18:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F88D30293CB
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3537B43635D;
	Wed,  4 Feb 2026 18:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUrbRyB9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCEE43635A
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 18:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228364; cv=none; b=Q1BZXZZRdkB/afx3cXMESMP91tn/C+cEYT5udBahdNv6dMjN/c1DvBYk1kGbfA5Je4ltDLGU2hZwIGlZ0S4ytlI1J7eYDseHnRQLawPnKSlEkpX/I9HHcJYrAi/ai2DGYdyhHq+6tN8Z55TnmqharFcGglOQzO83yFMfV2HCmJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228364; c=relaxed/simple;
	bh=c7WDzb8GOFRXzwj8If0wfLvi0VKUElNNmrDDIubqGPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XJ7fDusTuV37/GjwATixWk4IGciaYmVbdnEVoqBlO3oMGnr4bUQC6UVb2aZmCMRN2p8KLktcwkehWV+SG2tqOnL3t35gBToErFroqqE0Rysq4xNQWuML0n4pb+HsIwukdXjzTMND+tLFn9XWUJ8RUKx2F5S94Bd9L4erwEgIFpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUrbRyB9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C163C4CEF7;
	Wed,  4 Feb 2026 18:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770228363;
	bh=c7WDzb8GOFRXzwj8If0wfLvi0VKUElNNmrDDIubqGPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JUrbRyB9kku48FKbF2pH1h3wyzv4tXBchUcGPt67lf5rrr9LC3rFX3IiF46oF3zfD
	 ME5t5ylEkX563jdskTQK8qp24H2WJnXKLHHr96VgyIWpTr8dPNKi3vQInHENvht1WL
	 mzlm8hbH38JUIl0RHZiuGHnJYjBUqoNzCL5p9T2wx7Zm7524vPqDKkWia4erG76T+h
	 HR3qVsb34lfYCumBIZPYk97K/+/QKVQgNXlALQxJ7yPLocIegHauOhU9MDJfbuIvOl
	 q8wu0rlt8N2CNbNdJNCGaCb5CeacJNlwJPEmtoWah4DcmnGOucJlNzqPmAc6dhddn5
	 FOnrrXOmNfVdw==
Date: Wed, 4 Feb 2026 18:05:59 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	alchark@gmail.com, dsimic@manjaro.org, andyshrk@163.com
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add OneThing Edge
 Cube series
Message-ID: <20260204-gulf-pencil-6efd29ced035@spud>
References: <20260204132700.329894-1-jerrysteve1101@gmail.com>
 <20260204132700.329894-3-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dnYAzzgA54S780wp"
Content-Disposition: inline
In-Reply-To: <20260204132700.329894-3-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262779-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,sntech.de,gmail.com,manjaro.org,163.com];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4399CEB8B6
X-Rspamd-Action: no action


--dnYAzzgA54S780wp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--dnYAzzgA54S780wp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOKhwAKCRB4tDGHoIJi
0rvnAP9FP/3+bajA+gnOaqp+Y6Z/qAfvuELE2uJzsbklIo4/fgD9HdxoPyRbgowO
G1y8Bye3pdr+BjD6inWfDaLylSODDAI=
=wXP8
-----END PGP SIGNATURE-----

--dnYAzzgA54S780wp--

