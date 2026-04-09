Return-Path: <devicetree+bounces-286206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAm6BKvF12mdSQgAu9opvQ
	(envelope-from <devicetree+bounces-286206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 17:28:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8EB3CCAAB
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 17:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 841783036114
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 15:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B687F3E1216;
	Thu,  9 Apr 2026 15:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbziAoWD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918BD3DFC70;
	Thu,  9 Apr 2026 15:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775748390; cv=none; b=JDxxLIHycADfUdmLYW7tEbKVg3FUEjzSUvn+KH8VxDsH418EITF4BhMufn2ZWdCvG1aBqcI/bC9ee2CDU40tbbHfiNfsm+2q/30GoClGN049t1p28GwXGSvr4DPmQpYAOeR6huE68k+oqe6eWdwaHySn/QEfS+AyLHh65Q6IC8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775748390; c=relaxed/simple;
	bh=pnyIYTGFvUHdVT/9CLO3bbomQBEswW1wI7LRF6GHZL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CD2Kn/QZ2heWZ/9crGg/guwS0CJJB6P33nV79NxcWbosgyZikuQpKXQwBbfWKsWT4rVmij05nTS8iMMg/22Vthyr5CHk9x0pdADpGWlS6t6El2SC65MYdNypW1vn2VtoyVdku8u9DQujPm7o/U4Zs3TbX9CyZhEorKdT72n51wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbziAoWD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6894C19424;
	Thu,  9 Apr 2026 15:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775748390;
	bh=pnyIYTGFvUHdVT/9CLO3bbomQBEswW1wI7LRF6GHZL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bbziAoWDSRTTTMnxVnwR5RhcwIRuSot5r/dl9oyCR4z3VCuF9OHbW9lYFvdzq2KgN
	 matqwhXrEZORNEF21t4mPb5Z2TdKqGwFxZV94dmI9RAy8wXQPFcMkh6YBws5WUyHkF
	 qTJ4c1p8746//KlKaJYbLnX33t0hWGQXvIkK5gU8Pq21BrwLzx8Qeq4GWmZDZhROp/
	 cB1AODdE1zIHj9vDt4DCpA4gPBuxOVmZy4PysLVgciQSxaqjIT/GszByrqu1022FCl
	 qvymzGIDTAqq4zExGpF8mgl4XSLgMSI74KDJMvLfO3GewMF8fAhHPQ96dmSvnvblrp
	 Wh/MgqF2xWbEg==
Date: Thu, 9 Apr 2026 16:26:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: Add support for the GPIOs driven
 amplifier
Message-ID: <383635c6-0417-4333-aa9c-9056437d4a5f@sirena.org.uk>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
 <20260330101610.57942-3-herve.codina@bootlin.com>
 <20260408122901.GA42727-robh@kernel.org>
 <20260408190932.0ab936b0@bootlin.com>
 <CAL_JsqK4SHQS6MciQpLSrGWo2knqs7-eB3yoAv2J54bSfW-Lxg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g09VxWLtjplPgHzT"
Content-Disposition: inline
In-Reply-To: <CAL_JsqK4SHQS6MciQpLSrGWo2knqs7-eB3yoAv2J54bSfW-Lxg@mail.gmail.com>
X-Cookie: Hailing frequencies open, Captain.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286206-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,csgroup.eu];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.org.uk:mid,bootlin.com:email]
X-Rspamd-Queue-Id: 9F8EB3CCAAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--g09VxWLtjplPgHzT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2026 at 10:00:55AM -0500, Rob Herring wrote:
> On Wed, Apr 8, 2026 at 12:09=E2=80=AFPM Herve Codina <herve.codina@bootli=
n.com> wrote:

> > Mark suggested to merge this gpio-audio-amp with simple-amplifier.

> Merging driver and merging binding are separate questions.

Yes, my comments were purely about the driver.

> > I didn't want to set a particular limit related to the number of GPIOs
> > used for thje gain value. Of course 2^32 is obviously a lot.

> > What do you think about 16 for maxItems?

> What is the most you are aware of? Take that and double it.

> Seems to me 256 levels would be way more than a human ear could distingui=
sh.

There's plenty of gain controls with way more than 256 bits of
resolution, though I'm not aware of any that are configured via GPIO.
The step size and absolute values you want can vary dramatically
depending on application, possibly in the same system (eg, a DAC that
can be connected to both headphones or speakers) so you often end up
making practical adjustments in a small subset of the available range
but that subset can vary a lot for the same part.

> I guess my point was that really we could deprecate simple-amplifier
> binding because this one can handle it and more. But I'm not
> suggesting we do that yet.

That's my thinking.

--g09VxWLtjplPgHzT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnXxSAACgkQJNaLcl1U
h9AyAQf+PFfdD5FaRa7cXGLebu7K6JB2uKAdF6KxBmTK/OT8yImF22Wg5pj5mNGs
QUm6G8gCvGa4dQbTBnYg2h9q0zs0V0sRR46Y4Wkrv28X3LjKK8tj4EP7lTxNlmSX
oTtC6PPajivpCRauXtiq7ouL/4Gfk6wNoDZbD/And/vdBJjQFuLRA74IO4nYU11n
X+tUhe6S8yHQrFUjYEACPfTls+CP6xj/Z/CYgUBZySggMvygFezorl7HeSqsJW6W
kXcpIdxnTQ6gvTdl/l7dpQbSB/GSIy+7+u6HsOYN/bplwYvoXhFuVQLwYMrRMnNq
Y7diPqvUaaH+gC1XsY/9ge+dfoFcag==
=XhEP
-----END PGP SIGNATURE-----

--g09VxWLtjplPgHzT--

