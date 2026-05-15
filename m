Return-Path: <devicetree+bounces-298502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAVcHeljB2q90wIAu9opvQ
	(envelope-from <devicetree+bounces-298502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 20:20:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3264556129
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 20:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13B5C317242B
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 17:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF34403149;
	Fri, 15 May 2026 17:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baUGqypx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B6E403125;
	Fri, 15 May 2026 17:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778866485; cv=none; b=XvAgRNFGgpIa3mdeRc0/tKaYXpRObFvdsIJ5muOVyY6Nu5jBxvFX7GPwQMIhZ5TO/4Z0FmRHvsnv84xPMeILOeJ+Av5Dgj9Ghf4uf7Ces0UvRgwLDZOipQwQH7Fot0rQV5n6TM4lifkws2xq1I865XnTrynynPU+0CdrYdd0wF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778866485; c=relaxed/simple;
	bh=JMqgLzDQU+x0NBNFa/inAWoR0D9HxySnqFiIAcoUyNw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BZ2nNVsZboBaxzHH0JxhOx81Hy5zfMwlljqinQHNAaZkIRjgOQhqKZufOM8g8ReTC3PpooNix05wQtoOnWLRrf6TB708zUpFr7j+1gOLhCrHSBInRdrylf3UMC55a8Nj/hg5uIvX4adjGVlJARC2v0A+VYhUmc8meIqUHNzcMWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baUGqypx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01748C2BCB0;
	Fri, 15 May 2026 17:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778866485;
	bh=JMqgLzDQU+x0NBNFa/inAWoR0D9HxySnqFiIAcoUyNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=baUGqypxT5nWVLA5b0Yez0dcglKt8BUUuWimPI7/7LNcB8KXVvuAN8cFmSAypuZe0
	 HLfrtNmsYaf2CryyT6vlH3pUXdxVcAvGKCzMkz7u4RM2QmwSuIOH6Y8OPLyYzQw2KJ
	 9bZA9UyCHyvciCSa8HDVOmFn68YgfzBqTZkOy1pWPocYDBwNIYNOhQLQ4vSpsQ64rl
	 LGkYnfoRdyA3qP96cdKr/b1IqKI3wyCzI1aptMbwW1uND3zWjdEaVzsZ5KYHoHHxlF
	 ytrxU0vFEQWcIHgtoSZDJs8o2tp/Qvr3XlUCrKDzVoRM1CkUnE82UzkQNKk+JQt+nC
	 LgnoaxmUc+GiA==
Date: Fri, 15 May 2026 18:34:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add
 AM-1280800W8TZQW-T00H
Message-ID: <20260515-shorter-crate-c51d3ff6a200@spud>
References: <20260515082232.1766586-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbcJbj4m7Q2qtc5C"
Content-Disposition: inline
In-Reply-To: <20260515082232.1766586-1-dario.binacchi@amarulasolutions.com>
X-Rspamd-Queue-Id: E3264556129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298502-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,linux.intel.com,linaro.org,ravnborg.org,ffwll.ch,suse.de,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--VbcJbj4m7Q2qtc5C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--VbcJbj4m7Q2qtc5C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagdZLwAKCRB4tDGHoIJi
0sCYAP9GiMhwu5r/Vum/TUTQppvWaxo0e6a4c7nlkCNP+tnW6wEA5+LnzGTTPE/g
j6/Nryxy2t2IwctCpCedVg1fjsOw4Qw=
=fwIs
-----END PGP SIGNATURE-----

--VbcJbj4m7Q2qtc5C--

