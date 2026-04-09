Return-Path: <devicetree+bounces-286225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GeLN37J12k/TAgAu9opvQ
	(envelope-from <devicetree+bounces-286225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 17:45:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F77C3CCF14
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 17:44:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85668301DE2B
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 15:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA5B3C73F6;
	Thu,  9 Apr 2026 15:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Py04zSNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A3C2F549C;
	Thu,  9 Apr 2026 15:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775749298; cv=none; b=LiNP5qJgDBt2TFYJOXawCJ7oQP62hhSZJCzIc8WH4AKIqXgj8dfNTQFNbAq6Afos5LErrKFtn5TvAL5TDSGSuDo/rovo0uBdg13NgTrUl69Kf8XjDhy0mO7eJx6MfK5DITWQX/hrkibZvpneHVyJnejsTJcqu43HhIw9sEPFsHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775749298; c=relaxed/simple;
	bh=5Ch8hai+z6hy74QlRM3gEEaeiRAGV86wHpZXuY1nmeI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sw8z5GJOi1U80QJbODonx5HiNXOlZ6g2FGQBwlmE0pn9nP+sEqdVAl1hFXIukp34IOJmdF5mVJgUAUU3FoY9oQ7puoUBlEGNa1QE/Pl06f/rotTzxAmlsiEI9UnfXcBwVd/qBLnxSMLl7aYAwXlCziUpAmT3yhzt9Cwx0hrELIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Py04zSNJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A424C4CEF7;
	Thu,  9 Apr 2026 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775749298;
	bh=5Ch8hai+z6hy74QlRM3gEEaeiRAGV86wHpZXuY1nmeI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Py04zSNJNzer+zBcK6iR6fvoeX0iyW/Cj8gkok+sIcGa2fsY1IvO+aYNU4ysg5z9t
	 SejhGQioeoUIIXK5mDSiBmTydyWCRpcWopzYDv1vilYzLKorotdVVpgsTwPJjvpiYB
	 Yj4KebU2sSpRU2OlFdI9EGGTGi68lu+58QACgMj0QU6BqViPW7xmEBx7uCtXddghAg
	 rndGjrlzr1wLTfykgYUV5Ee8r4UBdJzXXSzYJNyW/VJC25+cRXOcOpLcYYJemoXxx6
	 ww19pFDX7/9uUvzmT8ZSH6qzT4xIpluhXBYjerc0eAcrLaF+we4qMhbqmEWsq+L2Jt
	 q4dTAexhWgYBg==
Date: Thu, 9 Apr 2026 16:41:32 +0100
From: Mark Brown <broonie@kernel.org>
To: "Wang, Sen" <sen@ti.com>
Cc: linux-sound@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	perex@perex.cz, tiwai@suse.com, shenghao-ding@ti.com,
	kevin-lu@ti.com, baojun.xu@ti.com, niranjan.hy@ti.com,
	l-badrinarayanan@ti.com, devarsht@ti.com, v-singh1@ti.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] ASoC: codecs: Add TAS67524 quad-channel audio
 amplifier driver
Message-ID: <f0415071-f336-46eb-b1af-8bd1034ac0af@sirena.org.uk>
References: <20260408053149.1369350-1-sen@ti.com>
 <20260408053149.1369350-3-sen@ti.com>
 <588c699e-7ad0-4f71-9727-56e8a3c78805@sirena.org.uk>
 <6d0fa8ee-b189-4ccb-a120-d7d42300168a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mAPcYQOyyykslvPv"
Content-Disposition: inline
In-Reply-To: <6d0fa8ee-b189-4ccb-a120-d7d42300168a@ti.com>
X-Cookie: Hailing frequencies open, Captain.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286225-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,perex.cz,suse.com,ti.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 6F77C3CCF14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--mAPcYQOyyykslvPv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 09, 2026 at 10:26:55AM -0500, Wang, Sen wrote:
> On 4/8/2026 10:41 AM, Mark Brown wrote:
> > On Wed, Apr 08, 2026 at 12:31:46AM -0500, Sen Wang wrote:

> Would you suggest a regmap/cache mechanism better suited for this two-level
> hierarchy? Happy to rework it if there's a cleaner approach.

I hadn't noticed that you'd got both books and pages - what you've got
already should be fine.

--mAPcYQOyyykslvPv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnXyKsACgkQJNaLcl1U
h9AuTAf/dfJZ08aU9nxo+/BF5x/G75HA6xpPWX4VL4A61KfVUf+WwsFLptvsCakv
L1jW1yl/ZssShQBmt8cu09U121GgpFyCh52Ug6bn0sVgLOJf/as3KFpWrOWi5EJR
h4Ci6M1w70KyoNZS84Jfd7yrpBFsxjt+AtWWNBGOba3zM63Q3H3WxQNkCHSCn6ql
bLRrZFXn3eKdtY5Ts//oAGn/5MYRrx6XqJk5kqtlte5jTQk8FMy8GsQFj1zAaefl
AsgH2qn4SCMIPUDm9ldoGjZXP0QFRhzTokCod9uLGkp5Ij/KhLH0h/nK8zwEcJO+
r10mBeXYRSWGSby8f3ov2K3qJ/WY4A==
=8vQN
-----END PGP SIGNATURE-----

--mAPcYQOyyykslvPv--

