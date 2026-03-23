Return-Path: <devicetree+bounces-279182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGxQOS9GwWnpRwQAu9opvQ
	(envelope-from <devicetree+bounces-279182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 14:54:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA5E2F3670
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 14:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3EE030A1269
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 13:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610483AC0C9;
	Mon, 23 Mar 2026 13:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFqT8tOK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E545199FAB;
	Mon, 23 Mar 2026 13:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774273647; cv=none; b=rXCQBtDJV/kZpK2qRY5kPcx5KGVoNNhJQdybyh4v9JHLxN4zZAD0vfEc8m6xUX9oCq4A7GCf48p8x8BKqs839NbV/0qqTc46Wgz9BwSjS/HsvP7AjDTRhEBopTWCsK9ojSkBhoTrL22GsZbEefsOhSkq19CvAcSwtLxKR9Wfk08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774273647; c=relaxed/simple;
	bh=n/BN5CL1WxBMpMxMXTlEGYNKW0+Dt8dFs9PN5GhrPc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YmirVq9Q+siWDxlzdKCe8Hi9qTGaD/xZSSfHGo7oaKV8hfw+BEObkdEloDzf7wa8FwztTFI123n9pssLc01snMPWr5CrgCw8mnYTz1JkniZgtRJVuxFqmHZ9JHISJVwLp/C6YoTpyu13EF2V38NDlrndkKzKoogc/0oRaG6hMGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFqT8tOK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DA10C4CEF7;
	Mon, 23 Mar 2026 13:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774273647;
	bh=n/BN5CL1WxBMpMxMXTlEGYNKW0+Dt8dFs9PN5GhrPc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jFqT8tOKxCtEL4bjUYtNwV0kyZpM34BPJ1M7/93ycZ8k+sJjClfRZHcpWmd80cGFW
	 VQ+Brrjc4Gc68SlSQvKBmgHg63PEeO0YQGlKgHC2+UX4HtnYp1e2xxtx/ihz/NOuv3
	 WbVIT734BcsAp35mgE/L5VJDSGjJDrM0OfqKuSb03tCMkub76wR9a6AFLDbwkTe1Md
	 FJE583U1jnwmjBtb8+gl6xbV6x+Py0Rqe12Xh7E46hYf+QJdrYdytiFZKwsQTh1vk+
	 0HbKVfl068bHzb798Kg3ZmEt9hR1oGxSve/zPag4U0kuT227V/hUPR+WSnLBlQsEcw
	 Xpet+rWYat6Mw==
Date: Mon, 23 Mar 2026 13:47:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	lgirdwood@gmail.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ASoC: dt-bindings: stm32: Fix incorrect compatible
 string in stm32h7-sai match
Message-ID: <e4146fbd-3e2e-4d2f-b042-2af006bdfefb@sirena.org.uk>
References: <20260321012011.125791-1-jihed.chaibi.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qE4q0SY78LU6P2Qu"
Content-Disposition: inline
In-Reply-To: <20260321012011.125791-1-jihed.chaibi.dev@gmail.com>
X-Cookie: Avoid gunfire in the bathroom tonight.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279182-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[foss.st.com,gmail.com,kernel.org,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 4FA5E2F3670
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--qE4q0SY78LU6P2Qu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Mar 21, 2026 at 02:20:11AM +0100, Jihed Chaibi wrote:
> The conditional block that defines clock constraints for the stm32h7-sai
> variant references "st,stm32mph7-sai", which does not match any compatible
> string in the enum. As a result, clock validation for the h7 variant is
> silently skipped. Correct the compatible string to "st,stm32h7-sai".

A web search for stm32mph7 appears to show stm32h7 as the correct part
number...  ST people, any confirmation here?  Are both valid?

--qE4q0SY78LU6P2Qu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBRGgACgkQJNaLcl1U
h9Ad4gf9FDP7GFBd0VCxZa8UNz10NKWI6UItALUjjjsjEf9mhswPDggnsknBDl2Y
4w+9nGrTJ1aX9nQUDXAk5ffeZJkk91NB7AwIOTVNqXoduBQZ3SaN/xy79C2JNNEN
CDIUAvRPa7QIA4bxmHJCA7AttHDuDToBYSGm3TOMJpJqtDZiGBmLckgE9tkMEzDX
odvwRZL1SHf94AwsDZw5rSV3+xBtGHwSiGcOr419u7dE8MuEZmU/W2/ghdhCHgMx
cuL7bDPqfruIPaOgiVXK3yoSyOQjs/KqtyOrwIjMoxjLUt8bNUMTkKvbB2udagcV
P3rXfJ+QMo5MqneyzB7J7DS+1Mjf0g==
=Zi5l
-----END PGP SIGNATURE-----

--qE4q0SY78LU6P2Qu--

